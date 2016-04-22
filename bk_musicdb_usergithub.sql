PGDMP         8                t            musicdb    9.4.6    9.4.6 r    �
           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           1262    18263    musicdb    DATABASE     j   CREATE DATABASE musicdb WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE musicdb;
          
   admin_user    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �
           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12478    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    18274    album    TABLE     x   CREATE TABLE album (
    album_id integer NOT NULL,
    title character varying(100),
    artist_id integer NOT NULL
);
    DROP TABLE public.album;
       public      
   admin_user    false    6            �
           0    0    album    ACL     �   REVOKE ALL ON TABLE album FROM PUBLIC;
REVOKE ALL ON TABLE album FROM admin_user;
GRANT ALL ON TABLE album TO admin_user;
GRANT SELECT ON TABLE album TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE album TO operator_user;
            public    
   admin_user    false    176            �            1259    18272    album_album_id_seq    SEQUENCE     t   CREATE SEQUENCE album_album_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.album_album_id_seq;
       public    
   admin_user    false    176    6            �
           0    0    album_album_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE album_album_id_seq OWNED BY album.album_id;
            public    
   admin_user    false    175            �            1259    18266    artist    TABLE     Y   CREATE TABLE artist (
    artist_id integer NOT NULL,
    name character varying(100)
);
    DROP TABLE public.artist;
       public      
   admin_user    false    6            �
           0    0    artist    ACL     �   REVOKE ALL ON TABLE artist FROM PUBLIC;
REVOKE ALL ON TABLE artist FROM admin_user;
GRANT ALL ON TABLE artist TO admin_user;
GRANT SELECT ON TABLE artist TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE artist TO operator_user;
            public    
   admin_user    false    174            �            1259    18264    artist_artist_id_seq    SEQUENCE     v   CREATE SEQUENCE artist_artist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.artist_artist_id_seq;
       public    
   admin_user    false    6    174            �
           0    0    artist_artist_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE artist_artist_id_seq OWNED BY artist.artist_id;
            public    
   admin_user    false    173            �            1259    18365    customer    TABLE     �  CREATE TABLE customer (
    customer_id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    company character varying(100),
    address character varying(100),
    city character varying(100),
    state character varying(100),
    country character varying(100),
    postal_code character varying(100),
    phone character varying(100),
    fax character varying(100),
    email character varying(100),
    support_rep_id integer NOT NULL
);
    DROP TABLE public.customer;
       public      
   admin_user    false    6            �
           0    0    customer    ACL     �   REVOKE ALL ON TABLE customer FROM PUBLIC;
REVOKE ALL ON TABLE customer FROM admin_user;
GRANT ALL ON TABLE customer TO admin_user;
GRANT SELECT ON TABLE customer TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE customer TO operator_user;
            public    
   admin_user    false    189            �            1259    18363    customer_customer_id_seq    SEQUENCE     z   CREATE SEQUENCE customer_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customer_customer_id_seq;
       public    
   admin_user    false    189    6            �
           0    0    customer_customer_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE customer_customer_id_seq OWNED BY customer.customer_id;
            public    
   admin_user    false    188            �            1259    18352    employee    TABLE       CREATE TABLE employee (
    employee_id integer NOT NULL,
    last_name character varying(100),
    first_name character varying(100),
    title character varying(100),
    reports_to character varying(100),
    birth_date date,
    hire_date date,
    address character varying(100),
    city character varying(100),
    state character varying(100),
    country character varying(100),
    postal_code character varying(100),
    phone character varying(100),
    fax character varying(100),
    email character varying(100)
);
    DROP TABLE public.employee;
       public      
   admin_user    false    6            �
           0    0    employee    ACL     �   REVOKE ALL ON TABLE employee FROM PUBLIC;
REVOKE ALL ON TABLE employee FROM admin_user;
GRANT ALL ON TABLE employee TO admin_user;
GRANT SELECT ON TABLE employee TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE employee TO operator_user;
            public    
   admin_user    false    187            �            1259    18350    employee_employee_id_seq    SEQUENCE     z   CREATE SEQUENCE employee_employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employee_employee_id_seq;
       public    
   admin_user    false    6    187            �
           0    0    employee_employee_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE employee_employee_id_seq OWNED BY employee.employee_id;
            public    
   admin_user    false    186            �            1259    18295    genre    TABLE     W   CREATE TABLE genre (
    genre_id integer NOT NULL,
    name character varying(100)
);
    DROP TABLE public.genre;
       public      
   admin_user    false    6            �
           0    0    genre    ACL     �   REVOKE ALL ON TABLE genre FROM PUBLIC;
REVOKE ALL ON TABLE genre FROM admin_user;
GRANT ALL ON TABLE genre TO admin_user;
GRANT SELECT ON TABLE genre TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE genre TO operator_user;
            public    
   admin_user    false    180            �            1259    18293    genre_genre_id_seq    SEQUENCE     t   CREATE SEQUENCE genre_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.genre_genre_id_seq;
       public    
   admin_user    false    6    180            �
           0    0    genre_genre_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE genre_genre_id_seq OWNED BY genre.genre_id;
            public    
   admin_user    false    179            �            1259    18378    invoice    TABLE     j  CREATE TABLE invoice (
    invoice_id integer NOT NULL,
    customer_id integer NOT NULL,
    invoice_date date,
    billing_address character varying(100),
    billing_city character varying(100),
    billing_state character varying(100),
    billing_country character varying(100),
    billing_postal_code character varying(100),
    total double precision
);
    DROP TABLE public.invoice;
       public      
   admin_user    false    6            �
           0    0    invoice    ACL     �   REVOKE ALL ON TABLE invoice FROM PUBLIC;
REVOKE ALL ON TABLE invoice FROM admin_user;
GRANT ALL ON TABLE invoice TO admin_user;
GRANT SELECT ON TABLE invoice TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE invoice TO operator_user;
            public    
   admin_user    false    191            �            1259    18376    invoice_invoice_id_seq    SEQUENCE     x   CREATE SEQUENCE invoice_invoice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.invoice_invoice_id_seq;
       public    
   admin_user    false    191    6            �
           0    0    invoice_invoice_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE invoice_invoice_id_seq OWNED BY invoice.invoice_id;
            public    
   admin_user    false    190            �            1259    18391    invoice_line    TABLE     �   CREATE TABLE invoice_line (
    invoice_line_id integer NOT NULL,
    invoice_id integer NOT NULL,
    track_id integer NOT NULL,
    unit_price double precision,
    quantity double precision
);
     DROP TABLE public.invoice_line;
       public      
   admin_user    false    6            �
           0    0    invoice_line    ACL     
  REVOKE ALL ON TABLE invoice_line FROM PUBLIC;
REVOKE ALL ON TABLE invoice_line FROM admin_user;
GRANT ALL ON TABLE invoice_line TO admin_user;
GRANT SELECT ON TABLE invoice_line TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE invoice_line TO operator_user;
            public    
   admin_user    false    193            �            1259    18389     invoice_line_invoice_line_id_seq    SEQUENCE     �   CREATE SEQUENCE invoice_line_invoice_line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.invoice_line_invoice_line_id_seq;
       public    
   admin_user    false    193    6            �
           0    0     invoice_line_invoice_line_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE invoice_line_invoice_line_id_seq OWNED BY invoice_line.invoice_line_id;
            public    
   admin_user    false    192            �            1259    18287 
   media_type    TABLE     a   CREATE TABLE media_type (
    media_type_id integer NOT NULL,
    name character varying(100)
);
    DROP TABLE public.media_type;
       public      
   admin_user    false    6            �
           0    0 
   media_type    ACL        REVOKE ALL ON TABLE media_type FROM PUBLIC;
REVOKE ALL ON TABLE media_type FROM admin_user;
GRANT ALL ON TABLE media_type TO admin_user;
GRANT SELECT ON TABLE media_type TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE media_type TO operator_user;
            public    
   admin_user    false    178            �            1259    18285    media_type_media_type_id_seq    SEQUENCE     ~   CREATE SEQUENCE media_type_media_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.media_type_media_type_id_seq;
       public    
   admin_user    false    178    6            �
           0    0    media_type_media_type_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE media_type_media_type_id_seq OWNED BY media_type.media_type_id;
            public    
   admin_user    false    177            �            1259    18329    playlist    TABLE     ]   CREATE TABLE playlist (
    playlist_id integer NOT NULL,
    name character varying(100)
);
    DROP TABLE public.playlist;
       public      
   admin_user    false    6            �
           0    0    playlist    ACL     �   REVOKE ALL ON TABLE playlist FROM PUBLIC;
REVOKE ALL ON TABLE playlist FROM admin_user;
GRANT ALL ON TABLE playlist TO admin_user;
GRANT SELECT ON TABLE playlist TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE playlist TO operator_user;
            public    
   admin_user    false    184            �            1259    18327    playlist_playlist_id_seq    SEQUENCE     z   CREATE SEQUENCE playlist_playlist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.playlist_playlist_id_seq;
       public    
   admin_user    false    6    184            �
           0    0    playlist_playlist_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE playlist_playlist_id_seq OWNED BY playlist.playlist_id;
            public    
   admin_user    false    183            �            1259    18335    playlist_track    TABLE     a   CREATE TABLE playlist_track (
    playlist_id integer NOT NULL,
    track_id integer NOT NULL
);
 "   DROP TABLE public.playlist_track;
       public      
   admin_user    false    6            �
           0    0    playlist_track    ACL       REVOKE ALL ON TABLE playlist_track FROM PUBLIC;
REVOKE ALL ON TABLE playlist_track FROM admin_user;
GRANT ALL ON TABLE playlist_track TO admin_user;
GRANT SELECT ON TABLE playlist_track TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE playlist_track TO operator_user;
            public    
   admin_user    false    185            �            1259    18303    track    TABLE     *  CREATE TABLE track (
    track_id integer NOT NULL,
    name character varying(500),
    album_id integer NOT NULL,
    media_type_id integer NOT NULL,
    genre_id integer NOT NULL,
    composer character varying(500),
    milliseconds integer,
    bytes bytea,
    unit_price double precision
);
    DROP TABLE public.track;
       public      
   admin_user    false    6            �
           0    0    track    ACL     �   REVOKE ALL ON TABLE track FROM PUBLIC;
REVOKE ALL ON TABLE track FROM admin_user;
GRANT ALL ON TABLE track TO admin_user;
GRANT SELECT ON TABLE track TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE track TO operator_user;
            public    
   admin_user    false    182            �            1259    18301    track_track_id_seq    SEQUENCE     t   CREATE SEQUENCE track_track_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.track_track_id_seq;
       public    
   admin_user    false    182    6            �
           0    0    track_track_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE track_track_id_seq OWNED BY track.track_id;
            public    
   admin_user    false    181            �            1259    18428    vi_list_sales_by_vendor    VIEW     I  CREATE VIEW vi_list_sales_by_vendor AS
 SELECT e.employee_id,
    e.first_name,
    date_part('year'::text, i.invoice_date) AS year,
    date_part('month'::text, i.invoice_date) AS month,
    sum(i.total) AS total
   FROM ((employee e
     JOIN customer c ON ((e.employee_id = c.support_rep_id)))
     JOIN invoice i ON ((c.customer_id = i.customer_id)))
  GROUP BY e.employee_id, e.first_name, date_part('year'::text, i.invoice_date), date_part('month'::text, i.invoice_date)
  ORDER BY e.first_name, date_part('year'::text, i.invoice_date), date_part('month'::text, i.invoice_date);
 *   DROP VIEW public.vi_list_sales_by_vendor;
       public    
   admin_user    false    187    187    191    191    191    189    189    6            �
           0    0    vi_list_sales_by_vendor    ACL     }  REVOKE ALL ON TABLE vi_list_sales_by_vendor FROM PUBLIC;
REVOKE ALL ON TABLE vi_list_sales_by_vendor FROM admin_user;
GRANT ALL ON TABLE vi_list_sales_by_vendor TO admin_user;
GRANT SELECT ON TABLE vi_list_sales_by_vendor TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE vi_list_sales_by_vendor TO operator_user;
GRANT SELECT ON TABLE vi_list_sales_by_vendor TO test_user;
            public    
   admin_user    false    197            �            1259    18424    vi_top20_track_by_media_type    VIEW       CREATE VIEW vi_top20_track_by_media_type AS
 SELECT mt.name AS media_type,
    t.name AS track,
    t.milliseconds
   FROM (track t
     JOIN media_type mt ON ((t.media_type_id = mt.media_type_id)))
  GROUP BY mt.name, t.name, t.milliseconds
  ORDER BY t.milliseconds DESC
 LIMIT 20;
 /   DROP VIEW public.vi_top20_track_by_media_type;
       public    
   admin_user    false    178    178    182    182    182    6            �
           0    0    vi_top20_track_by_media_type    ACL     �  REVOKE ALL ON TABLE vi_top20_track_by_media_type FROM PUBLIC;
