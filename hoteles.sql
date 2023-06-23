PGDMP     "    %                {            hoteles    15.3    15.3 7    =           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            >           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            @           1262    16398    hoteles    DATABASE     }   CREATE DATABASE hoteles WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE hoteles;
                postgres    false            �            1259    16533    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    16532    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    220            A           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    219            �            1259    16564    habitaciones    TABLE     ?  CREATE TABLE public.habitaciones (
    id bigint NOT NULL,
    hotel_id bigint NOT NULL,
    tipo character varying(50) NOT NULL,
    acomodacion character varying(50) NOT NULL,
    cantidad character varying(50) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.habitaciones;
       public         heap    postgres    false            �            1259    16563    habitaciones_id_seq    SEQUENCE     |   CREATE SEQUENCE public.habitaciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.habitaciones_id_seq;
       public          postgres    false    226            B           0    0    habitaciones_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.habitaciones_id_seq OWNED BY public.habitaciones.id;
          public          postgres    false    225            �            1259    16557    hoteles    TABLE     j  CREATE TABLE public.hoteles (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    nit character varying(20) NOT NULL,
    direccion character varying(50) NOT NULL,
    ciudad character varying(50) NOT NULL,
    num_habitaciones integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.hoteles;
       public         heap    postgres    false            �            1259    16556    hoteles_id_seq    SEQUENCE     w   CREATE SEQUENCE public.hoteles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.hoteles_id_seq;
       public          postgres    false    224            C           0    0    hoteles_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.hoteles_id_seq OWNED BY public.hoteles.id;
          public          postgres    false    223            �            1259    16427 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    16426    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    215            D           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    214            �            1259    16524    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    postgres    false            �            1259    16545    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false            �            1259    16544    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    222            E           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    221            �            1259    16513    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16512    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    217            F           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    216            �           2604    16536    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16567    habitaciones id    DEFAULT     r   ALTER TABLE ONLY public.habitaciones ALTER COLUMN id SET DEFAULT nextval('public.habitaciones_id_seq'::regclass);
 >   ALTER TABLE public.habitaciones ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16560 
   hoteles id    DEFAULT     h   ALTER TABLE ONLY public.hoteles ALTER COLUMN id SET DEFAULT nextval('public.hoteles_id_seq'::regclass);
 9   ALTER TABLE public.hoteles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    16430    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16548    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16516    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            4          0    16533    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    220   LB       :          0    16564    habitaciones 
   TABLE DATA           i   COPY public.habitaciones (id, hotel_id, tipo, acomodacion, cantidad, created_at, updated_at) FROM stdin;
    public          postgres    false    226   iB       8          0    16557    hoteles 
   TABLE DATA           o   COPY public.hoteles (id, nombre, nit, direccion, ciudad, num_habitaciones, created_at, updated_at) FROM stdin;
    public          postgres    false    224   �B       /          0    16427 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    215   1C       2          0    16524    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          postgres    false    218   �C       6          0    16545    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public          postgres    false    222   �C       1          0    16513    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    217   D       G           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    219            H           0    0    habitaciones_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.habitaciones_id_seq', 2, true);
          public          postgres    false    225            I           0    0    hoteles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.hoteles_id_seq', 13, true);
          public          postgres    false    223            J           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 11, true);
          public          postgres    false    214            K           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    221            L           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    216            �           2606    16541    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    220            �           2606    16543 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    220            �           2606    16569    habitaciones habitaciones_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.habitaciones
    ADD CONSTRAINT habitaciones_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.habitaciones DROP CONSTRAINT habitaciones_pkey;
       public            postgres    false    226            �           2606    16562    hoteles hoteles_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.hoteles
    ADD CONSTRAINT hoteles_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.hoteles DROP CONSTRAINT hoteles_pkey;
       public            postgres    false    224            �           2606    16432    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    215            �           2606    16530 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            postgres    false    218            �           2606    16552 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    222            �           2606    16555 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    222            �           2606    16522    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    217            �           2606    16520    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            �           1259    16575    habitaciones_hotel_id_index    INDEX     X   CREATE INDEX habitaciones_hotel_id_index ON public.habitaciones USING btree (hotel_id);
 /   DROP INDEX public.habitaciones_hotel_id_index;
       public            postgres    false    226            �           1259    16553 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    222    222            �           2606    16570 *   habitaciones habitaciones_hotel_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.habitaciones
    ADD CONSTRAINT habitaciones_hotel_id_foreign FOREIGN KEY (hotel_id) REFERENCES public.hoteles(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.habitaciones DROP CONSTRAINT habitaciones_hotel_id_foreign;
       public          postgres    false    3227    226    224            4      x������ � �      :   3   x�3�4�tq�sq�v�s���q�42��".#N,҆P�=... r�      8   u   x�m�1
�0 g����,Y��MqL�4����G;B���{�W����-}3,Q�3��ֵ;�ٳ��D&O�u�T����x�Lc��@��O�tO�Jg���T��*����m)R      /   �   x�U���0F��Øu�w1�2�Ɵ��u��w���E����2�j���`��c�������|8�g�"'�p�y��W����B<���	�0�U�7~��O�P~(��Í#����RV��nA�ml��Q/!��{:(�^��Nc      2      x������ � �      6      x������ � �      1      x������ � �     