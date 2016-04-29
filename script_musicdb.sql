drop view vi_top5_by_genre;
drop view vi_top3_track_clients;
drop view vi_top20_track_by_media_type;
drop view vi_list_sales_by_vendor;

drop table invoice_line;
drop table invoice;
drop table customer;
drop table employee;
drop table playlist_track;
drop table playlist;
drop table track;
drop table media_type;
drop table genre;
drop table album;
drop table artist;

create table artist(
    artist_id 		serial primary key,
    name varchar(100)
);
create table album(
    album_id 		serial primary key,
    title 		varchar(100),
    artist_id 		integer not null,
    constraint fk_artist_album foreign key(artist_id) references artist(artist_id)
);
create table media_type(
    media_type_id 	serial primary key,
    name 		varchar(100)
);
create table genre(
    genre_id 		serial primary key,
    name		varchar(100)
);
create table track(
    track_id 		serial primary key,
    name		varchar(500),
    album_id 		integer not null,
    media_type_id 	integer not null,
    genre_id 		integer not null,
    composer 		varchar(500),
    milliseconds 	integer,
    bytes 		bytea,
    unit_price 		float,
    constraint fk_album_track foreign key(album_id) references album(album_id),
    constraint fk_media_type_track foreign key(media_type_id) references media_type(media_type_id),
    constraint fk_genre_track foreign key(genre_id) references genre(genre_id)
);
create table playlist(
    playlist_id serial 	primary key,
    name		varchar(100)
);
create table playlist_track(
    playlist_id 	integer not null,
    track_id 		integer not null,
    constraint pk_playlist_track primary key (playlist_id,track_id),
    constraint fk_playlist_playlist_track foreign key(playlist_id) references playlist(playlist_id),
    constraint fk_track_playlist_track foreign key(track_id) references track(track_id)
);
CREATE TABLE employee (
    employee_id      	serial primary key,
    last_name           varchar(100),
    first_name          varchar(100),
    title              	varchar(100),
    reports_to          int null,
    birth_date          date,
    hire_date           date,
    address            	varchar(100),
    city               	varchar(100),
    state              	varchar(100),
    country            	varchar(100),
    postal_code         varchar(100),
    phone              	varchar(100),
    fax                	varchar(100),
    email              	varchar(100),
    constraint fk_employee_employee foreign key(reports_to) references employee(employee_id)
);
CREATE TABLE customer (
    customer_id       	serial primary key,
    first_name         	varchar(100),
    last_name          	varchar(100),
    company           	varchar(100),
    address           	varchar(100),
    city              	varchar(100),
    state             	varchar(100),
    country           	varchar(100),
    postal_code        	varchar(100),
    phone             	varchar(100),
    fax               	varchar(100),
    email             	varchar(100),
    support_rep_id      integer not null,
    constraint fk_employee_customer foreign key(support_rep_id) references employee(employee_id)
);
CREATE TABLE invoice (
    invoice_id        serial primary key,
    customer_id       integer not null,
    invoice_date      date,
    billing_address   varchar(100),
    billing_city      varchar(100),
    billing_state     varchar(100),
    billing_country   varchar(100),
    billing_postal_code varchar(100),
    total             float,
    constraint fk_customer_invoice foreign key(customer_id) references customer(customer_id)
);
create table invoice_line(
    invoice_line_id 	serial primary key,
    invoice_id 		integer not null,
    track_id 		integer not null,
    unit_price 		float,
    quantity 		float,
    constraint fk_track_invoice_line foreign key(track_id) references track(track_id),
    constraint fk_invoice_invoice_line foreign key(invoice_id) references invoice(invoice_id)
);

copy artist from '/home/noel/uasb_DBA-master/RAW_CSV/artist_data.csv' delimiters ';' with csv header;
copy album from '/home/noel/uasb_DBA-master/RAW_CSV/album_data.csv' delimiters ';' with csv header;
copy genre from '/home/noel/uasb_DBA-master/RAW_CSV/genre_data.csv' delimiters ';' with csv header;
copy media_type from '/home/noel/uasb_DBA-master/RAW_CSV/mediatype_data.csv' delimiters ';' with csv header;
copy track from '/home/noel/uasb_DBA-master/RAW_CSV/track_data.csv' delimiters ';' with csv header;
copy playlist from '/home/noel/uasb_DBA-master/RAW_CSV/playlist_data.csv' delimiters ';' with csv header;
copy playlist_track from '/home/noel/uasb_DBA-master/RAW_CSV/playlisttrack_data.csv' delimiters ';' with csv header;
copy employee from '/home/noel/uasb_DBA-master/RAW_CSV/employee_data.csv' delimiters ';' with csv header;
copy customer from '/home/noel/uasb_DBA-master/RAW_CSV/customer_data.csv' delimiters ';' with csv header;
copy invoice from '/home/noel/uasb_DBA-master/RAW_CSV/invoice_data.csv' delimiters ';' with csv header;
copy invoice_line from '/home/noel/uasb_DBA-master/RAW_CSV/invoiceline_data.csv' delimiters ';' with csv header;