REVOKE ALL ON TABLE vi_top20_track_by_media_type FROM admin_user;
GRANT ALL ON TABLE vi_top20_track_by_media_type TO admin_user;
GRANT SELECT ON TABLE vi_top20_track_by_media_type TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE vi_top20_track_by_media_type TO operator_user;
GRANT SELECT ON TABLE vi_top20_track_by_media_type TO test_user;
            public    
   admin_user    false    196            �            1259    18419    vi_top3_track_clients    VIEW     �  CREATE VIEW vi_top3_track_clients AS
 SELECT c.first_name,
    c.last_name,
    c.city,
    c.country,
    c.phone,
    sum(il.quantity) AS quantity
   FROM ((invoice_line il
     JOIN invoice i ON ((il.invoice_id = i.invoice_id)))
     JOIN customer c ON ((c.customer_id = i.customer_id)))
  GROUP BY c.first_name, c.last_name, c.city, c.country, c.phone
  ORDER BY sum(il.quantity) DESC
 LIMIT 3;
 (   DROP VIEW public.vi_top3_track_clients;
       public    
   admin_user    false    189    193    193    191    191    189    189    189    189    189    6            �
           0    0    vi_top3_track_clients    ACL     q  REVOKE ALL ON TABLE vi_top3_track_clients FROM PUBLIC;
REVOKE ALL ON TABLE vi_top3_track_clients FROM admin_user;
GRANT ALL ON TABLE vi_top3_track_clients TO admin_user;
GRANT SELECT ON TABLE vi_top3_track_clients TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE vi_top3_track_clients TO operator_user;
GRANT SELECT ON TABLE vi_top3_track_clients TO test_user;
            public    
   admin_user    false    195            �            1259    18407    vi_top5_by_genre    TABLE     �   CREATE TABLE vi_top5_by_genre (
    genre character varying(100),
    track character varying(500),
    quantity double precision
);

ALTER TABLE ONLY vi_top5_by_genre REPLICA IDENTITY NOTHING;
 $   DROP TABLE public.vi_top5_by_genre;
       public      
   admin_user    false    6            �
           0    0    vi_top5_by_genre    ACL     S  REVOKE ALL ON TABLE vi_top5_by_genre FROM PUBLIC;
REVOKE ALL ON TABLE vi_top5_by_genre FROM admin_user;
GRANT ALL ON TABLE vi_top5_by_genre TO admin_user;
GRANT SELECT ON TABLE vi_top5_by_genre TO uasb_user;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE vi_top5_by_genre TO operator_user;
GRANT SELECT ON TABLE vi_top5_by_genre TO test_user;
            public    
   admin_user    false    194            
           2604    18277    album_id    DEFAULT     b   ALTER TABLE ONLY album ALTER COLUMN album_id SET DEFAULT nextval('album_album_id_seq'::regclass);
 =   ALTER TABLE public.album ALTER COLUMN album_id DROP DEFAULT;
       public    
   admin_user    false    176    175    176            
           2604    18269 	   artist_id    DEFAULT     f   ALTER TABLE ONLY artist ALTER COLUMN artist_id SET DEFAULT nextval('artist_artist_id_seq'::regclass);
 ?   ALTER TABLE public.artist ALTER COLUMN artist_id DROP DEFAULT;
       public    
   admin_user    false    173    174    174            
           2604    18368    customer_id    DEFAULT     n   ALTER TABLE ONLY customer ALTER COLUMN customer_id SET DEFAULT nextval('customer_customer_id_seq'::regclass);
 C   ALTER TABLE public.customer ALTER COLUMN customer_id DROP DEFAULT;
       public    
   admin_user    false    189    188    189            
           2604    18355    employee_id    DEFAULT     n   ALTER TABLE ONLY employee ALTER COLUMN employee_id SET DEFAULT nextval('employee_employee_id_seq'::regclass);
 C   ALTER TABLE public.employee ALTER COLUMN employee_id DROP DEFAULT;
       public    
   admin_user    false    186    187    187            
           2604    18298    genre_id    DEFAULT     b   ALTER TABLE ONLY genre ALTER COLUMN genre_id SET DEFAULT nextval('genre_genre_id_seq'::regclass);
 =   ALTER TABLE public.genre ALTER COLUMN genre_id DROP DEFAULT;
       public    
   admin_user    false    180    179    180            
           2604    18381 
   invoice_id    DEFAULT     j   ALTER TABLE ONLY invoice ALTER COLUMN invoice_id SET DEFAULT nextval('invoice_invoice_id_seq'::regclass);
 A   ALTER TABLE public.invoice ALTER COLUMN invoice_id DROP DEFAULT;
       public    
   admin_user    false    190    191    191            
           2604    18394    invoice_line_id    DEFAULT     ~   ALTER TABLE ONLY invoice_line ALTER COLUMN invoice_line_id SET DEFAULT nextval('invoice_line_invoice_line_id_seq'::regclass);
 K   ALTER TABLE public.invoice_line ALTER COLUMN invoice_line_id DROP DEFAULT;
       public    
   admin_user    false    192    193    193            
           2604    18290    media_type_id    DEFAULT     v   ALTER TABLE ONLY media_type ALTER COLUMN media_type_id SET DEFAULT nextval('media_type_media_type_id_seq'::regclass);
 G   ALTER TABLE public.media_type ALTER COLUMN media_type_id DROP DEFAULT;
       public    
   admin_user    false    178    177    178            
           2604    18332    playlist_id    DEFAULT     n   ALTER TABLE ONLY playlist ALTER COLUMN playlist_id SET DEFAULT nextval('playlist_playlist_id_seq'::regclass);
 C   ALTER TABLE public.playlist ALTER COLUMN playlist_id DROP DEFAULT;
       public    
   admin_user    false    184    183    184            
           2604    18306    track_id    DEFAULT     b   ALTER TABLE ONLY track ALTER COLUMN track_id SET DEFAULT nextval('track_track_id_seq'::regclass);
 =   ALTER TABLE public.track ALTER COLUMN track_id DROP DEFAULT;
       public    
   admin_user    false    182    181    182            �
          0    18274    album 
   TABLE DATA               4   COPY album (album_id, title, artist_id) FROM stdin;
    public    
   admin_user    false    176   �       �
           0    0    album_album_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('album_album_id_seq', 1, false);
            public    
   admin_user    false    175            �
          0    18266    artist 
   TABLE DATA               *   COPY artist (artist_id, name) FROM stdin;
    public    
   admin_user    false    174   �       �
           0    0    artist_artist_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('artist_artist_id_seq', 1, false);
            public    
   admin_user    false    173            �
          0    18365    customer 
   TABLE DATA               �   COPY customer (customer_id, first_name, last_name, company, address, city, state, country, postal_code, phone, fax, email, support_rep_id) FROM stdin;
    public    
   admin_user    false    189   ��       �
           0    0    customer_customer_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('customer_customer_id_seq', 1, false);
            public    
   admin_user    false    188            �
          0    18352    employee 
   TABLE DATA               �   COPY employee (employee_id, last_name, first_name, title, reports_to, birth_date, hire_date, address, city, state, country, postal_code, phone, fax, email) FROM stdin;
    public    
   admin_user    false    187   �       �
           0    0    employee_employee_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('employee_employee_id_seq', 1, false);
            public    
   admin_user    false    186            �
          0    18295    genre 
   TABLE DATA               (   COPY genre (genre_id, name) FROM stdin;
    public    
   admin_user    false    180   Z�       �
           0    0    genre_genre_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('genre_genre_id_seq', 1, false);
            public    
   admin_user    false    179            �
          0    18378    invoice 
   TABLE DATA               �   COPY invoice (invoice_id, customer_id, invoice_date, billing_address, billing_city, billing_state, billing_country, billing_postal_code, total) FROM stdin;
    public    
   admin_user    false    191   h�       �
           0    0    invoice_invoice_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('invoice_invoice_id_seq', 1, false);
            public    
   admin_user    false    190            �
          0    18391    invoice_line 
   TABLE DATA               \   COPY invoice_line (invoice_line_id, invoice_id, track_id, unit_price, quantity) FROM stdin;
    public    
   admin_user    false    193   �       �
           0    0     invoice_line_invoice_line_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('invoice_line_invoice_line_id_seq', 1, false);
            public    
   admin_user    false    192            �
          0    18287 
   media_type 
   TABLE DATA               2   COPY media_type (media_type_id, name) FROM stdin;
    public    
   admin_user    false    178   w�       �
           0    0    media_type_media_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('media_type_media_type_id_seq', 1, false);
            public    
   admin_user    false    177            �
          0    18329    playlist 
   TABLE DATA               .   COPY playlist (playlist_id, name) FROM stdin;
    public    
   admin_user    false    184   ��       �
           0    0    playlist_playlist_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('playlist_playlist_id_seq', 1, false);
            public    
   admin_user    false    183            �
          0    18335    playlist_track 
   TABLE DATA               8   COPY playlist_track (playlist_id, track_id) FROM stdin;
    public    
   admin_user    false    185   ��       �
          0    18303    track 
   TABLE DATA               v   COPY track (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) FROM stdin;
    public    
   admin_user    false    182   �      �
           0    0    track_track_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('track_track_id_seq', 1, false);
            public    
   admin_user    false    181             
           2606    18279 
   album_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY album
    ADD CONSTRAINT album_pkey PRIMARY KEY (album_id);
 :   ALTER TABLE ONLY public.album DROP CONSTRAINT album_pkey;
       public      
   admin_user    false    176    176            
           2606    18271    artist_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY artist
    ADD CONSTRAINT artist_pkey PRIMARY KEY (artist_id);
 <   ALTER TABLE ONLY public.artist DROP CONSTRAINT artist_pkey;
       public      
   admin_user    false    174    174            .
           2606    18370    customer_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public      
   admin_user    false    189    189            ,
           2606    18357    employee_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public      
   admin_user    false    187    187            $
           2606    18300 
   genre_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public      
   admin_user    false    180    180            2
           2606    18396    invoice_line_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY invoice_line
    ADD CONSTRAINT invoice_line_pkey PRIMARY KEY (invoice_line_id);
 H   ALTER TABLE ONLY public.invoice_line DROP CONSTRAINT invoice_line_pkey;
       public      
   admin_user    false    193    193            0
           2606    18383    invoice_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY invoice
    ADD CONSTRAINT invoice_pkey PRIMARY KEY (invoice_id);
 >   ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_pkey;
       public      
   admin_user    false    191    191            "
           2606    18292    media_type_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY media_type
    ADD CONSTRAINT media_type_pkey PRIMARY KEY (media_type_id);
 D   ALTER TABLE ONLY public.media_type DROP CONSTRAINT media_type_pkey;
       public      
   admin_user    false    178    178            *
           2606    18339    pk_playlist_track 
   CONSTRAINT     j   ALTER TABLE ONLY playlist_track
    ADD CONSTRAINT pk_playlist_track PRIMARY KEY (playlist_id, track_id);
 J   ALTER TABLE ONLY public.playlist_track DROP CONSTRAINT pk_playlist_track;
       public      
   admin_user    false    185    185    185            (
           2606    18334    playlist_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY playlist
    ADD CONSTRAINT playlist_pkey PRIMARY KEY (playlist_id);
 @   ALTER TABLE ONLY public.playlist DROP CONSTRAINT playlist_pkey;
       public      
   admin_user    false    184    184            &
           2606    18311 
   track_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY track
    ADD CONSTRAINT track_pkey PRIMARY KEY (track_id);
 :   ALTER TABLE ONLY public.track DROP CONSTRAINT track_pkey;
       public      
   admin_user    false    182    182            �
           2618    18410    _RETURN    RULE     �  CREATE RULE "_RETURN" AS
    ON SELECT TO vi_top5_by_genre DO INSTEAD  SELECT g.name AS genre,
    t.name AS track,
    sum(il.quantity) AS quantity
   FROM ((invoice_line il
     JOIN track t ON ((il.track_id = t.track_id)))
     JOIN genre g ON ((t.genre_id = g.genre_id)))
  WHERE (((g.name)::text, (t.name)::text) IN ( SELECT gg.name,
            tt.name
           FROM ((invoice_line ill
             JOIN track tt ON ((ill.track_id = tt.track_id)))
             JOIN genre gg ON ((tt.genre_id = gg.genre_id)))
          WHERE ((g.name)::text = (gg.name)::text)
          GROUP BY gg.genre_id, tt.name
          ORDER BY gg.name, sum(ill.quantity) DESC, tt.name
         LIMIT 5))
  GROUP BY g.genre_id, t.name
  ORDER BY g.name, sum(il.quantity) DESC, t.name;
 0   DROP RULE "_RETURN" ON public.vi_top5_by_genre;
       public    
   admin_user    false    180    180    182    182    193    193    2596    182    194            4
           2606    18312    fk_album_track    FK CONSTRAINT     l   ALTER TABLE ONLY track
    ADD CONSTRAINT fk_album_track FOREIGN KEY (album_id) REFERENCES album(album_id);
 >   ALTER TABLE ONLY public.track DROP CONSTRAINT fk_album_track;
       public    
   admin_user    false    2592    182    176            3
           2606    18280    fk_artist_album    FK CONSTRAINT     p   ALTER TABLE ONLY album
    ADD CONSTRAINT fk_artist_album FOREIGN KEY (artist_id) REFERENCES artist(artist_id);
 ?   ALTER TABLE ONLY public.album DROP CONSTRAINT fk_artist_album;
       public    
   admin_user    false    2590    176    174            ;
           2606    18384    fk_customer_invoice    FK CONSTRAINT     |   ALTER TABLE ONLY invoice
    ADD CONSTRAINT fk_customer_invoice FOREIGN KEY (customer_id) REFERENCES customer(customer_id);
 E   ALTER TABLE ONLY public.invoice DROP CONSTRAINT fk_customer_invoice;
       public    
   admin_user    false    191    189    2606            :
           2606    18371    fk_employee_customer    FK CONSTRAINT     �   ALTER TABLE ONLY customer
    ADD CONSTRAINT fk_employee_customer FOREIGN KEY (support_rep_id) REFERENCES employee(employee_id);
 G   ALTER TABLE ONLY public.customer DROP CONSTRAINT fk_employee_customer;
       public    
   admin_user    false    187    189    2604            9
           2606    18358    fk_employee_employee    FK CONSTRAINT     ~   ALTER TABLE ONLY employee
    ADD CONSTRAINT fk_employee_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id);
 G   ALTER TABLE ONLY public.employee DROP CONSTRAINT fk_employee_employee;
       public    
   admin_user    false    187    187    2604            6
           2606    18322    fk_genre_track    FK CONSTRAINT     l   ALTER TABLE ONLY track
    ADD CONSTRAINT fk_genre_track FOREIGN KEY (genre_id) REFERENCES genre(genre_id);
 >   ALTER TABLE ONLY public.track DROP CONSTRAINT fk_genre_track;
       public    
   admin_user    false    2596    182    180            =
           2606    18402    fk_invoice_invoice_line    FK CONSTRAINT     �   ALTER TABLE ONLY invoice_line
    ADD CONSTRAINT fk_invoice_invoice_line FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id);
 N   ALTER TABLE ONLY public.invoice_line DROP CONSTRAINT fk_invoice_invoice_line;
       public    
   admin_user    false    193    2608    191            5
           2606    18317    fk_media_type_track    FK CONSTRAINT     �   ALTER TABLE ONLY track
    ADD CONSTRAINT fk_media_type_track FOREIGN KEY (media_type_id) REFERENCES media_type(media_type_id);
 C   ALTER TABLE ONLY public.track DROP CONSTRAINT fk_media_type_track;
       public    
   admin_user    false    2594    182    178            7
           2606    18340    fk_playlist_playlist_track    FK CONSTRAINT     �   ALTER TABLE ONLY playlist_track
    ADD CONSTRAINT fk_playlist_playlist_track FOREIGN KEY (playlist_id) REFERENCES playlist(playlist_id);
 S   ALTER TABLE ONLY public.playlist_track DROP CONSTRAINT fk_playlist_playlist_track;
       public    
   admin_user    false    185    2600    184            <
           2606    18397    fk_track_invoice_line    FK CONSTRAINT     z   ALTER TABLE ONLY invoice_line
    ADD CONSTRAINT fk_track_invoice_line FOREIGN KEY (track_id) REFERENCES track(track_id);
 L   ALTER TABLE ONLY public.invoice_line DROP CONSTRAINT fk_track_invoice_line;
       public    
   admin_user    false    182    193    2598            8
           2606    18345    fk_track_playlist_track    FK CONSTRAINT     ~   ALTER TABLE ONLY playlist_track
    ADD CONSTRAINT fk_track_playlist_track FOREIGN KEY (track_id) REFERENCES track(track_id);
 P   ALTER TABLE ONLY public.playlist_track DROP CONSTRAINT fk_track_playlist_track;
       public    
   admin_user    false    185    182    2598            X           826    18434     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE admin_user IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE admin_user IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM admin_user;
ALTER DEFAULT PRIVILEGES FOR ROLE admin_user IN SCHEMA public GRANT ALL ON FUNCTIONS  TO uasb_user;
ALTER DEFAULT PRIVILEGES FOR ROLE admin_user IN SCHEMA public GRANT ALL ON FUNCTIONS  TO operator_user;
ALTER DEFAULT PRIVILEGES FOR ROLE admin_user IN SCHEMA public GRANT ALL ON FUNCTIONS  TO test_user;
            public    
   admin_user    false    6            W           826    18435    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE admin_user IN SCHEMA public REVOKE ALL ON TABLES  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE admin_user IN SCHEMA public REVOKE ALL ON TABLES  FROM admin_user;
ALTER DEFAULT PRIVILEGES FOR ROLE admin_user IN SCHEMA public GRANT SELECT ON TABLES  TO uasb_user;
ALTER DEFAULT PRIVILEGES FOR ROLE admin_user IN SCHEMA public GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES  TO operator_user;
            public    
   admin_user    false    6            �
      x����r9�������i����p��	j�dK[T��ӧ/ D֨X`�"5���%P��qO��X�,,���'ʑ:q��^����k}���[��oV�M�6V��Z�bu`��֍����o<����+[7��km�Lˋi��-3�le����1�@�K}Y�Z%���d�K����}=˙/�ԉY�"�mԠ7Q��lk}aV�Fl��k+}h���jԋ�j�f��soոE�C\���?��Kd㋻k=wm�5�jҋ��_����V���Y��ߋR5-n�
}�ڂ�T����͖M���ѿ��BG��(�E���zԇ�`����4+Žh�Z���bO���]����;�5V.���e���M��ʮ1O�Ӳ,/�*J{q���ڌ�>�[�A�/8�-�v�D�Z4�+U4�ő�U���ʨh؋c5w�<��:�5�w~,Q^O��u㪜F�x���dV��ʰ�i��*����:88�s���'���D�����8_�t��ڪ8�%�:4Ui�9_��G*�zI9�>V6�y�߆�ީ8�%��Tfi�Y��{�{�P}��1��I���Ӎ�ş�V�1V��T�v�>���A�~&������y���JN8H{i_F���yxe�K#ua[٭-�({)����g^�$��]��U�l5��T�V����ceno�&V�b�@��������㲲�{2T:T~{l��L��^:z�v����1*�ұ:�k���Qb����/�4dO��U��� D�w�.������e���=m�Z'�A���G���9� �ߕ+�Ea߇���h��C{�Xbk}-y�| <��&��ڍ��զ�	��Ȱ�N�����c�>��N��U`G�D9W�뗹�r¼��2�,��0�U^ZM4�%��X�hSyY��`5��>������Z�T���a��yE�׀����-�}vt���fc��M�_���8��A|�F������*w�M�z[�c5��F����h�s�dk1�aa6X2�z�D�Rn�Vp�?�޴^M����R�7;9]��ں��,v��4%��X��y~k�|m�b��+Kt]��D8�����\ �Y!�$g�O]�4O�<N{���0HA�y�xAw^W��.y���&��[���u��T��I��b�Ao��+ܒ�'my����x�~nM��������1���[AI0n��C�H՘ǉ��mF���r�M����b�[�u�^�6 �xܛ�x��>+�VY����G#a(�F���2V��&���mXAq�gGV�ڤߛ��� D���H�;��IJ�H�ƃ��*ȄH�9B������gJG��q�Ǚ [�3[�,Վ���kNoe�OF���7�xI,�:�L��
�����wj���Ye�,8��J��ᡚ�6����H����d�K�ʓ1�)b��#��L��� �hn�	�l���Bt"
��>x~`]K6���_��Mpga�(��M�JA���yմx�gAd�?u{jف��K[.$�4��� S^�=��3ߖw��`���Ԧp�;7�7=��p�Ak�>2Ӂ�8\�3�|�B �{9K���$e�c�խ �C�9����fxo�j�>9���K�/Hu
w:d0a����%�>�����x �!��Ⱥȳ������3��$#�*���/	QK1�L�=Q����EN]��#�G�k�a�\�!!�R��p�ξ�_�?��'��-)��w�N�~/�䃿$%q�5T"Y���s�jbp)4���u������o5�	�z]�H�)���@�ٹ��lZ1&oЄ��-V��8�����$k�<��E!�%��*������d���1{
xs�f_/ �E��'��T����'4�<�'?�=?��K�U���7� �Թ� ��OH��b�V�҉=�QT��g*@F�P��i`"���=9�'�oNz�2�[{��������"�"A�/�^��>�)6�bi�����ʭC��{���S�~��՝Y��=��2�Īւ�A2T��˰_$�eZ��
!#遠0;�e�g��0ka�z� �\Ѓ���;at�����@C����O������<VG���V/L�6?|=���sM������*������ړM�>����:3��F0��*_z����P0���]�����i�aB]y��F���-�+�E36X�O��.D=i�t�t�H]SG��X}���߉���ɞ2D�I���ƃ��,i�"���������Ѯm��(���0��MO�p�L3)e-�"��4�p�����v�j�x�b/p������u��+X2�G��� X���P��99׊�8�?�c��D4���*z�g/��M�ꍴԘ�L c�
d���t�����R:�i��?G[���|���2r��%����N�4����fy�6��8"\�\�
4�-����w�K�z��v (%jf�9�����zI�Ci������yH]��V"� �}�(�����}�~� =i�|���I�����B�Q(l���#�Ձ�:�Q�'(v|�N�t��D/��x���`�)H�{w���;����J~�ӿ����n���B�*{Hq|G$3Wx~g���~NI)Y��	��Q�\�"�2�s�h�޶���]�H]r~i;)ͷ����꡿�׹g�0�F��V>>�{ڈ�+;|[�)�k!L�a����6��"����F���З�i�&&X_�-�}�Pǥ�~~���L͖�NM�b*g�`/����sW7���T�8���kq܉c5]��Ki���Խ:D	dۡ�ׇ�|�ZiN��W&�4t�'.l�ߍ���\�b!�4���_r�a7�<�m��#��	��>�z���W���BJG~�}�O"�mL�L�w��_�o�[��$����Tj۽tD�An	����W��)��nZ�:-:��H'<K<cR���o��1
9�])�vv1�����G���%�ra_�q htwJ���`������-?@h?�-hӏ"P�� �L�w�'�`V�?Z0X�J�y�l�gS��P��Kf�����f�1���;��D���\�o����7Ydr�	��4,���mw�C�nr���}�w�7_�j#����3�8424�^+�>RZJ��L҂�r�zI��ufh��Ix\�laD��--�ә\l�U�G+�6�S���>����U]��
�x9�~�o�q����6���*N��U��,���{����a�u�>+���Pţ���]
$�#�iF�#A8���<��Yq��Q�ym�r��s�[2�Fr����
E���޷�"2 �����v���R��K���[��2����sb����r:���.R]����jF?m�[�a����|ي�,N�������y��$XV&�h#���j�ts��u�����[�G��GWdt�K����騽h�;_=�l� �X.y��e>*���ؿ=�7����g���㐾�+b�.�ȏs���)1:�s�W��dB!����r������	�]�7�pv*�7����ô��S��ȋ�v�Y��8ԓ	�,:�|��E��m���e�ɡ�a�q��@_�7�;]%=8=(���~3K����K���Tt���z�2����ﺫ�/m�o�A�.�=
�?6��pY�<XdAi���10�Z�{�-��3��֨c��+���[���fO'1�մKBS>��Y�r�g��}c6x��ܓ�M�����_ȗ�cS˽v���؆1�`}q�[�*�<\r!\R��b/�o?9o�[V&�=��PN�K��O�{�CGs/>~���3����R��'-�"�]Gr�&�"�{��X������)4���ۋP ���s�]�G��0�%���L -���%e^�8��*�����UO�P��}ŨP�}��8�%����e���������>����_奘!��cP��u끡������V��R'�%Ă׺VM_Y��|=�w���7p��� ?��8�m���WWbhpB��ׄ�'�����K@�&�@_8��H����]m����_ ,9��BRZ�#��C�S[P2���r�	�hk�MK�<v��� �  ^�*r����o�~u���4���Z��UR�2O��iA�z��J#��w\0Մ^`�-���ZLy�p@ʃ�����y��_�F���V `�'$��kʵ���	���WgӃ�/�~]}[�5�U,�9#�Y�O��C��.�SHɿ�Fx@,�B�&vH�+}��$�pJ�z���.d�7x��w�"����)�eS"5�������\��Ϲ��j�"�_g��7��}����o���k��SY���0/SB�И\XqL]����l�b�*�-8u$��P���@.+��P��y=Ru���1CuL������Vn�H�i�{���O��+���=}��h�`�TXe���\��9y��ga*C���<+��4�$��TC�J�io���y����Ծ�@<��^n͚�2�/&-*[��@%VBj:�ǰ����:�����]M�;����Qˬ9�x��C(���� �{���Z�%j���f��������ҔTH<�$��
Yhwa�_�n�j)\���%�V�_�ש�>��#R����Q]��_@�8"��]I�f��'/[ם(a���A�!�����Gp-������Ac�iq5��C�ؕ$K���a\#��~���NU���������AW��vb�����(����g�{���������gH�p��a�/��Ȣ�����z��V�5      �
   �  x���[s�8���_���n����{�.��G�$��}�(XBL��#����3�3����J����s�M5�<'�f��TIKm���U�����)\�/}pei��&�\f��B�W�e�SÍ�L��T.3I_��en�6����G�TI��F.�wz��+�N�M5�y�/���z�3g�]�L�33��h���/䵺`�����'.��t_$͎�V�ּ�Ucc+Sx����I���+�y=�M���Is��naV_�e0I�TMp�.�0T���$MՅ]���fcsW$iK�S����fc�=6���둵w+kB��muiB�K���MҎ�ty�}e�̭mQy^ٹ�|�v��q���_�S�.���s~$)>�⑧٤�Pg>,-7
�˙�uf..)���D���N_��/	�n��E��%��$���2���ue��k=��$��:^��w�}����L�ԉE���bM���K��2S&��:�I��]��$���k'm�
c��x�N�mu�z�-W��=\od���S�mX�#}���I{���HOθb���G~ޘ��Y}Br��K���NC]�	y.Y�i�_j�����2��l��|Gt��4�XO�.�t��l1p�6,��tթ/Ͳv&wz�˚<�,{���ڍ���FԌwtO?����k%N��>�I����1榬�n�������ʯqy���م�î��)/�Mk�^���~��ve�M�_lV��7���}y�Y�����R�6�]���\\��9�O�u�j[ʝȩ�@�����P�V����
���<ҷ�w���/a%�=^��.�Q��}aJz�SI���lں-��g���h�"��H`Ϛ�(�~CM���)�>��ܾ~�N0��� �M�T����%0�V'���\Uq�Ρ�g�qEJ���f<�k��KI���V�(��G��Ӻ(��OD�$������p�ߠ�>���8����̬��(���]�3�%��:;�Mmu��N���"��ɠCeX��
NR)������Y�0%Au2n6�VQ���i�y�%��d�
H�&Np�ъ���򘉈a[p���d�Q�J���n�+���Mp�h��[R7&D疱ʁh��&x}�������ס`S���P�o���@6�^�b)qh��7�����(d���!1r}Yc�HR�֗�C�P7�(��~�`�T�����z�8U�w��.����Ҳ[$`������k�0�?�gGM�[�`'Ɓ�S1nf�W#㞚B�}EF�ܱ7�!�H�jZGA��@|���@�{�_?�Z	t�����>L�X��M �UT��wpK�\�B ���������r'���<��(*ٯ�f���k}}���� �vխT���G�BI�+���<��?Z�S{N��V&�q�Z�;�qT��Ѝ8�x/~�"�xQ�8�zr�{G�eU+N�Z#y$2 ���O+2��Q�n-�D��#��L Q1+�f�/���vu�$��_S�4կ�v�)\R��"Z
��%[�Ϗ�\[}Z9P�0���f3�j	�b\ �]�����`�3������D�qW��d���>X�di�P��
��C(&���o�6r����u�?����BC�p�OB�w��Z=�s9/�!xA_�<�P�d�� bW�(#�Ad���ń�zL�/ipf���.�6E�_�D �w�0[��ٺe�!4nɫS���gTU�k �|Ż��>�`��"&�qk}�W{=�C�X	R�HDzTD����l��vfU3j�KK]_��ػ�l$z��� O�����^<�]�3V
�/��,��z�r����F�6���b���C��y�%%�P����eK��{|$=a�H![��! |�n)rrF�<����~��CR�z~t�>��#!��ĕC a�&.���C�꺂��BAiU�q�*T���^�~��C�"CI�H򸡄�p���:J2F�"��}����\
֋$3Y䄁�o��=�+WFOjY:P�$�
�a�h<E�b(�9 ߣ�y��d����P<R�a�S�/��%S-�(�A�nae����`D
�`���*�����יHQJ�� ����F��+�Ől��I��B��%HOV��r�||�x�]�cn�*W�(G�/�y=n��+��q�D&�D�g(o@' ԰j"m 	$�ۙ߬�:ꒋI��B��F�%��'���eH��\��ZIahT��ߛ��������P��$�3�hE�$Գ<x#W�x D��Kܰ�>q�������1�R�o?K��-�YecDΐ'Ei�BJ)�?���;���� `N�O�r�l�(#���-�D�1T��;����<���~]�����sG�dҶҔ���ǚ���j_%�~�<{/��ur�^�KW�I��"VF���[r����M��>�H�k:�FlW�=ۭ7+!fr,�������O-UK�c'���s��M��OE���8��O},v��M�+�dgQ@�[q�
g�Bi���(�E�@?'�7���ϷMX�QR$G`y���]�-���]us�kA�Ŏ����ݒ�Uth_	�
�F@���qe�g��w��jb)�zq�8}�h��pqc��n��9��H*�����HF`�:i�����[6��x1�r�oY��1��[tB�>���X+��?
���e��"�]S!�=+;�;j����#��/E��R+��w��:��;A��+��.��ڤ͚S�,��hz�U�%�T��J�W���Ef-�!�X��=c�j��SP�ǀ�]jLq�SKߘ�2�ï�l�=3 >qa������ż�j��J��\�����墲P�'t儀1�)�g�1U�7�3m���u��b+����" ?������kZ�3���'��	�4a�|��\��g�r�O��������`Ў�G���$�p�w����lW�=�^�+������կr	���I��U"8L��Î@K��XJ++_[�d峬<tr�}��L�x��O�����.D�Pgf����k!�P�)���rď���c��-�0_nv1-�!��]rQ�<�ƻz8��0��8��Jn�?2�5�̽v�P��^�b�~
���8����<W���P=�X�U#��QH�hDpm�;bLSqJ�˧M����T\Z���, ����%����I�`�� ���lx�zG�J=Ϊ؋�_��{��NG�ʡ�ttd��
Y�eV��'gҷq��G��yͶ�����������>͟{;�ϻ$I�dȒ      �
   a  x�uW]S��|>��y��
vif���1$@lC�6[[�ۃ%#i|�¿�=#Ɂ�]� Q������}�}�����,�5�뼭)�c�s��g�G���lLI�s��Rm݇���F���?����|�� ��?	�0��ЁsqV��e�Q���ntYfO��;�������9"�c��N�[]�USi�Ѓ*7����O��<�S�?ǎ9��,��A��I!�{��Y��a�	�S��g�RU���٘]��u�q����I��)�.�E��ܴe���=d������P�{�q��=�M�@�<|��'O�c<�9������n��V8i�m*S���MMu0�j2\g��?�0Km�������Q,{R_X�����t�e;+Tw�)�Hu�k:��y��B1������}3���c���H�\8��|$?|�����|}�L�8ю��]xE�'�ñ����Y��̘Mۃ���4��<�)���,I�����N�΂�)޳
�.T�jq��(�9��9��mf��.[��-�F�_�}$em�w�����Â�դ�4MU��b�C�~�:_jT�xp�1ʒ�\E��:9�B�=����Yj�Bey�1!�
BMQ�L��������-4�Ӷ��rUn}�9
)p���"{M�(�b?�;��ݑ��tc����"�	[�\���Mm�b�]��;}��鐒h��C��U���~?�K�; ̠`�le۝��L�l�v���B/�[ �¤#)� z�:�75��=d��T�j4�YK��ŘY���f֛�K ������$я��yS
z�W�b��TDP������ׁ瓩0�������*B=�vc{s��G��PP�m�`���&���+L'�QJ�p���nl5��:i��R����<��x��d>��6�����M�K��e��� ���ԳfӬy����Ͻ��1@�}��P�4W� ֘kk7/h~���-�jh	{�uC����D��!�����y	�r�VƕY�-�1����k/�3��p}U�;�wߓۦQ/��q��,��,�i#Gz���@ � ��m�6��U��AL�	�Ѓ�]�E��)W*Ϟ�OZ��s�b|�%X�A�~��<� *^�w��OTe�.k��ڹ�m�6�䡢��9�͏Q��3&�;�>�#�"e�o��0��y�iZ����I���@��0/�6liq?p��'�/��C'jQm�@[�q��mT�O;%Li;F�)[��[��m����(�<T��T��da��_n:���z�P��7��p��~������J����w"q$��/X������}�N�h���q~��r��0�����^O&G"�E1�Lݷ��f�u8�H_��~�*we�@23mV�s�"�«��V��#��nS�dB���D/o�sx��N����k�v+�\W���g�_ݍ��,�E�S́E��c�d!X����^tP}FwL!]���n����$�M�a�8���g����6�L�kV�#`(��J� 5�!�Y��F�0�eFH	�=`�gl��X��S���B�rN׍�9��$�C	�B&�HJl�D��TeYc��Ue�k��2��B�;�Y�/�J�5�w�6ɽ�Ѥ@�T[d��6.�������C�þ%��@�*P!�]O\� �Zzc�3�+�_�,���묭wc� ���ɑR����49|�>�!��QpD8��w8�����`���ˢP ��@H\���աM3쪖������CC�Ϯ@滂�ȋ����}�[�wB�'�t//N�M�d���ڴ�7��#`�r�(�BD�����8u`��ڸM��m�%+ޑ�J�۪�d!L�C��d���������cF�v�q���k����kٽzͱ��/8;�/<�|�mK��{�H��n�� ��[vC�����d3P:�x7��Q-�(�j�-����b��~�x#��&��]�0��~���A�P�Ǘ�xVW��C<8��v~����n�<���hq1�l�K�@X�S��u��ɹ}m@�&P2>f(��?{t ���2��4t$��v�dE�b�����K�g�N�l�Wl*�N�n=Px��ˮ���!b�p����G�a^KP�=>99��%Lu      �
   6  x����o�0����qՔ�?c�6@S7(�j��I���F��@��g�tR�S�w�����	�K���oKopg��Bm��xx��R�`��/V	�@��t�5��M��{�q�q��J31FtJ�+A_��7�S�d\��
�B�n	ߊ��:�.���nӣ�܃�eSm�W�ue�@|"����	&��@���OS-�=u�Dg�Up�n�d�_V�`c����х+�0��U�n�u�A����`�,F���G[Ȏ��s�����RI(��;6گa�}8�4Wq\&8KH�cmpR��(o�1�'��3K8���2����[�:lKޘ�� Ө���HpB$HI� q#�������a��I����yֱu���d�KSU�XjS�����ũ�8��PT��;XS����2>��qxx:\0*�.*Y�{(a��xts�h���i��8Ƿ}��^.����v��J�2��Г��7�r�W�����'�M0=�(���!�x�J/��{���\�����ir�(C��Տ0�SU*�伢�v@{vPϷ�^�_\O      �
   �   x�M�;o�0�g�Wh�XG�����H��)ڥ!�E2,�E�뫶K7���wG	��T�H�;��đ,���G�L,f�4����ظV4�Z\@eG��c����#�5�|�rg?�6���ʇ@��O�R���MM���P�P3M7�@�̪,Hs	{�:�Mَ�f�x��mQ.�6��}�5�\Wpֆ"FG��5�����
��?r�R���B����J�l��۴��? U[K!${�����D�a^2      �
   �  x��\]sԸ}V~� IY����vao��Mvo�Ø��Ħ&3����-��P�)�(j��� ��>>j��0�0Q���ǵfV��W7﫫;�j�8�q`�g��E����+qn�=q�����#ń�h�3���v�=V7�U׭����`���ϛS&8��������Ȳ�0��}Q]o��u;�_W{׮�'�~[��ǎUׂ�g~@q�ȱF$�܋�ݲ��U������a���V�������0y�~\��G�f�N������]?�q�/7��0��f�-�a��:q����⣶և��z=���.�a�b��[T�����Ȯx�.^�`D�
��?�uu���_?t-�V������r���۾���'N`��<�RqV�8�c ?�l�&����T]�W���i]��u�)�`w��J[�(IW��ܛ�S����/�|�[��a�T5��}󄥘�yuW5�9���\�z@�&���f���ꤚ��i�l��s���)i ���B�J\s�y��h?w��U��c��e����]�̕v&o*~�h�]��ɪ��D�Tq�OP��m�a��Z@ �~��,	_�n*��5�&@��c� ����ٸY�vC�n���}��ޱ���z�o�op:Q`e�l���%�H�j_T�Yv�뾽;��Q�!�P�/������k;T�c�`g�p�.G!{3,`IJc��L:eo�$�f/E�݉X�]�E��9\w����������9E����4	�uQ �qm
��e)Xc#$pu��3|h���~�~|XW\�����Ӻ[-�Gv{ˮ:P����5T)�ϰ��/ �~� J dN;�����]7,���[���ڭ����[}^��-�4�$�Ө��G%��I�4��!S$�yiYX6��Օ������#���' e W��7�k���λ�S�y�?��Y�??��G�n�u�n ����*����^]l�lP3w=�n��m%_]шM���*�*��J ��@ (���Cj���X`i��a����fX�󳧺�����Bo��^ͨ������xr7����a�ݐu�jy�G��v�n��[x��*~aHjXl�iX�ۧ�j���������et���g��lR�X�fY���c�"hA�Rt�:�[��o���<���FcG�T��L&M�3%sEKք����o������n>�_�q�_TP���cǮ/ٛu���`o�v�ZE�A<�%1T�j�\� ���h� ~[`���ȑ@�:i �p֭V�g�����災��#�w8��ۀ�	7*�+x*.ד�<���ٟ�'�o��#�Q�� E�i�8.r\(U�G#���"s��%R� ��ǋ:��h� �-�Pd�X����ܖ��?�)��e�*]��E�M��2H��L):���t|�)SMT����@2�͙gT�zrJ
?�)�w�"���QCJ����w�+���td�]x,)���{
��� �E��������̇]}�����t�M��I.�+��C�L>��)}tf2L,5�0��T�:SO��u�#+p��E���e��h8o��'}3��e���s]�_��m�g9�]�\���[ծݮvG�+����e�r4X��A�8  jkm�ލ�p`����7�u�6 *?a���0�î�o����3���������lp��6�j8�pY]v�~DU6��&[}�wHǎ�H�2S�H���t�j���Z�ɼDSh^i�M*5u��ʄxds�X�bX����.ٜ9���������|�^�w�2����5�c��''�*��=3��:�([���l�Y���`7&Ki�t�<�N�2?t����+�)K#����B6S�<���.��U����JI��I,Ғ'4/f��+�&ӷ.9G{��8��t-��w�^eˮEH"@^T��Z��aU��{���������.���툮�.#&@�E^F�a�S�:�5�鋡:J��RF��x<�7{O�t"<��!"K�K�P ��
z�6�aDs%~��o8D�9F��`*�������J����Ą��s9A�,ʨI�\~UKr�M�f��E�7�;]
L���ȸ���.tD*�B����3��b��olE���U�$s��P�ܟ�MAi��h\�{�_���=r��N	l^�sDU�����p��������Xh32��d�`��&4�W��dU�p���*�p��_�;��_�n���y�o1n�˘����Y��ҩm��:ȓ�5�ᕡa$����	e�PlHR]�RP�SZpj�����os����F�gT	��c��`�x��j�=�
�oꈃw�?�;�L��.�*��"0u��=���
�M���v�f����Ey�}�1�SO�1��cY���?�e��i �$� )�E����$ ��0�س�Z�*��$�`�b:l_��39[O5o�"�MOag�m�]3]"e�ŭ�d�?��QKfF�����w�pE;���2�ܧ��|/IW������Nń��"��g�æ:��\���Ar"�X�&sʞ,V��]F ]n�ɂ�&Z�p�^hw0mÍ��EN��إSېOeb��$D�sa!)��F�??�]�T�5M4~\�3rKSҨp��aa���<��F�B̬A^2�m)�l[J&��C�ߛ(L��=<!B�*�9*���\2�J�<���LG�)���>6��E]�������sjl`�	I�	=��dƴ6ɇV��	��Y>mG�t���P8w���&��g��f)��AX&<U(,$�>r�,=��lxJ���J:r�]'5h���PȄ1&JF2%�Q�V��A��v��f"|�@��2�B�**Z2x�	�W�{�|�K�����D�4��mt�Z�3<�P�]	��m�C�4��lB���B֮��hd�LHz!�b
��� �� �<�"�V?���%R,.��A��RSGD�����ߤA�#����dF��`{�J�R�i�޽Ħ����&*W0�K���?E0��>WT�N�I�m����X�>M�2%�b�7|8Ob�|�8�l��-C	���'�2�E���D(���v�X�½����0%1E��-�;�K�<<q��X���7%$�\��cs�|��W�9���N\��H��7�O����_:%��m�C&/�?�'4���<'J���W���;zR)�+�lI�%ل���қ*��}��@�}��H�p��1}���+�}0�`]�֐CQ�M�\��a����</=��q��2�B���<�.��~�|-���"'#)�x@��$�U���P݇uJ%��IJ���Cj�������%C�����2L�ֆ��Y^ܜ�#�R��)�
K���S�+l/�:L-RZ)���n��n�sٮ�.s݄��������Z����+<��I��O�M�ɶ���0G�ek�$�.%�F������4IF��6��2B�Q���pg�g{��X7��R���p� ��\4�%����W�gJ˓Y�T���&�A��� ]�V���G��JI챙m�}�=%��\B��rD��&��/��	M�K��y`�f\��_��/��q:����?�d��4�c<��<��u�h�5���م�k!�7��P���>�N���1 ?����h�M�=��1�:|l
��aߡ�� �����l�צPї�蹨�]��'S�aEѻt�:��;9::�?5��      �
      x�}�I���E��&�d��K�?�p�:� �;@��kJ�X������}����������?���-�����3~������K�����[�����#�x�����?�G?����������O~��}���G��}�����S��������߷�����r�ޜ�#��e~z�����_9������?���럔�x{�#��x=�����	@��5ЏXl�)k?9������f���(v+@
�{R���:
�e�
Џ�a��ѣXh!7�x���(Zl�&�? RȐ��a�t Z[���֗��B'�6[b�}ݞ��V���EȽݞbj��b_Ah�؞��֐�Ihٞ��֒��h�^�-�x�y��xCQ��m��Kl�08S���,��W(�&��z��o�3�S��4&#	-i(�xk��ǻ ����I4�<[ �n\�'�W���%��@3��^�ߛ����$��l_͇Yc_��y�||9G+�6b>��1;j����c�K8cI��Ζ��r��LB�6�x~a4�0����A�6}-�jF���6c�E��8I�w"�Y�~X!Z�P����ދhi�·g*^+��kѾU�)M��* |�D���M"ڃj��$b,^��D�A��[����Ā����ӷ��ů�Nc/�=/'dY �A�E����1$�U!F�x��Ȳ166&����(Ą{�������+Tl��ֵ�a�
1��B��,��4��B����׈{.��mO!&�$&b^d�2K��#,-D��i��@�,���%��G��=*���z�ǆ.D�!h!F܈��z�=����=�b!fл�����w�-n,��Y���oz�DLH��G(DgY�[�6Y}�B�%��%�-I�'����A���;h�V�w�&�4k�&~�3�jaH������tX�B��M�b�����ƿ�(�(����y9_!Kg�ª%����4��I�b�~v!:B�����͑��Qާ��)o�昵���}C��j1�DLN/�Y!r^�dљ�P`�h�F(;I���`h���ћ9�@��R�B�;".OD�[,��|�W�y�a�&��T�X'�t*�a�
1��S�Y/!�$����s(�@�n|����.,M(��Q��}�"F�u�H3S�04bofI�+�$�[!ڔ�a�
�#
×�6�o��B��BM2:�|�B-R:M����Y�&F��_��"�*D�QV��@����)D�(�D^#7����13�w-K�Dt�'6�w�b�Cv!F��=*D��+b��/�Q"Z�~��b=�K��JL<�Ի�߻}��6�վ�у~g!za~�{'����w!F�S�>.�8�"�8��B�&��c_<�������ǧ_�5�h���ND���G�[_h�Dt����ND;�_h�D���F����쎚]�r�S�w����H!ʆ��}��8A�KlI�"?�1�����В�"��t^BK��XR�P[3����@(�Él�)N!z9�B&�fr��&���
�,ܣ��Z�3�s).�s!R��D��������0
�����qg!��`��%��?�(�	ry]ڃ�w1zԄ�0�N�p{=(��d��l�d���}.�e�2慏�Ǩ=I��s��Y!�"��f�8��r[��.���1�e�����1���,�ɴ�h�TQ1]��3�w �̝B̠d�~CO�Sh�E�dzF0K����F�i���~��S=.�}1z�P$������cd�Y���t�&�.(�y���@K@O/�0<B��M:���э#	�4�@�IE̓�vI�"��'	�l��y2� �I�F�X�5B�)�dF�C?(�z!rēb�,Ր������q|G9�Av!���v
Ѯ*�5�.���&��Dt����@t(<�0��s���s69��k�Z�X��$�8����ڞ��D�f�����g8��ڏ�.�y׉����DKfQ�%	�C�I9!H��5
��ܹ�E���[�lNm�&�D��L�K"zШ�D�k��N�����<�c�^Do��%���A�X!F�y).�Y-T���ۅRѳ��J��.2�eA����*h�T3!$�n�^�vzzD��=HD��F!Z׭V��M]o���Z׭Π#�2�ý_D��3hj�����"���#?�6.���y��"F�}#.K��Z˂UKD?�mу&���Q����	����|�_8��+���0����Bt���� 1�{.���Z!Z�,� ��f}F ��u�}�ia��is��L%c^�9Is#`�'����s���6X��ɘ��d�ǌ&c�8v4��1���9Ē�gr�o2f��;�&��Ν��(�s��x��c6��D�;���3�ݣ�?��!�T��M�}1R�M�;ɢW�5'�)�~�e�c�ᾌ���0r��q��e&_N���W��d������{ؘ�d����N�����x&�Mcf�������LF�㘌9�{������|�;$����9fbrHN��P�r=.�w2�K�_�1�]`vH7��%y^���B6z�=v�J1f\�2���b���3_:��S�b�<$���I�]�<��������t-�5��&͚����<k2��n��h��ɳ&cn��ums�+ms���]��M� ���%�(ƬgrY-et�Z|���t�=�+�)�׾���v^LLF?+�&&#��](r�v��j�����C�X��������>#�E|t-3v�
���*y����`w���"nKF�:B�b�;ئb��ئd�{?ئb��ئd�;��ō73?�b�̥�9�cg���ao��E,��ރ\z��K;@&�I��=v�a2Z��a1f\�2fͣ�Ѻ���2Zf��^M��!��W��.�u��х)\0+F�^��b��<�\Fg	'T�h���l�h����?�}����g��1��!�z1}�Lw���O^�NF?�C�`���v2Z����.�w�N�ac��0{9�'c��.�c�C[�׹�������k�Ǜ�C[ˀ�2��M���H�� s-��:!s7�;�	M��~�|_�\c�N�BFp�������`[���f�`#f�SՄs~̑�x.�T}D0�2[��4ʀ�9��'��r��.�T�Y0�2d3/��u@�Bzgtg��R�2o޹>�:�3�d��n8��/oR>�i¾�F� �84BZ+�~��j2r*埐� h䂜��BN�k�s�躔�툄��&G&�����NH����i��qע s��9�BKo�sg�Ԓ�M W1w�̹dΏ�J��yŷ��{�;��KEA��eLO������v�&�e��vR�('�uq�ier��,��12�d
�-�`2�B�P��u�ݲ�IB:dn�ۤ �$��IB:aٲ�IB�ޟdﭠ�t�h�� #x/�OW[�D��˔	�1Y^��Lw�l�R��Q��m����Qr��)��^�
����B����AN�����++���-:���w.dz*�F/H�4���/��L�6��L��1�0���LB���|t>�t����Ԉ���)�5>j��.N3SAN�q1�z������A养@��+��i'b�{-��0�\.{w$��w���L_e��LR��$c��=&�VM��;Bs��*��̾��� ̼|T���w�����&���i�D!l2F7c�1`P���[����"�D�')�<K���F�f�<�a����"'�ƨ���1:�v(ɘx�,�5��R�YX$�7�W��x��A��d�ޠG2Fo�˂�'��e:Ucƅ�1���UQ��7"�i2�U��ɬ�m���Ft0&d�{����t�h$Q�i����|���f�x0F��y��9��앆���N�FyAf�r� ���� ���z^���\>/�lij�
2�5"����-���+�Aיs���2��]3���^2�-��=2��� q!�ѳ	�4�K�������3�����i�{q͎%���\��:K\��R�����`�����5s��t�(���|�72m4�Ax!��:2�4_�L�x$d�ҽ�q3_����~�wƝ��	jAN� V
  ;�欹qղ ���I���aq�2���/�L��~�yw+O����I��A�q�B����Ʌ���2��&��P�<ä�Ԅ����z�S�i[ӵ7�2�T�t��\{�H,!'���	yAne��LG\2�c�ŀ蛛Uo��/UA�U0�s���KHU����d:��M�xkyX�A�Ͱ�e&!��Q�4����w!7�u!����.d����V��/�+g��i��_���)�0�.0�K�r�3$L��e����΅L���%2�c9W��;h� ׫�\Ȝ}X΄��%%|!3O�_�mN,gAFp,gBn�`9Wv�s�Oz� �EG���Sbػ��6_�Ǚ��4PwQ��qx��^'��y��/ϊ�:��/!7:B���<g���' 2���0!���R��w�L����`B&�MyT�l�9O�sJA&L�wʅ�RńL40��A�^4}Y2�n`255�����Q��[�#+Ȩ����$cAF2�u.���ǅ�_�e�KNͼ���'��ǅ���l��Q.dF���J�]�!}�Q�w!��������L�a��HȽ`r	{G���N�[���t�uIi^۹�����t����k����>�.Ȍ\�|~?�	>�����4�{ܺ��6�ނ���2���M��ĈDhe�Y(��܌)&�K�%�9��9D���3@l���b}'�K7!g�XK	9t~3�й3�R���_� �;��,_n�eb������B��BŬ#�,�&���PҲ���bdO�6I�'3d�W抙�z������1�t1�r�~��0_���]6���4=����1>�_A��uJA��'��xܷ_N�_�ɽBZ��c�]8�+�}'/�B?�s�����)�XZ�\Ȍ."�L�	�U�14T��yw�_�h�9�d߅��B�CG+kUmm���@t?�@R2�����(1�M���c�&�A�Q� �y�fƵ~��y�#3�Ҩ5`?�1�x����Ǆ�y����P1Z���-3�4)+{Mq1f� �(�w�BF�Д3!�s�^��F|�'m���]1��qU=4�'�D�=�bL�ߢ�7!���w(��馹SB.wO��7K��۶����}�F��Ѝ��M"�����h4݀��$ZԀ��-j@L$-j@\.�5��n�&5ɘ$]j�1s��ܸ�rn�'c.C,lu�����Ÿϯ1�����^��rXرd̻��%cd�s~}�ދ�|ŘPf�����*�2���5���Aq&cƅ�L�ȃڄq�Bk&c�)J���$��`�m��^&Sȹљɘ��U��?Wj��/_@�2��b�̣�iwS��ycN�9kz�`�I�q��R&�cN�9CJ�(Սz�1Z�c�d�q8�!�1����d�z��c�3�U0�,�6>ɘ=��Xv�"D���m�_��O1f;��L�F�]���\�<�}.c�*� t�2�j�sI��J��%��9LƤ"h�R��[ c��d`�)P�SɘD���6�.���hA��Ӈ|���a�,1� �1�Ç^�؅ۃ�-�8��a)���l��w��ϱk1�]`���|�1c'��q� �ظM����� ƽ��^F��ܽ�o�(��!,H��.�ov�7'��]N�]�]Q���͐�}΁�v%v!#8�� #8�.!��Ї�BFp,"5b��c��NA&F���t{�v��uBN�}!s9��!#8v1!� h|Z�)�>I�>�f2�!���'q�ܴ�	�_��Lvۅ�<*��<�z��4/dv9=W/�`_�-�qAFprAFp>��I�� ��
r3��I�����^��黐1qt*���*�}�y�O��vA�'���0u��*�8��2�r�o6�3n2�d�7�h�s!3��[��ַ �1�����b�[�� #��?���);��o>����=��)��9{Gj !�T��r��@AN�u!g��Ќe�EG� !�c��$���˟��L|����t�P���P��Q�f[�qy�1!��߇x1!�uΒ.�� ��齐�1�
2�X�wϛm´�|߫ m9:���!؅�<��B����I.'�F@߅�* �\�����|��yׅ�'���@�G@�B�3�|2� �1nz��M~�ر m�;ǎi��i�)�������[t84�U�C��v�:mr�A�F���U�|$?|!#*:!m�*�BN�XOԫ�+G����GE���.6ң#�,Hw(�r�i��b;/���� '�(�յO=�,��Q��������BF��W�
2����ϫ��3/���w!]��	�2���M��\J�h:��$d���a2���)bv�Ԛ��8MG[�����3C�%��i�ه�;�Xr2�d^!nBFӑ���Y*��	uȁbAF�ѧ�BN�s!}Β��|	���R��KA��D��,���NǛ�y".�6�i��s�� ]�I���N�?�E��B���t�U��JA:kԹ]�.0�d�.df�|AV/:]@� �d��N���Ɍ���+:*봋���)L���b�/��
ER�vU|�q\��GW�獇�Ǎ���h֝���t&��b&o<��uʲ.�Fw~��=?��x-T;��@�ׅ���'+{EdF��r��'�k���|�J��k�������?�		�      �
   M   x�3��puWH,M��WH��I�2�(�/IM.IMQpttF�2F�i�5Q(�LI�ʚp�%g$cj4�D����� �P&      �
   �   x�e���@E��W�0u)��]hX�����!����&���sO���3���A�� 9�Ks�ª/�9s������x��qR�1y���q���Ҫ���>$��nUr��S&��"%}���n��Ѿ����=�B�rG#H۾��6��eҹ��A^����᥆�D|�Q       �
      x�=�]��<����3�R�e����:sѸ�ǲ-UIE�;׫����3��)��>Gsin�[�h��^��K��3߼_y�8�q��g."."�^�����^���%zy���������3<��8���3<�3̍��G�m�<�z�y�������>�y�ck�������K�����9��k�^s�gT�j�P��y>5�����<��g����u4��ּ5�&�_�����6�i��\�[��<�_/�>�:���y}��3���;�����u�=s�c�Z>g�=s�c�9��c�9��c�9��c�9��c�9�=��E|f,>3��O���ό�g��3c�1/�����P���C�f1�b�$�M��;�6�&��~�Ҵ���5�{��^s��\�5�{��^s�ט�5�s��wט�5�s��\c:�L�kf�5��9u͔�fF�Ŋ/f�b�Ք�)�S.�\Q��rM��U��ꚡi�M�6S�Tis�M�6[�ti�M�6cڔ�3O��L/�_�Ҵ�h.ͭyk��zi�����w���6oͣ�f�Y^�MiZ�pӵM�SNTNTNT.�\n�7]n�����$߼���޺~���뷮�0*�ж��%�-�m	mKh[B�ږ�f���{�ּ5�&�隕63mv��Yj3�f��X��~�x֗g}y֗g}y֗g}Y/K�ei�,����4ޖ���x[oK��׼5�&���1��A}�cP���Ǡ>�a�K~X�Ò����%?,�a�K~X�Ò�|�����6F�1���m�nct��ݻ�����6F�1���m����Ѩ�������(a�Q03�AΌqf����=��y}�5�:����>?��g��L�����gF�c�����P~f$?3�����gF�3���1��~f?3����_�5���mm�h[E�*�;(����sO�x�g��O�x�q�M�\c�*�}�\s�׉;N\��t�8c���p�l������]_�yy��7��;ޮ�E�ֽ�|v��������pg�K/�٫��\_�o��j����q�u�o�;�Z������W9��'���6�Á�$�8	/N���$�8	�k�R�\z��r���˥�[/�^n��z�׹��͋�x�{Ǿwl����uT��]����|��W�|�7_��Wx��|�u��}ȼ�ދ��{tv�c{?��c?���7�����l.�=����SjO�=����SjO�=�����I�p^zsӛ��u;rّ��P|��+_����;���<�:Y�+g-�L����[�����)�<3��8|���8|���8|���8����׭�}f�rμ�Ž�y����kƀ3��1�̸d�%3*�A���9�{�O����=����������c������{l�=����y��i��Y��I��9��+|���
�,��V��n'����y�դv�nw���v��ɕ]N�&D�	��g�3љ�Ll&4�	��3�����{��=C��~� �g|�3��ݷxŶX�Ų1���l�eo,�c���X�ǲA��l�e��\X-,�
K���Ba��LX%�%����r�n���{�b'� �� Y�fϻ��y�<�{�=㞅�e瞥�9������t�A~ 7��	����jC�y�{~�Pa�y�o�0�<�����;��g�����g&�ږ�̠d%3���Gf82Ñ�d2�L&8�x3g&��d\��'�Y�$���\C�\�Հf|������f�b����̊���?��~�;�|}v�=ڧ^���-�eKz�籟
�_<����%�}��łti}x��/�����>���ςH�"YWl9-洠ӢNe���V�Z�$
$Q�ߜ<]
^�����T��߆v;�o}�}s.�v"��̚2mʼ���S�O�@e��Rff���3��@���E�@f���r<��
������}|[�m�gW'��.|.s�sWA�
�U��mT�@Y�*`VA�
�U�h-
�>�����(��X@�^^`s����������uv����8N�����w/��K|��+ؽv����|;��̽�9���Xo�-`�Ŧ�C���O�o�3��3�w�����=S����g��g������=O�=gy���yZ�y<�9�\�o|���}�Y:j��6��u7�~��<���yx����wvrxu�:��0��\X�������s�y$��k���6�L��w�j�ͱf�)d�X�;�ݤ3��5s�g�����Z^�e0�N��N-���Zf[�m�D��n����H�'��$_����](}���M_8}���Q���������X���6w�+�^�
�W@�o����g�a���P�D5�����ZП	��5"q6�pv�Has
�S���5���5��<�w��a|���kM��a��	6���0��xJv)�O��T<�o�)�J�B����^�d���:6�ظc��<z��x�<�o�����6͔s�n�d����\-�j�SHZ@����h6�������
V��rUˢZ����v�;��f�p�{�]v9��`�����k�.
�*�MlYa�V0��ԭ�nw+�[A�
���~۴Fgb��x�	$<��@Rˇ�e,�o\�������\�9(����6�6�6�6�6��M��6�K̹��������������ˮ^�٘�1gc�Ɯe�0���%�.�v	�K�]��m��!B�J��m��V�%h(Q÷ы]D�P��n$��p�E%��.�z1��%�(QE	+J\�m�b*e���N�<5����`���������k'Թ���ao{s�k�h��7/�y�͋o^|׆�1�^0�g��mz��٦g��mz���m�Ǻ����>��^��~�����������|74�'kx��kx��QtEQtEQtE�ݱ5������o�`�߿|��~og�M}�������+�n���H��/�{/(���B�nz�b��8P��8���:�Wk�%��Qe��]�.k���߆�h�mػ����6zY���.`}A��ZOs]��5��\o�Z X/V�~�c���n�m��_���m3�[�������y����y���O6mB/�� �Ma� S�)�^
.��������`�?�����l�Y�.����8'G�w�xG�w �G�wDz� �� �� ������}u@��?����{1J��y����E���\+�\������ߠ2������S��{�G��y�^@�c򿗹���N����{��{N8�7��"_�������~/�5�/������2��{Dk�������A�d�i &X��e`�1��X��jzN9V��~�M�Ǥ�c�﹄�\�{.�=W��x�u��B�s%﹔�\�{.�=W��y��٤�٣���̃g��3� ���Fcc���8l6���5̹��un�sÝ���w������>{���7{{�0@������ �hL@��Ȁ�4:���h��lD"���)�H �@:s���h�9��Fn#����g�2�9���uFd�K�ԟ�u�
p��C�@d��gl"������ǖ����6���yf/}fC�A׀7�˽��bo���[�-��y˼U�"o���ߗ�<������y2�����V`'����gF��|f4��gF��|>p�Ό����E�"\�V�*B��@E�"�c1�B���@\ ,
�B��@< ��8�~D4W���m̊ˬ��-����3|�?c��������:�7�?c�������g��3��{�,ϱyql^�W�gps�͋c��ؼ86/�H���E���rn=��[�-��t��U}L����M��M��M�,�M�W�f�Kr3y�I~$7R8�0��|�-ҷP�b}�-ڷp��}�-ⷐ�b~�-귰��~�-�魛ߺ	���)���I����"X�T!���F��*շ��\K//��p��q/�q���_/���%z(1Aq�X���G����!��~�	m^h�B�ڼ��%a�6ACI�(yu�bW�    �J�SIx�6.�u���2�����{�0�~%ݯ���<�:��<�:���D�k
�R����@,u��/��%[�d��l�-^��K�Qɤ)�@�P�_g�rI�G�R]�/^���"��)d�����T��j�rd�<��eX9�B
�A��kP|���?(B���P(��aT�K�a!�ܳ[v�n���]w{��<�	7���Q�)Ϫ!^���kb��pM��P��­|@!�A�|�wf�mX�K�a�6���"`^g��K�WA��Yİq��.H0�b�9v�N!�l���X����_c݋��ta�Kca�k3�ԅ�.Lu��K~��KrG��(�%��$x����Qr<J�G��(i%ϣ8��ޒ��]���t�{�:��8ݵ)���w�����.Nwq���]���t��8���.Nwq���]���t��8)�I)NJqR��R���@���0m���1�3�992ő)��w?s&;�����s��%��b�y�u�v���eK�-_���2fK��3�-�ʐ-1g�KO3�Y��JpV������h%B+!Z��J�V���e\���0�E	0J�QB�c� �D%̨g1S�?]��Q����ũ.^uq�+K	�k25J�F}�=\�p��%��9ěD�YěF��G��L�M%�\�M&�r����; �צ�p���r�V��AZ9H��h�-����S��\�#���b�Ͼ��V%��H�?�	�d�#��H&<[xP�Y��E�[��E�_9�k��6*�Q���mp��� �7�A��Wm�j�U���|��6_����Wm�j�U���|��6_����Wm�j�U���Db������S��F�6����]�<�7 ��ݨ��e72����t������Z�_oN�&�oV���o^;?��y�Yd���l�M'�|��(�b�7�lS�6Kl��6Ol�z�X "��ı��F�5���m�lkd[#���ȶF�5���m�lkd[#φA"���w���Z���o�~����߼���7o�y���o�~���0�:@�N���a�tH: �F���a���k���C�)?�x��T�B[ڲЖ��,�Ă�X�ZbAKn�w���݀�����=-�iAO󶚻����p5���\��j�m��6����}�Nˍ!�����Fv�fF�-g2?7�HvCKyh�-���C�̇���>[h�щLZd�"���ȤE&-2i�I_[��l�mso�{�����6�o�����o�O	j�`�7�!�:n�q�z���7 �!�Bnr���`�#7 �!�JnXr������4�������<�h<d˗�E�-zlX#���F�����k��m���d��ˤm��M�6o��m3�M�6w��Ȉ\���Fd!��ms��)DG
ёBt�)DG
ёBt��c��^�a��ڽ�P�Ŋ-X�k�7�w���"�2����-jlac�[h�Hξ�z6�rE[�h���P߆�^V�PK8m)�-�����tҖN�I["iK$�n���=@�<���7��-rh�C�Zx��۾7��l�6�h��C[�s��bZj�[�h�~n��-i�%���і4ڒF[�hKmeЭ�B�J�V
�j�[1t��n@mCjT۰��6�����m�mCld�0��6Զ��経�R�˩.���*Z�#}8҇#}8҇#}�Uu�G]u��n�ݭ��w���V�����cd�U��j�["y�$o���F/V܏W�y�0o)�-Ǽ%����0-�i!LaZ�B�´��0-�i!LaZs�0�D�2�Ke+�Qo~��|~��|~��|~��|~^KI/_��������V��Q�v��	�Gb�@�'��G~�|�'�ͣ��|�'���f�y���$-I�G=�Q�vԳ�lg�٤�i�G���Z.?�%?�-�z���C��G>��}�C��G>�ym�~Ӣ�G�x�G�x�gD�EGnё[t��EGnё[t��EGnѩ�D��qr��p��p�l��X�k�c�z�Y�5�9��G����X�k�c�z�Y��@4�!��E �����XZc^��d(|��y��VtfŖUܲ�[Vq�*nY�-_��K�|��/��Z�To��V>�tP�;�]f�J���iaV��Ė����/���m�G �������i��\�[��<�h�r�r�r�r�r�r�r�r�r2�4]���O����f�>=]���O�2]���O��l�G/�^.�\z��r���˥�K/�^��M��n/w{����^��r�������mg;�^n��z��r��K��e�<���C6k�s��>�{���㛏K���7�8��͏k�̛���i.��߯Ro���5�f����>��&u{o�v��+{���\��o�7���͏o~<򏳿Z�^{I/�{���g>|L��΀{/�ޞ�ۉ�������#��W怏�>�xJ/���ڛ���|�;��Yr3ᱥs�a��D8�Ź�+��5o���7/����|;����f�N=��2SϾ�����gm׭����u*z�^���%z�^���壗�^>z��壗�^>z��壗�u�屾̪����N�<�ubL�\�X�,��Kg��ҙa�vY+}�>K�e�)�����������CS�_}����~������������~|O�_�^~z�e�嗡�_�^~z�e�嗡�{�9z��o��������A����_=���K�_�����;��}������;��M� ���������K��/�/�$�����K��/�/�$�����K��/�/��X�� ��r�����/�/�\��r��o�9O��x�|�|���^�T_z~_z~_��K�})�/��m~���m~Gd�wD~G|~G|~G|~G|~G|~G|~G|~G|~G|f�ތ�k��5�7w���2
b���XFA,� �Q��h��h��h��h��h��h��h���L	t���8X+�`e����q�2V���8X+�`�RHdj�6H$lgD2"���H@F$ #�	Ȉ�HM�ԄHM�ԄHM�ԄHM�ԄHM�ԄHM�ԄHM�ԄHM�ԄHM�ԄHMd�g��2�{��L�^�|/S��)�˔�e��2�{��L�^�|/S��)�˔�e��2�{��L�^�|/S��)�˔�e��2�{��L�^�|/S��)�˔�e��2�{��D]F�.#Q����H�e$�2u���D]F�.#Q����H�e$�2u���D]�,L�d0S2�)̔fJ3%����L�`�d0S2�)�he4�2�A͠�fPF3(����he4�2�A�b�L���?S�)���g��3���b�L���?S�)���g��3���b�L���?S�)���g��3���b�L������f�u���n��Sτif���H{̳����1���1ɾ����q����X8�O,?��d�&�ǅF/�K�2C:%��L~&?���I��$�g�3	���L~H��aH��aH��aH��aH��aH��aH��aH��aH��a�d��3Yݙ��LVw&�;�՝���dug��3Yݙ��LVw&�;�՝���dug��3Yݙ��LVw&�;�՝���dug��3Yݙ��LVw&�;�՝���dug��3Yݙ��LVw&�;�՝���duGVwduGVwduGVwduGVwduGVwduGVwduGVwduGVwduGVwduGVwduGVwduGVwduGVwduGVwduGVwdug��3Yݙ��LVw&�;�՝���dug��3Yݙ��LVw&�;�՝���dug��3Yݙ��LVw&�;�՝���dug��3Yݙ��LVw&�;�՝���dug��3Yݙ��LVw&�;�՝����){��l�l��;��l�l�l�l�l�l�l�l�l�l�̈��fͱ���̈gf�33��̌xfF��n���;��Γ���ܞ�̝'��9ˌ�3���h>3�ό�3���h>3�ό���
�g�f�d�Nf�d�Nf�d�Nf�d�NfZ�X�;s"3%23"3!2��1�g�8c�#��αc���o�|3֛Y�3+xf�8���s�<��3�<��3�<����XΝ�,ce�9���XVƲ2dl'c;�ɛ�<g��XM�^2������d�%��L3ڎ��%�/3�2�    /3�2�/�]f�e]n��y,�Wǩ�����!�;���1�sM���`FS0�)���h
f43��M���`FS0�)���h
f43��M���`FS0�)���h
f43��M���`FS0�)���h
f43��!��Q�ͨ�f�y3�uތ:oF�7�ΛQ�ͨ�f�y3�uތ:oF�7�ΛQ�ͨ�f�y3�uތ:oF�7�ΛQ�ͨ�f�2u���L�@�n S7����d�2u���L�@�n S7�����ft3���ߌ�oF�7��������ft3��m���PF[(�-���he��2�Bm���P�m��������{?��^ �8�%z��^G/⏗��
KťS���Tl*8�nx��n7B�uc�R7J�0u��TE���0W/�Ǘ��%~|	 _����%�|�ޢo
�^b��`�%�z	�^⩗��%�z]Y�EP�U��U/q�K`�Y��V/��Kp��7@�`c�x�{g�vn0������[�D��g>۱K���g/��K<�z/���d/��K8�����x�c<|%�O���O�&�8I|$.���?�$[�-��c˱��b,L��P�
��P�
��P�
��P�
��P�
��P�
��P�
��P�
��P�
��P�
��P�
����	����	����	����	����	����	����VFA+���Q��(he����/*����@�b=#����g��3�����wF�;#����g��3�����wF�;#����g��3��Qk�FQk�FQk�FQk�FQk�FQk�FQk�FQk�FQk�FQk�FQk�FQk�FQk�FQk�F�:@�:@�:@�:@�:@�:@�:@��ҳ��ڜ��ڜ��ڜ��ڜ��ڜ��ڜ��ڜ��ڜ��ڜ��9W��3EYeq�RIY(e��S�)�{G&D[�Y��(��(��(��Pa�Pa�Pa�Pa�Pa�Pa�z���z���z���z���z���z���F/�Y�n�Ͳ�e����XV��fYͲ�I5�j&�L���Í_�6~m�����k��Ư�_J],���`��f1�b��0�a�,�Y�f��$���f1�b���y�ƇOtz�T�X��îpW���M�[T�E�[T�E�[T�E���钬��
��k��
��Cx]�b� �^0����� ��/���lM��/>l�s�+�\9���`�s�+�\������v,�c�8"[�xt�/����eA�����_�~���B/�'0rD��Y��m�̜��Mw���P�jD���L�c2����׋�|L�c2�ƱiS����Ԇ�D��Ձ�D� ��%Q��-�h�GUv����Jʨ��Jʨ��Jʨ��Jʨ��Jʨ��Jʨ��Jʨ��Jʨ�!��	!��	ՙP�	ՙP�	ՙP�	ՙP�	ՙP�	ՙP�	ՙP�	ՙP�	ՙP�	ՙP���Ϩ���Ϩ���Ϩ���Ϩ���Ϩ��5L�bR����Ť.&u1��I]L�bR����Y�fY��m��1/��2/�~�{Iۧ��'o��{��+_];8��W�������}��+�_q���W����"�'��8�� �� �*-XiKZZ�ҝP��ܴ �9-���F�k�F�k�Ά�l�Ά�l�Ά�l�Ά�l����NILN�r
�SȜ�ڌ�l�Ά�l�腈^�腈^�腈^�腈^�腈^�腈^�腈^�腈^Hއ�}��t��Ι9+g�l�Z}�xL:*��L��f���1�E�x�����,�~�gތ�f�7c�+¶���-�m��Ҽ.+�����:��Q�4�x�u] �9��,ϱ;& �����{��@����.,xa!�nX�Â�`�<,�S�Tا�>���O�}*�Sa�
�Tا�>���0��)4L�a
Sh�zor�ف�)4L�a
=P��B�� Y(�B�
�PЅ/|� a(C�
�PP�3�� i(PC�
�P�ϼ3�̺{�A���x���S�u�Q�u�Q�u�Q�u�Q�u�Q�u�Q�u�Q�u�Q�u�Q�u�Q�u�Q�u�Q�u�Q�u�Q�u�Q�u�Q�u�Q�u��p�?|���w!������
QU��BU���U��*tU�
aU�B;ީX�*DV�
U�z6'a�f%lZ��%��nf�_j�>79����*�Ta�
%U8�BJ���M�m*tS=(�ά���<�pO�|*�S��
�T�B4��P�k(dCa
�P��B8T����E!�
�Uh��c"�0Y��*\��=�rN��<F#����":��a��l"���}�uX�Ч�?-jaP�Zx�B�f�Pk�[+�Za�
�V��B���Pl�c+$[a�
�Vx�B���Pm�k+d[a�
�V��QR%�PR%�PR%�PR%�PR%�PR%�PR%�PR%�PR%�PR%�PR%�PR%�PR%�PR%�PR%�PR%�PR%�PR%�PR%�PR%�PR%���s�8훶M��MӞi˴c�0헶K����^i��S�(퓶I��Mr�H^��
�WH�����x��+L^��
�Wȼ��:�0y���x^��
kWh���ʮ�u��+]!�
KWh�����/�gsO%xnގ��M�aw#��*W}6?k�6CkS�6Gk��6KkӴ6O�/Qk��צjm��&km���4T�6�JZ�kS�䧠��h�FC��4�M�#h��85��qL�cj�R#�CӨ����������������������������������������������������������������щ�щ�щ�щ�щ�щ�щ�щ�щ�@��@��@��@��@��@��@䐵Y���Y���Y���Y���Y���Y���Z���Z���Z���Z���Z���Z���Z���������������������������i����G�4�/�xi�K#^�҈�F�4�/�xi�K#^�҈�F�4�/�xi,Gc9��X��r4�����h,Gc9�ћ3�I��5�i��7
}n�so�'��7�s�>7�s�>����� 
��K�d��ڛ�ɐ�C�2Cu���"ʐ{{ٴP���ʐ7At3D7E*ۛ*���MݜQqS��Z���7����M-njqS��Z���7���,��dz�(O#x����4��<�lO#x���F�4�<��i�<xS�܄m�6G�(�&X�	Ԅi�4!� Mx�Ox�ѬA*5d��Jm�n�t[��"��H7~�wï�ͼ�+�_i�J�ɉ��+л��M&�l�M'�|�5��߻���m�h�F[5ڪ�V��j���f�{�ث�^5���W��j�Uc�{�ث�^5���W����%�^5���W��j�U����$[`�2ՠ��M5p��S�j�T�e��7j�~��j�F�6�Ѩ�Fm4j�Q��h�F�6�Ѩ�Fm4j�E��l�F�6zۨ�Fm�Y�x�}���X��1�8�Ɓ5��c�Bk�Y�6�Ѩ�Fm4j�Q��h�F�6���Om�7�j߼b�(�@��4P��2�}��g	}��g	}��g	}��g	}��g	}��g	}��g	}��g	}��g	}��g	}��g	}��g	}��g	}��g	}��g	}��g	}��g������i	���i	���i	���i	���i	���i	���i�_d��Pk	��Pk	��Pk	��Pk	��Pk	��Pk	��Pk�?p4�*�C��� a�5�|�^��͟�*�X���R,�۱����[��Z�N����'�������o@_[���[����4�� �hL@�����F�5�qL�cjS���8��15��qL�cjS���8��15��qL�cjS���8��15���K�]j�Rc���إ�.5v��K}�B��ޚG�����'����ZQ��x��C5�1P���E�"�1�C�!��HH�Ias������p�5*�ZiRom��ﭩS�)5a~N<~N<~N< �  ~N<~N<~N<~N<~N<~N<~N<DxB�'DxB�'DxB�'DxB�'DxB�'DxB�g��WtZ�����F�5:�Y��jDVC���P���7T���Uo�zC�{�a��U�6z1�!�c��c�C��g+n�c�C� fl�ǆl�ǆl�ǆl�ǆl�g7|$^#��^���;�}�ǆ�74����o�}?�X���qVp|����@��|ޟ�1v�����2�[
z��� �p5��\�j��-�%��l������[Bz�Ho)�-'�%���������[bz�Lo��-7�%���������[��ym��ּm��V�mٛT@�ցj�ցj�E�$W��GruˁoI�-����<���2�[*|˅o����L��w�����?BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�BI!�4�^��#��   ��n?�ۏ��#���n?�ۏ��#���0?��#���1�1�1�1�1G�)��B�)��B�)��B�)��B�)��B�)��B�)��B�)��B�)��B�)��B�)��B�)��B�)��B�)��B�)��B�)��B�)��B�)��B�)��B�)���O'���߄o�� �����=|�ޣ��R9 s@�`�=ϖg���[�E=����FT#�9 ��= ��= �S���B�= ��= ��=p�'=p�'=p�'=p�'=p�'=p�'=pҳ8�c�xl���Y<g�b�Y<6��f��,��c�xl�����,�ߍ�n�w?�wa	6`��������h�������s5��˄A����T�͌q�ksi<�ksd<�k�g6�fu<�Ub�#,8צl���ᢞk6X���������z�U�`�ێ�#�8�#�8���Ye�ZQ����U�0ݯ��0{GTq�&GpqG�p�4G0sDG�r~�̇$G��p}�⚶���؋��l{m{o����6�ng�;������w�������l'��yF�K���G�<�Х��s�����ng��;���������������������������{�^�<�}�>�k�ǵ����q���y\�|����{����{����{��]���͋�����oݼHy��������������~����^W���q��>��g�����=�i/�����ڳ�������Y������������z�y�{���������߾��~��o����?;N���k4�����v���o���g���o��׹�{��{�y���g���}?�yv�����z���~���>�<_�_��W����~�~v��;_z�	�U�iw���wg����wo�۾�=��}��v�yo����ǿ�8�>2aڳ���{?�Ώg���7?�>���i��l����e�����/��g��l����}�������>��g������qx�|�[�_�~�v\^�~�v�z���������W�ߎ��W�_m����W�_m����z��k��Q��Ѷ�5��\�/�k~�����_��x��������ߠ����)���s��n�X�w��#+��Z�h2\��
�o7mם�gm����?�h�6���7O@��}����=^�<�K�u���{��~��{�������^���=������k���>�=���=����=�������{���������S{���������k��=�����z��������s)Ύ���;;~g��������wv�Ύ���;;~g��������wv�Ύ���v���k����v���k����v���k����v���k����v���k����w���{����w���{����w���{����w���{����w���7T�����-]B{o�ig�{Cµ��ϑz����wt��C:��	���j�{(��� �������y�^����w��]Ŕ��a�{���i�m���뜏P���/�oz�0��`�����g������������� �z1>      �
      x���mW�Ȓ.�Y�Wh段ݽ��T�2���
07o��}�|U�R�������I����}���ݶێL�K��O��i��e������e�7�����E|�W���������kV���B}�:>ͫyS��O��2���Ͳ�:JE�������;e�/�&)�ODɎ������ţ����x���e��D�b��2�V���)���aޭ�Y���2oo�Ԋ9܉a�uѽ�/v�?��z�ׯ�?w⃲���uQ.�6�G�y'~�\��x�d�#���_��'1��΋n]]/��e��z���N|�*��7e��K�#y"����k���R�y:2�ؖ���\�E=�j?��"��~�_�'J�L�Q2Xf�h	�f�Gɢ�xj@�aY����j</>/�e������I���<��N���.>*���:��������̎�`����71���뿊���OEݬ^> K4����.��%�4�E�<\�-(?��)K�ZJwd�Ò��}Yᕻ�^>V�
��X�9x�9�1��w�vv^<3�ߔ�=c�7�:i����ݲ���|���#n�����ч�f��Ϯ�'�G]����p�nCb�4*1��.^��iQ��R��z�ԚKFGM|Ѐ&n��݃����ī��.�rǁ�E�M�6_���'�8�̄��3݃��dU.x[�{�5^Og�e�~f�Э8N_uP}{�"�k���,�N.S��#��7�Gn��b�/�<���`Òev���d��L����]��~��&,-���ަ,-���a�ge�
�d�_�������g�+E�U{�c�!�G��M�G��a+�g�Xe�'K{J���F��Ц|��EI+�b]�u|�X�k8�E��h�G�a��^�/��^6��#� 7p��g;��1I��Et���q���mU����cç1���4i���`\F��~�s��U�*�� c����zD����Ȍ����RZ�����̭ż�oA-}c���[5�ɸ�6%�|�B<��})u����E�v�4�]|Rނ�����_60|��r�ΠQ���}^�z��8���]�*�5��i��yq�+�1�磶�D��#ܠo}�e�X��}�l�PFiNG:�XK��C�|�l�3�q��r�,�O���(���8ܙ��͢���E>�7��\$�;��kAt�Rb�fnh<m�⍣M9� ��`P>~a�`d��g������1���0V�q�@�f�__z_���GJXӃG����Qh����� z�%��jkܸ������	�A�Y�<�����83@c\�í@���vqC���!�������5�H#ز���������E�j�s^���YX���O���bq�?⣪�kŪ����6�[j���r�L�S|փ��A�6�?�0ܻ��^I��I+s��w����ɻ��.7*N T�o���Gp��,�M���í��S�£s�_.�VΆ���Up��ٳ�Mob�s7�n��=B����_ ����{N����!�ˌ�%�j�		��c��Ň�K�%S¤�c*�h_]#���#8Lu���dI�̆$85���ۦ.�/8ZF󠔥�6h����чƩ˃f�����2�d�GՌ�$t�0�������� ����{I2O�<W,�o�
��\�߿{Pa@H�:3��. �e�gX��pQa��8�Q'���F[�"&y���8{9R:�NU�zwe��{����>�൬�x�S�eb��̚IE�FE�!�EӶ��7N;Ff�Y�����Y��p�*���ca�`�\.��p���}HE���,DY�ŪX]A �=�@�k���@�D�&�a`�q��?��AR�X:F��k?C~���'	�1�)x/yQ�P-�zد:���k�6��
�"�ͮ�\G�����e���Ђ�v�g��s/)�*��U�e����'�d�ɬmK����%�~S_�]�l���j<�!��_�^/2����ͪX��Ŀ�5�~'�(cf���G�V��k�`wKB%<?�`Δ�Ԋ'�C�����t�?0�m@~��y^=ޭ�y��J��`h{s*�QTN�"A%|���u�I*�x!�J��YmC�5�#��E���ɩR�O\V�&�Trb��?���l
:��I��<-�`h�1i����/6��֠��]C���%���(�0�zP����Y&7f�0�@��E�i��t������7�j���(�EM|��.�Q��j�"~���X	��W�o�/���%��#.��b���X�r�(������%�x�ik{�8)3i���%8�.�p�Oq����w��6��R�=r�=�6SEGy�T�G�-��&�g�MCk�2J�S!���t�Q}�<F�Y�>(����k�4�Q$����r�ԇ����U�=oD⭢�7�X���`.�������e����%�:��t����Mm���~s�2XW�
�m�c����w�=��<+���M�:���ۿ�f��7�b���UP�.�����=��ͺ����d�O�
���<B�����^+��������6�Sp�k����ŧ����u��h��(��BH��^�s�P0�߱��H�y�{ᤓ�Ӿn�#;��yY���_���`��!�����d�qi���z�bV��j/�5��h��.^cx�ּ�4�mĥ���A� �|HJ�謷�wo�.�dI���y�x7{6�j���~�8����3Û���O�M���æz_�|:˗�/J�kÒ4: �FSvQ5��K�w�LCrc���L�����C�d�5��˪�A�=��HҞ��M�z��(ł2P�E!�7*�q�Y��r�W/[8fƜ�p�W�Y�v���7�ؾdS5<�r�?g�r��_T!�d͸�l�7�o��h�][`�E-�%���q��k��Q��(=>$~���ѧ��:`�l�u�1������x��8^Ą���p�c����)H�Ȅ˼��U�{���vO���r�y��=o��v��^�����Y�6dN�Ԅ/t�5[�cix`�����ZU����cY��S��a1:Rap�.J�|��g�_OVT_߁��v?.�
t��V��2�~ɤ��~�bLF�"���݉?6�c�0�S�,��öX,`w`�������AsuU�]Xý|]����k�7^-�������e��+8+�[����Ÿ�v��0L���
�HE@�3�"|.�EE���+���М�]9#�/{|s�o�L03,+��|K���?���%c���N������,+30�|��u�.�ߠ&>(n���Fq�Up7�Ȑ2�D�?5��o�q�(*s�(Q,:j��|�:-;��N��ӻ�W�g�+%�E�V�spr��ʺ���~(�a^�s���_'!��605[����������E<�+q�����v�1���ƺ�q�\������vW�0�7�0�+X�z�|!�D�,��zE�C@� ��;̓/�U�uo�}w��1~l�r��o��}�G	2��G՚~dLw7�hW�@�)�)�D�u�,W��u�o�&1��3��������;�_������`����$m�ϼmq����h���Ǽ^�����m\Ԍ'%\�s���X��?�u��V��A[�� ��f�aF�"0�q�n���d�:�����t���#_�)��J���c�a�pԖ�� �#('��̿b�Z|��-o,z���'܆�%����S���1��O��8�0�Tj�D�l��(��W���	��kZ��qB���l�����~\�K�@c�r��������"�&{���f
�����{��B�XMv@�D��J���I�˰N�ºĸ������neb�j��·���󝳝˝�οvFQ٠ӵ�T��M)3���j�kLs��n+�q�A�R-,,�m��j֐�1��ρFi'���up���ډ��ϖx�����꥽��&vvv���f��e$�y؄C��2mX��-<�$1��U�G{���'�C_#<j�!x���zL�F\�l��c���v��L���    M�Y�s�U�9�WU[1���zr̍=T�=z\s��Ú�c&�O�4�Z���H\]Y�����|�$��"���Zs颫����d��=�p2�i�FO���+���Ke�n���E2%UP�ΡL�좄�s���3~Z��J�Os]�E)���6�y$¤c
�U��4&�{����'���M1�ʄ�*D��ct�q�:`4?�-�ɲ����t�yedH$JZ��~�h�ktE�+;�eS?��%��c�`w0V>*
0-�peaag_�<�g�U�C\	#$S���m��X�e!����� ��'ƇhF�Ps�=����IBf���A�θ��~P�dP����?�#��z�N���'��9u�q��|�Tj|�Vy�k���J��a��25��2��[���M������S���`��%�o�R��o�:Ǘ��><���^�Iʫ��3�5�P3��`�3���^����a(�����º���k�&7`�6��j뎚��d�L�ԃk�zؖc�E��\ďM{;>E�5"Tamɖu[�,�;��׼I����^$�. �WG�)�f"s�2e�)�X[eB"��b:�e��䎗�G�{��+��k�E������Y<�,@�R{����u,ŗ�����+,m�ѮL��?��s��/Gp<B�7�~�gJD�f=�$C�����?��4��@H�Cx�=�qK�S�}#LkA���cxj8��7i�b�[�M�"W,�w�nԇ��U�.a��\�05B脕+�hh����6W9�Ґj�[Ab0�C:(����*�i�����&d�dr�Y�^N�L�	_�)��:Ǐ��)��*w5$���$AϸGΰB��t��b�;͖�N��-�E��^�]QL�$G�{x�K=.�6��5���B��r�*$�:<o��84td�S����\�bU��}�6z�O䉌��dH�RG^�g�KP��I.�ĄZ2��t�YU����f�v���%9�����4�����*��9�C�S�8]pAS�N\���2���(_V��y���ߐ
�\��6q�w}�[8$� C<��[���o�l{���@j9_6Oeb>`��� F�\�|� ��t��'��
�?���F���6N�Ϫ9�H�M�S��l���C� v�ȃ}*{���\��D�0#�ò���p����{U�5Q�|Ȣ�}ۢ�:m��x+�� i�Pg>��ei�YO������1`_F��7�x� �v��Z2�,A(caP�+f���hͣ�1��8��Ġ3�<����ꑞ"|f|Xd�9e���
[�rR\�㷏E����Y�eC����l��@�=P��V9�����ʶ�ӆ������`�3_.�w�@pd��.٩-��ŗ���W:	p'w�S�h�E@�o+7�4G��f�y<��(�=w�����dj�����Fs�$���v#�y�d���s���%"d�0�Q���T�X���)�]X�j?=,�~�uX���Ȋ8��w�`���IuO
#6�p[�tY�6��]��-���8��pg��������l�t��}[�����Qj#�i< т��3�2�"�O�z�Gq�������M�W�W0p��䂪�?S���X�u*��k"΃�b�u<�)\�yU�uE|6�uC朅Cy��V�b<Q��n�����E���;�7�� 3�����1��OF�a�o�1G~��A�QY��l����#��?��o���`d.�~�te���	�42/2<�������\��v-�yAj��O����n����!�$\�/p���},j{����ќd��m�W��v:?�A������
HP��g4�����E�n������~�O�A?�v� Fgz�L0��¿�3���#����!Pu �Z	a��J_�L�ΣO%\��fx����e�_?C���m���t��]&�,��	����\�@=�]��kW�A��:����!��Mt�LR��&����\�C��$��F��%M��f��6A&�h���:����G�^y/��ʦ�2(fJ������q��ZT��t�)} ��qU@ �X���΂0b�ј�f����Otfk��nZOVH��'����?%\�|��7<"���\��)R��𹯶�3�o�j:pb�5O���x���F���R�V]~��=�$�Ț�����p.��ca�S%� ?�_��~�w
���\��$SH�=�M��V�M3
�>Ĥ��m�o�EG����Y��⮨�q�R|��uR_D+_�ڋN�U^-�6�F��d��cT��Y��<Ú��6�%;�+���,<�|��b��b�J	�tE���X"�z��{<O��_��t�y��.�����O��������c�u�:�;���e�Cadx
e�q"3ib��U$:MN�;g;�
�Wj8��7�}󀨆K����-%Ϡ��wOǠ� �xf��6{K+�|S��K�}*[PՆA�`��j%>%���� n�
6|��L��_��$nR
��x�52�ŗ�6�>��k�d0��� R��)#�h�8"?¾[��z%Ls9����[�Wl�i�c�hƅ���G_������d�e�Ö�r��Q�Xb�봈RW��>ރx�n��iT�2i�����EQ��%��� xL_�����Y(�t��X�
���k����l����3Jd|��n1��s��X���*~A~��"�­z�t	,7(�/��><���b����j���K|��GKA�c���]���Zd�Y�9����e�=_	
4ͳ�㏕����j�N���c)���+��⫫�p���+6���``�����0���7��Kw9cOq����6�@-0�/\�������EH��O�:+�k�z�9�y�|B�f��_��O�v��2����J&�\u���m�S�k�H92���\ Ė*�P+$|^6�9R��}N_���gd���	�c�̴ 4��=]>�H���Hm+ZK�y�b��в�J(��H|�|������ba�sX�r5����Z�×��z�NP����u�5,4ɗDJY�� ��w�N��m������2 �2 Y�Rɇ�_�x����vޭ��q��T�l�d��'��� �H��?��C,���󼺋+d�j��PpN?��7�B_�8qi���ӓ�#��M���W8'����Y�h��]<[bۆ���0�k�k�B�3�I���F���,�AУ��U��<_�Mڸ�L�C�<���(���*��7/6	͔ʼ�r�0��呛�mݰ�m������Z�C�·4�i}]֖.o��K�V#���I�#�A��`�X��r,�E�h*2J�,9��F���4�"�T'���iƣ���D@�39�J:���BɗU�oч�.�2aiq�sI�)���Λ�E|�C`���T�U{�/7�q��N����g8�_ώ�� T��ڃ�0o�*���_'���G	C�Zp��#�c��������{�%)�y��a�����~޷��WK+3A�h�'�hvӗ9�,K&���hJ/�$:�+���|�}�M�0��($1B��Ѷ.u��� ԰fʮ���XRőr��r�}%�e<�\���0�*M|*��d����'g��+U":��:��4w�r7�y;o:���D�*cb�`��'�.<R1��E��55{E������sĐ9�T�.'�K*6_7�O�] �c:�oX>ڹ%�_f�^���u��F�A�]��ܪkU�0S�X6��$�͊��4cg�#�j�t�0�˪�h�i��0aD�'>�#]�����)>�41���e�x�����G�>��AV#�����E�ꢫʛ|A�fFjb\ǳ���>���h9���9v^����=,�DH��||�@�a��oTv6=���v?��N���E[��^� l  V���3��2�`
���U�����"n����_��h��j��bb?3����frd��������Q\�뢁ei�+�C-�    ��I]<*���~����uH2)8�$d��bb�c�������-�a L2� �9"]�C�	O�'ivC�Kw���~�ܝԧu�����V�`�P� �6=��^70I0�#��A� �ǣ����"��0=�<��/��S6�3��d�&��0��� hO$x`anҿ�:`�OAm<^C,u���O=(�g^ 
�@Oa�0�i]WMM_3�4�Y=�����w���^�|����bԈIH}Մ%J�F�Z���-"�=�7�E&�2!Md�����Ȗ�+8E��-��f��,K�������#)dH�2{��'7ϕ2���8�(��u���Ӧ�B��G���􅶀�4��{�89�[�i��Q�g��Į��@�ep���c[t]�A(�梎�G��D���K�@¬�+[B�|�������q�xq��sD�r�*p$�Bve�͐�g2]���t�mо��Ĭ�(�0,n����%����"�c�X��-8B�J��N9�����'3L�;p�l��N��l�!>s$���}��F��F����ܞ��&Y/���2>ቖv����
��v!;\Id�CK��� رS��0K��	I��>�b�v	c�A5�d�Fʑ�l��E�^�Da�-9�)N�A;�_�@���%;@.🮢�W$�o�X�����+����O���Fj/�S��49Xdd��=9�ǻ2��ГΆL��u�P�m	���@>ls�NI�O.��!�=�_ҙ	L��lr}�a���k�5�$�����00Z=��Q��>�.��S�̮1�8��`KGt�k0����f3������u����Җ�yIk
	�w5ȧxti�����&�Q��ӎ)�,d�(��1x�a᭯�$�CL��a�.�J�0p�/�x<儽ټ���܏M=G�(�LO���m#��5E�n�&���o��O�d�\�BYG�6�(W��6��� +�<�,�Nx�~�$�k�8RE�K���\¶����H��s�K���ܲD/[��s��ϯ$���-,�<��(s��}��*��X%��O���/7���Հ�_��#xꨰH��5��]kl�;P#��w��z�@<d��GBG��|��dI7{|'�7�O,��~�D���SC���)��5�:a٣����J�Lȧ��d�6��@�����ڷ�p.�A��@o��{�jN��Ǣn��bҚ�p�>�8��<�X�"HI�/
�]<��6���O��]YqBC܅�f
Y�,�&$>�k�<
�C�[o�yLH/m����z��8c�*�Q4e��i�r���_�73JE-]�/�����a&̱o՞}����П�]�09Q�TC�t� 2&���<��o#i�܁G!��L�ܛI]r�(��$G�� �v>�.J|���Y}���\t�$�@��q6Ff<�Fy-'�D��~�AY���)Gh��l��\�5�z�j����X܎�CN�߁��?��Tԁ�x�)�@іu󪛬G�x���o$�x �tHU��do���N�ߚ�!�8�������>�4�^%G�Z������EWz�a��r������}_�O�����X�I-�3=��������5�5:��^XJJ>S"r5�Z4ay��q�~H�ve�=7��M��Q�� �|�9�2ŇN�"u(�\f���]ꣳju��-~l\�S�K�n��*���e��C�������%�N����#&�ȗ�C#�W��ر�o뢣�kqw[�Q������R0]Ɠ����Jݥ8�d ߶�����N���:\z`���	K@�ر&�-��������N���+�f�f���}�{��)R+�-x��&ƌ�"�Q�f`��[��e}k�R�L���J���@���yY��?x_DZ���k�@�������ǎ�I�4P9��o񟕱<Q}�;��r[��i!Ɔ�[h`}V�?Tު��r��gWJ>�>YJi\͢wH5���,>�^�?v7��pr�O(S���\�[X\�o�V�˟����p����"�pI(
��΋($�����������H�-��s��GbO�f�ck��	G�{��Zb)J�����r
�;��U:�~̮1�B
,��$y���r���A䧆\�{G�.5�Ds|$B�~���K30�$@�|��k�mC ����e�SG
���y�g;�Si���̝"A�I�D:r�Q��6A����;;;�h.��c6B��R0v	@8,&���GJl
n�PB�|��gE��6ʝO�m��6o+L��o��1c[1$���c��>�~S67L��/й��%6��a�����ݭä	q���@�۱mbhg���\#���K�R5ĺ��]k����D��:Q��AB����CxB�O��E"����]a�L�8O[�퉥�A���k44ft�B[r�L�Я
ov�:j�{���g�$�5�	���zX�߬*��S������������	�'x�Tw�DFy}�"��kq�+ό��
�	%��[�"\�$�i�Fi�jڍ3�3���~��!�LlU8K�#�l�q�;�j"g�>����d�ܷB�oW/m^}-C�ДP�"9AC�%����>�r8-W��C�l��*�D%*��U�8l�'N	��(�7'}�m*�v,q�'&D��f�0%*�>5��m���bMs�'�|F�Qџ+�ˢ�����Ro�Ί�(�p���bDݵȖ�"�ʦdH�وP����~҇����`�p0��\�u� 3NR�ˣ�|�z;F��p�*P�X�QR��􍄯�N�A�Y��8�߰pdL�b2�$9G�
A���e7)w��ʒ��
�5j�-t���K�����'\I<�j��/ʿ'�Ș���0��w(������[�0Ц��3:p�<�϶��]Lj�S)6�V���+�U`M	�%�?h���NbBg$����M�OZ�� �9��V��A�i��:�Z�2Z�psw?��D4���%���rx6��
{��W±�`�n��R'����ǯg���Y�t�p�@�|(��fcݓ|�����Pm�2�`�M�(�@W
tx�>��X|-M�,f(s��<�8@Cs���z����ջGʟ.F�t2dL�!���8��æ���!򖓡�� ?:/"e����K�-����.̹�pJeI��9Ǚ~Kt� _19&����9�\����8x�5��H0˲��;��*�ƛb���e�L�5��7�J l�T8hI�!�-9]�U�"v`@����ϙ|llfF6��Ji P��rU�V(��Β�[ۖ ��2J\�����m���su��|�ɋ,U�I�u��e_۟}l�k��>U�)ҁl�{E�W��ъ~�����fw�*`�w�f��[!R��y�1Lx�)� u�	<�EӃ���r��cK��E$�=r��~��߱Hq��j�|\�y�n0bM�Xs��d��H�G_�4��ce��~'�È N�7�����k,C�:�rGH.�S[nc�(�r�X&���;!�A����J�QsO���^��=X5X	X��d��1����b������S�S1�v�`BV0`��E^��ֻ���7Ȇ�����X~�ݼ�{5�7�a�H��<oa>�*B����c�}試�ܤ�d��WT�
VX�����v�APsw��H�y�d��
�g�_�<�/�u�2�	�{��xO�����l�]Ӎ7��z\�9��{R�+�{җ_@/�0�dӣ�H�lN��D�}ٯ���T9v���F���XO�U����D�+���|��m�:�/�"��f��y6a�q!"قj~�SvR���(�`��xt��XV�
�'>Z���ë��!���p�H�d�F��z�,:�T���e>�I��I,�rM�[����{�_,[�Ƶdj�a|Uu�A�ͮa��xkS����*,
��-E���>����/��F��ڱÑ y��u+0'�0���||�?`���5���o��X��ݦ]_%>�9W�1�s��+�
��$�g������x��ǽ��;��"    �_Ǡz��]Wv�W��d���v���y���4�O8���ZL��H���9��2߰/�;6���Sn�LL��+�$�!I8B��|��}�]Yc��p'>�n��(�RU�G��g��e����k�����Q�_b�:�&;������E�����#ט�:lU0���:��b��ɣ����vbu�acը���d.]b�^��.��>C��^�v~�Mi�]z�		��ڑ{9q0�xGp�"%��r�,i����+���E��9Mxf� F�R�b�?W��<̓}7�K��ל뿥�_j��y��u'��XN�	�$�Վ�b?J�Aa.c�B4���I4��5����K�@0RLVI!7:�E��4,��˿]�e����P�)G����#�n�a�)���T�t��-�˚��iҠ#ߡm:����E�S�,�\%!���`��w����6� =6���8���� %�y�O�>���K�$�PEl����8�`Q�%hj[Ą@P%�Op,�t�b��<�,i������KI��廾�U�B&|,��>�"���~Y��.>�o��&�p��P%�����<B��&a:A"�!��CC��ѫs��r�5n�n9���mxK�֖���ڈ+�h�A�P�DcC�R	`��=�޺H�S)����Y�R��I�mK���t��y���aI1R��v$�豖gM�m�$"��3�f�=#��&a2T���f�Kh�C\}m!�f\6��T6G��G2Y�0j�#����u��E<��:B���Y�� ��%�]�"1�`}�#9y���oX��{$�W�DIZ�:bܭ�]p��k�����I���I�Iy���"�pD��`d��@����̇v�d;��X[�x�;��o��/�����5���C�ǝ����H
���y_;��zи��F�T|q�/ȳL�C��}�(��-;!3k��$gC�9���ȲL���K�9a�϶�v�8ܷ�����A�tNx�� ���&p_5I(d��\A>]��-��Pqgpu.��92��skh���[B{2y�0��S�i�Es��E�@�Y����������o�C�w�&g�7Hʠ���}�FVd�OR��n��N��_�� �����������L���.5v~���	_�n[�P�8�ŝ��n�"��y��=��������Dg�!"$>\/W�Ֆb-Kv��xI����X$�9h����)�qR�I9�W��X�{�2�	���:�������t,L]&��(\�~v�y7���j�V�T77�z�6�Pl2B��:!O�]�-��D0���?��1�r��W��z"�����)��"�F7��7sd���+�]����v#Yx5���g�]7����@�BÌ�C��c���� i#�H�m��ts��tVM���{D2i���ɧotl���|*Ie����1��T<�g�ޓD����;������U~S�ٌ��M:��i��&7@�.���zb���mV����t@q��'Yr�c��z�T�<Ů�SP����w����[C��$,K��R3�L}���c�U{v��r�����D�f"�����O�r��1���Q-m7Q�0�l�X02��r�0�d3[���>�;_̗u~w7��YH|8X���f�&]�<���i�����q�*�l�21"��,�����l�U2/��1J�b1��JH�Q0��X��w��A�s���c�$�C��A�IL1�v^ QY|Y�#�j*S���.��\��.)����:����d��$�B���`��M�FGy��c�">���b��R�'|��u�8��f!�U>eO�-�a��;09��p�z#�����x(�7{m�/,��+4���q�[�`A8��̐n׶>��>G�j;Ҏ&f�uUd$7S�]����8�����!r٬� ��왯��RȊ�Ľ����e����bE�Dh��I$.$S&:i%!�0!��ɷ�:���B�	�RpJ�\����f�l�q&c�@��L��2��)����G&��	-�Dw��9�^�����t���'�Ȧ�d��-ED^/�ܤRw54"�j)�_Y�<�T,�%/����-������qf}([��z䬧=jR�+��+�*:�q�@���M��W�@O�:Ro��$��e7�m�����yT�o'q��꜂Ogϴ�u��-�7�~M�76�m����>�g4	�3�v_ئz�u:j�⾬����,��eQ-�\ز���H)�B=�/נ�M�ڊ���(���I"��_d�B�ށK�ג�_��9�O>�g`����̖��yWޒ�_Ia��J��P�Ő{tl�ob_1C��_xτ\9">A�I�eOEk�up�S��I���j�_���?_��;1�,T�Fl��/v�c��vб{�#��r1�N��КNg���
ٳʮ�?�(�����u �?\6���v�X��a�bL���ԽǤ�gp�
�1��cQ��
����,��˚����JXd9-|kW�.=~e�ʘ��1�d�@m����m�T�f�
��Y���D%it��爅u끊��V�L�`����Q%"��`��F"h�����V�\h���|x��2�6�LC�o)2SǎK8%
�߽�� Q�����JE'J��ǿ�	T���Ե�uMi	���7K�$M}�hJ����&�]��W[ˌM+�B�d��7D�Xv��Z�zQ��f��~�'�|0t��b�cD|��p3�E�֢l���Ӡ�\�~IP)�m'@B�ttq��`����VsbM�6���:߀BV�����u�*�Y|^ 5q��L��іI�Qxq�E�="�q�P��3I'��ӦQ^����Nj���E�d�]�\}����"$0)���DvA�>��$�� DH��"��?�R���Q�^�T�4��	�4�U��L�+�#_G����cx��r�6���<�E�p�J货��x?���my��'O
@�.y�xA��$=hұ�2���!���F4��P�Re�@��d7>{��X7�W��>��u�c�]^���ݳ/Q
�6_B�)�hH��b�\�+tj���S�������ʄw�I�	x�x/,
.���;��@W�=t/U�c�p�ܵ�D�1B�ܢ=%>��������~�X2��X�-<֚<Yd���9[�E�e|0d�W�&�ń��֠{�<_�pL�t:��_�k*8C��aپ�9����=��qU�[}���@����@��*H7K�y�\(�p
��:�9JP(*�O:�+�KG=����}��؆f~sR�Tl˵���{r�䷙{�<��(E<���0�c���oj?�=~�xH�)_kA�*�ч&���eSL�d,)�|.�9�	��t`wԯ�lQ8}|�.�"ߏ��~Vc�d�6zgk�\���7���s:��|,ЃA�USH9O���YÖ�a�aEiSu�l����#i��APy� r�n%��z�Y�|R��2�Q7s�!��Z�1{�1?-jV��iE���.��+A��F�f�g�	��E�c�K��2��6��ٖ㨒�63��d��En�r���>��?5��Fe	7��r�-�G
���Y _�u��L8�6B�/3!��=H�с��Y��n��i�M�^�u�um���yM��/48�r[m�R�&�O�+�^5�y��e�l���O܎��&�6�@C4t�6�}�9W����=|��h�/W�f��/N�T-&O����������O]G�����r�K�RY���a̋�_/1��Ȑ�q8�-D���P����� � �z���Hj:�)
������A���B*e�'��̶'�F�;��Ƀ؞^�緖��zJك�;������h~�4�I�ɗ|�y̱�����֕y;m�1*��/�@�Ů�2�/�:�F�!��mfOm�t������V#/�k3j��R3�I���W�-OL�+��Zm��=�����P\�1�����܉,���7�*�_�e�O��2��y��ϦCk��uqo�#u��"�8�];��N    �k�YϮ��`\Aku�`_��M<�T�;�qش7��_����v8"m�)��]Y������(*W�z1o�|e��O�IH��H
�<L�NKpZ�n�/`R�˪��zD���d��Lzk�\i��8���}���_1~
��L����
�p�>�Ɒ�$��`<U�$�� "�f�@Uć���q��_r����Ϲ.�ş��A�1�/����c�-!G� ص�	H�B�/�y�K4Ȁ�uq�g/��/�z�c؄x��v<�K����b#��ᔒ�.�Q�j�o�zQ��*o��V�/��>֍;T$	oV�~���P���_������J:�ch�<F���WƵ ��׮� �|k���Tp%��7��ĵ"3����^���pX\����I�ePP~-�*�]�J2��dQ�󽅢N'ܵ��͂��W,�g�x���i��RS#�\g��}s�ȹҔ{�PI���~ź���¤鴁a�T����&Ex�Y;����0p�]Q�(���E�gR<�L�iԪN��s9���s���3����إ�uR�ҪMc=��-sO�;�����Xx�UZTW&�w���<�9Ŋ�����0�ю�;�����O�w�=�w�'m驜O�}�Y�J2w'��w�(���I>����cW��I?H�] ��Wc��DX���`��2�$�fl���OI��j(q��O����W[���41��σ�Y*~�!�	�����ߖoM3UC�Y`K"_��?����I���Yo^��ώ�����[yVJ�1�nt$��?�Rp����Ee4� �}	.�^ÿ��a�R��������d����<�),�S�X]�z��~�_�=U�"��d�ā侀��HH<�EP�wApk]�鋄O0Oƣ�ȅ���Qaf�Od�+�����P�\p���6�]5�;�}A�Ui>j}�^�>z<qEΗM�R;m�J��S�?�	�(�e���%l�o��Ql*��MGD�1�9�P�t��%���S�.;"|M=�N�� ~�#֐�����n�@���a��,��ߚ# ������4�y
X�8p�v�a����B�h8㉦,%4�>b��������90aג	�$)�����>.�us��w�Q��Y:�T�u'��~ͽc�W����IE���P:N��,O
9��,:��ge��YN[o!+����C�a�]������l��ݺ������K�t`�sXv[yFIg�>�U^ML(18�;%O3v)Ɗ���Q%0��V� ܮ�z2	�Grq�#r�u��[����������i���d� ��D�h�Zx0����yI���ps�)���N�|d���	*�*�\��X��4��T)�B��M�(�d�m�i��!��{h�����߄!S9�Ík��o�7�K*� ��B�L���f��s�2��s�X@H!�[v}cK���-(�0�g�m`���GHi�<|Ed;h�[X�W�����/�H�
�N~Z����i^:T�Ɩa�����UO�
����|u�u^co����<?7���ߚ�iV�cޖ�U�X�4���om[mc��'��[Y756���A/��9P����&�P3̕�"�m�S(�Y�{A�F�{m�PcCຆ����)X2���]��*�A����<�`�}�4�4����p
#(�P�֥���7�<����1�J-����4�v3�G��o0Ifc&Ƿ�h�-{���c���'�ۄ��x��"RK!��^�z�Ͼh1�A<�r�-�w8�'��Cۺ_�`ׅ  MD6I�'���YKdz��n��;HI��S^6�y�H)2:t�uׯ�Qs�"�B9��c�]����vX��w��3B�g���D�g�|&ұ�P@CQ�
��m_b�~ߴ��e,c#�h �"˚0G2��7�d."���+��9�o1ҟ+���Փ�p���(Km���ʀ�=h�H%V��_�=�U8bƌ9PGz�h��!��X�0��0υ)�G��4 ����<�Oq��T������4ly����倞X\��*P)9&B�sl	tRv�e�M
'9t�&@���K_=��?�Y�4��_,�/e�\�Rrxfp���~��ʽ�a��'r�7`��FV��3�W��"n@�I7(����H"�1>�=�d���ǐm��D;9ܗg��!ze����6A��[��r�&��@KL�h�I��
���z߁�=B�Ol���'��Au�v�]����[�'@"Ã�wRO�@+	�F�E��-�{m?/v�l䫐*Tz;2���D�~�5�O�Xb6c�p.��%)����m��tr^t���mh�m�ٶ�_�[������)��X��J�ˣ�������l�Sw��;����Y��H��<R�=�Jt�Ѭ6�v��項�OMQJ�hl^���^7+O��t�h��?�IFFm�X�9��A&�5e��u��6��&�"��e�v�Kp鮯��Ӽ��ǧ�����N�I@[Z
��6��F��A��}[>eb��(nh��Ν4�+�_�-��Ƹ��Gng<m`�E�Tvy�-M�>�収{�"Ǫ�gC�����6�o����^����c���Å?�~ Z
ծ�����hg�ݔ��۟\���S��a<��i�=������;^C|�<�s`�U`l7��%]$f�C�*��n���x�����A��D,���ǪbB��������?[�&]��%<���Xj�<�[�>&�S�^�H���b7�S��M����A^�����iXf�������x�;�+obl��NS��,T'g��i��a<�-'1���Ux��l�cȉ`6���x_n�j[\�� 5߸�)�������h�h�Et��.�Cg��&�������`�ϵ �o���*N�g���P28�V�e�Vp�����D∁(�2�Ԟ`�0/��a��x >y�k��%�LRf&,�g�v/�|x��Ar�k8�Y��q5���r�����6���P��?��Ps����ȓS4������#�	Y;�N�}�u�i��yx��4�መ������n��g��c��BU�,΢��4o<^�~��=�	E�cEg���ܺ7����+�I�t�GY��F(�=�;�p,���-����mDV�~֡�|�
��������)fs?�kgXQ�_��S��d�T! ��3_R���������7��5^�V��C���i�s�Y�x��O���3q}�Jj�,��#@��jSU��+���p�1�4�j��N���
Il�j��*�gc.�sn��p�O�6đ=`��׃}�A|7tV���65�_fݲ�pT��"<��d�+�p0lrqS��IL\ �nJ C�t&�{�ybt��R��e�QI��}�|m�<D�l:""�2PTdi`3�V1E~���V^UM��+VQ*.�A]�6/Ab����>b�˾����Y`��R�ᷕ�L�k:<�Ƶ��n�`]�O�R��lsWCB�HI; ��p6�Ǯn���G-��__ODdʤ�n_n6��L�*�Am��b�j��t����/�Y::�4�.Bd�}�@&�1B�X�hM���?��,����|֌|�0�ϖW
��7��;�h1�Nt��K�T�F��žk���|)���P���)9'�]�n�K��$��.��Ek}l2[ĳ��;h�O��䎣�����v��g���� �(6��p�`��$aHߕ��q��4��zS6@�3��K�\]M���������h��f���j�y�j&�%�@�.���F��-ҧ�?δ�i����y[#��8_�wnU�k#=:m�ϊ=����sdxN�P�/�<l������x��ap��EQ[����u|قoxq��ymKcSiB��o'�t`���++$��N�in����ŪD����NL�FV��*7�}�G��2���t�a�!,\O�q�"���Mc����y�s��y��pI3�� ?�ۼZ6�Ʀ�jp�=�SB>�Ϣ?o@��yAQ[��E�������I�������S�9A�_v�Q0��    �ր��,햀	���g���m����3Ҹ�Gzv Q�����ȑ�=)�c�$�^I?0tĤ�*4p�(�F���խ��a�5F]/S�Oм���v3y=��h$l��`���8yO 6�]uM�]��ߣ^v`�1c+�DސLD���g���<,�ά���慐���ᵹ�0�k�S�LI&��w圐�VI�!�f�\�������m��f�)˒	N���mI>Cduѷw��6$��|�o��3��5WO�Q�`/�5������	1�,�z��h��|�j�΋����
\۰�G)n�n5
;P��j��}�i���qB�б�����^��K�`8���L�6�4���4��Y�|G��\e��tZ���H���{��$^65X�f�*���7`�QQ|AJ�]���ٗ/��Yw�`��O�l��m�9��]��G�Vb�$X\5��.�����
�(����Z�9l� ���4�3�GT�2櫼�r��;ȁ�czǵͲ!J���y����9;����	Z���/�$���m�?�Me�9;/���=m��|��}����H����n
�+�N�N#ۇ��+�z�����X�Sb��	ץ+u��@��|�2H�VYy�&��i��Q*o�y?YW` �N<��)5�\�2�����>`pt:�$��䖳���˯��)�)���[����hA��XG�gۊ�ͲO&Dd��e�:��X��t���%1/��uU���,ʆd���$x�@X��s���vp�M��|�E�����E��(���r�al�e�C�ã����ʙ�&:�6~&�$���uf*�c^�yG�JS1:�N���6c��a��ɏ��s��O��ҡK���=ݒW1Yt^��y��k�ґ�õ�$���W�c�9�o��Z_e��W\f�ʝ�+�����E�>��gGO%[�2�"����Dk,�����{xv��|{~���9+�}�<�$>�;����H�ǯ�N!I�d0j�9v~���@�!=�ˇ��`�ԍ�n7���dR�8j���ʰw�a[�a���aU�+;?8	h�	�5���1'�kpƳ�!<�����l��γ2��R�$���H~�.eQh��z?���pÞ�M��+�.)|x_`�&��.�_<%��{e����GG��p�~�$���P�|<B�}�ݼgӝ>�'�5��B.��:���˲��2��	?�%,�N�B�f|L��H�i���-��F�F'RM>�)V� �rd��98�ՠ��᫹�@:�M�CiQ#b`N��¾e���A�6*�.M ����m�>�&�)C�6�
���#R��ŭ��ҒL�i���Pz�Y@��:r�\)���}�?T��������7L�L�ሿɬ��^�֎d�8N�	�'d-�����U��MEfL6�p���H�.�A���j!(����y��E [^3�͞65�����9�� �=��L��N�;�+_[�W������Q�o��v���FI������'~�a���t/�[�+0��>c5��wߖ+Ć�.��%��c�c��ʀ���m�����$���%KB�{��]�TR�sa?;{��9o���W�'�-��c�a[�Y��� �&�B� ���MV�o;&&:,���X��;�I���s�pJ�9DcT-=a.������,BJcC8����^,��a�������`�7A��UH���y2�s�!���l�+G��-]���D��6/Vw��]0�mv����Ի�bQqW?.��[*2dI*�23�5���_M{��4��ֳ����Kaos��GXv���g4�N�}��  ˿ �m��̑��i1�ό�C�/��qFsؖ�7���w�b�緩��N|J�����x�{�l�:��д5H]5\�����.h�U����:׺�]Ӡ�@9h�7�)��W��7X�pSZ8s|U��~�{Wm[�X����
��D����2Ľ]��Ux�>,�������bwY���,��7��Θk����Ɛ.>�疷op���M[a�;^����w�';��Ui!_L1&�X�S���a,��B0�<ź��f�/����eуӹ����|	�p���ih���)f�}����md��ø7"�c��ˇ��-�|�I�2ƹΤ����	4U���e�P��1���	.%+�a"��eror�8�Ugq�<`-?>>�r��j�A�B��(mc��h��o�z�J�,�Ix9pЕ-�s0�K���1�Յ}�߷j|�[M�X���;�E������p��@�K��Y�����@�l��_E>ꋢ�/�x��!��(K��R�;'�9�2�%Y;����V�������
�������9�3��C��m�x�WK�4���'�k@ɍ��y��l+wI|3�a<��lbT}M��\��ݺiag�ruUT�����;쥾jڼ螲�	����,� 2ˠw�w�櫻a`�P}`h׻m�w���6�`Z�Vd�]�ۢ�-���kdp�OP[;�����cs=c�d�t��v��)�,�K�����E[̗���~�P�2�]��<�����n��5��u#ij�%.}��c���q\X�x5��v3YH�ޡ[}d��Nvf;�h`c�#�#�I��7�xm���Ǹ*��NK]t�H� ���O͜֐�RRE���ч<�����c����H��i�PD����v�5xX�}��������m�����->���+����hk�h�`��q���>�Rj�N۲�����w�j���l#���T'��������M��=J�L�3��RO���rs2��,9|�A1q_���t�>Y&��4���g'ْC̲���r�\ʅ|�V������r�A�����/����NCsߑ���Y���T��r$�؀CQ�ikH����r�xh�R1qK�����H��/�u��[&�%ވ{#�-?п�9(�#�'m���C2m�4���b���n�H��v�y�U'=Ԝr8��� y�)�90�u��3���Ž	+����\�X%���HF=�k2���yqqg���YfF�CD��#��������"A�o}�}�~Bk1���t+aN��`���a*��4�qE�z�:���-��M_�!�'|]�en4�Nw�<����L�«s6 ;������r�/�:)�l�E����Fg0��­E�ռ�>n|�q��D�1�D`���b�s�W�D5G�Nr�0$1?�Uu�����ף�Tz�]��}o]���/
B&�:�k�I�fФ�ub��8��f�� \��ϧ�a�sjzB萖��OB�:�30[_6<Qs.ޤ�:���F��yK�b����|��i��23j8����*��ޮ���(7���L6�ױ+ܡ(�����;,ijb�|�<��4�7$]�
B���,l|1�sM)���8'�E]�v��˼&�Si64p��[U�2�t}w]��+�4��`�z�ނ�ܢ| y�u�e`sdB�M�X�$c��q|Ҷ�aQ�����?�ſ�7��7��������sŸp\���Weq����5��P�K��Dv��1���*2�mA��aD����y�fV�7�&i֞veru��4�|K����L�9��Tlxc�y�-�7�Q�UEޅ�b�����*��d[�[,xA�ͶA\{[l\Ʉ����ː"�l�IRj$�C�I4�ǰM��,���EjP�`뚉�s =7�MkA���ۇ<�t�wT�D��h��]߹J૾�*�x7އ��� _�6i?����+ৰ	-L�
8���/����$�;�)�D�|�,��Ma� ȭovm[�#a�i(GQ̈,�c�R����7�+�v��h�`�D�$�t3��BFڋ�Nl�Q6HSp�C�T�H��H����7ێ�h�E��X}ѶϒI ����8h%��l���ȂH�P6�J2��'"r ��LR�v��m��"9D��}��������o�Ů�'��ۮ�������S��/K:o.�nf�     �����2f�fS�X�� ���l;̈�CvV�gO �Ǜͦ.�Έ(�`Ӆ�8����Xc(b9���߱�צ�����sO�����DB�7[�se�Qa�j@���m�腅����`c�n�S���b�q���3J�Q�<Ar��]�3�vAZ|�?Ք;�|����!���=�`p��p`C���eA�5�t��S���X#4κ!M���C�"�1LK��W7H�3Χ4؃g�#��x�f)0�Ү<�>�A��	`�e��Ǥ0m�Qِ���/Nً���^�r��5�k�:����)��r�S�i�Lu^"j-D�t�����HJ߀]�C�6�r(����p�����L�M3�k�J�6-�������ݣRzS�oԠ��.�PT�)``��_�c��zAX'����*U�n@��/K�Ɉ�v�6�I����u�&(�d7s�&h�_?�5(��qn:@rLt��<�O����6.faܠ%��[��C���֛Q��̕By��r�%'���kD��WAP*O�ȵ]zo�*K��^}��/_���f�TP�/*�\�C|e昊>9��7X�V�V9#C'ũ��a��sR�Nh`���jB�[���e�|T����:�2�[}���$V*>�gNT>Bj�/e�-W�;�h���TjS��f��(�a`��8�E��q�%��2<�D��ZŬy�
�G)|�"<V���w-���%�r�[V�DcH��I�����02�O�p*Ϯ�������7���:����JY�CKm��0��˔��%���ڏ��3�_ �َ|�̋1��̗Jf�I`�d�s�7���r�p���G�W�쥑��Xq:a�*�=�=qО~��2���0s϶`�~�{���B��+Y:G+�q�R��S����ť�C�a��+�����8D!pa��&5}]X��&bg�Y`�嗶���E�����S�P��	Brb�F���yUq�X��p�!uie�_V�8Q��f��< �`�����9b�˅���1{-�VT�t
���u��J8�ܙ��� �Zg�=x-q�jJ0� �`���*x̽לU���9d�(��Wh��왅��7��h'M�,f4��rh3��F�X?T�p�s��T�o����o�(�E=�v�y�h!`&zuǫ���k��z� %�{��̀E�']}����gT�
v��7�ɏ���Jί	�͎�٣&�:ئw�W���D��O���;j�m��缿l�s�3��U�n�DZ�Yٻ,
cf:^�RD�D4l�;�b�ꨦ��!��m����l����^�CF ��:U^�ˡ�����z������ ���:�j�U�]z�g�_X��у�f�p�oV�87��#s�p�l	���E��D�ct*?�B%�M7֋���;����)`��:����9DG�ٛ����B�z��~ݷ��`��%�Q��b� �(�-���j��l�]��?<S���ݖ'ó�G@���]��3�ѧ��5�h͈z?;�Re Qa���Ld��+�/_0���z�{�R{�ku[%>[*�Z{��v1���*��%+�/��.�Ͻ�%��Tԃ�����߮��g�Z�X�?��5q��M�c�]���T��W�AP����\�1���[�ԑ^@�B'J GEI
F�˲!��̡��*���t%
Q�E���L����U�H�(��Y�w�l��i���""�H*-]�u�dc���as5�9Ch0��~<ABrmF>�֏�-����ļ�J2̏{N�*�Lp�
�/�u}u7�3rl�(]'jL�2����{C6ϧ���=8.�������.1��]c�����o�tU�*��T�+m��-9��75��55���� ����[m%*�J�a�=�a^$�zWR�z��X� ���.&N_���'�r����wݷz���2����d�=qC/�Y�����X��:O�_�V��pg�J0��`���|��7$�?��1�Z���>�WNb[}-#a\�F����x����v��m���;��Њ"����g�<��<�H�a"I_�S��8��_�v`�ΟB��*��$ (A.���l7+:P�8�G����e��9$���ƭE���+�� �>��ޟ�-E�f�_����G�Va�DV�jfV6W����2SIL�8���kK�>��Rf�:�.�����%UVi�1�,\1C|w��{�� v�9<
��uc�i��c+]�]� ��N`_����׋�BN|j�����j�uc��5�A2" �����y��U\i�_k�u����O�)�U�� ��A�����bbw�9F��1�3����^�E.�}���%Z���0��/\<D�8=ֳG���
��I�d�%�i��ŕ:��d-xEsѹ�E6�J�B�O�jCb���3�y���Z����� >%��Ⱦ��v���իy�f��`��.����/�zK����%%2׶n;����i*+h	��5��������Ǘ.�����˛~���Sx]o0�jO��ݱ9�i�8���Dk �#-�e:Oi~Нz��L�Xl�oi{�����C��x�ʑ�to��t`[`��)D�Z�p�-�+2.���MԦ��.�-����
��� �[0���GG�y6��
�ۢ"D�y���=�{곀�4�*Z8�����4�u���.�v�yP��H�8ކS}�v�#�o���]i!$;Q	�㐰��u�1,C��`&l�7�|��j��/�W�Z�*��ΰZ���9�A��5\e��9�D�7�"���Ɣ������O���,�����P����l��{J���*]� �LY"��Y�ڬ��m�+�'B<h�r|I�L�S���	��&����܄�����N,tN^�[7�f?�q%��V_Ȕ1)J�'N�vr*��{�l���
.
-�Ҟ�k__�`y<��<x�E��B���d|I_QTTN�����q߶���iS��kR�+��#z�|�+� �㦞D���S�>����?~�9SE�g؎���B�{O�!���W" t���3�bޓ���c'E@�U�~1�:e���K��2G�e4��f��V�K\�m��J��Aw�{��3.�����#��	�qv�t!�1Oc��X��垗��ك
��ր,Ě/�׭� �M����+E��H*���YCk��ş^���|��/\]TT�Ik&���Q��Q�6c�}w�qE�e�I�I���E���]�r�.�;��)��J���Ͳ���i&����� ��q��@<�-p���ڐE�^�I5�y�ݶJ5�x T��6ЛE�����+��!����K��-\�h�\�i��5F���òΰ�#�o�1���":�����%�x�[�
S��~��cb���_岌�����6�`�%T>�6C=�P�E�׿p��d����0�N�z~�U[��"��*0d.�㲶~��
�>�d\{^�V"+4�FR��lZ�W��0�ݎ<G\%j?)F�p���`S�0�ί
r=�!��O����I�^Xc�!���m����恹B�d~@��� �͟Gd��!��'ȡA��u\L`�ηD�p�m"C�])ΉB�
�շ�@HD*htg�[0[�8�f/��5�]��A���Ъ�~9x��:/���z�:"�*
#��&\�R�i�^�b|Ǥ*V�2�Z�����@Ѥ��zeH�X�����LCK��:�}J��x��sT�_�-�xfa�ۦ����EYB�0J|��>�������J��\��Z%�Rm"y+>���I�U�]�Kk$D��;L/6F�pӵM�	�x��}��ŏ��:H�LO���p��kq�j)ò�mW����3f̤����?��L����Pr��j1D��]M�"S�p�G��oQ�p���p9;T�Aܨ��r�$�.A�����wJ�24IIנ/�f���&��Ă��و���Q��[�w�J#F�2�i�������H��VaۥYď�^NvW��&�6e�2�zz�G����G��j�J���
    &?6*�%R_�u~��Ym��"�����u��
��
�"9yC�����Lu��-�INS�>��Ʀ)kt.1X�Q��K�-i�1�;%� g�4u��MӹO�,'�X���S�s1�� �&l۪J>j�qJ��d�Z{�#)�r�����;�ω�u�UH��"����t$h2NLs��4y�eR���G� ��mJ�%я-���B��L@��˪DoXYN���|��}x�F%���S�A ����*K��(�G� �(��>`�ڏ�BpL��ϣ��|J�!}�(*N<6Q?����%%U�i
gXģ$�^�����d��Έ�!�V@��4Y�bG3(��ߥ���O�
��6Z ��s��3���i`8��G_ooɫX��P�E0���2��'�.Tl���a]�2c;����/*�홥aI�T�����q�� �FI��C&S�n��2p��7��)^�cLԖV�D�v�uG��z�tJ�d �.�g���
e����I��y���_�"]ie�f�b���8�w�4�V��a��o���2�����TJ�4���]{E��ux)W����
^�L��w�*D�������QYLQhQ�!J��Q�SYG�h���k�ĝ]'�����x�ѭ�s���%���+��=�>R��¡w��bp�����u?HR)�C*J��ml1HJ�WU�A���+>�|紃�W���xJ���mas��́i{����V�����V4s�KFzG��O\�J���EX��2�q�6���p?Fg�����~����U�v@Q��u�P@'Z7����f�u�-��>6��$��-+,M��ʇ��|�����z�����:PݾhcG���V.V[$�~�{�����{�f`��rb�V�,B����B���&�g'Ϲ`ڳ�X�;y`9�	���H���p��%�3X�1�K�Gڄ��(�j�tPőg���gL	�rwO����v�������Lɐ�!��=��L�Sj���� n����&2�JJ���]�Kh,�B��	��^�����nt!�Q7���؍��?/�5G�K�8�!@�A���9k��c�q�N_%�:g�H�AD����S�~���#eۓ�������h�H����բ��d�||�x|SĽj�ب�)U@k��f���WZ�FV��� ��.FD�ꁤV�Ĕ��{�UZ�`Ж��'۠�=f��u�3`D9V����Af�u)��:"���1�h\X1q�d�WN���i���c6O�V�ܳff>�d�a{� j�Iv�J�,(�JW����N�ktWe�n_��ס����`˧���*�����]M�L0���~)T5-r]G�=s�Y�ж���S$2]p���3RA�� rl}"�,�A+(ʝ�(x�s@���SP$:��EW斅WF�p���S7��DH��c�H�RU��mIQdj�~�Z���f���#���PE�$"#�����Y���=E
f��E�������v�n_]������b����8p<D�����^)��Xc�pٛD�D�.�SƆE4>cl.L"
	�}��A5_�y�> K9�*�.[�!i�dcQ�p�qhL�_��V���Y��'?��=���EP��5g\)��8��7��]K�l��-S���ݕ�����U�Zg'��ݑ�\�˓YVgVݝmJG�]v��1B憿7����t���z��Ca��:9R�}��	8�Ț!������H�(G�!��5���NW��
�3�iI1����h�WvN,/=}��<-["���7�EVs��;a����H.��\��8��O�����+��/4��]�q鍀� J!�2�!UȹD�\��O��M���"SqY*_��8.7��~�_�O�" ����gT��k�,׸r�����{����7��Fb���&j!"�������Y7֞���U-�^�(!*�꺳gf�'"[ö�k���ZA�D�2E���
��0�&��)�U�V/�-�]�,��iW�(�0����댜Y�L{�t���$j�*nl�lΈB'Q��+u`��p���S���#)��f46lwq|1�1���ك��+ ��Z-���X'N���ż�x:��L������Aeg�l!����(�]�7RX�u��n�
\�rD�*����eT� a6ە��E`��u�q�� &L�5d�>[��}¾�_�\�R�HdY��2`X���|@p&���=�^���p� ��}P���>C>G8k"��� ژ�;��eW�ȉ��b���'�7���?�l�Z:c�@Nb�S�=A���Ng?:��b���!�bڗ;��?V��cx��rS�E���_���ً�fVH���ګM�V�6A�ZpE}ҔI����K�#q�����0[��WZ�ϲ��ie)���+F��Ȫ�FH�@E��w@��k\C y�nhi�+@�jߞj�G7�n������e��f�$�nK��QU���ֺVɖ.^��*m�j�^�}7�]p��#�	2�lr��f#����?E(܊oM �u�3��NIp�}�|���u~�l����
�̰p9��X����U,��0Y�]�%�e"H��ˠ��0�$E!�d�q͎1��#NB����ߗ��*2�T�	�o�,��vK�f�EXnfL�����zs���xr�_��[�`?����n�Q�.�A0gF�ϸ�6��G����`[̦8c�sbef�h�nkx]�Q���0r\_�7��d%�cB=�u�z�4�c�H�}��h@����[D>��GxeyZk�6D!��{�O�����0|�_6���j�t8	�]Θ9�Y������uB� GQ�?��ޕ��/�Ιf�JM|�.�;$B|�o��׿,-v%�������6Ň�]S��b�M�S=��f��N��Ll1��Ɉ܅��H���;xl���������v��ъ���//���a1����~��CN�/_�@P���W��Eg³W���fh����-T9KW/�7D�����_a'7c�ï=Pdta��`��#�no���?���lv��Hj��(:҂/��#{�����J��ەs�Y��+�Hg�R�޼�x��3!��*�us{���K\Ma
6YM�l��۟�_��6����z���WH'Gc�6�b��7͊����e��W�����U��;x93V�|�{���W>���P/���×����T�8�T�`z���u����~GN�B�50 ^.��6��ox]`�N/mqۄ�/9+46hg!}��}V�T��ls�un[��ۮ��jWo� خ��i��ѫA%x�W���A���g�G�e�Q*a���~��T��Y=g�&a<㰅\NQ�b��lM|�^�x��5���=m�k}�I�jP�����V�y P�`��7����Qh�?$q��)h�~zy����K���sQI*����s"�Zy�XK�#S���/�k��_o���"�t�fx�#<K���S;`�x@K)ζk�E�q��-�gV����Xq�k�#5�u����,�S������p�`>���f#/��Q|^�q}� ��I�>�WǏW���r����[��Z��ȳ�2	��a|/��[v�|�-a���gK4�F|!�N��s,�Z\��v<2�۫�zU����MV
U����N�x�(���"��+k����*xkGVK&O�Q�"s���%���Ƥ�ɸN�-3kߝԷ������ݛ48!l�as�KX<0҆�Im)C����j�Ba�z��"��E�V��	�L�@c/*K�O�pD�g��l7�Q�n��e�~�S�Q��]�mV��*��B�?=Y+����k%��b{~m�\�Xh563y��8�x��7�Kw3w�Gj-�-����"M.�Y{G�l��������#.��w2q"8D����m��k�q#���W�y�^��d
5�GE��m�%�D��d��hh*��&����\�2l�C���h&Ta�!�΁���#�ϫ��UE���F��JZ9���.����EV>��W9�x�9�����/Շ�g5��    T�����E���
�޶��\c���V����Ȓ���f�x�5C���<v;w�Q�*kg�G�}U/�do��\�MQ�,�`�S�Ó�)B�;V7�ҥ)�ǡ}�r��!9��:��D��@B�C��n璀'��;h%��I�D�'!a KX�[��;�_�)�BN��E��`��ٻ��%̐��MO���:�_�m�pPV9�W���DU��4��������u2��~�ޏ�}��x�b���;$uv�w�<�of>b�*�k����+�M�\��S~��eJ�q�&�+5iX�VZTg���d/9�PJ>��%�'��,��I�jT3�ƚ��w%ٔgݾ�/ �^�=�Q]?vꊕ�W��u��;&�����m�M�}��+���r� ^���t#������	S��۸�P�+�{$���9?��!��EP7ӥ"���.��b}����X�.>�j��KWkgGK�]�7"�=p�4���N�}ħ�3x��¸�/ס�c���q��0�����Cb"⣶nZ�l��C�W��/��Ν�o��g�
�������
ǯ*Fj�Pܢo�F�$��bBe^bx,�D��-�Q)*���#+� �#��v��[�+K��_}�Ɨ���6m�S90=�;Q�~�ud�&4*�DŕjDEcT�C��|hQ"��L�&>`e�*�q-3�}7+Lr�}���E�s�k"���[�J-���
�s�#&��^&9�d-�9k���/d*���������"8��?"�fq������3��X�<h���� ���,ƣ&|q��،�K"ţ_�&v��K�]���@%�t�����߱���i���V�Z�%�Z+�Ú��珫��W�8# ��<�!8�pn0��͊�K}�3���|�����������13�*]ɽ�_Ж�����׵X���o����ަ��T����L$TF1�mg�N��!*Ag'Ör�ցg�����}��TE:7p{:X��+�o����Sc}�d��@�n}(���EQd51�J}�h/��wN+�(#�Fe�U��8�+��5 D�g�����j�+$��|�)�'űav��<E!��W7��|����\;
:&VLf�Wט�D��ƶd2�po�B�%{,D��s����o��$H�Ucya�<�8ȭ(4�]�:?�b3G^��.=�-R�U)ؒzQw�*n�7�Dn�]��}X\Ca_�ON���Ϲ�Hӆ���55�gT��nv�E���������&�:S3S����I��]�0���c���7�2�Q������S"������&����A�M�M��(��|�@�=�<_�m����ov�� /�O�q���ܙ#$�K6_��,� ��]����ݰ��L��7�	��GX��v�Z��ƶ���� ��kQ�~c���UMRET�Ύ�O�V?�!�	^�E1,�j�5}��O����
'�b�Ga��2��s�,�,_m�Ɋc��K�c�	�����r���_�}��]���p-�)b@�m�V"`O��Zx�@�E>�,����SϾÑ�Io*�4���c��%\cZ�rm9�Q&�d��C�������K�E���h�[����*6��.��Z�vj���} �]��h���Y�r��'���K:2*ݖ*�j���ZN|k1�<�(M<3 �N��k����'�a!��&]��S曋Q��KPY��˝��
Q�G��E� BܛO��'m�ȁw����3�M"�܆F���Y:�: ���R���Q�Ǜ��0����m�'oh\$��`�U^�X�;�*�*;k6u�_�Y�=/�RN;���5����K�����	���.��B��i[/�~&x	��w�ф��[=LCL(X��W��Z�1�|�ܓ	�2a��kT��TT*܋�����ӌ��Sȸ�&�xpB��u�af����|��W]s����7F�+�X(��G}��p�Ojoc��bEْr�Y5��a�lFO%��=N���j��ϰ��+_N��ذpL
6�<e}�� ";�ZKVu[���2��Ю��oa�_ q�:��z��x���F����W��������=��S�>6��U��ZI7��l��lWWD֯��9e�W./h�"���o2ZT�J���j������v�i�|���� JiGt&l��Z��9�_3�����G�d��Eh��-a�)4]l��S�����%70K�<p�L��u� ��Y���챛ޯH��T0iT4<|��QVK�0�s��1��A�����g�}!#�Kdϊ��g7��<�������m���y{>Ԃ��D�5k��DY/��q��oH��.<�6��]\7����(���m�S���/�/hҼ��M�R2Q��Dx��M�CG���x@ɤ~�nb�ew0ad��ٵ)�B���r�^�Ca�S���O���= j9��e q�M�as�6)�sǻ�߬����^Ru,����R�~h��	��:H�m�cG��w'����"،����V]�����qcT�wc��l_�x�Ch�V��YЁ�IT}~0j��X_7��,0���^ll��������"EWP�U;�U'�w Ν�a	�k*�K$]�cL�'�?}��:r�F�&9kA⻀qۚʙ1|K!��6��d����vB#*e�aJs��z=kp�~c��-���b{{x�+ʐ6�vx�����?���=<����\nׇ���;x4�ru�w-�z����-J�~�!��#��_��h&ʀ\d����Ŀ}�z�u�z쮗�L�̆:D������`��z�J�69W��Vw�*hP�M���c �bæ�4B��c�ݸ���k���f|�h���Ʀ[���mk��˻0�Ϊ3��r�(��O��3������Sw_g��,߽
��l��u�'���oL��L:.�Fx�
R�"�(]4tͪyP��|r��o�c��!l�OS�ޝx�K�*a��կ6C��k��8n�a"<��ur��r8�5�R?����kWU`Č%6�(R&�c(�g��%Q�Y�Lr���I����؇MD�Hit"6��Ĵ�����\  �>K!���ߚa��eQ��wR�O�
3E����f"�Ua�����D��/F3���ğncil]"l�O���F�*�S#��eQd���'�]~��������^�Y3�$J�eQ"�����p��T�
n�,�tu)��-�UC�#&�����kW����P:^4�|l�*�����w���cǖ}�����L9ba�E����л��N�ۼ��a��?��
�'W9�K�����㷘����h*&ė]�;�Gs{��I��E�3b,�9�H~�BR���{��/��r��h�'Me'��EE]��D��̀�+:&�5�ֵ��p�R���]��;Wi��|h�D�� �=�}da����b'C��{Җ��_M��*WT��r�)��ǘ	��l�lM��+n�Ȳ���p��c���(L�Ch�.�������l:��`ʲǢ�&� �#���i���Q�E�L�=���`��&��ʅ���>���,��j�f�+l���TZ�1��Z�jf�������_�Ӎd#i)
#	O���8;˞l5U��	�,v��o��Qv��/J��g�Y���2��v�j�WňRa\�_<j%K�Qw3F���ݯ2�b�M��%$a-}�0w5��r<~��4���l�-9����=�E��}��G5+2*��X&�����6�����?WZ��̕��+�|X��	���D�.d5]:���c�XFM�6"����/�mڹs\�"�9�X�k���ݪ�p�/c��� �M��u�KC�m����r�jm���6����M -^9��DQ��/�ƻqw�xͤ�[6��R6	�}��5*H�~{��.�����J@�!s�~8*����܁��	��$���$45��D��~m�!�
�u�O
V\�S����KD�3Ԫ�e�=����xaS��x�\'Q��=�=��q�U�.c����y\7�=���㉜�� ����;����em;�1w��W�=��%*=?!s��x���	���n\X%DX��9]�nItE�    w�;JOD����.���g!Հ�F��dzMX"6_��'	cT\;�$5b����l*���p��X����Be/�X�"�n�<𲲐��+�Μ4]��	T!��3�eaD�A���"Q&�L*;���s�?���R�?�����Z��}ܸ�RsYp_kh��*哠�^�:��cŹ��P/Z\��Cg��C��J��K����ѽ�g�6R��Ņ�EF_$;�K�<t�P�N�A-"n*(.9��������#�-���S��0�9�,,d��P�_���������w�a�qg�mEi*5��*�o��+}�-4��\�bזl��\Cs�(��p����z�(�=gR���a;�$�����;�n�58�L
=�1MP�H]Fr0����r�	�ף1L��X%r�R$��=n�Y��	��E�
W��	���33}��}�l�,$Q�d���NE�,�(��e}��j��[�<�xI'VHپ	ۉq�نi�F��M�����{x6��?�Y�/�F�
�p	���x������*�eY�-�}�U��ó��6�:+�tqp�CΈj<x5��w���9�q�I'\+Ϫ�M"y-�DHd�cy��Ҽ2�M,+���&��]�������������p(LE*�&t����w�H� 1��x��c�G|�7}���g�(萂�w���P��0��-��O�J0�^Y�FB9y�����h^*���=�/� ��i��X+!����$�:\R��R������0�8gA�Z�hY���(���RT>�m�_� ����)����*%DU�) �tP@�3 �I�uN�(M��ZP�� �>r�P��/�0j]�C�ْ�H�����ˮ��W9��]�,��.��o�������2W�Γ%i�r0u����S
�����h*!�����̃#��z��1>��ym�I4����D^��i"��eO���ݯׇ{I���X��2� VE����\�>�fD��P��|�,*���>�^�M���/�)�M����qaU�ɼɏZ�R�/������*�Gሬ�.O�;i���8r�F� {`1�� ��vI��>�Ch�:�/�ӡML��)��p�]sU��ap�����h��<���˃�Jj	�쀰u:xM���ꆐ9%¯�K�U�|�G���no�W�
�����^_�����I?Ώ`C�7�-��~l�B��^���^s���6�4?�@�XXS&J_�(\x/^����N���n�����Ϧ��uH@����n6��L�U��WcɮBUV�����z�٢���y�d��(2W�t����j`o;^�v��Fƌ(+��}&�Q��-�<�vMd�g���+s��	5Rz��?����&Za
mƒ����B��u�]�H#�;9z���֛�t�ݳ��_Sa�9�~�/>�}������X�hWઽEhz�l~� ;ճ�錛
��x.H�<�K��e�E1.�U,؟�g{�/����_xԛ/���:m��C���䟛�+L~{�mM��gU	9�y��^��G��c��V�׫�>�����fq�(%vRw?2���8��P`e(���>���sz4�z��,��r����.J"Z~$�wސ���!K�C��s9ژ��>�c��~���g$�1"X?��P|T��QxP�q?;��z�#x���ցu���O7�b�z���1�Bݤu����+Kv�\��E$�G_KŔ�q[*�
7)���H����m���wU�K���]
#��ܶ��0�AUQ�G7}@��$�_ɢTW�JW%dvV_�˺�/��4/�aѸWVe�$�>�D�l���5c6���)�����JW'�ݦ�D�C	.o{,*�#��ǹ��v���g'ᑏ����F���U�d�#�G�Z�B�N��S���_�� =�^� a,]�C� �P��6� xX�נ���#GB8��T.��?V́�������ߢ<څ���]	�u�˖�(����� W��i:Ks�B%�.'`�E(�ˡ�(�ց܄���Y����f��7d}�(�	N�Txt���<n�Te��=�fě�T$�GB!k�5����걫U*�
�Ng�o�T�e���#[p�FV�vU?��0Sj)�'���������j�:^!�����3��k)W�M���_���f�LPK<e�
�c�矋�Rj3���o���N����7l�l��͒�e3���F�_�(Azdi<�
����Q�������ωd���6�c���-Ŋ�Q�(IAZ!��ν��\���nh-9��"8�\H��o�����ajIF�ݪ\X%~�5-��P�1���R�x���	�����m��Q�5+���3^��u�=�ĕ,�7�������#�������� ,M���q���Y$���0W�[#_Jf|״eV�|�ҁ�ș���̋�^��X��ޘG��3�/����k���q76$d��jd찱�����{�Nx����R��f���m�[�w�틟�a���1~��:ܞ�����\h�}i4O�-F�Ukq���5NR ��Wh%������3��7�� +����BY���@������Z>S��-�䀇tS������:���IW�he�`�^��_�FQ�I`X�4�V�a�xUq�dʼ�bT�r�ӛ��tp�H�M����ͪ�`�:�2=ؕ��H�Z�"U`���ul�̹m�/&Ƈ�R�J���uG���u�;�+���*W0Ϗ(�������˗�"�fJ�.�O�b�U��6sA<j���A��0�0���b!�?���.ڢ�D�T`W�wג�MDa���R=�0�B,�h�`=��'���+q�5e�]�KK5��^/t)�f+<C0JQisD�������1�\�*㕅�,UA"0���V�9��_��(�;�	��H������p ���h��1�����#Rsװo�әRe�d�| (����c��!�L1�Iڋx�4��h�Cs�%�OBa&P^/��3�t�eE"���s���߹�Qp�U���Ucu�3��������>�m;����K��\16���t��D��.��oA��Oҫ�a�YŸ�����,�*��@��4�tC6����]�Xjm�c���TK��'-�V��ڥs��&�Sw���{$`��x�+6����>f`�B:&�OCS7�ٽ�g V��9��$�ߡ�_w��7����,�OY'��e�9)[cW$�]t�-�u��[#^%��{GIk����/\�y|�M���}�������
&���:[��"��R���n�rG> Rܻ�ShY��4E S�l;+�*����ǎ�(��z[�
N�K���<�{x������ m�.�rA�6\��UzS��B���>^_�f�V=�M|x�������5a���I����-�Z�ְL�0�eY�?���*��X�c\>+��JWڱD���}�_��5�U#P�).���j��yo-y����K_f+]�r��G��`r��l�=�^d�$m���~Ă��v}xq�tX����6Ri�QUT*�o�����E�DL�0�i����Ɛ�Q��BQ�,*XgGKКϿ��D����[p��X�5��Nֵ����Rm5�E; �ס�/²�1�i!%+vv)-���I/r�ˑ��t�?������CK,2�����С�3&^�D�W#�.��=����q��W����Ϛ�j;��(w]Oax�J'g�ܓ	�O��<�����R�sa���+*��b鬜P
h����V�W���c-� B4S��Ͳ����!�l�}�hIDJ^�3�S��UKl ?!V�]�/(�13
��Hta�T���L�z��=�~?�-��3U8�5ދ��&�w����/�4�#[��R���H���݌�����{�
"��T��7z_+�HS��t��z�����EZ�U��+�/2�ο.�y������l!�����Z��wO<%p��l��h��g���0M@{�3�/���_�@{�G�n���[w7�f�m']����׻�&���Z�T'�&����j    hu8�1�S8�� ���u�s�OY��`��[KOR�x�,��=�*-���j�x�0��w"�����pč�8KY�*m�+��v[xY�)�	�Wb�p��ǋ?w&��xfnI�D��*"���w��H�`v�����1�y�L31W���x����aE�0.L�/䏏����_��̄�����4�]�ܮ��L"�Q��n����I�������O������Hp?��R���xX&K�=��G{��i.��l�.G����F3���A2�&9����Qc����
n��'��r�y��e_<�0QHoC{�?�����}�� �V}��1�
�QQ團xSscy@.�v�8R%�!����D�hj ���o�ԋRU�>���Q�/�>�M��X���*ᰶ��������ʄ�*��ڪ~i�-��E!���p���;_���g�c��
Ɣa��f����m�ҴC�=�K/�	���{��E֩�����0��@�Q���K7q���/��~n�+����zQ��M=���osh5vCZ�!DG��v}ۯkl���ۉ�F�rTX�tLah$�%J�3d��o���g)���l<�U�yn��0ه������,�"��JW�|9d�=�׫���e�
SN!��G2��,�[�L����-��~|q�SrJ��E�m�;�~'c
O�ND��X���v���S�d���"�r?>��~���H�N;t?�7�P�@�0��@�;3Q�6���B��������Ú���5.�?:Ty�>�ҁ�<<���5*]�\��^K�!���>�\T������gI��0-ֿ��$��p!�\�Q������覨"�A3$�l-Rt˥(���Z�70�Z5{g}�^��)q��x�xx���0���Yv�ٴ��"y݄6z�t�eI�Hp�_���ף�)��B��Z���D�EqO����ڼ]0��X�,vȹ���	:����Q";�
�����VFy�ĺ?�UCƗĶ<�qԠ�*u�zN|Y��ַؽ)�3�T��^�Bl/�ʑY�ONv�.S|�Q �lY�"��W���\�>�h\�Q�B+�=__շ��$V���p	��,��'8��c�]�7K�f��l�	�����h���l��`X:���U�2����{��8t����_R/��Q{8��w,iQ�IG��<�}T�k�f<������r^���R9'Š5��Ko[���W�B�S���[�D�Z02��1�b=��W�J����Y�������]�h޾%�著]e�HH:�W#~�TF͊C����d�K�i�"��ZglH\���ɧ�*X�]sz'��}`wl��Ȓ$?}���d���G��)�u��!��i.����3Õ�|{���jД�e�~���]��^�W$���@�=m�!����cCp!U���q�*͊LI�`I���+(�*=�1m�N�`�P��vz�!�#��=j�����!�Z:p��)�=�kBO\�met�x�
�c6��~"Z52#��ٱ@��c!GbZB<']�9E<���MC�3C�=6����^��L�ҁ:D5$����[��3�0�����t�`�J	�����+��H1��Gm߽�!X���-��I�FH:�tPX��z���i���c�$�<�!Bi��J�HS����I>���1w,�dʉb�n�^�����y����F��!���'�e�X��)P̍w���!����wR/ڿ��w`�v�%u:�a�ˋ��_�8�~�I	��a{ـ=ϐQ}��s��@�⦽�^u����;Q�aQ�����E���%:�L!����o �ɷ?�Y��g��[��K�0ڌ��Ŝ(4�ʰ�zM��c}��a�Qh��h=y�Jp?:����l��u�xt /�!�ԓ`��uc����j��
'��䟆~{� �1�N���}6�.����EO/_,�������w0� �ݹ��la��;7��4]�A%�z|���F����p��g9���l7�hP�Rswk��E�ܽ���GH7��B��k����,�_�\�^����?:�Q&�dB�p�
g��G�ѭ?�����q�g�GU�}���L���*~dC���0�����F�u��ʎ\���.=n�0�Z���t; 
l��|�� �O��Z���}w�RQ�TFM��-��^_�12�tV�g���X�d�q��^_����30�a�V�R38�_�}դ�NO���"��騋����{�"}���1J�- �6�5�>�k�}�H���qY�y�%�?5�cqɒ����+�^c�:�l�f�R�L�!�sW?�=�׸	�C�流o?�SS7W�#B1.=��H���f@&ua���C, hx���3��o�߃",[�
�_�aMڦ��h�)g-Ii�豂��c�������:-R��ݚ 4a3N<�����3���0>���bRH9R��6���^/�h�˱���ђq��Ý�w�`��X\u�����/��x*���⃢j��Wm�v9ş8��V��A�^6��G�X%T�i�[��C���-F�A�7z����Θ@�}K���%��~�:2�ժ��ή�Lج����k]N�6̵F�*
�m_AV�z�M���5)E\����G�7#I�*TjUY�����[V�.w8#����'�KZ'�&��G�f;ܭ�A��v ӧFz2Q�ҿ�QY��.��k�6X��B�a��}�`N�br7,�~\4�+j�� |���D�	�!��� s���.��Q>�]�,S5p�/:h779�]�������p.n�����0��;Hk�K='LA#�­Ʈ����vh0���ߘ��Ϯ�'e�F��Y#��/njL�ͯ�.=��L�
RH_�כyqL(6B��w)u4ѿ��7ݠ�P�6VJz��ʅ��)0�'�v]w7/�Ќ��H`���S�*羷����͡�3+�!�bw{��:r$\���WR%*ᯚ���oT:�f�������UV%T�9=��0�\ž��G��yX �F�f#	y���Y��
̉E��S�.7���2l�L'ܽ`k��"�FC LM���'Kc|��뇌����ɞ��RE寉rMaQ��!T� �ۃ���[BG[�ˆ�@���-�ҩ���A��rV���n��y<	���U���n�
0�á�69"=��z��ك�d�{ތÖ��A�͜�����@1'�*��AQ��������;o�g����d\a���*�"Uư��C�/���wpe�k�v�-��D$lC��rk�@��߃i}���ףuM~���;��'���+:J��1$�@K�W<՝9���c�Nw"0���i���/ꫦ%�1HRLO)2,tIt8�·�G�.�t�
�S.ǝ Q,�8��4�1�����#���o�t�
Yexb,XE��j��e�1�׫�fآ�PwSɻ$��lc�%9vW9�c�6����n�>|��D�g�1-�NT
V�F���0ز����9m܁����0��آ���J,�2 T�Тw�//��8��5Bu���msM�8��~����y�sDm�q[	�3ٻ�j��FlQ@�;�+%�s��ڶ�+��U�O�J�#>-�?�un�OpKF�{���AGE�)����@`�o�5(�����_�������^����2@�:Q*�)�Q���/�h���y����G덹F����9��)�j�E�]G%#���ߒEc Yd�
g�?_߂j�ϝ�#�H�|��:U&;iWl���J�8%��)Ǚ�=D��0
Z/����e�Ze� y긁-�^QX��>_�=��}�aϠm�FC<���~�������L��,X Z7.	E�f����^MD`��$�n�Ģ�� BdL>�y���c��c'���p�5Mg"�R�zHT��=.5+VF��m7����IQ]��_�����W;gH	�G����Lv�tؑ���B�"��W�ń�{������h�>�DQ�;����I`�=��/�>�h�����5X�R_�zC Jg=�B`    ��� ����W{h�7>N'+���x�i��+,sP%�<> ��h��țr�����S��<T�p�!Z��wu���N���$�����):�D���_��7�����A���]����覲7z���,D�HiZ`���1[JG�O���oU����:�?�u��R4��U^%�#�s�����ho��a6³�� �����}R�7m���pd��z�r*)J��(����F���t���>mf��:�U[읥G�T�kT��l�U��-�(=���C�M�E��p�0�����2d�	Dx(?0�OQ=�5�����ܻ!��2��a�*c^9�hjŘ�/�2Y:ˊ���������Ǿ��Pno������ e!�#UN.y�+�Ma=��5�Y?�-j��T�+��m{�-}���M
/��<�?�lRrZ�U����9V���%0*7��A�TB�\����p��a�,�t��*�7��hɼ��P	=�c�)}1�ˡ�2���^	���k�	�fY��c=�˅5�O�`0Z|�Xٶ�T��_�Q��3~�<�5t����Z[��s��o-q�=^�N�*�ʸj�膖,;m���0ݱG�vQ�M���]M�X�T�3u�3�b+rM9����n��LCU!�e�E�s�0	nQ�G@��5�y�D��L_K� =��Ii�Rd�br4�u�+��%�o[��e%�l�����y!�P�W��\xW�ǮA��A�,q��zB��H:��\JףE���VggH���k�����4X��>G���.�F�+���gG���FW�-`#��$�Zn��`�֋���G�BP�i��e;�&}a&`s���q�g��N�i		%��[�ù�B8����p�-3�Y�I �±�Ϸ�f�v�c�̮�3+*f~��*L��3�,��9�5���0V��Z�8ӈP�5�������hQ/��m�����uc;���lK��oV���3)'Q9���j��n{�s�g���?�:�QlbBH#]@�����?e�f�*i���D���s o���&gA�ϥMՙx�>L�dG�i��K������L���tr=�a�	UHhR_���@�F��8-���Rd.����֮��X���|����]51�Wo��a��5<����'-��/��<	F|G��A���S��m��)S+�����E��}A�O��T9��k�@~^�<�L��=������&���-3:=�=ﾵ0��ĈI�'�"���r��S%��79�����f̽�*�(ːv�-��u�_|'g���ʔ>,os��������_�ȋ��
�~��H�|R�t=�� 6���zss��!�Od%�ŃŘ��޷�%&�,yA������Q	�i���j���
c�hS��(:c^b�;A��M\F��R�"���Yv���a����-:��5�<s#�CG�����s�D�)%�/���_�u~V_����d�	�#�3���c�m�`4���kk|xљ�l/U�DO.�E���lk�r`��N�0�w��Ѱ̕��FK�(�g��q�]���V�#��ʴE�������Ű>`�t~�9�`���pѐ��ϵʵ�f9C�`GC�����������\���찥4�����A*	�T����D��z����V�zэL�"�V��]� .����r,�Pn٣_ ��U�v�ci�ܢ`��e�^��b�;�����0��ς�i3�%���d�����O0���������pr;�_t,��#䊛MJ��
^i������o4{	���Ѿ�"i�D��f��&��|\�T�Q�sC,�g�l��	+�	^���"��8�=s�R-�O}��e����V����5*e��EŜ�id�jw�������f�Sr�Ҋ�c���qfB٘���q�*4R���v����Cǲ�$*W��c�2̿B����P��X�;�}�W����tDC3���+��g���˶o"z	%r=Y��������z��dA�(�D���-�)7s�?K�.�Ab<nGy���;�3���y���9��ds����o�΅�+��IT�P����޵_�I"L�Ra����4O���Jd��!q�~J�٤\���ą)C�v%s�D1��n���Q���ܝ<"���0�(mAg�����i����o'�ah���!�g*z�!�4_>�.�3��x�P_݀��� l�kmpS�X`�Y�v�"��3�7H,�S� @�i!�k��7�����m`T$x�}E�p�*�kRĈ;g<�����g����8�����&����.��*W7}�rj/�s��zL�P��۶�,�^��J��V����{�T1����أ*Qz����/���q�p�e���~���BuvRSa5a��B.��%�Q�L��{aF���ӣ}��-��ڰ(˩�����$`\bD<�k�vcP�>耘hul3$�����.��͉�~�ok=ڒ�^�D��Mo��&H�^H#�b��^٨�*{�Ml?�
==6FnR�P#��vyI��w�+cV�(�́x%2�Zd��hvU��oz0�A*�PkI���6�>',@�@�,�BE>JԒ�*��K����hf��zb«���x��_^��BF�۹GW4P���n�.�,i���zr ���� k�UӢVF�����/��53E��MM���bX}~4\I���� 6���Y،F lX��O��޷�=65~m�Pt?F�1���ٕ+���w��疖_t��|�y��\��	�ʓ������b���*,fKż{����f�.G'�I�nmQ�Єk{X�	�a��3��,r8��u�:ܟi�)�- �������0
�ws3EPl=&߹��Dy���A����������>�xi?���Lq��Tn!�؁�\�Z����^�,0n��D�v�e\��JŬ�R��G��c�c�r�����
k���';���Y�ў��2a)�H��ͅ8��Fb�R���۔��K�jG��B �;A��牼(C������ WH��"q��C^v��~i�v�s�RH#�>#���=I,��#:o~�D�_��<˜v(~BL�������΢��1�P��_��!�,��/~�AU�rRk�4��(A9 y�}�C�����e��PPT}�#q^#3�ϜI����H����O�{�T�'�jL��f|y��!���9	m���%�k	�-�z�K�p�1d��ě5��^�4��2�\���Q�#k#NFc?V�Gl�1�7-~�#�~��_]P!���k�w\�ºCL�75�܀�<3�=���d'�>`��� �u��i6mض�2�h e��ϖ�M>P��+�EO"�P~����wJ�?�`~N�M����}��M1��S~�_mP/��h��f,�Q\N�}Ʈ�E~J∘���qj`��ca���[O��s��l;1x6����`| ��>\U��~���*��2��A�������^}�a^M��"��q��5��+j�2��wO '�Hb��!��*��-�ec����ق r�װ��W�H��A���h�"u5��.n��+��Ϛ�c"%6\_@\��5�������E!�f����;��`��|��*�1J�a��gw�K�&���Ӗ�w:g/��5L>�g�4#�q�Q�]��큁�1�����]ԏ�A�b�s�q�W��G� �ʩL������W�g��vbҞ��s\�E(s.G���zw���@u��&���[�B��2o�&��Ͱ$�MkY� R�S�񃧲�Wȧ}Oƶ�o�-�mI,(�����o��uOI
[`�x��aM>Ѡʴ�#��t=%	G[�2۶:��<n7�ڒPn)�j�\��x�0&@9�� ��p�v+�׶!<2{d(7>�h��%A|��ܐc�DGބ��l8^|���N������D� ���q{uwՁ��0>���Mԩ�*c��q�"J���m0�6�Х��Ʈ�'	O��HGfXb�H�A�ױ�c��}�e�#����<�Y3��L�P{�    ��e� ��6�k7��S"al�5h��.9�Q�CU��t	7_��po��v��<�zT�I��w��~E�3K#��>�Xb��3V�������X�ڮ� g=q�K5�~w!�D��7|찰�z�Zx�B����c�U	$�ʹd�����&d�����^�	^S����]�t(P�>}`�&�gH�F<o���4���x8�<�EP��arE5 ��	�ֺ�7��6u��+�~'���{O��3!��ㄥ*w&�mUL�؄�t¨�=��po�s�!�M��v�m66�m�~���)�ڕA[s7��d9e1`��r����7EY�Rwb&HB�0%i�j��l��@{(h��V[�7j݋ʔ�s�׌�l���#�q@�-\�6�ݔ�4��h�C���N1��z#���%|%�I�sg@_�T�����uՁ��,�D�5SH����f��9�nM�|QLqml�u�9�;�����dbp~�Ig�pѣx�
|� ��M��y&��e,$Wcu���J�4�f�6����?6�-V�h���/�q3w���b��6.��>��`��x�S$'�ݫT�B#לuQ����Q98y>qaIT�~<��^�=��^?yP���.���iz��#�<8d�&�wG�}��8��;sA}���X*�h����9z�Op��WQ$�|��U6Ý���v�T�tbs5U����6y�B��6���`/m�;�� �� �<}x0�=z�m>q�<��>x�\{�G.� ���,�YSf�1FO�-RO�*}�u���!�@�}��X�ާ�?l7O_n偁|��^�� &���1+����S��A��B�8 �K�BV���_�(�>	�"n�o����^�Rc�զ��%���N6��ؽ�� ���>~��_����4� ��.��#����q�#o�����$�S��
��dK���Fa�2;}µ ��'V��aL;�5��ɈwC�����	��砏�E��Ȟ�~�N���x�s#�e��+P���(1�E�F��4�u�ӃY���\,Ѹc;<yTD���[E0��1+vM��gO��IJڍ�$�}���W+>mK��wP�.pj��c��*���j	�}?,���Os)��W���K��9B���-8ܣ�����,:��.�y�y�f�~�tM�����x��<lQ��b����[�f|)m�@��y�\m��k7��W��p�b�"m]�v%��M�^S��	i�Ќ`�3d�����G3R)Oca��b�����e 3���'(�X���c�st�*{�Z\����>.�����K����'�!W޼�3�J���{Uw_�#�e��8�.b������٧�z�ZB�}�	�s=)q����]�;��^\�����(=>=��7񹄒�j�՝#�Ś ,}�������f��b��Q�SL����h;�d��ʜ�r�+c2Y�@�_@��'�p��d@��d�Q*����k~t�o7�~��kRX��+z�-��/���5'l'&���Tbi�
�y8N�RD/{�����W_���t�ǜMZ9���.��?�`�kXo��% ���hs�9i1��7m�������7�>­\qI�@���{�渑d]�����T��Z��p����ZT����� f�$Z�	6�)��/$��)ٜ��Ri��������` �=9=��$�]ٙUY����u�&n��=���'@;��	`�j�Z.��	���lȆ����mw�Ec�T���z�گ�ѹl�¯�,X�G����C&�;�,AE_4 g`0�At	�;}���!�)�xș�qfo=~�I�!��?��|u1(?�D��$n(>
6S����FF�c�b3F��7����^�,~�ZeazC����i�Z\�n_��4���R�*���4����u�x��xx��N�=1��<Upբ�:.Q�Ez�'�Ŏ-D��k���_y<,��d¹s6�~�ϝ��
ܖ7H��7,���Y�j0J����f��[�2��z�w���A3~�B.�=���r*��[�}�}|���+0��W�"�1Yr^���.��7�,�`�_� '�0kM�o�h�y�"��(��
4�ڃXf�`/E[���=PΚͲ���f�S+�|vz.��$�����5�[̤�aS�ߧ[��j�Hɉ��bAJ�v��r�|��b�O��;�l���m��m��p��^bK���ѓUSQs�'�n�_�����,��+f�H�������#�����ރ�p��{�{���R[���8)����{�]]�]53KD,�z��Ϻ��ᾣ��;alr�	C�-)ps�w��v��_j� ��ԅ��b9(���F�j���Ϙ6Y� g�)3]*�@�Zu����&=_Q��إg�?1s|�idل��;fȤ}
[/�����!�����㏬E9��a8u6�PU��>����sXX�<�*z�����#=�]!{�'��U{��1�ɵ'�C0�)\���v�P�{mu�}&� �iʅ@�V��v8��7rϱ���S�z�h��vYr|S/p�n -�h����,Ba5w�)d#��8n�E�y����-��1U���.�] ,���-C��{Ъ<�fp���KW�i���p����������*�cl�i���:,�on%�tG���c{aL�ā�˚�~�i�`��܎�+n���=R�
�|M>�AZ�I?~k������L�"�mo��;w����?6S��j1�����ٰ��1o���� �Jx���us�W&�p��?8�ʋ̌Y/� �9�\}<��\�̏}�s�W�Prv[�&�Gss}�-�C ��f�_�|�Y�XH�Q|���m+K���	��E4�N���`?4	������@@T��0�ŏ}~e�h88�F����F����
߃'���1��K��]���K|�K����q��T#䛁�r�'�tbé��N��j����w	��<d�Ǿy?4���o�ʕp�6]���^pWFg��g����u����q-oC_���sk��ͦ]4������Vy89
�RsibH�v� �btH�s`�6�`Ux�C@s&�W��V�f�UM�4�%k������"�Y36-$آ2k�|��{�|w�Ǝ=��6�f�N���:���Eg󩘯�B��)�hN6vY�#q��M�]�
�����rqv ���F��񹞙�t��ؒ��[ˢr�O�O��}f�K";iV�R���p"}"֐+Ǎ3�媒� �ok�;�A:S�f�SAn�b��T�o}���F�q慿a��m�?�3�6}�����S������CX��RL�~:�*t$K6> -�0��&ow�[L��!���
����U����D�x�ru~C�"�0s���e�ҙ��1���M���[�όUc1^�� ��-���7m��0!��q�i�\�b�_!���"(���Q�"U��S��L?%�N��YgQ|�7�}���K�O���b9򣳒�ظ��	1vy����,�p��*q&U����-֘����ʎ`M���e&Bv��Wo����Ǻ_����9��<9����(���� 3���ޞ�Z^$'�y��+��s�9�v?� $�.��j&�v8*F�}��BXm�0��\��}�u�h�ԣ�ց*�~|�3:[9r񸌥�`Y�Isy����6�Y툫��񢾺j��w��ԛ*�����8��%��t�0#����m0�#�E�u���=�6Ty~۷�?�R��4G�-T�r���d�jU�3��m��	�:�{���gIT��~O�D�{���M�>5���6E|s���f9��aM��QU��st��Ȓ0>�?��8{xR_�[���y�m��&�**��↮
3�K�'�W飮��p�e�x��C��>�f(D~��H�{����]3l���o��+�Ա��$�e��*�d����=�&���"�O!����)���5t��Q�{��آ�Z�Q���/��G$N�Xa�鑱ȩu�������Q��ऋ�j5M3Ǥ�.�1�\x�/��3�gN$C��C�ܾ���    �S�R�	�De~����8<��,�x:B��|&\�V��Op�&��� oA���ҩb��,&��SC�3�0���jП>
��K�3�e���LPR�x� �PP�ڋ�t �(O_gf��_}���q�(�n�M�v��4H,MVx�\x����f�[p&��\�����Y������� )�}�'�eڼ<���0�j:y֭HY2�1\+�c�������7����v<���d1�U��{ ���u)������pPI.#�U�m�N��W�G6�-u6>��6��B�1#������6;<LA#*M�q���٬n�,c��'N�px�G�n8:c���er�b�Փ��O[9�b�> (�a�1YV�5|����W���`���ye��RΠ��	���,��!� ��/��{Z�/�m�Qxٞ�./Ee����L�Hk�+�.�(r5v�|���t1�*q��(�Sq�@�o��g���m��j�Ϫ"�D|�4����g����#��ػ��Ѡ%(�r�2�ˬ��lU>�,5��]��M.�];,�����������'M�۶���$�*�R�W�-U�������S٭n1XUo>�ZVA���m7���5a��5�������Q����I���L�V ZjC}S�͢A�K�]��.=^c���^�d=jd�ϋ��ᵞy��KT��]�I��;�cs�*�gGa&Ta`]��-������?s\��L���Wm���F��;0a���a����R�O�p;0�a�nSpQ�4;� [�蓲R��*?�vN�;�ûp� X�+�-�2��p��*V�gԜ1밚hQc�����d�i�B���g3�_�YaX����B�b\�$e�6	�� XX��ׄѭ"Y�򮇑��9�*i���(}�Ϊl���kKy~%����@+�o�e3�_�b�tSs�=�M�T�9D��1�H���3���TT��9et�%0]jRyx�ΖE�p��\�
��C�nɷ:|�J�ɖ,d;S��N��c_a�tV�	F��{�?yoƳ�]3u�G���1�z�3��`�`�w�f8}�5b�����ȹQ��&��"�2�YU��έ�ǐ���ė��^wu/Sl�Uڸ\�`�h���vlrFM�϶�*EQ�>��Ql����j�:�9v�
���jB��*y�Z� ���D�C�畱s{��iߑ�;4G�Dx�]��F����wTX&Ȝn9w�ws&#Ғt��V��g=s�0f�Nۡ�ׇŁ��>�ɸlyr:y/�y���Y�&}Fժ!�K�ڔ٢7��	�_ނs��F�g�@�HmNLd���F�R��M<�/�@9�R�p�� ���?�H
�	��1���9r��Y��6L���C�dcˑX�x�A��*y|�H'R�MN$�Z�Ժɲ��S�/�^�hs��epW���P�*�r�;c����*D�qrD�0g�^�E�����������	E���$A�Q�@�)��X���9*���uS�f%f6j��C�e�d2��W���oA��]9�.��Ɋ"mda�7󜴓�~���4��������#e�1���!�Gk��CtV;'$���I�a�HG.Tml|���O.�C`v���3Vߞ��dm�Ǫ�|�y&�	"�~�	��Ł�W@y�M�@���;����[l�F9A.�����4�^+>x��������b{����n;��j��������|�Bz�<��v�N<r\�n�+FG���e��᭻�͚U�!�`a���������Hl��*�i{[�"��X=f|�_v�Ln��V��C��n��9�0��Y��_��\�'�裼�p_.�f���P������g�g����e���M���`���X����������[n+�j/ԁ񅉢�:�|N�~CW�3>�v�j�/W4{³����{���q?�`�Ej����g�Plf�j� rGZE���Wy���_
��G��
Nv^�\yR$/j�_|l6öi�M*]���}����X��EsERǷ�E��אԋ������]=�V���F���f�
�6�^z��H�?��cUb�p7Íd03��Ů��g�$y��g=�I^Ij+�v78��4��v>$�6�:�%�0`¡0c���*�>[�pG��"lV�	�����L�U�I�`u���F���&3�
=��;쪴m�����a����Y�ʉ6�_\
���� ���E�b7�<��iw��2�z}s?�.�(��.mԈD��Ŝ�����%���9yK��6=z���o��������j5|���5������G��f�7�t����`�1���:�\ 1�|�e���L3�x�j���&2�(,zR_��)ۈ��?1iu���[�sf��
,2C��$q!��n1�b� �WFN�`H�}_u�	����۝���rrV����S.��f�֫c��*W��7;��yu��|�����_^��|�Rz�O�U:�)��ν{�7d>CC�_M��bx�7`*`�L�ԍ'�L�p�ajLR/ۡ��P�cm'�)�f��F.F��	��zK�-C����6����CӮ�Qy����eP���d��������(���/��������1�}�gj���	�����W��
������jWFm�J�Yw�7��z����K�,�������ε��E����ښ�C�g�Z0 ��f��\���bD��o�Xt	�{��s�f�o���$D�QW�۶Y4��bcQt�m1��Y��м8]�%oW�ϳ5�|�
ń��t�u�r����R�*�f:���C�W��촱Ta��J�ܙ����&b��fH
�`=�(�4{Mf�����#�*p<�`s��/��l)��0�9[���zl߱�?��SЗ�¿Y�����E��%V9;��yZ�M>y���<<yG|_ox���'F'����{b�76y�}N�jI �Ř'���*tɣ\�N��c��E���y7#�d.��?`���~��$=wA�S��*�y�-�a�>{ĮEEF�|��A���9�t�{1s��y�����͒?�AY�[pֺ�������w繎e/��&dZP`�Ѫm��_ҁ�2[������Em��9X�����F�i�j$�c���@���\\w�
�)��������;[��=�G�����nئ�����_��+G�nb�@΁(x�R,p�+�0dL��}��v 좆��(c� �O���T��~�Y��&G���G�+Pj������Q���;�)l�KNw͆2W��XZ;S�Y��L|�
��+B*��n�}���G6�$�ͬhU���F�-pR�������
'��P�b��vYr�-h�K�rﳡ6&p��e���~�06Uw�_u��U���eBQ3Se����*��n�Q?$OgǄbfﺋ�[�(&���U¡��|���j(�u�|� �̪�\`�)3g�8��\��{gM�B����DoZ�O��0����Ca��i]7{G�p���-���'.����T	戦���E�u������{[��.��ɖj�!V%SO�.�`ή�Y�8s�q�P�*�N6�j��]� lڈ�3*4�y �,��
]�cp�?o����;�˴��L��l޿@F�nX���	������J��^�L�@�	V�g]��:����;F3���7�����<�2Ċ��o��}#9�Q�ޑp����.�Q�V��b��j|���I͝��`ϼ�	CGx���$�Wņ0`-:1˄$-����xH�a���p�����x�`Ā��������\묊G��6�쪕��	�w���;� ��XA��\#�̛��8�����f����Z��7�akG�HU��/�R�'Z�~�R)�s���[�)���u�Eo�ۢ�BЈ��n�n�#�rӇ$9F̬6T�Cf@� �~�A�ʬ�BT�#:vɄ|z�:�N�wƨ
�k�}�e>�iy�M�v��R���U�G�N��7�x�"��U��V�՛ߩs_�2d���`U��1��^��L!_G�����y�b���f    L12nq���T7H���Z��r\a��AF�G�1،�H�J��N'���d�GK�+gl`p���O���a����qP�u �d�"�H�>�Sxͺ�U��f���߱`��F0a`�����������T ߾-���B�C���i3�0�|컋����ar�� �̇dw�z���E��ר!0>�1��<e��6�>�ہ:�y@��.tȐ	�m�����P	�|Q��.u��zy9�e3	�o��`]93b9;#� e:U�Ў*��CRsg]}j|<sQl�I�yφ���T�"�!�O��Y�5�T%����cM��>���;0>)���\�(G�mF�f�o�a�w�f~��F� L�������y�Cf{A�[Aq����Lj9c	ٜ���n�-<�E�Bd~�dȵ�1�64�!���qC3�A�t �=� �d��A�:%��fip0��d���oN��%K=����84�=��1��ܲc.� W<y�.�oOY��@�[j�j,صcPz�d<E8��;�̖�,�\�bs��g	e=�^w�ݯ�8�3�7xÁ����L�)�W��8�x����`#FJC�%�[6��}���7����o)lQF�g���S.t��]z��m��,�U�H֩-2,�b&���߱�yiG��Gʻ��o��E�b���f3���х���l	�-��I�#���wA���W��e3��P���~M��`��[p�CKb��Ș[ �����A
'|]�o��3lB��p��v���.O:q)W����4Z��qtk����r��l�[ؑА���ß�֨q��\�%8��@G�c�Ջk���s6��t�mg�
�b��)k#�#��zN��\/�&��Q[w��}"L�V���LM1cR�0�L��k79L�Ә�	p���J�T$�G����NUs����qp2h�n>N%7&��e>2;c��O;�;]�27��w�/j�5�a���O#:5�=7�L{Q�L3Q����Ɩt�����SOR���Td��1`��x��F{;��u��DL�}�"j-����bW��$�0��	��v O�6}ٷ�U�? �x�_���cO�Ͱ��~ڮa&}�Ĵ@ V�&J���Lk�y?88r������hn4��y��u{�V��2fT3_�%��V��g$"��_S�����SQU>N�2��|*�J�W�E��C��'����_��,�2lHX�M�g��ӏ��?!�~�.J1�La�f��-xS�D��r��C��	:�A:���̧�d��X�aZ�[�Z�	���<��&�U�b��vɤO�ko*��$\a�`�x�b&�eu�6��ߏ�5%~t���,ъ��ٙ��U�����.�K�^0�#5��G�Yo��`r֧�Yz�[o�[�T%|t3r_�g͌}�͆���Z8���u�&�(�H�����L���I���C��*�.�Z�C �`�MT�+<3[� u���JVY<���T'�h�}s	^�?تf����y�ƮK�G���.�)6���=��l�5��x�Wc�U�Rħ��EoS_A@�Y���J�������PXޛEc��{2��<�`ニPzu@&��z��k�mdJ��:੡����i���F�O�R�d��(��p�y�8�A���T~x����Δ)���nGÎ`�l�8����'�s�,<'}}s�/ S�S��	C����`F�%���u�ER��?�;�鯥=|m���xm�g'��CR�o��s�Xa��E�cs��������=��4�����]SE���;�����J0�w�U����稪��f<jMT��L\�-OHL�`�TA2���GQA���vU�2c�7lX��z~y���Ya�0�t	���G����-R.n��^x���|<qE����T�+A]8�z˓[I�ћ����4-u\���9�.K�:����ڳfuCg_Zrgtx�B�H�!�������ȅY���H�U�܀���\��a/�v�$v\P:���)�4y�3ƙS���v��!�(9W�Ż��rᜅ'�����f�� i���<���#Mgb�*�`3�o�}�ړ+��L�r���o��ޘ�6`<3�<w�ʩ��J\�ƁsHD�����J^d�ٱI��%T�����i�^�� ��j�[~��"�G���D�r���}�j�������	�6���<�K��U��\��6+y������?3��PM}�A� ^����)�=���}�O0��(�Dh����ZP��8j������G����r�+��|�-�vC�Fxz��8�<a����rv �)���D�%n|�E?��ݸܭVG_�bj��)�Q�pS�9'=E3����Qf>7.OC��M�����9�{���ؙ�7dDs���-����O"e�����K�(�1��K�����������J�u�����9���
�"�D�Ay��GVc�r��g�k� :Ѥ�JaG��d:6����U~X3
���,�d��ay�Q�}�c7}��E�����2��<OqG��P�C���%;s���,�
�^P�B� �-��9��B>b�wa��!,m_�M�9P��M�Ǎ,8Q�*\h��{�׉ʒ�=D����t�e쌟����*���y�?c��,��̌��Fqsy�*��_�Q?LMA~it�8ƃ�#첌�\{�����jn��u��*V�I���j�\"g1��.���n`�ių1%�`�zL-�a��ǂt]�|J^̮��6�#��P��|��b�r���g^�a�m��m��nh��#N;�u~��>2}��LC}@�;s�]k�h�j����_�$C���d"��tl=�����d�Xޕ��y��:������z�b�]���X��	� ���J��|�Z��[�SU��fL����x.��ys���2�j�T��dA�\U��H���K]������
���v��uy�-ƨ~��w�]�n��)f�p�
�D� ����K��eTcAr�Յ't� լ�z�V)��Pe�)n�1s���>CJ���U�a�yi�N�ڇ�������U�x(�.��#���B
t�J�j9<e�L��1;Y�ĳl���W�Bؼ�FjA�Pɯ�~?�ya�}s.0#U������*2�r_6h���C�Hgb�Ù"p�7@EUYd{��k�BO��JN<�v]�«�(��"s�M��|POܹ���fe��*�X4õ�n��	i)���ݰ �Bsش<��G,c����a��>�*�2��"3��f��Z[D|�Ye��;mX�� o9��qw�2��!�*^V�ˋ`�SU6m�\c�yow+���������ك��8��F�����#&ڍڳ���t���	�A��U�D��`�!y3� ���)g��yC�J�m ��-_��Z9��� 3k�9vN\������������3��y$�!��*%=�W۾Am�f$�dY�U��A�f��C��Ǜ�g�$V����\@�Y
�Y���绋a�nw[�S��!�乼�������Iw+�q����� ;C='��^�K��Z��h67t�1x�@=�onn��gB�/�\�+s�iPo�m�o` �J^
�u>&
o����*:��yÍ��Z�6�.�Y_o5s3u�P*5=ى2��+��Q%q.6,���.>�_�j��N3��*4�"FS��;`]>N����4"w��5#ZŻǥo~}�|��SWY<���3s����u򁒕H���V���R�ߞ�`�^������������0�
�9��oC&/�؉o��|�.%�}��1�<8T4�77�e� ��ʴ�<3�u��Ƿ�ITC�&ֲ���(c�.�����T�+��m�6Ϗj��g]%�;lB��߰�s�1�v��n*�aT��pPZ�D�� �^�d���O��0���`
/_����5xI}��&�t	<]-b�a���v���0�z]c����PC ����G�ݢ[��P� �vT�آDۨ)�7��+$�>��[!@�h����Ă�4>�!F*�u!e��]a�$u�󅵳Ʀ��z��`puːMH��
V"�5k�s�2�,��V�/L �I�    �����5&p�	Ee�8ia/�_.O��;_v�%��M%V�3�;k���}>�y�Ầ&w��O����r���C�4���}�N^w� �y��&�,���b��N�\{�E��E��qs����|5<�Y�8��g�A�9�n�vM�O� ��j��R�Lb���5`G��i�BhŢ�+�^[L��w��06�AJ,9�3e���
`�`�=�Z��b��!7=Ji)n��g��*a
G3�EҾ��hIr�<��[�����4�Ă�P�n��.�$��W���,��NK�>���b�V�E�}����6R�r/�R1�(<��&RT^���}��z��HR\�3��dE>�	�-�H�
����	g�BKr-�W�R�$!��$��yV���}s�nZx��h���f�B��e��*��*��قPNv��	��/,�`�0+_K5#�hoi�^�nZ*\����`��Q�,>S�eb?����j�MN�@�*:��g�}M!��';.���J�}@�nsg=ci��^F�Zy��'�u���C�nd�����χG�i�2�1�}�Y�M�z��e0� R'�m�e�;��*VU1�1����V�`�[X�;GQ�"�4�7�S�(n�zz�x��ޙ^^�Q�V�6�3'�tL&�w��"�KӴ��'�y"�D�_�,�"AWe�}���p���6���L�}9j�<��b<�#��x�q��
���Xp[�{𨦃g=�H��co6M��W��7Sy6s6b�
��▵җ�w�j���É(�'����m|Ar�F�}��J鸝�YC��f��	�'xھ����ذ�AMeR�8΀��P��-͌�.n)'s�ƊmB��Y��m������mosU����Q�+�l������n��<ʲ>�(�%��j�g�f{=����vQ�"jk6��b�kA�v���4�vvT�9i6��+a81���s���
b�'�T��f�9O�g���9��R��OJ��`9��5t:'�����Gy8�u0�m�D�U�ܟQ��*�`+!��*A3�����r���PD{����P�-	33��l�B��R.*B��C�m�W(�֊{$X�E����k��^�}��s�TA��W��h+7�(�SČ����Lp���v�mP�>�O���u���#�* �.�U�s�},��P�#�!�t�6�E� �?'H ��+���#z#&�w)
,��%�˾��N�ʪLw��ue���pG�^����2hČ����2�U�ʶ�S,(��m�j��y|$0]RƋh|1r1s��J��z�!����]� �5�, w���#I�N� .4�E'��UY9Xr�?� vA���b���w5v"�"�a<K�t�f'	UDx�.;x�ڵL�1���>�'?�ֱ؋n��%>T�v�
�}y^���%�Ѭ�%���#x��L�P	�,���q�H�v�<|�qHO����ږqK�qhQ��W��S��	���H+f<dC�Է�F\�x�/.����J1���Q@mҊ���NSs��������W^{�εK�����n	�AńT6�c�e> [��o�%m����[7DT��U���(�L.t��v�6�1���l4�+�'3���o	�fb�_O';q�#�:L�Nn/���+|d�U���쮿!}�K߻l��3�ATʻ��US�|_����w>���NZ8P����%��F��?��<�@�����3�G�'O�|
i_�U������d���'����9�����]��B�Owl�O���?�>P&����ϻU�%��#��DY1����$�P��%(���]���1�X�Q(��a��v`���D���e>��x�nI�3���F�!^�:�?C���5aE7ȱ���K��e�v�W�;��s�g�e�G�e�`�U�I3`y����S?a��^���@��51\��j�3�9��l��!BS�.�����&��^!�`�hk�Z7��!���������\r�%��2}^�LSIE�1��[�g������CM����fY�\v������Rt�G���Q=���*�7��<��J�I:.�$k.�R���/��%V�!7�QV z�(�z%��'eL1P�"rl5����z����1]e��؁� '�(f���zoGpfc<�c]|�%C�"&���.W:1��ULzg�7��<�������k��;j�YLO�r��H�[�79cL�pn�rj�X�E�S��ME����>j��se�=BX����W���u{W1��W+d8*Y��Ɗ�U����-K�n���hM�y�kl���ߑ]2�S�����m6���kD3#4p��q���L�^��	A��'z�ku�&��Ֆ�0s@�p!�~�n(�j(��U�u�+��$��7U�{;ɂ$�_���E*��m�?7�)Jɓ׻��NW�rn<�����TE *�Ӈo>z��@�&=+I[9M��A��nH����}�-RW��Xs0;� P'�0��{ZQUc���H��|1�X�&9����ޯ��2�O���ʗ�����#��!j<�wD�&ڛ|b�����>[�ƅ-r�st��y�)�v��Z&���_��氙�h~��#���0���9��ݱ�ˀS*T�n�e^�
���}ӄH���ІM�\8��T1����n����i7�_���+M%�J� ,��g��Ѹɚ��qY�`3#��ތ����:o�� �G�ڏ��3����dr��*�7��ػD�5���N|� f���`�*TU�0� 6�G�Q�+~A�����q�CT3�V���&>�����R�wx{���Dz�r��)�TeW,q}�u{��c� #��Y	U�w�V���
\�
g*�t���{��!�����_��c���w���ĕ���U��3�zȼ�#A�b
id�]���+K�8�|�X�]*��|��3$0�\�`�XR�"������`�"�(7f%%I��qݶ�_+�<�����_����>a;�P��!�|چN��W[l�F�6�-2������*s�X��|�I&W�����.���AʊH��s���o&��S*�M����A����f�J�^����(���YƱ�����t�W5R���V�~����)��툶����7T���s�c���	b��%3��{M�!��O�����Y�x�D�=��.c#�f�<O=O��o��loE��o�x�t����=��r�2ù�J%���2��u��߸��]����ʌu&%�i�w|����;ȭ�g4�6�ۦ�V���8\�5hY�*�Mi��d���p/'�S"5�T����眍j"��>yx��g���p�~��0`zft�.��}���	���̍�4����*O2ɖ��n�3�I��Ѯ	�=������>���㣨��.I#��ψʙ)���D��&�M�s���*�<�L晾/uuG"#] }S>2c��B�1��Ɂwv�|vV�ƆJ��=���ÖJ^��O�������z�m�sl�L/ee���Sf	A�<fCW�@�`���Nv_�``��N���i}�=ʉ����Ÿ�����5��]�gͪ��S~��U�'x��.��ݦ��O������˫����8~;�jbpw�wU����#��2y�[�4��S{�ߞu�J�4���}\�����;"��G�~�s�6���t��g���z��
������E��� �s��D�c������/h�g`����b�Y>�vd����I��IKA�tr���̺t���0�Ϙ�k��Nm�֓ʲD�
�}��x��7�
<{#�R)vCܛ?�/;b�C���e�4��%���.L?���}>j9&��Q#0�Ќ��]�kL$��!�Xͮⴱ�h�y�c��d��X�?�tr#�U �ɵ��0�vƝ�&F�>�j��,G����&ƬY65i��\R��a�}>_�*����RI�@E)��fQ#��A��������hC��<c��mrLY\���!�>�,WE�>�����t��Wx�ƥt��3I۽N�2���y��[+WP�|��0m�{��r�W��0r'��)�a]al*X(����e�u    x�
��5+ڲN'�Y_n��7�-0��;l=QnY��s�L����+���d}��O���'HT^�=�3��Ē8���:j�'��^Y�{�̙I3�Dp��r.���PW���j�h/7�f��/�X2e�92�>k������(�?<t^���+����G���}Fd�k��٪��,`]"� ���u��o�ҸhM2���=����)3�s8kK\R�i�|�Kl�^��{�K��}��">�%3"W�EGHMκ��b&!*-_�˫J�����#1r���`�n�^��=����+s���gb������$B�+_kF�)q@^�d�!�����sϩ,8H��ǐ��%ψ8=�H?b�4���lp��?:[<���inT�[a[FeFz�J95�tKD� Ҽf�l�u��Z~$�ģ�I��G�Uz�?����hw�6Ӂ�����a��_KN��X��7���H����0��x`�>�?\#�f��FUe$�c�~�z��ɶĴ�Up��[nu��pz�����@�L��q�j�p��`�N|z��n!���Ig0l���e�����ɎW5T�s��J%O��Y�eIt,��Ut7�q��jl~��`}��W�!0{�
��ش$���!Z}�{u����uڶ��"�,"m��a٤�j�zME�i�g�{�q�j��fUل��Yݯ�u��1qȁ��fD�Z0֊�����f���I��]����m�դ��?�������ׅ�|ÂX�i�P�Y�bd5>d;�W%ç�̎�B��Ƅ�8�*� Z>_W�W����1�cC����Y��uK���﫭+�M��a�>�(��<0��ϾB�l�4*�g`j���j�M��{I���,P$'8]6�OV;�z�~K�\��h�T�VO:���^��� #�����
��).�߮����1�es����b����k����0�Qb��HŮ�00����MO%��wE�H�W�Pђ��&Kt��X>��r��\��+ڪ��[b��%B�W�@���Eb��h�[Ŝ��ܑ�d9��Lz�2)Q�ࢌ� �/����_wt�&�]��j��>G�A�m�V��󞬼�N�j_�#�b(��7`�\5[��[�Lw �>��X�, ���|V���־�����{dK�\ ��g��"Jף=�����q�s8r�����ez��Jǋ4�UIR�{w<w�7L4�4wPuMV�\�ۏ��8$����(coO�?�!��S���,�p}rŜ�b�Q!��y�����U�[��%�#I)���[*�pc�.�iu�랼ja���[�Ç��p�O�KM��NV$�=�T_쩎��^K�m�L��(ԩ���]5͞�"/ʱ͛�`V���׃����⤩��#��F�Z��5�M�gR� Il����tr�4zbR��A�����͆�3�	N��o��'L^0����_���q�h����fI �D�c��԰����RL�x0v*}��a��>���w�:GK6����̫�&X�� �z�)a>����
Dn�R�Xc ��4��BG��"����D�M{ʛ�hCG������J�������g�,�'�ַ��R���A�Rs��v��E�[Vb#yY4����(�PU��|�qZ�x�����z������l��=�F�7�*Q���A��H��`<(��Zg�5	ݬ�;�����2#YNlX�@�)�7��V_b��9��E�	�cr�#��d�YU���N�e�P��N��.="�J_�(�#����ab�DZ>�Fq��b|_��e���Z�UH�ǉe�ĝI���T�f��x�����.�?G��c��u�g!�{��̫��b[�"NV�d���r�	�D�`<�OS�OF� '�D �g�����#
4�o�;���">�Ͻ}F�����;q�3���3xİģg�(�f�,2��W����d�����G����ѹ�Ƭ���(b^�ɣ_�P~U���db���;��/3�^W�V_]�pPv����ɳ��m(�!�mwZp뛻ď��P:�@�q�{��h�[jaA�+�L�ns��,W"ɤ��C�ȓBۘ�w�p��&LN�o����k4��k���"��̣�f�JX�g5L����N�I�[;B�`5X���>z��\����8����O �j��q���Ӂ�@5<I�A�J��)�hq&�S0h��bD~�"d����)N
9 	3���;2��<@>��d�r������\��4�[x�=z���]�Ӧ��u����wc�6����2��(#:��8n�y��6}�Q�{�����v�0��cm�ư����h[`o<��?q�*��;$R0b����ւ뢈���G4��|����秝=d��&�݈��E��2�m��al#����<����Ӻ�W��cw�ܚ�3��*���<���� V�gݼ<�m4�����_�|{��}ݮ�M8E*�ǟ�͐X���X�edH���~w�NUܝ��t�3���� ��:!o�|d����O�[J�P��_�_��h?���*�F4�5.�3s����M����Ń'��Ԯ~�rSe�8���+B0`N��RC�:9�Lo�Oۻ��j`{�28fT&hME_/�/&6Ȥ��O\*UŢ�@z8��j����ide�5�3[��˒;�t��y:'9
�q�E��.O�֛z]���y^�od�8'�E`H���w���!�냯���Jz^��H�v���*/����t��ҝ��=�����4?{���U՘n4�3�Jg���8-�y���ċ<s_;�M�� J���kL�|�G��X���j.d�\¾������D���ӯ2�4{N��+��r���,K��R��n�Q��Ь���2ҙ��NB$�ow����:���������؟���׆�لϡ��������63c�9��с-sٖ�����}��#S��Q����V15�~�DЯ�}v����)DPH�,d%��5َ3�LiʑU���Q;���ey2�,��c�> 򹲴�{2Kn�F,���=��an�j�TZp��m�#���ه2�V�`�v�t�
y^?�p�i���y�:����+�5��ͅtt�S�(l*|����"}��|���,�
`�,��ĥ/*�o�����s���A�!����+]���u����]`B��z���Ze���0N���Po���]c�"����S�QW���Y�s@6�p���ID�*l�����E���1X��X_�<�j��T��J B�*.ߝC�T�
��pH�]V�&� �`|��:����W��1093g��J���������:(�b,�"C����E�+K[���8�^r��(�dzȖ��<C�͡�����-G�_QnW`hn�`�k�;�Og�^�Gy�%��@m����]�;��ZZ���s
��-\H\�|�^���*��1͆	.0<��~Q�L<������ϟQ�܂�}�>?$�<�(�F�Y��Yu�s�=6qD�%����@���b�#��[ph�~�?`��O>4-B_��Hϑ
���&�ɜ��S�H�~�a�-fW��x�.x�T����|�|�,o����@���(do9e�#��U��sNW���ƅN��S4I7�3�n���G�ƶe#KW@�U�MD0=��m?~�\V���)��y�!v{9�0(��>��)�ә[}Ɩ��I���g�~l����:���R*�AG&Œ�k�G��B##�*��^c)6)d`��||A��Z&ׄ�@�Zf�����'��r�ѺHj�$�dx#փ^g��A��u����Q}��#�
�sqF6�)Խǫ���ӈ��.e.L&��@�1���
pJ$9e�Ur~�,s)�^9�,�l���<�|K� ��"uN�w�xt�h-��z>pЊ��)"����Ǚ�]|���0��^w����r�"Q
z�p��0}�~�WL�F�����*�t�m~$˹W~�5S���7���"�@0��鯐�9�-� O�(Qj�qI���y3�5�GY ����L����+������q=܎[��e0�\aF)�b�@p�1K��j����    _�q����3��	2ƕ܄~�gU��w�?\&��ң
g�˷GꚆ���c0ݳ����!*O���N�靈�����z{���N�Lw���%�H6��o���`/sB�U�v��ՠ̙��DA�L�2�U�G�	ء[�K��{��`�\��{D�/���i[�ָ!�Q��ϱ�!4kƀ}����Q��j7�'���͗#~�G���_�vs���eU���<*l� ��:}<u��H6j���nu]O�e���%ԛ�ы�vݤ�W�n�b�S���X�+ ���Ǔ�z���x.w�����\�<��c,>]�闣'��s��mgV_'/�B�7���:�O��^_t�8���A|.$�!ڞ�V�:
��L`�"y��|s�[G���-n��?����%�-���4�L'�rfa�%��ո@��@��M�»�e��gUn���#�X�#����>�8�Ӿ���H��
��f���kzWW�C������Ì�
�� c2�����\>���<T��,� ��<ÀP�i}��.�r�Jj��Ʈ	�A���~�-�'+h�j썪<�@��Β��$�7>l�g�v��!y�0p9D�vSヸ<A2�a5��m@\1�K
��D�����]4��6=^7}��U�P��
����B�B�(��1&�f��C)���I�h�e6�{�z��a�,�Y�Iw�����+���OT�����#��r�4X��Di��i�/�,�'~l�����L2��6G+n!'��Y�9t0�I&T���.JT�Z�ֲf2��a��Ò�?w5{��0�Q�'�ңH��:��LYf	����v}�.�爍��xBl,��ڈ��<d4{��2�~�O��6I�x<ʂ�;0:6SQ���[�}��Ij��<aoy"�Ȳ���<|�
�$Q�;㡧wg��/�q��?\� �B�������z�|j���2���Ͻ�&5,�6y������r�Wk��e馸�����{
O�u��5�`���tkt�Ǜ����I���`�g���:�O.�R��i�4~D�o����g�L��0���L�Uq�CFb��K�{�F>�++�
�)o���&����7IV+v�ݝP-�_S��+��J��j_5�ɫ	��S����X��h��i
�wO?��i�7M���3�lr9�ǺP.]h���'m��^ޙ�r��ޕo'�t	Rb��"��3C_���<��$UP��p�.�H�ѭv���
�cX�	L�,uJ������(п�{(�������~��R_ԷUY\�C�f�F�����T�!��G��|³D_������XrZ��LI^��a��D���������j&]�"S`���%��s3O$�hRN� ���K�W3�����V�'�`"�����i?����}iUez���/��. ����N��w��pF|�a��L�"��<��� �DV�WE��h��C���e<pK����%�z�o����U�1�	��\�4�H��ex���`��8�W����=��O!���\|�nԋ�6�Y�T�Y�1q	I2s$�D'��U�f۞̲�T���	��d�۾[�V�?�m��{�lw��l��ۯ�0� ]P�xca�S|\�w�uk���gH�9i:y{}��Wa���r<�A�)Ƈ��VW�
"Mr��s�����[M"�A5^D�Xr:����Q����ҋ�܊��Tx�O�q��f��y�\u�J�ws�a7�ϱ��1�s�l�4d���S;�/L�@p)I`��Yr�&�,��r��Bg&��/�,��1����M����lxXta���rF���8ijPiOk�5�Ygs��06�9Q"�a���$������I�2�(��,E����$�ެ�e$��DJ�Ƕ̥�^����K�����:��P3�I��deY�)���H���d�Cn���X�� J3���j�m0��g��9�M����ZxRcBn@v����^l�E�����$�)B�a)�=cbnFx�/�feh��Е ��Y9#\�	G6��x�<.��4j��|�f��?�á��M�!"ůJ�Mn�q�힕��8��v�0k��JI����������)��3β�(�xb~_�s�bQ#ط��'�=h�g*;��A�R��c�t�A�^����G�w�V9s��3b�|�RKr:;�b���elB�mP������GA�6-�b6q��;�]>���<�ڿH���.\~j��/��09�Zz�<�ȑx&��{�R��Us�l�O�H��Zq�����$���*'V��Ώl0��%���2�Q4d"Κj�R���^K��⁲��u�*��>������|U�{�
G�+��T&�ةD�5v��>���Y�u���CZW���]�lz�8�w�@F��Wʔ1ooW�#���o�I�'��Cm�boK���3JK���p\]_>��A�o�jKtZ��E}s�Y9
4>�S�<Q�(����-��1g���\�;F�Q�8�ɕ{J+L���->wE���&����KU���3�Pu�G!d��lS �w�@�%�AS-��ԥĽڣD�7ޤ�o�hVm��Vq˅���ڗ�I��!�!����>�).6��˺�
Pc�jC���h*�ù
���,>.��U1���C�d��Ϥ�ƿw�1�+�(�b�條��&O11ɽYЛ�q�8%mu�8���jvJ|��2}��?�'�+ׅ���9�����:�A��H&I�;��n,̞�MV_�K;3%�"#	Sr��1�ҙ˃�Ty��\wV�zڮ��'�-��<
SEP[#�]�n������[_?���������M,l�<_�W�(>��*�����@�J^wH����lz&���e\n��%�>��L^4�
[r=�Mτ��*l[�V�Y�&��,��#���u����F{�V��(���[$KX�@$>~&�E�ϴ��N6��Zup�x8qgf@���KO��baD�ĳ���,	�8by| �$��1Pa|�^�&�6���W�F��=2����0���l�C+�)��}�Z�4=W��Ɛ���b(��b��aPA� i�Ս\�[����;�j?6�M���{�iO������AW����� �3��<��¿8r�fͨ���> %��
�r�2��߮o���[��eZ
;$Jge�E��@7y�\r��>c���(�����Ub3Z���
#����EM��cu�J�d�k@�v$O�o��ۉ�tBM�8��M8��3��v�E'�m{5br�U ����م��h���t��e�B���~,�y���Ó���Q���&��H�(B�`S_N����'K�e�ʄG�5=�X�s�N�<�J�8[��bgKi��"�WG yoGXw=V�,m�G�[�9ztݮ�}�S�Ov��;3��6>�*��K��}����>�e��<���Ωd����Lb��g���FԾ6��q������<�X��2ٚ	�t6�ݘ�"�,�u�G׍2j�p�wJ&�-�<I"<�2B}�<J��ֲ>A #��o���)EVe�M{ �l����IQk�׾��yiM��Jͳ�"��I�j�V`���a^X�4�-�����z��v_�E|�B5�p<�$��	�eeFy�ks��E���	+m�O?�A\�B�C�����.ZvN�۸�.XnT<�Oj�%�E�@�Z�)u:���q^.vâT�I�T�DB�g�4D<^�CLo����^=L�vWWM����]�C`���$h��nK� �?m�X�{�A�;�2J^eE�k�{d�^b�yi����O�촚V���#0��}w�������nc������"�V�E�6��đ4��`�����|�>���bj�cʮ��L��V���l��aK�S�0����k��}E�#ύ��C�+�����=(��>�n6�����y��T*�C)������{s���ZX,�GZ��Q���y�
]�p�l���yZo6�� y���oޙ<צ�&W�%���*y������G`)~�^���1*o7T3�H�9>9b��#V�Ev�x8���'�6�f����6}�b}����
U��3�>`�h�EY�    ���\!�?k�9��;�o�Z�t�P����y�ᷓW�%��d�?8�T<�_^<���3�ʙ!�R��jQ!��_D���U���ˁxu�$��a�9�P�UV��Uy�Q�K--ƈ��]�2[����*܊.�9�+��m�m�0}׬�?���b�3Sy��@�‥����N�38��
g�
���rt�C��X�>3��ʅ���}S6L�QE�v���GݪYl�Oh�R�E��I���c��:�V�M����TVΔ��Y2>�/�}���Jã?������I�H���*p����vM���X��~"������;_�"��)�����}א��K瓎OV��,�N��N_���Y�;��j:����^��Ȓ0�(�zu]���O���Ҹb$��>�)ׂ����p�~���m�N�f�>A>�Q�r����q�-9f�P��򰅽�Rἦ2�Q`asZrf>$�����z������:(����_�(�k�&�ɍZ�T�[��k�{�����\����7-������bʱ�4�1��~��n���N�.3��d��.�H��n��t[��{WO���L\&�%�4���6y�7#�m\�̛���jg9loW����y9.V�KR�f'A+�%��Ig��#�;�f�	c����f�Mg��;,%�yȟ�('9@�;�������؂��ݐ��3���%�-Ze!��n���{!݋]�^�9@ښ�1t����NłU�wX&�T��|���E���6ؘ���m\�(Qo�u����w?��A�j9��<����tkPE{�*��1o���H�T���jK}2l�����G�#�O�8/pƔ%���VqS3u���$��8ԣ&p�O��dE�S��G�g��E��g��}�)KW��i�oR���]r��ԗ��#Kڰ/���2��`%��0�F%/`}4x1�TcHɲY��<Sa�SΠ&.�JW�1�߲�:���v�:}
��j�%��D�$�k�ܳo2�Iw��1��"�:=ݭ.��N�[\�ն�r@fQ�HN[<7���͠|Y��u��^5G�X����K��'����i��3�)�����S�X��;۷�!����z�/��sks�I���:z�l��v��z�#"y��m�ХZy��\�8e<k���y��A|16z�>�%O��3�nk�hˆ��0�ǣEx�y��R���=���6���]v��w�NH��y��)l�B��|q�k	�z����ސێ^���	�ǖ#/Ah~+��(=F�������H��\��m������77Sc��<�vQ���@�J_��b�ls�w��|"P�-�[5���3x=�����^�no���z�\<�PM)��tѥ�R�5ևRaĳ;ԍscV{,�Z\?0�.�K�4���ɩ��$���H�A�G=���������h���Q&.C�c�ܷU���V~s�b�<q�����%2i��!Ԟ.�ʸ���kM7��-�n��ӪK�⩠��d��Rk��r�Y�	{(@��� �u��c�;*E�W��i{H� �y�CQ�*���v�ow�5���'�O�܍SDX��%��+��xG���O����i䰙87p��w��}��XM�+����|�G��(�'�n���a7L?�d&�T�}(Wpi�y���ݓ��E�d�Q�2�3�:y��> �����4�_�\YE���Dq�"X\�y�ƹa�zxm�)Hͱta-+�C��Al��*2x�M��0HH��P�f�"����oQ(얏v�# �|��C�|�� ,��u����`�B����wu�)'A����U��31a�'�n~�]�d���z��a�L�8�@?c��Y���0q*-v�(B�\jQ`��l��IK�xi���pN�b��Q���j����L����L�w/�&31�k���E���]:�Y^�x�}W���+�n���Tl-m��̴��K��[6/���(���*�0��y�Y
��s�Cߜ?�Fj�-�.4'��p%���ҡ[P��455"<�VA�� .�3J�,����9io}�rA����B�l._�؞�S�
�^x)��P���os6'����='�9�1J˝��|���8�!�*OH�����f*�f�ѓg�CiEY��v����SQ�AeD�z�|�Ⴜ��+<���d�e5Q��$B^/����Gx��1T���8'�ʈ2�*D�.���Q�(�yL�3��*����G�N���sk�K��gP_>~v�������$�w�/�/�2�����'�ڀ�b��8I��ay�\n�L��Ժ��vw#HCy�E� "u��}*�*3=�>�$�����ϯ�YOE�X���F����o;�/|������Ѱ߻w��_�}�D�M�5��H�7,vÀ�IL�Q��/E������Ч�zM�9��Ѱ>a۵�� ~���-r'"����R�J�7��;�U�Q�&�kK�OE����]r����
ƛ�X�Ӿ��0#��p��&Y�;�<�ޔ��6s�\�Qu
f��M�?L����/��z�I߂�Ӭ.�?�+_+&�Q3�2�a�9<Z=t�sr�y��?R�t�_�o����f�}���~9�ݦe��l1���6������ÍS��zp	�h;0�����r��4ϴ�9�8��{�p�\�p^1� �)������2GT2�MC[_�i���A�<}�a�jx#1�u���CJ˿�w�\�sl�ʟ��믐�tJ�.� 	�|�̣Ÿ3���Ҽ��Zuk8�`�c����
�o����`�b���f'w8W#l]����3�"��1��\5��kX��z7��u�@>ߤO�/��0����y6�����=^�_��Y����.�X��|��\i�s�h��2��@�O8�0[0�ɲ�jq"�7&Ri�	����W3	'�#�9�3:���/��Ͳ�����'��kz~������:�t�$_R� {t��$�r��>�(]�ND
��OX_ٷx�e���������J��F��Z|��0��hN�;xh�Em��JR�J�� ����AJw[��EU���$Eċ����$� ��%I�Jǐmy)�w��<tOֲ�����y�����+�W�,�S�o���k���"�~^��{C/�-UO����]����Mr��� �8Yl�"�<��!�`�,)��ϡ�gX��q����4Pᇨ�^���e�< Rj.,�Gj���t�9��^�j��pL{0�l��x�sYlj�t��ྲྀD.�&�`�6{ȇe2��Յ����*~l��>����1�K5�0���߱[�vT.`J?uE��k5)�
saw>I��������8?�i��[fi�M���c�]q[����>x�t��$��?؄keC,���k�VQ$%�=6>����ћ�4��<��Y�`
���Z<�xB�nD�x,j\�I�A)�Ɠ�҄5����\�8t��S�Ǥd���g�Z��hH$&6a���s&�� �X�!$��ӵ��56�W�N�i~ً�����l�BIrN<�פ�MR?J{wOgBP���9c�?�x�1�e^	�#Ѵ�wr��0��� N��1�tX�=�p����i+]FU����ͮ�)��=ՇW,D�7�� 0M�c���)�
�!y/WE��u �7\��S�E.�_�nY�x��2�¬^��}�-��w�$�ݺxp�$Up	UV�½)6Pho?˺PnN�rTQC�D�+9vc�-9�[�#����vM?��'�^r��y�!�0�g���G����7��9��o��G��X��D�Qo�E��.D� �I��>��1���_>�R��U�����˙A�A�w��A������m�k��zr,�� X�it �m%��6����k���*^9�8!����x8	� �����*�6(^+�F�V]�2j���]���LL��|
��J���@���US�bz���F��:_9}OB���L �^��c�W&� ��)	ً|�~��;�a{_���ԑ��a�����kU��Q�Z꺌Q	��~�[�F;7J=_ո�d.�`�5���p2�m�~&�텨x\s �  ,�)��wQ���Z<�pQ�C��.�
�Y�S�������h�@/�����2��G��7r�KP�SW�2���J
}�-AWC � )渥�Y_���>���;G�'׍�-vLty�%��84��uXg�D��Z8?rI�,1zM�}����(J��/ʣ����(Z�K�w�t��^u �n����F��9,CW��1_����,�'~fJ�2�N4fE����ա�Ug,5����A���d��B[�����Q��A��@���m���r��r��R��p�~�]}��Z�{�N�I�]:�nq�����V���������ue����Q�$͌D� P�G���A�CH�Ŝ��šs;QͰ�Ś���!�#��l�
���
=��W�w�0�M���\���zx�>�K�3��������:��G� m!�o0�x�+��.��9�M`�
0� �ti�x�v'CJ�$�RE-w�'Y4�C��꘵b�.����?ˏ}ۀ�0��dq�&�3(�j��I��Њ��=ͦy�i�M���}z��H]���!g�z��(@I<]�t�(�<�ZE��'K��t`��L2e�L�݇��[�S�6�w5<�X�5�Q��A�'�*c��56\���A�-�s��DF+J�o�`�� ,�q�ˮ��իe�ZmY5�v�cӪ7�9�A�C�j-KԬww&���Oφ�&�?����AQl��<�'�0���8�C��%N����?s|�t����&�W��_�=pUbx��ft������A��Ў�?�D_hw�s N �mo����O��&�U2�hb���Q��ɔ*pGv�S,�Bx����*w�,t&��PHW��B��z;<7����F����(ɜ�7o�U�mQ�t+J!6j7�8�V
u@S��<t�9�,=�h��z�x�τ�I�1���"1��}U:�g�V�&~���p	�eY�7��W�7k|�҇ԍ$�waP8V(�[MG9�����'ӷ�����	���"6�m>Q O�����X������n
N!�/�A�S�1�m�sd���U�i�J7o�oڇ�6_�;�gL�%i4dbC�5*��X1&�0�[��;�_����U�yY�-\v�����5OVDɶbF��7�̤j��Gp��0[����K9�,����\��-kq^�7߻k���e�oU�����Ɂ��㻗@ѕ�����U���:_.��v����Tl6[w-�Eo�"p�HK��yi:xځ!-��9���_�WT� �Ga��<��-�
��6�Tֲ]o8󒼂��f���jt�]���#�H3Ӑ�4sw��?%+I¨�d#��|t7R5��T�;�l�6�\Wb*.&�zsEy�bVB<�5�O�^�h�	3�8�DM);���f�܋b٨丮`�r���&���K��ҽ�b���9��2�G�jB�N�������'�)�>C$CE���%)ex��/���_�kcg�D�(����	�5�����}��}`AQ�F�� n��7oJޙ�������^�3�X�e��)��W8[������
Pַ��B8\��e!����v�x �]��Q�6�4ӡ�85=~�KLg�:s�3�!���p��; �P��$F��S�>CID�>��[댣�6b{�p��s{p5��7E~W�j��K��y����#��s��r�~��4B'0�2�Q'ڊ'yk-d^r��T�xR�Rܮ��y�L� ���b$��=�T��́O���ׁ����F�rSBs���d��UTL-4�C R��M�	E���s?���+�����o��$����.r�x����gb��!�{��������E-K��q�8��PE}K�f͚O�/���.�q	~��3̄��6��uS���ҧI`]70�SA���mQu���a7�� C�$Oͮ�h'Llk������F�}U��Vk����/�������V�uU�I��kpq�O؉�e��aW�ٚ4��L.s��@�ܟ�tD%0
#>=p�^���h�L��Z
�����i��8�(z6�%h������)�py^�z�K�'�i�`=6���mD6�V�
f�R���F<1��~��M{��ώw�U��Q�+2��<�Ш��Q��3Dt"o�a�� 7�t^r���i�ǟ(�`��g��*�����x��}�.J�����郸GȞ)�y췃/^��w     