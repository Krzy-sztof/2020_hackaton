PGDMP     
    6            
    x            postgres    13.0    13.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13442    postgres    DATABASE     d   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Polish_Poland.1250';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3205                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16660    App1_address    TABLE     �   CREATE TABLE public."App1_address" (
    id integer NOT NULL,
    latitute double precision NOT NULL,
    longitute double precision NOT NULL,
    user_id integer NOT NULL
);
 "   DROP TABLE public."App1_address";
       public         heap    postgres    false            �            1259    16658    App1_address_id_seq    SEQUENCE     �   CREATE SEQUENCE public."App1_address_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."App1_address_id_seq";
       public          postgres    false    229            �           0    0    App1_address_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."App1_address_id_seq" OWNED BY public."App1_address".id;
          public          postgres    false    228            �            1259    16588    App1_answer    TABLE       CREATE TABLE public."App1_answer" (
    id integer NOT NULL,
    content character varying(256),
    place character varying(256),
    "time" character varying(256),
    from1_id integer NOT NULL,
    offer_id integer NOT NULL,
    to_id integer NOT NULL
);
 !   DROP TABLE public."App1_answer";
       public         heap    postgres    false            �            1259    16586    App1_answer_id_seq    SEQUENCE     �   CREATE SEQUENCE public."App1_answer_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."App1_answer_id_seq";
       public          postgres    false    227            �           0    0    App1_answer_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."App1_answer_id_seq" OWNED BY public."App1_answer".id;
          public          postgres    false    226            �            1259    16580    App1_deniedanswer    TABLE     �   CREATE TABLE public."App1_deniedanswer" (
    id integer NOT NULL,
    content character varying(256),
    from1_id integer NOT NULL,
    offer_id integer NOT NULL,
    to_id integer NOT NULL
);
 '   DROP TABLE public."App1_deniedanswer";
       public         heap    postgres    false            �            1259    16578    App1_deniedanswer_id_seq    SEQUENCE     �   CREATE SEQUENCE public."App1_deniedanswer_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."App1_deniedanswer_id_seq";
       public          postgres    false    225            �           0    0    App1_deniedanswer_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."App1_deniedanswer_id_seq" OWNED BY public."App1_deniedanswer".id;
          public          postgres    false    224            �            1259    16572    App1_message    TABLE     �   CREATE TABLE public."App1_message" (
    id integer NOT NULL,
    from1_id integer NOT NULL,
    offer_id integer NOT NULL,
    to_id integer NOT NULL
);
 "   DROP TABLE public."App1_message";
       public         heap    postgres    false            �            1259    16570    App1_message_id_seq    SEQUENCE     �   CREATE SEQUENCE public."App1_message_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."App1_message_id_seq";
       public          postgres    false    223            �           0    0    App1_message_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."App1_message_id_seq" OWNED BY public."App1_message".id;
          public          postgres    false    222            �            1259    16564 
   App1_offer    TABLE       CREATE TABLE public."App1_offer" (
    id integer NOT NULL,
    price double precision NOT NULL,
    volume double precision NOT NULL,
    type integer NOT NULL,
    "calorificValue" double precision NOT NULL,
    owner_id integer NOT NULL,
    "sellOrBuy" integer NOT NULL
);
     DROP TABLE public."App1_offer";
       public         heap    postgres    false            �            1259    16562    App1_offer_id_seq    SEQUENCE     �   CREATE SEQUENCE public."App1_offer_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."App1_offer_id_seq";
       public          postgres    false    221            �           0    0    App1_offer_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."App1_offer_id_seq" OWNED BY public."App1_offer".id;
          public          postgres    false    220            �            1259    16425 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16423    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    208            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    207            �            1259    16435    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16433    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    210            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    209            �            1259    16417    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16415    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    206            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    205            �            1259    16443 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16453    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16451    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    214            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    213            �            1259    16441    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    212            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    211            �            1259    16461    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16459 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    216            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    215            �            1259    16521    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16519    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    218            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    217            �            1259    16407    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16405    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    204            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    203            �            1259    16396    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16394    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    202            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    201            �            1259    16552    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �           2604    16663    App1_address id    DEFAULT     v   ALTER TABLE ONLY public."App1_address" ALTER COLUMN id SET DEFAULT nextval('public."App1_address_id_seq"'::regclass);
 @   ALTER TABLE public."App1_address" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    16591    App1_answer id    DEFAULT     t   ALTER TABLE ONLY public."App1_answer" ALTER COLUMN id SET DEFAULT nextval('public."App1_answer_id_seq"'::regclass);
 ?   ALTER TABLE public."App1_answer" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    16583    App1_deniedanswer id    DEFAULT     �   ALTER TABLE ONLY public."App1_deniedanswer" ALTER COLUMN id SET DEFAULT nextval('public."App1_deniedanswer_id_seq"'::regclass);
 E   ALTER TABLE public."App1_deniedanswer" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16575    App1_message id    DEFAULT     v   ALTER TABLE ONLY public."App1_message" ALTER COLUMN id SET DEFAULT nextval('public."App1_message_id_seq"'::regclass);
 @   ALTER TABLE public."App1_message" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16567    App1_offer id    DEFAULT     r   ALTER TABLE ONLY public."App1_offer" ALTER COLUMN id SET DEFAULT nextval('public."App1_offer_id_seq"'::regclass);
 >   ALTER TABLE public."App1_offer" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            }           2604    16428    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    208    208            ~           2604    16438    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            |           2604    16420    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205    206                       2604    16446    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    16456    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            �           2604    16464    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    16524    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            {           2604    16410    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    204    204            z           2604    16399    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    202    202                      0    16660    App1_address 
   TABLE DATA           J   COPY public."App1_address" (id, latitute, longitute, user_id) FROM stdin;
    public          postgres    false    229   ��       }          0    16588    App1_answer 
   TABLE DATA           ^   COPY public."App1_answer" (id, content, place, "time", from1_id, offer_id, to_id) FROM stdin;
    public          postgres    false    227   $�       {          0    16580    App1_deniedanswer 
   TABLE DATA           U   COPY public."App1_deniedanswer" (id, content, from1_id, offer_id, to_id) FROM stdin;
    public          postgres    false    225   A�       y          0    16572    App1_message 
   TABLE DATA           G   COPY public."App1_message" (id, from1_id, offer_id, to_id) FROM stdin;
    public          postgres    false    223   ^�       w          0    16564 
   App1_offer 
   TABLE DATA           h   COPY public."App1_offer" (id, price, volume, type, "calorificValue", owner_id, "sellOrBuy") FROM stdin;
    public          postgres    false    221   {�       j          0    16425 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    208   ��       l          0    16435    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    210   ��       h          0    16417    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    206   �       n          0    16443 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    212   ��       p          0    16453    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    214   ��       r          0    16461    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    216   ��       t          0    16521    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    218   ��       f          0    16407    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    204   �       d          0    16396    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    202   ��       u          0    16552    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    219   ��       �           0    0    App1_address_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."App1_address_id_seq"', 5, true);
          public          postgres    false    228            �           0    0    App1_answer_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."App1_answer_id_seq"', 1, false);
          public          postgres    false    226            �           0    0    App1_deniedanswer_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."App1_deniedanswer_id_seq"', 1, false);
          public          postgres    false    224            �           0    0    App1_message_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."App1_message_id_seq"', 1, false);
          public          postgres    false    222            �           0    0    App1_offer_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."App1_offer_id_seq"', 8, true);
          public          postgres    false    220            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    207            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    209            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
          public          postgres    false    205            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 13, true);
          public          postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    215            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    217            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
          public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
          public          postgres    false    201            �           2606    16665    App1_address App1_address_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."App1_address"
    ADD CONSTRAINT "App1_address_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."App1_address" DROP CONSTRAINT "App1_address_pkey";
       public            postgres    false    229            �           2606    16596    App1_answer App1_answer_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."App1_answer"
    ADD CONSTRAINT "App1_answer_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."App1_answer" DROP CONSTRAINT "App1_answer_pkey";
       public            postgres    false    227            �           2606    16585 (   App1_deniedanswer App1_deniedanswer_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."App1_deniedanswer"
    ADD CONSTRAINT "App1_deniedanswer_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."App1_deniedanswer" DROP CONSTRAINT "App1_deniedanswer_pkey";
       public            postgres    false    225            �           2606    16577    App1_message App1_message_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."App1_message"
    ADD CONSTRAINT "App1_message_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."App1_message" DROP CONSTRAINT "App1_message_pkey";
       public            postgres    false    223            �           2606    16569    App1_offer App1_offer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."App1_offer"
    ADD CONSTRAINT "App1_offer_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."App1_offer" DROP CONSTRAINT "App1_offer_pkey";
       public            postgres    false    221            �           2606    16550    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    208            �           2606    16477 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    210    210            �           2606    16440 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    210            �           2606    16430    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    208            �           2606    16468 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    206    206            �           2606    16422 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    206            �           2606    16458 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    214            �           2606    16492 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    214    214            �           2606    16448    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    212            �           2606    16466 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    216            �           2606    16506 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    216    216            �           2606    16544     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    212            �           2606    16530 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    218            �           2606    16414 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    204    204            �           2606    16412 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    204            �           2606    16404 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    202            �           2606    16559 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    219            �           1259    16671    App1_address_user_id_419a026f    INDEX     ]   CREATE INDEX "App1_address_user_id_419a026f" ON public."App1_address" USING btree (user_id);
 3   DROP INDEX public."App1_address_user_id_419a026f";
       public            postgres    false    229            �           1259    16654    App1_answer_from1_id_28471c85    INDEX     ]   CREATE INDEX "App1_answer_from1_id_28471c85" ON public."App1_answer" USING btree (from1_id);
 3   DROP INDEX public."App1_answer_from1_id_28471c85";
       public            postgres    false    227            �           1259    16655    App1_answer_offer_id_8f5cd90e    INDEX     ]   CREATE INDEX "App1_answer_offer_id_8f5cd90e" ON public."App1_answer" USING btree (offer_id);
 3   DROP INDEX public."App1_answer_offer_id_8f5cd90e";
       public            postgres    false    227            �           1259    16656    App1_answer_to_id_df961686    INDEX     W   CREATE INDEX "App1_answer_to_id_df961686" ON public."App1_answer" USING btree (to_id);
 0   DROP INDEX public."App1_answer_to_id_df961686";
       public            postgres    false    227            �           1259    16636 #   App1_deniedanswer_from1_id_6e8ff5f8    INDEX     i   CREATE INDEX "App1_deniedanswer_from1_id_6e8ff5f8" ON public."App1_deniedanswer" USING btree (from1_id);
 9   DROP INDEX public."App1_deniedanswer_from1_id_6e8ff5f8";
       public            postgres    false    225            �           1259    16637 #   App1_deniedanswer_offer_id_eae10f53    INDEX     i   CREATE INDEX "App1_deniedanswer_offer_id_eae10f53" ON public."App1_deniedanswer" USING btree (offer_id);
 9   DROP INDEX public."App1_deniedanswer_offer_id_eae10f53";
       public            postgres    false    225            �           1259    16638     App1_deniedanswer_to_id_acf4d087    INDEX     c   CREATE INDEX "App1_deniedanswer_to_id_acf4d087" ON public."App1_deniedanswer" USING btree (to_id);
 6   DROP INDEX public."App1_deniedanswer_to_id_acf4d087";
       public            postgres    false    225            �           1259    16618    App1_message_from1_id_014a763d    INDEX     _   CREATE INDEX "App1_message_from1_id_014a763d" ON public."App1_message" USING btree (from1_id);
 4   DROP INDEX public."App1_message_from1_id_014a763d";
       public            postgres    false    223            �           1259    16619    App1_message_offer_id_6a3f4767    INDEX     _   CREATE INDEX "App1_message_offer_id_6a3f4767" ON public."App1_message" USING btree (offer_id);
 4   DROP INDEX public."App1_message_offer_id_6a3f4767";
       public            postgres    false    223            �           1259    16620    App1_message_to_id_b0fc2e0e    INDEX     Y   CREATE INDEX "App1_message_to_id_b0fc2e0e" ON public."App1_message" USING btree (to_id);
 1   DROP INDEX public."App1_message_to_id_b0fc2e0e";
       public            postgres    false    223            �           1259    16602    App1_offer_owner_id_ad77683e    INDEX     [   CREATE INDEX "App1_offer_owner_id_ad77683e" ON public."App1_offer" USING btree (owner_id);
 2   DROP INDEX public."App1_offer_owner_id_ad77683e";
       public            postgres    false    221            �           1259    16551    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    208            �           1259    16488 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    210            �           1259    16489 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    210            �           1259    16474 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    206            �           1259    16504 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    214            �           1259    16503 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    214            �           1259    16518 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    216            �           1259    16517 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    216            �           1259    16545     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    212            �           1259    16541 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    218            �           1259    16542 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    218            �           1259    16561 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    219            �           1259    16560 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    219            �           2606    16666 :   App1_address App1_address_user_id_419a026f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."App1_address"
    ADD CONSTRAINT "App1_address_user_id_419a026f_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public."App1_address" DROP CONSTRAINT "App1_address_user_id_419a026f_fk_auth_user_id";
       public          postgres    false    2976    229    212            �           2606    16639 9   App1_answer App1_answer_from1_id_28471c85_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."App1_answer"
    ADD CONSTRAINT "App1_answer_from1_id_28471c85_fk_auth_user_id" FOREIGN KEY (from1_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public."App1_answer" DROP CONSTRAINT "App1_answer_from1_id_28471c85_fk_auth_user_id";
       public          postgres    false    2976    227    212            �           2606    16644 :   App1_answer App1_answer_offer_id_8f5cd90e_fk_App1_offer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."App1_answer"
    ADD CONSTRAINT "App1_answer_offer_id_8f5cd90e_fk_App1_offer_id" FOREIGN KEY (offer_id) REFERENCES public."App1_offer"(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public."App1_answer" DROP CONSTRAINT "App1_answer_offer_id_8f5cd90e_fk_App1_offer_id";
       public          postgres    false    227    221    3002            �           2606    16649 6   App1_answer App1_answer_to_id_df961686_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."App1_answer"
    ADD CONSTRAINT "App1_answer_to_id_df961686_fk_auth_user_id" FOREIGN KEY (to_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public."App1_answer" DROP CONSTRAINT "App1_answer_to_id_df961686_fk_auth_user_id";
       public          postgres    false    212    2976    227            �           2606    16621 E   App1_deniedanswer App1_deniedanswer_from1_id_6e8ff5f8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."App1_deniedanswer"
    ADD CONSTRAINT "App1_deniedanswer_from1_id_6e8ff5f8_fk_auth_user_id" FOREIGN KEY (from1_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public."App1_deniedanswer" DROP CONSTRAINT "App1_deniedanswer_from1_id_6e8ff5f8_fk_auth_user_id";
       public          postgres    false    2976    225    212            �           2606    16626 F   App1_deniedanswer App1_deniedanswer_offer_id_eae10f53_fk_App1_offer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."App1_deniedanswer"
    ADD CONSTRAINT "App1_deniedanswer_offer_id_eae10f53_fk_App1_offer_id" FOREIGN KEY (offer_id) REFERENCES public."App1_offer"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."App1_deniedanswer" DROP CONSTRAINT "App1_deniedanswer_offer_id_eae10f53_fk_App1_offer_id";
       public          postgres    false    221    225    3002            �           2606    16631 B   App1_deniedanswer App1_deniedanswer_to_id_acf4d087_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."App1_deniedanswer"
    ADD CONSTRAINT "App1_deniedanswer_to_id_acf4d087_fk_auth_user_id" FOREIGN KEY (to_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."App1_deniedanswer" DROP CONSTRAINT "App1_deniedanswer_to_id_acf4d087_fk_auth_user_id";
       public          postgres    false    225    2976    212            �           2606    16603 ;   App1_message App1_message_from1_id_014a763d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."App1_message"
    ADD CONSTRAINT "App1_message_from1_id_014a763d_fk_auth_user_id" FOREIGN KEY (from1_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public."App1_message" DROP CONSTRAINT "App1_message_from1_id_014a763d_fk_auth_user_id";
       public          postgres    false    212    2976    223            �           2606    16608 <   App1_message App1_message_offer_id_6a3f4767_fk_App1_offer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."App1_message"
    ADD CONSTRAINT "App1_message_offer_id_6a3f4767_fk_App1_offer_id" FOREIGN KEY (offer_id) REFERENCES public."App1_offer"(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public."App1_message" DROP CONSTRAINT "App1_message_offer_id_6a3f4767_fk_App1_offer_id";
       public          postgres    false    223    221    3002            �           2606    16613 8   App1_message App1_message_to_id_b0fc2e0e_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."App1_message"
    ADD CONSTRAINT "App1_message_to_id_b0fc2e0e_fk_auth_user_id" FOREIGN KEY (to_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public."App1_message" DROP CONSTRAINT "App1_message_to_id_b0fc2e0e_fk_auth_user_id";
       public          postgres    false    2976    223    212            �           2606    16597 7   App1_offer App1_offer_owner_id_ad77683e_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."App1_offer"
    ADD CONSTRAINT "App1_offer_owner_id_ad77683e_fk_auth_user_id" FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public."App1_offer" DROP CONSTRAINT "App1_offer_owner_id_ad77683e_fk_auth_user_id";
       public          postgres    false    2976    212    221            �           2606    16483 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    206    2963    210            �           2606    16478 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    210    208    2968            �           2606    16469 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    204    206    2958            �           2606    16498 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2968    214    208            �           2606    16493 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    214    212    2976            �           2606    16512 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    206    216    2963            �           2606    16507 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2976    216    212            �           2606    16531 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    218    204    2958            �           2606    16536 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    212    2976    218               2   x�-��� ���0N��.�?4�'����?�좓rf��'S.��gY
      }      x������ � �      {      x������ � �      y      x������ � �      w   J   x�M���PB�a�F��a��՛��&:�ep
���Fq�L�� !��X@UHG�2�hN/���	�y K|6�/ǆ�      j      x������ � �      l      x������ � �      h   �  x�e�[��0E��U��Q��=ۨ4B%e�Z��N��Opnb������(\��w3M�ױ+��L/�L�BM�-	9�6C�[V�����5��*lm0��fw?��y��������r
��`��O��I��;f�nwS� =[��ri/ N:%:@JVI Y`\e���'S���h]-�c����� �<;ލ1���}�|�%��byݽْZkǺ�y�!����z��'�rÚo4�*�e��Ƿ�#aT�Tyg�SigzYg��2�I/�p�{�g[���9\��\'@D�@s�oA��9�*[�$3���43���D3D>�T7���G���T�3��tg2		��$�S����Y(|ݫQl&X����>���q��H-��q��5Ή�)ܰq�/��U��.4q*�Kw�8zA�ks����~�.+      n   �  x���Y��J ���_qx3�����(�b&����V\�_?�3��ܓ�<q�Kթ_R;v}�o�e�  �U�����>8𤱝�������yf���;b2�Ǧx-F���/ ��o���B�d��s� ���eT�����aQ°��u���9���.��˾0����y�1R�~���CY�ں-�0���5�����򯨌j�Z���B��)`�Â�-�u�b	�#{V��h�ha����m����������q�=s}T��`�f���DJ8f�C�1�f�Ct��gTh{I@�r�Kd7��zv�^F��Alg��e�	���%ybp�Tca
�D�d��B�-���n��㣻܉O~������qxPߚ�^c@���՞RF5�i!P�T$��t��z�"�`�����{a�7N�&�M�(�x�C��D3�3����?�N�L}ZX�Tc�
��(l��������x����
�����eǆQ�6o]|���T{t:Ί]�n�S�tV���˨�
)5" �=�E���-����ɾ$DZ��0oe�M=��o��ɛg��`k%�׃��t}Z�O�j��prQ��=�w�\o�a�b�,q-(N�����0w�H��Lu�����$#������n��/r�Tc��*J��-�������*�ry�xC7��Z�+ݘ�FkD�ݫ4��x�Jݞ;�+�:q9��EL%J��������H)d��������<BMe��-&˓�w�6f^<=b�Io��N򜠳B�zl��WS PPy{dY���C�V�G��R��Y>|���^��lY�a&��6 ^����3�M;��>>��t[l��9+�8-����G�Dp�c���_���(by�2��#���b�b���	?��pcՉչu���}<���u���u��8�$�1�o	�IO".���ϟĲ� pFأ����?~��C      p      x������ � �      r      x������ � �      t      x������ � �      f      x�M�K!D�]�1�����pC�I�!4���%2���WUϐu1��g�e��l�/�\bPIp�/�e�4傉�Ij��Y�gR�ٺ\螳�4�]��}��qhE?}4���%��J�~�+��c��1=�      d   �  x����n� ������U#f����=VB4!)6^lW��HJҭ���7p��sf4�0�v���h���nv�7H�� ���c�C�%RQ��	l�1���XH@�YA�����Dq�	�JP�pL�Ɠ���V��A��~���R.2�_��H:mv��>xsԻ��v)�u�dDe��~us9��D���(*YFɚj�g�hc�)����7���n��$�+UQ�Z����q�!�2��@�Ja���)�q�#iF �~��f�s�.9[��БIʊ�J)���5ޒ�Ρ݁(J����n�ۛ9ĩL�����4���s���8��Σ��D��*����S(�P����rAcX��0
R�#*�2���c�8�l�|T�xΧ�3୫����j��-�L�R��[A����P�6��K�#�#j�2�TBR%�w"���I��H�Iv^N�*�:��d��u9}���]G薢�s1�Jv~��u��� ��&�.O��%���l6��挔      u     x���n�0  �g���/���"�1.AѕK�4 ���|��1
	[q}\�������9�0���/4�~���I���3	'��Mj�w25�Km�^(ȍ%��j���$�	xd�4ź�b.�^���ʩ`�8&yҡ��d|!���ČNl�#�%��|������gr���{7&0�һ<��9�2�;q�^��?�Ɏ�Fl˽��n��i����2T��S��L���q�Y�X�] ��
���\Z:�0֠aSP��E��]�     