--1. Listar el top 5 de las canciones más vendidas por genero
create view vi_top5_by_genre
as
	select a.* from
	(
		select g.name as genre, t.name as track, sum(i.quantity) as quantity, (row_number() over (partition by g.name order by sum(i.quantity) desc)) as ranking
		from track t inner join genre g on t.genre_id = g.genre_id
		inner join invoice_line i on t.track_id = i.track_id
		group by genre, track
		order by genre, quantity desc
	) as a
	where a.ranking <= 5;

--2. Listar los 3 clientes que han comprado más canciones
create view vi_top3_track_clients
as
	select c.first_name, c.last_name, c.city,c.country,c.phone, sum(il.quantity) as quantity
	from invoice_line il
	inner join invoice i on il.invoice_id=i.invoice_id
	inner join customer c on c.customer_id=i.customer_id
	group by c.first_name,c.last_name, c.city,c.country,c.phone
	order by sum(il.quantity) desc
	limit 3;

--3. Listar las 20 canciones que tienen mayor duración agrupados por tipo de medio
create view vi_top20_track_by_media_type
as
	select mt.name as media_type, t.name as track, t.milliseconds 
	from track t 
	inner join media_type mt on t.media_type_id=mt.media_type_id
	group by mt.name, t.name, t.milliseconds
	order by t.milliseconds desc 
	limit 20;

--4. Listar total ventas por mes agrupadas por el vendedor
create view vi_list_sales_by_vendor
as
	select e.employee_id, e.first_name,extract(year from i.invoice_date) as year,extract(month from i.invoice_date) as month,sum(i.total) as total
	from employee e 
	inner join customer c on e.employee_id=c.support_rep_id
	inner join invoice i on c.customer_id=i.customer_id
	group by e.employee_id,e.first_name,extract(year from i.invoice_date),extract(month from i.invoice_date)
	order by e.first_name,extract(year from i.invoice_date),extract(month from i.invoice_date);


-- Otorgar permissos a los usuarios --

-- uasb_user usuario que realiza solo consultas a los datos --

grant SELECT on invoice_line TO uasb_user;
grant SELECT on invoice TO uasb_user;
grant SELECT on customer TO uasb_user;
grant SELECT on employee TO uasb_user;
grant SELECT on playlist_track TO uasb_user;
grant SELECT on track TO uasb_user;
grant SELECT on album TO uasb_user;
grant SELECT on genre TO uasb_user;
grant SELECT on media_type TO uasb_user;
grant SELECT on playlist TO uasb_user;
grant SELECT on artist TO uasb_user;

-- operator_user usuario que realiza operaciones sobre las tablas --

grant SELECT, INSERT, UPDATE, DELETE on invoice_line TO operator_user;
grant SELECT, INSERT, UPDATE, DELETE on invoice TO operator_user;
grant SELECT, INSERT, UPDATE, DELETE on customer TO operator_user;
grant SELECT, INSERT, UPDATE, DELETE on employee TO operator_user;
grant SELECT, INSERT, UPDATE, DELETE on playlist_track TO operator_user;
grant SELECT, INSERT, UPDATE, DELETE on track TO operator_user;
grant SELECT, INSERT, UPDATE, DELETE on album TO operator_user;
grant SELECT, INSERT, UPDATE, DELETE on genre TO operator_user;
grant SELECT, INSERT, UPDATE, DELETE on media_type TO operator_user;
grant SELECT, INSERT, UPDATE, DELETE on playlist TO operator_user;
grant SELECT, INSERT, UPDATE, DELETE on artist TO operator_user;

-- test_user usuario que realiza solo consultas a vistas de la base de datos --

grant SELECT on vi_top5_by_genre TO test_user;
grant SELECT on vi_top3_track_clients TO test_user;
grant SELECT on vi_top20_track_by_media_type TO test_user;
grant SELECT on vi_list_sales_by_vendor TO test_user;


-- *** BACKUPS ***

--Backups en formato plano, se usa la contraseña de postgres
pg_dump -i -h localhost -p 5433 -U postgres -F p -b -v -f "/home/noel/uasb_DBA-master/bk_musicdb_usergithub.sql" musicdb

--Backups en formato postgres, se usa la contraseña de postgres
pg_dump -i -h localhost -p 5433 -U postgres -F c -b -v -f "/home/noel/uasb_DBA-master/bk_musicdb_usergithub.backup" musicdb

--Backups con -a y -v
-- -a Hace un volcado solo de los datos y no del esquema.
-- -v Especifica el modo detallado. Esto hará que pg_dump de salida detallada de objetos comentarios e iniciar / detener veces 
--para el archivo de volcado, y el progreso de los mensajes de error estándar.
