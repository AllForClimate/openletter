toc.dat                                                                                             0000600 0004000 0002000 00000040041 13666255372 0014455 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP            #                x           d77m5ah791nk74     12.3 (Ubuntu 12.3-1.pgdg16.04+1)    12.3 6    A           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         B           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         C           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         D           1262    37944834    d77m5ah791nk74    DATABASE     �   CREATE DATABASE d77m5ah791nk74 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE d77m5ah791nk74;
                ojjwadywhbpowy    false         E           0    0    DATABASE d77m5ah791nk74    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE d77m5ah791nk74 FROM PUBLIC;
                   ojjwadywhbpowy    false    3908         F           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO ojjwadywhbpowy;
                   postgres    false    653         �            1259    38085152    adonis_schema    TABLE     �   CREATE TABLE public.adonis_schema (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.adonis_schema;
       public         heap    ojjwadywhbpowy    false         �            1259    38085156    adonis_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.adonis_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.adonis_schema_id_seq;
       public          ojjwadywhbpowy    false    202         G           0    0    adonis_schema_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.adonis_schema_id_seq OWNED BY public.adonis_schema.id;
          public          ojjwadywhbpowy    false    203         �            1259    38085158    letters    TABLE     �  CREATE TABLE public.letters (
    id integer NOT NULL,
    slug character varying(100) NOT NULL,
    title character varying(100) NOT NULL,
    text text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    locale character varying(5) DEFAULT 'en'::character varying,
    token character varying(255),
    user_id integer,
    parent_letter_id integer,
    image character varying(255),
    featured_at date
);
    DROP TABLE public.letters;
       public         heap    ojjwadywhbpowy    false         �            1259    38085165    letters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.letters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.letters_id_seq;
       public          ojjwadywhbpowy    false    204         H           0    0    letters_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.letters_id_seq OWNED BY public.letters.id;
          public          ojjwadywhbpowy    false    205         �            1259    38085167 
   signatures    TABLE     �  CREATE TABLE public.signatures (
    id integer NOT NULL,
    letter_id integer,
    name character varying(128),
    city character varying(64),
    occupation character varying(64),
    organization character varying(64),
    token character varying(64),
    is_verified boolean DEFAULT false,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    email character varying(255)
);
    DROP TABLE public.signatures;
       public         heap    ojjwadywhbpowy    false         �            1259    38085174    signatures_id_seq    SEQUENCE     �   CREATE SEQUENCE public.signatures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.signatures_id_seq;
       public          ojjwadywhbpowy    false    206         I           0    0    signatures_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.signatures_id_seq OWNED BY public.signatures.id;
          public          ojjwadywhbpowy    false    207         �            1259    38085176    tokens    TABLE       CREATE TABLE public.tokens (
    id integer NOT NULL,
    user_id integer,
    token character varying(255) NOT NULL,
    type character varying(80) NOT NULL,
    is_revoked boolean DEFAULT false,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.tokens;
       public         heap    ojjwadywhbpowy    false         �            1259    38085180    tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tokens_id_seq;
       public          ojjwadywhbpowy    false    208         J           0    0    tokens_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tokens_id_seq OWNED BY public.tokens.id;
          public          ojjwadywhbpowy    false    209         �            1259    38085182    users    TABLE     '  CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(254) NOT NULL,
    password character varying(60) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    name character varying(255)
);
    DROP TABLE public.users;
       public         heap    ojjwadywhbpowy    false         �            1259    38085188    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          ojjwadywhbpowy    false    210         K           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          ojjwadywhbpowy    false    211         �           2604    38085190    adonis_schema id    DEFAULT     t   ALTER TABLE ONLY public.adonis_schema ALTER COLUMN id SET DEFAULT nextval('public.adonis_schema_id_seq'::regclass);
 ?   ALTER TABLE public.adonis_schema ALTER COLUMN id DROP DEFAULT;
       public          ojjwadywhbpowy    false    203    202         �           2604    38085191 
   letters id    DEFAULT     h   ALTER TABLE ONLY public.letters ALTER COLUMN id SET DEFAULT nextval('public.letters_id_seq'::regclass);
 9   ALTER TABLE public.letters ALTER COLUMN id DROP DEFAULT;
       public          ojjwadywhbpowy    false    205    204         �           2604    38085192    signatures id    DEFAULT     n   ALTER TABLE ONLY public.signatures ALTER COLUMN id SET DEFAULT nextval('public.signatures_id_seq'::regclass);
 <   ALTER TABLE public.signatures ALTER COLUMN id DROP DEFAULT;
       public          ojjwadywhbpowy    false    207    206         �           2604    38085193 	   tokens id    DEFAULT     f   ALTER TABLE ONLY public.tokens ALTER COLUMN id SET DEFAULT nextval('public.tokens_id_seq'::regclass);
 8   ALTER TABLE public.tokens ALTER COLUMN id DROP DEFAULT;
       public          ojjwadywhbpowy    false    209    208         �           2604    38085194    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          ojjwadywhbpowy    false    211    210         5          0    38085152    adonis_schema 
   TABLE DATA           H   COPY public.adonis_schema (id, name, batch, migration_time) FROM stdin;
    public          ojjwadywhbpowy    false    202       3893.dat 7          0    38085158    letters 
   TABLE DATA           �   COPY public.letters (id, slug, title, text, created_at, updated_at, locale, token, user_id, parent_letter_id, image, featured_at) FROM stdin;
    public          ojjwadywhbpowy    false    204       3895.dat 9          0    38085167 
   signatures 
   TABLE DATA           �   COPY public.signatures (id, letter_id, name, city, occupation, organization, token, is_verified, created_at, updated_at, email) FROM stdin;
    public          ojjwadywhbpowy    false    206       3897.dat ;          0    38085176    tokens 
   TABLE DATA           ^   COPY public.tokens (id, user_id, token, type, is_revoked, created_at, updated_at) FROM stdin;
    public          ojjwadywhbpowy    false    208       3899.dat =          0    38085182    users 
   TABLE DATA           \   COPY public.users (id, username, email, password, created_at, updated_at, name) FROM stdin;
    public          ojjwadywhbpowy    false    210       3901.dat L           0    0    adonis_schema_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.adonis_schema_id_seq', 41, true);
          public          ojjwadywhbpowy    false    203         M           0    0    letters_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.letters_id_seq', 72, true);
          public          ojjwadywhbpowy    false    205         N           0    0    signatures_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.signatures_id_seq', 5507, true);
          public          ojjwadywhbpowy    false    207         O           0    0    tokens_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tokens_id_seq', 1, false);
          public          ojjwadywhbpowy    false    209         P           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          ojjwadywhbpowy    false    211         �           2606    38085199     adonis_schema adonis_schema_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.adonis_schema
    ADD CONSTRAINT adonis_schema_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.adonis_schema DROP CONSTRAINT adonis_schema_pkey;
       public            ojjwadywhbpowy    false    202         �           2606    38085201    letters letters_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.letters
    ADD CONSTRAINT letters_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.letters DROP CONSTRAINT letters_pkey;
       public            ojjwadywhbpowy    false    204         �           2606    38085203 "   letters letters_slug_locale_unique 
   CONSTRAINT     e   ALTER TABLE ONLY public.letters
    ADD CONSTRAINT letters_slug_locale_unique UNIQUE (slug, locale);
 L   ALTER TABLE ONLY public.letters DROP CONSTRAINT letters_slug_locale_unique;
       public            ojjwadywhbpowy    false    204    204         �           2606    38085205    signatures signatures_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.signatures
    ADD CONSTRAINT signatures_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.signatures DROP CONSTRAINT signatures_pkey;
       public            ojjwadywhbpowy    false    206         �           2606    38085207 "   signatures signatures_token_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.signatures
    ADD CONSTRAINT signatures_token_unique UNIQUE (token);
 L   ALTER TABLE ONLY public.signatures DROP CONSTRAINT signatures_token_unique;
       public            ojjwadywhbpowy    false    206         �           2606    38085209    tokens tokens_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_pkey;
       public            ojjwadywhbpowy    false    208         �           2606    38085211    tokens tokens_token_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_token_unique UNIQUE (token);
 D   ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_token_unique;
       public            ojjwadywhbpowy    false    208         �           2606    38085213    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            ojjwadywhbpowy    false    210         �           2606    38085215    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            ojjwadywhbpowy    false    210         �           2606    38085217    users users_username_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_unique UNIQUE (username);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_unique;
       public            ojjwadywhbpowy    false    210         �           1259    39933497     letters_featured_at_locale_index    INDEX     c   CREATE INDEX letters_featured_at_locale_index ON public.letters USING btree (featured_at, locale);
 4   DROP INDEX public.letters_featured_at_locale_index;
       public            ojjwadywhbpowy    false    204    204         �           1259    38085218    letters_slug_index    INDEX     F   CREATE INDEX letters_slug_index ON public.letters USING btree (slug);
 &   DROP INDEX public.letters_slug_index;
       public            ojjwadywhbpowy    false    204         �           1259    38085219    signatures_is_verified_index    INDEX     Z   CREATE INDEX signatures_is_verified_index ON public.signatures USING btree (is_verified);
 0   DROP INDEX public.signatures_is_verified_index;
       public            ojjwadywhbpowy    false    206         �           1259    38085220    signatures_token_index    INDEX     N   CREATE INDEX signatures_token_index ON public.signatures USING btree (token);
 *   DROP INDEX public.signatures_token_index;
       public            ojjwadywhbpowy    false    206         �           2606    38085221 (   letters letters_parent_letter_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.letters
    ADD CONSTRAINT letters_parent_letter_id_foreign FOREIGN KEY (parent_letter_id) REFERENCES public.letters(id);
 R   ALTER TABLE ONLY public.letters DROP CONSTRAINT letters_parent_letter_id_foreign;
       public          ojjwadywhbpowy    false    3743    204    204         �           2606    38085226    letters letters_user_id_foreign    FK CONSTRAINT     ~   ALTER TABLE ONLY public.letters
    ADD CONSTRAINT letters_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.letters DROP CONSTRAINT letters_user_id_foreign;
       public          ojjwadywhbpowy    false    210    204    3760         �           2606    38085231 '   signatures signatures_letter_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.signatures
    ADD CONSTRAINT signatures_letter_id_foreign FOREIGN KEY (letter_id) REFERENCES public.letters(id);
 Q   ALTER TABLE ONLY public.signatures DROP CONSTRAINT signatures_letter_id_foreign;
       public          ojjwadywhbpowy    false    3743    204    206         �           2606    38085236    tokens tokens_user_id_foreign    FK CONSTRAINT     |   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id);
 G   ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_user_id_foreign;
       public          ojjwadywhbpowy    false    208    210    3760                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       3893.dat                                                                                            0000600 0004000 0002000 00000001050 13666255372 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1503248427885_Letter	1	2020-04-08 09:08:20.237342+00
2	1503248427886_Signature	1	2020-04-08 09:08:20.294295+00
3	1585522953960_user	1	2020-04-08 09:08:20.324534+00
4	1585522953961_token	1	2020-04-08 09:08:20.345128+00
5	1589920158563_users_schema	2	2020-05-21 23:13:20.414096+00
6	1589921820273_letters_schema	2	2020-05-21 23:13:20.438556+00
7	1589933540041_signatures_schema	2	2020-05-21 23:13:20.45181+00
8	1590104678560_letters_schema	3	2020-05-22 00:06:35.50175+00
41	1590851687037_letters_featured_at_schema	4	2020-05-30 16:04:49.412403+00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        3895.dat                                                                                            0000600 0004000 0002000 00000133552 13666255372 0014312 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	test-82cd8b5c	test	test	2020-04-08 09:24:03+00	2020-04-08 09:24:03+00	en	\N	\N	\N	\N	\N
2	test-60aad06a	test	test	2020-04-08 09:24:17+00	2020-04-08 09:24:17+00	en	\N	\N	\N	\N	\N
3	we-are-offering-free-fiscal-sponsorship-for-#covid19-related-collectives-40e6c6c5	We are offering free fiscal sponsorship for #COVID19 related collectives	test	2020-04-08 09:32:27+00	2020-04-08 09:32:27+00	en	\N	\N	\N	\N	\N
4	testing-6a0ca31d	Testing	Hello world	2020-04-08 14:08:38+00	2020-04-08 14:08:38+00	en	\N	\N	\N	\N	\N
5	dear-xr,-stay-neutral-db2bf101	Dear XR, stay neutral	Whatever	2020-04-09 12:29:13+00	2020-04-09 12:29:13+00	en	\N	\N	\N	\N	\N
6	hello,-world--d431e73c	Hello, world :-)	Testing this stuff\n\nNew lines\n\n<b>bold</b>\n	2020-04-09 22:55:39+00	2020-04-09 22:55:39+00	en	\N	\N	\N	\N	\N
7	test-world--ab649b04	test, world :-)	Hello\n\nworld	2020-04-09 23:32:52+00	2020-04-09 23:32:52+00	en	\N	\N	\N	\N	\N
8	test-world--9833089a	test, world :-)	hello \n\n\nworld\n\nww	2020-04-09 23:34:25+00	2020-04-09 23:34:25+00	en	\N	\N	\N	\N	\N
9	test-world--13535101	test, world :-)	test\n\nworld\n\n:-)	2020-04-10 12:34:05+00	2020-04-10 12:34:05+00	en	\N	\N	\N	\N	\N
10	test-world--ef8c3a7b	test, world :-)	test\n\nworld\n\n:-)	2020-04-10 12:34:06+00	2020-04-10 12:34:06+00	en	\N	\N	\N	\N	\N
11	another-test-45e3110a	another test	te\n\nqreew	2020-04-10 14:34:46+00	2020-04-10 14:34:46+00	en	\N	\N	\N	\N	\N
12	hello-world-ffd209f2	Hello world	This is why I think this is important	2020-04-10 12:48:42+00	2020-04-10 12:48:42+00	en	\N	\N	\N	\N	\N
13	open-brief-aan-minister-demir-63103911	Open brief aan Minister Demir 	Geachte Minister Demir,\n\nIk zou graag de echte reden weten waarom Vlaanderen de Green Deal niet accepteert. Moet Vlaanderen nu opnieuw de koppige ezel zijn die niet kan of wil samenwerken? Moet een onenigheid tussen Vlaanderen en Wallonië ervoor zorgen dat we geen plan hebben en dat we eindeloos achterblijven?\nWant dit plan, met als visie “de crisis bestrijden met een groene focus op weg naar een duurzame en kostenefficiënte manier”, toont aan dat eindelijk het besef groeit dat we de klimaatcrisis aan het onderschatten zijn.\nNet zoals we de Covid-19 crisis ook onderschat hadden. Ziet u gelijkenissen?\nDenemarken roept op om de Green Deal als uitgangspunt te nemen voor een gezamenlijk Europees herstelplan na de coronacrisis. Hiermee wijzen zij op de kans die wij nu krijgen om de komende enorme investeringen te gebruiken om de economie te vergroenen. Vlaanderen mag niet aan de kant blijven staan, verblind door een kortetermijnvisie. U heeft zelf kinderen, bent u nooit bang voor hun toekomst? U wil toch ook het beste voor hen? Dat zij later een leven kunnen hebben waarin ze nog blauwe lucht zien, een leven waarin ze vrij kunnen ademen, een leven waarin ze geen vluchtelingen zullen worden, of niet in een oorlog om water zullen verstrikt raken? \nWant beste, dit gebeurt al. De gevolgen van klimaatopwarming zijn al zichtbaar en de kans is bijzonder klein dat we onder de 2°C zullen blijven. Als er nu niet snel iets verandert, is dit de toekomst voor uw kinderen. Bekijk de wereld eens vanuit een ander standpunt dan het Vlaamse. Er zijn op dit moment oorlogen om water en olie, er zijn mensen die hun huis, hun land en hun familie verliezen dankzij klimaatopwarming. Is dit de toekomst die u voor ogen heeft voor uw kinderen?\nDit is een tikkende tijdbom die nu al miljoenen levens heeft gekost.\nIs het nu niet tijd om solidair te zijn?\nTijd om te denken aan "the global south” en, met wat er nu al gebeurt in het achterhoofd, deze deal opnieuw te overwegen. \n\nMet vriendelijke groeten\nExtinction Rebellion Youth\n	2020-04-10 13:48:15+00	2020-04-10 13:48:15+00	en	\N	\N	\N	\N	\N
14	open-brief-aan-minister-demir-4369dd1c	Open brief aan Minister Demir	Geachte Minister Demir,\n\nIk zou graag de echte reden weten waarom Vlaanderen de Green Deal niet accepteert. Moet Vlaanderen nu opnieuw de koppige ezel zijn die niet kan of wil samenwerken? Moet een onenigheid tussen Vlaanderen en Wallonië ervoor zorgen dat we geen plan hebben en dat we eindeloos achterblijven?\nWant dit plan, met als visie “de crisis bestrijden met een groene focus op weg naar een duurzame en kostenefficiënte manier”, toont aan dat eindelijk het besef groeit dat we de klimaatcrisis aan het onderschatten zijn.\nNet zoals we de Covid-19 crisis ook onderschat hadden. Ziet u gelijkenissen?\nDenemarken roept op om de Green Deal als uitgangspunt te nemen voor een gezamenlijk Europees herstelplan na de coronacrisis. Hiermee wijzen zij op de kans die wij nu krijgen om de komende enorme investeringen te gebruiken om de economie te vergroenen. Vlaanderen mag niet aan de kant blijven staan, verblind door een kortetermijnvisie. U heeft zelf kinderen, bent u nooit bang voor hun toekomst? U wil toch ook het beste voor hen? Dat zij later een leven kunnen hebben waarin ze nog blauwe lucht zien, een leven waarin ze vrij kunnen ademen, een leven waarin ze geen vluchtelingen zullen worden, of niet in een oorlog om water zullen verstrikt raken? \nWant beste, dit gebeurt al. De gevolgen van klimaatopwarming zijn al zichtbaar en de kans is bijzonder klein dat we onder de 2°C zullen blijven. Als er nu niet snel iets verandert, is dit de toekomst voor uw kinderen. Bekijk de wereld eens vanuit een ander standpunt dan het Vlaamse. Er zijn op dit moment oorlogen om water en olie, er zijn mensen die hun huis, hun land en hun familie verliezen dankzij klimaatopwarming. Is dit de toekomst die u voor ogen heeft voor uw kinderen?\nDit is een tikkende tijdbom die nu al miljoenen levens heeft gekost.\nIs het nu niet tijd om solidair te zijn?\nTijd om te denken aan "the global south” en, met wat er nu al gebeurt in het achterhoofd, deze deal opnieuw te overwegen. \n\nMet vriendelijke groeten\nExtinction Rebellion Youth\n	2020-04-10 13:52:27+00	2020-04-10 13:52:27+00	en	\N	\N	\N	\N	\N
15	m-760208a6	m	m	2020-04-11 12:17:12+00	2020-04-11 12:17:12+00	en	\N	\N	\N	\N	\N
16	w-d41bdf1c	w	w	2020-04-11 12:17:54+00	2020-04-11 12:17:54+00	en	\N	\N	\N	\N	\N
17	kkk-37d65fc8	Kkk	Kkk	2020-04-18 09:39:46+00	2020-04-18 09:39:46+00	en	\N	\N	\N	\N	\N
18	hdjhfhf-bb634dad	Hdjhfhf	Kdjfjdhf	2020-04-18 09:54:34+00	2020-04-18 09:54:34+00	en	\N	\N	\N	\N	\N
19	ffff-859aa1b6	ffff	ffff	2020-04-18 09:59:51+00	2020-04-18 09:59:51+00	en	\N	\N	\N	\N	\N
20	-88cea8d0	..	..	2020-04-19 20:51:43+00	2020-04-19 20:51:43+00	en	\N	\N	\N	\N	\N
21	i-love-ana-efce3f68	I love Ana	This is an Open Letter showing that I love Ana.	2020-04-25 11:54:35+00	2020-04-25 11:54:35+00	en	\N	\N	\N	\N	\N
55	test-b80e8888	Test	Test open letter	2020-05-02 11:43:24+00	2020-05-02 11:43:24+00	en	\N	\N	\N	\N	\N
56	nouvelle-8c269e16	nouvelle	lettre	2020-05-03 00:00:37+00	2020-05-03 00:00:37+00	en	\N	\N	\N	\N	\N
57	lettre-a-rudi-vervoort-98d905ec	Lettre à Rudi Vervoort	Monsieur le Ministre-Président, \n\nA notre grande « surprise », le stationnement redeviendra payant à partir du 18 mai 2020, date à laquelle les visites familiales peuvent se faire. \n\nPourquoi faire payer encore les personnes qui vont venir rendre visites à leurs parents, à leurs proches qu'ils n'ont pas vu depuis plus de deux mois? \n\nNe pouvait-on pas attendre encore quelques temps pour reprendre le stationnement payant? Je vous rappelle que dans certaines communes, le coût est de 2 euros l'heure. \n\nPrès de 100.000 travailleurs bruxellois ont fait appel au chômage temporaire, pourquoi encore aggraver leur situation. \n\nNous vous demandons de postposer le stationnement payant. \n\nDe plus, nous constatons que beaucoup de décision sont mises en œuvre avec précipitations sans prendre en considération la réalité des bruxellois concernant leur déplacement. \n\nCela crispe et exclue une grande des parties des bruxellois.\n\nLes actes de votre gouvernement ne sont pas du tout à la hauteur de votre sagesse, ni respectueux des bruxellois. \n\n\n	2020-05-06 10:07:24+00	2020-05-06 10:07:24+00	en	\N	\N	\N	\N	\N
58	lettre-ouverte-a-la-commune-de-saint-josse-ten-noode-3ce5c21c	Lettre ouverte à la commune de Saint-Josse-ten-Noode 	Open brief aan de gemeente Sint-Joost-ten-Node\n(NL onderaan)\n\nLe 13 avril dernier, le collectif citoyen 1210/0 a demandé au Bourgmestre de Saint-Josse-ten-Noode de prévoir temporairement quelques rues sans voitures, afin de permettre aux habitants de Saint-Josse de se rendre dans l’espace public en sécurité, tout en respectant les règles de la distanciation sociale. \n\nNous sommes maintenant dans une première phase du déconfinement, ce qui veut dire que de plus en plus de personnes se rendent dans l’espace public. Ils sont censés toujours respecter les règles de distanciation sociale, mais les trottoirs sont souvent très étroits dans notre commune très dense. Ce qui fait qu’à beaucoup d’endroits, il est presque impossible de se croiser en respectant une distance de 1m50.\n\nLa Région de Bruxelles-Capitale a lancé un appel à toutes les communes pour aménager des zones de rencontre, afin de créer plus d’espace dans les rues. Dans une zone de rencontre, aucun mode de transport est exclu : les voitures peuvent toujours circuler, mais les usagers de modes actifs sont prioritaires et la vitesse des véhicules est limitée à 20km/h. Une fois que ces voitures arrivent sur des grands axes, elles ont de nouveau la priorité. La ville de Bruxelles a déjà décidé de créer une zone de rencontre dans l’ensemble du Pentagone et étudie également la possibilité de remplacer certaines places de parking par des terrasses provisoires afin de soutenir l’horeca. Aujourd’hui, 16 des 19 communes ont répondu à l’appel sur les zones de rencontre et envisagent des aménagements temporaires de rues.\n\nNous demandons à la commune de Saint-Josse-ten-Noode de répondre à cet appel de la Région. La distanciation sociale est selon les experts toujours le moyen le plus efficace contre la propagation du coronavirus. Prévoir plus d’espace dans les rues faciliterait les choses.\n\nNous demandons également à la commune de prendre des mesures pour lutter contre le stationnement sauvage sur les trottoirs et les pistes cyclables afin de garantir la sécurité des usagers des modes actifs.\n\nEnfin, nous demandons d'ouvrir à nouveau les parcs pour les habitants de Saint-Josse, dont une grande partie n’a pas accès à un espace extérieur privé. Cela pourrait se faire d’une manière contrôlée, en limitant le nombre de personnes. Ce serait également intéressant de voir comment organiser une ouverture contrôlée des plaines de jeux, par exemple avec un système qui permet à une famille à la fois d’utiliser la plaine de jeux pendant une demi-heure ou une heure. Il y a certainement des organisations dans notre commune qui sont prêts à prendre un rôle dans un tel projet.\n\nDonnons aux habitants de Saint-Josse l’espace nécessaire pour se déplacer en toute sécurité dans l’espace public. Investissons dans une répartition équitable de l’espace public afin d’améliorer la qualité de vie dans notre commune.\n \n\nNL\n\nOp 13 april vroeg burgercollectief 1210/0 aan de burgemeester van Sint-Joost-ten-Node om tijdelijk een aantal straten autovrij te maken, zodat de Sint-Joostenaren zich op een veilige manier en volgens het principe van ‘social distancing’ in de publieke ruimte kunnen verplaatsen.\n\nWe zijn intussen beland in de eerste fase van een versoepeling van de maatregelen, waarbij steeds meer mensen zich in de publieke ruimte begeven. Er wordt nog steeds van hen verwacht dat zij zich houden aan de regels van ‘social distancing’, maar door de smalle stoepen in onze dichtbevolkte gemeente is het op veel plaatsen haast onmogelijk om mensen te kruisen op een afstand van anderhalve meter.\n\nHet Brussels Hoofdstedelijk Gewest lanceerde bij alle gemeenten het voorstel om een woonerf in te richten om meer ruimte te creëren op straat. In zo’n woonerf mogen nog auto’s rijden, maar hebben actieve weggebruikers voorrang en is de maximumsnelheid voor de voertuigen 20km per uur. Eens de auto’s een grotere laan of boulevard bereiken, krijgen ze weer voorrang. Onder meer de Stad Brussel besliste om de hele Vijfhoek om te vormen tot een woonerf en onderzoekt eveneens de mogelijkheid om bepaalde parkeerplaatsen om te vormen tot tijdelijke terrassen om de horeca te steunen. In heel wat gemeenten wordt gehoor gegeven aan de oproep van het Gewest: intussen hebben 16 van de 19 gemeenten plannen voor een tijdelijke heraanleg van straten.\n\nWe vragen aan de gemeente Sint-Joost-ten-Node om ook op de oproep van het Gewest in te gaan. Afstand houden is volgens de experten nog steeds de meest effectieve manier om de verspreiding van het coronavirus tegen te gaan. Meer ruimte geven op straat vergemakkelijkt dit.\n\nWe vragen ook aan de gemeente om de nodige maatregelen te nemen om wildparkeren op de voetpaden en fietspaden tegen te gaan, zodat de veiligheid van de actieve weggebruikers gegarandeerd wordt. \n\nTot slot vragen we om de parken die momenteel gesloten zijn terug open te stellen voor de bewoners van Sint-Joost, die vaak niet over een buitenruimte beschikken. Dit kan op een gecontroleerde manier, waarbij telkens een beperkt aantal mensen wordt toegelaten. Het zou ook interessant zijn om te bekijken hoe speelpleinen gecontroleerd opengesteld kunnen worden, bijvoorbeeld door een systeem waarbij telkens 1 gezin voor een halfuur of uur gebruik kan maken van de buitenruimte. Er zijn ongetwijfeld organisaties in onze gemeente die een rol willen opnemen in zo een project van gecontroleerde openstelling.\n\nLaten we aan de inwoners van Sint-Joost de ruimte geven die ze nodig hebben om zich op een veilige manier te kunnen verplaatsen in de publieke ruimte. Laat ons inzetten op een eerlijke verdeling van de publieke ruimte en zo de leefbaarheid in onze gemeente vergroten.\n \n\n1210/0 collectif de citoyens-burgercollectief\nFabrik\nGRACQ Saint-Josse\nTravertsons wijkcomité-comité de quartier\nRéseau IDée \nInstitut Kurde/Koerdisch Instituut\nMaison de Santé Atlas\nMaison de Santé Potager	2020-05-12 20:59:42+00	2020-05-12 20:59:42+00	en	\N	\N	\N	\N	\N
59	lettre-ouverte-a-la-commune-de-saint-josse-ten-noode-5f9076a5	Lettre ouverte à la commune de Saint-Josse-ten-Noode 	Le 13 avril dernier, le collectif citoyen 1210/0 a demandé au Bourgmestre de Saint-Josse-ten-Noode de prévoir temporairement quelques rues sans voitures, afin de permettre aux habitants de Saint-Josse de se rendre dans l’espace public en sécurité, tout en respectant les règles de la distanciation sociale. \n\nNous sommes maintenant dans une première phase du déconfinement, ce qui veut dire que de plus en plus de personnes se rendent dans l’espace public. Ils sont censés toujours respecter les règles de distanciation sociale, mais les trottoirs sont souvent très étroits dans notre commune très dense. Ce qui fait qu’à beaucoup d’endroits, il est presque impossible de se croiser en respectant une distance de 1m50.\n\nLa Région de Bruxelles-Capitale a lancé un appel à toutes les communes pour aménager des zones de rencontre, afin de créer plus d’espace dans les rues. Dans une zone de rencontre, aucun mode de transport est exclu : les voitures peuvent toujours circuler, mais les usagers de modes actifs sont prioritaires et la vitesse des véhicules est limitée à 20km/h. Une fois que ces voitures arrivent sur des grands axes, elles ont de nouveau la priorité. La ville de Bruxelles a déjà décidé de créer une zone de rencontre dans l’ensemble du Pentagone et étudie également la possibilité de remplacer certaines places de parking par des terrasses provisoires afin de soutenir l’horeca. Aujourd’hui, 16 des 19 communes ont répondu à l’appel sur les zones de rencontre et envisagent des aménagements temporaires de rues.\n\nNous demandons à la commune de Saint-Josse-ten-Noode de répondre à cet appel de la Région. La distanciation sociale est selon les experts toujours le moyen le plus efficace contre la propagation du coronavirus. Prévoir plus d’espace dans les rues faciliterait les choses.\n\nNous demandons également à la commune de prendre des mesures pour lutter contre le stationnement sauvage sur les trottoirs et les pistes cyclables afin de garantir la sécurité des usagers des modes actifs.\n\nEnfin, nous demandons d'ouvrir à nouveau les parcs pour les habitants de Saint-Josse, dont une grande partie n’a pas accès à un espace extérieur privé. Cela pourrait se faire d’une manière contrôlée, en limitant le nombre de personnes. Ce serait également intéressant de voir comment organiser une ouverture contrôlée des plaines de jeux, par exemple avec un système qui permet à une famille à la fois d’utiliser la plaine de jeux pendant une demi-heure ou une heure. Il y a certainement des organisations dans notre commune qui sont prêts à prendre un rôle dans un tel projet.\n\nDonnons aux habitants de Saint-Josse l’espace nécessaire pour se déplacer en toute sécurité dans l’espace public. Investissons dans une répartition équitable de l’espace public afin d’améliorer la qualité de vie dans notre commune.\n \n\n1210/0 collectif de citoyens-burgercollectief\nFabrik\nGRACQ Saint-Josse\nTravertsons wijkcomité-comité de quartier\nRéseau IDée \nInstitut Kurde/Koerdisch Instituut\nMaison de Santé Atlas\nMaison de Santé Potager	2020-05-12 20:59:45+00	2020-05-12 20:59:45+00	fr	8140ec26fde31bb399b864bc6d40bf18	\N	\N	\N	\N
60	lettre-ouverte-a-elke-van-den-brandt-dimanches-sans-voiture-cet-ete-a-bruxelles-ebf9bf61	Lettre ouverte à Elke Van Den Brandt: Dimanches sans voiture cet été à Bruxelles	Chère Elke Van Den Brandt,\n\nNous, citoyens de Bruxelles, vous demandons de bien vouloir faire de tous les dimanches des dimanches sans voiture, au moins jusqu'à fin septembre.\n\nLa première raison de cette demande est que depuis le début du déconfinement, la circulation a repris en dehors du centre ville et les rues ne sont plus aussi sûres et accueillantes pour la mobilité active. Les familles à vélo, les enfants, mais aussi toutes celles et ceux qui se mettent pour la première fois au vélo en ville ne se sentent pas rassurés et beaucoup finissent par reprendre leur voiture par dépit, pour leur sécurité. Les dimanches sans voiture donneront au plus grand nombre l’opportunité de (re)découvrir la ville avec le confort d'une selle de vélo et sans stress. Cela encouragera les gens à utiliser davantage leur vélo, même en semaine. \n\nLa deuxième raison de cette demande est que nous devons nous préparer. Les vacances arrivent et de nombreuses personnes resteront à la maison, et il y a une forte probabilité que le virus revienne après l'été. Avoir chaque dimanche sans voitures permettra aux gens de planifier et d'organiser des activités (de vacances) devant leur porte d'entrée. Les voisins se retrouveront et cela renforcera nos communautés locales à travers Bruxelles.\n\nDans le passé, Bruxelles a déjà organisé avec succès des dimanches sans voiture. Ses résidents et visiteurs savent déjà comment cela fonctionne et comment cela a eu un impact positif sur leur bien-être. Nous vous demandons simplement de rendre chaque dimanche sans voiture et donc sans stress, comme c'est déjà le cas dans de nombreux quartiers de Paris, au moins jusqu'à la fin de l'été.\n\nAlors chère Elke, en tant que ministre de la Mobilité à Bruxelles, pouvez-vous, avec vos collègues, faire de ceci une réalité ? Il s'agit du bien-être et de la santé de tous les citoyens bruxellois. Donnez-nous l'espace pour recréer une résilience locale afin que, lors du prochain confinement, nous soyons plus en mesure de nous entraider et de nous soutenir mutuellement.\n\nMerci pour votre considération et votre réponse. N'hésitez pas à nous faire savoir comment nous pouvons vous aider à y parvenir.	2020-05-22 09:35:48+00	2020-05-22 09:35:48+00	fr	8140ec26fde31bb399b864bc6d40bf16	1	\N	https://pbs.twimg.com/media/EYKbTVhXgAAFD4J?format=jpg&name=large	2020-05-30
63	liberte-de-circuler-2abeffa9	liberté de circuler	des gens travaillent le dimanche et ont besoin de leur véhicule, par exemple les brocanteurs, les ambulants, etc... certains doivent se déplacer pour faire du sport , d'autres pour revoir leur famille dans des coins reculés du pays , d'autres aiment visiter les coins touristiques , ALORS ARRETEZ DE JOUER AUX CONS ET D' INTERDIR A TOUT VENT !	2020-05-22 22:39:20+00	2020-05-22 22:39:20+00	en	8fcaeb26cbe26a4184e15b4b321566a2	\N	\N	\N	\N
62	lettre-ouverte-a-elke-van-den-brandt-dimanches-sans-voiture-cet-ete-a-bruxelles-ebf9bf61	Open brief aan Elke Van Den Brandt: autoloze zondagen een hele zomer lang in Brussel	Beste Elke Van Den Brandt\n\nWij, inwoners van Brussel, vragen je vriendelijk om van elke zondag een autoloze zondag te maken, tot minstens eind september.\n\nDe eerste reden voor deze vraag is het feit dat alle fietsende families, en vooral kinderen, een groot verschil voelen nu de lockdown-maatregelen versoepelen. Het verkeer neemt weer erg toe buiten het stadscentrum en de straten zijn niet langer veilig, tenzij je met de auto rijdt. Autoloze zondagen zullen veel mensen de kans geven om de stad comfortabel vanop de fiets te verkennen en hen aanmoedigen om de fiets vaker te gebruiken, ook op weekdagen. Kinderen hebben deze extra ruimte bovendien nodig om te leren fietsen en te spelen.\n\nDe tweede reden voor dit verzoek is het simpele feit dat we ons moeten voorbereiden. De zomervakantie staat voor de deur en heel wat mensen zullen die in de stad doorbrengen. De kans dat het virus terugkeert na de zomer is ook bijzonder groot. Met een autoloze dag elke week kunnen buren hun (vakantie)activiteiten plannen in hun eigen straat. Buren kunnen elkaar ontmoeten en de gemeenschap in hun buurt en straat versterken, overal in Brussel.\n\nBrussel organiseerde succesvol autoloze zondagen in het verleden. Inwoners en bezoekers weten hoe het werkt en ze kennen de positieve impact op hun welzijn. We vragen simpelweg om van elke zondag een autoloze en dus zorgeloze dag te maken, zoals reeds het geval is in grote delen van Parijs.\n\nDus, beste Elke, als minister van mobiliteit voor Brussel, kan je deze droom voor de stad verwezenlijken, samen met je collega’s? Durf je investeren in het welzijn en de gezondheid van alle Brusselaars, extra ruimte creëren voor mensen om veerkrachtige lokale gemeenschappen te bouwen, zodat we allemaal goed voorbereid zijn op een volgende lockdown en elkaar kunnen helpen en steunen?\n\nAlvast hartelijk dank om ons verzoek in overweging te nemen. Twijfel niet om ons te contacteren als er hulp nodig is.\n	2020-05-22 09:35:48+00	2020-05-22 09:35:48+00	nl	8140ec26fde31bb399b864bc6d40bf16	1	\N	https://pbs.twimg.com/media/EYKbTVhXgAAFD4J?format=jpg&name=large	2020-05-30
64	test-d9c7d04c	test	test	2020-05-25 13:52:06+00	2020-05-25 13:52:06+00	en	50c4cc3a453e00f052d2f7b2129fa0ad	2	\N	\N	\N
65	reponse-dadelheid-byttebier-echevine-de-la-mobilite-77067621	Réponse d'Adelheid Byttebier, échevine de la mobilité	Bonjour,\n \nMerci pour votre e-mail et pour cette initiative. \n\nJe salue personnellement l'appel. Comme vous le savez, en tant qu’échevine Groen, je plaide pour plus d'espace pour les piétons et les cyclistes.\nLe principe des zones résidentielles a donc été appliqué à plusieurs reprises à la Commune. Surtout en cette période exceptionnelle où nous aspirons tous à plus d'espace et de distance. Au sein du Collège, la majorité a fait preuve de beaucoup de discussion (il y avait des pour et des contres) et il a finalement été décidé que le parcours pour joggeurs autour du parc Josaphat serait réalisé. L’avenue des Azalées est devenu résidentielle à partir d’aujourd’hui et la latérale le long du Boulevard Lambermont est interdite à la circulation automobile. En outre, nous faisons un test en fermant plusieurs passages de l’avenue P. Deschanel et de l’avenue Voltaire pour la circulation automobile pour promouvoir cette zone de promenade verte.\nComme la ministre Elke Van den Brandt le décrit dans sa circulaire: ‘Chaque Commune choisit ses propres interventions : quartier résidentiel, rue cyclable ou autre’. Schaerbeek figure sur la liste des Communes qui y ont répondu.\n \nComme vous le savez, la redistribution de l’espace publique est un choix de la Commune. Nous travaillons à partir du cadre régional plus large de Good Move.\nMais avant que des instructions top down ne soient émises, nous commençons déjà ici notre plan de mobilité local.\nPour les rues cyclables, nous travaillons à partir du cadre Bypad où nous surveillons toutes sortes d'interventions, construisons des itinéraires communales et régionales (ICC et ICR) et proposons des nouveaux objectifs pour cette année.\nLe Schaerbeek Info a une section permanente qui emmène un public plus large à cette nouvelle vision de la mobilité qui part du principe de STOP (stappers, trappers, openbaar vervoer, privévervoer).\nCe sont des projets à long terme sur lesquels nous travaillons de manière approfondie et avec une vision à long terme.\n \nLes temps de Covid-19 offre des nouvelles opportunités : découvrons nos quartiers à pied, à la marche ou à vélo. Il y a également une prise de conscience croissante que l'espace public sera encore plus important cet été. Notre Commune sera la destination des vacances pour beaucoup. En interne, un nouveau groupe de travail Covid-19 a été mis en place sur le thème de l’espace public pour les enfants et les jeunes. Oui, l’été 2020 se prépare.\nOn va étudier la possibilité des zones vertes, des zones résidentielles et des rues réservées aux jeux. Je suis consciente que ça prend du temps mais nous voulons travailler avec soin et avec une vision globale sur des quartiers sûres et agréables à Schaerbeek.\n \nPour l'instant, je ne peux pas répondre immédiatement à votre demande de faire d’une grande partie de Schaarbeek une zone 20 comme le cœur de Bruxelles-ville mais beaucoup d’autres projets voient le jour.\nPartant de la même conviction, on peut contribuer ou bien avec la force des citoyens, ou bien avec la force politique. C’est un plaisir de voir combien de citoyens s’engagent. Ça donne de l’énergie.\n \nBien à vous,\nMet vriendelijke groeten,\n \nAdelheid BYTTEBIER\nSCHEPEN | ECHEVINE\nMOBILITEIT EN NEDERLANDSTALIG ONDERWIJS,  CULTUUR EN JEUGD | MOBILITÉ ET ENSEIGNEMENT, CULTURE ET JEUNESSE NEERLANDOPHONES\nGemeentehuis | Hôtel Communal • Colignonplein| Place Colignon	2020-05-15 10:12:20+00	2020-05-28 10:12:20+00	en	0cb9df7ae7cee5aa2305b0ad37ae7cda	\N	22	\N	\N
61	lettre-ouverte-a-elke-van-den-brandt-dimanches-sans-voiture-cet-ete-a-bruxelles-ebf9bf61	Open letter to Elke Van Den Brandt: Sundays Without Cars this Summer in Brussels	Dear Elke Van Den Brandt,\n\nWe, citizens of Brussels, kindly ask you to make Sunday Without Cars every Sunday at least till the end of September. \n\nThe first reason for this request is that with the easing of the lockdown, traffic has been picking back up outside of the city center and the streets are no longer safe and welcoming for soft mobility. Biking families, kids but also all those that try to bike for the first time in the city don’t feel safe and end up taking their car back. Sundays without cars will give many people the opportunity to experience the city from the comfort of a bike saddle without stress. \n\nThe second reason to ask for this, is that we need to prepare. The holidays are coming up and many people will be staying home, and there is a high chance of the virus coming back after the summer. Carfree streets every Sunday will enable people to plan and organise (holiday) activities in front of their front door. Neighbors will meet again and it will strengthen our local communities all around Brussels. \n\nBrussels has already successfully organised Sundays without cars in the past. Its residents and visitors already know how it works and how it positively impacted their wellbeing. We simply ask you to make every Sunday carfree and thus carefree, like it is already the case in many parts of Paris, at least until the end of the summer.\n\nSo dear Elke, as minister for the mobility in Brussels, together with your colleagues, can you make this happen? This is about the wellbeing and the health of all citizens in Brussels, and about giving us the space to recreate community and local resilience so that when the next lockdown happens, we will be more able to help and support each other. \n\nThank you for your consideration and your answer. Please do not hesitate to let us know how we can help you make this happen.	2020-05-22 09:35:48+00	2020-05-22 09:35:48+00	en	8140ec26fde31bb399b864bc6d40bf16	1	\N	https://pbs.twimg.com/media/EYKbTVhXgAAFD4J?format=jpg&name=large	2020-05-30
22	open-letter-to-the-city-of-schaerbeek-give-priority-to-pedestrians-runners-and-bicycles-54952bee	Open letter to the commune of Schaerbeek: give priority to pedestrians, runners and bicycles	We are not against cars. They do have their utility. But why privatise most of the public space in our commune for those cars that make our streets quite dangerous for our kids? Can’t we share this public space?\n\nThe World Health Organization has recommended in their new technical guidance of 21 April: “Whenever feasible, consider riding bicycles or walking to move yourself during the COVID-19 outbreak.“\n\nThe city of Brussels understood that and decided to limit speed to 20km/h within the pentagon and allow pedestrians, runners, bicycles to freely use the public roads. Cars can drive but very carefully as they don’t have the priority anymore. Once those cars reach a large avenue, they can again have priority and drive freely.\n\nWe are asking you to apply the same rule in the street of Schaerbeek that are already limited to 30km/h.\n\nLet’s put back life and citizens in the center of our neighbourhoods and of our commune 🌱 😊	2020-04-30 22:41:11+00	2020-04-30 22:41:11+00	en	8140ec26fde31bb399b864bc6d40bf11	\N	\N	\N	2020-05-30
66	open-letter-to-the-city-of-schaerbeek-give-priority-to-pedestrians-runners-and-bicycles-54952bee	Lettre ouverte à la commune de Schaerbeek	On n’est pas contre la voiture. Elle a son utilité. Mais pourquoi privatiser la plus grande majorité de l’espace publique dans notre commune pour ces voitures qui rendent nos rues dangereuses pour nos enfants? Ne pouvons-nous pas partager cet espace publique? \n\nL’Organisation Mondiale de la Santé a elle même recommandé: « à chaque fois que c’est possible, veuillez considérer rouler à vélo ou marcher » dans leur guidance du 21 avril sur comment se déplacer pendant la crise du COVID-19.\n\nLa ville de Bruxelles a bien compris cela et a décidé de limiter à 20km/h la vitesse au sein du pentagone et de permettre aux piétons, coureurs et vélos de librement utiliser la voie publique. Les voitures peuvent circuler mais très prudemment car elles n’ont plus la priorité. Une fois que ces voitures arrivent sur des grands axes, elles peuvent de nouveau avoir la priorité et rouler librement.\n\nOn vous demande d’appliquer la même règle pour les rues de Schaerbeek qui sont déjà limitée à 30km/h.\n\nRemettons la vie et les citoyens au centre de nos quartiers et de notre ville 🌱 😊 	2020-04-30 22:41:11+00	2020-04-30 22:41:11+00	fr	8140ec26fde31bb399b864bc6d40bf11	\N	\N	\N	2020-05-30
67	open-letter-to-the-city-of-schaerbeek-give-priority-to-pedestrians-runners-and-bicycles-54952bee	Open brief aan de gemeente Schaarbeek	We zijn niet tegen auto’s. Ze hebben hun nut. Maar waarom privatiseren we het grootste deel van de openbare ruimte in onze gemeente voor deze auto’s die onze straten vrij gevaarlijk maken voor kinderen? Kunnen we deze ruimte niet delen?\n\nDe Wereld Gezondheidsorganisatie raadt  in haar richtlijnen van 21 april iedereen aan: ‘Wanneer haalbaar, overweeg dan om te fietsen of te wandelen om je te verplaatsen tijden de COVID-19 uitbraak.’\n\nDe stad Brussel heeft dit al begrepen, en heeft beslist om de snelheid te beperken to 20km per uur binnen de Vijfhoek, om voetgangers, lopers, fietsers de publieke ruimte vrij te kunnen laten gebruiken. Auto’s kunnen er rijden, maar zeer voorzichtig, omdat ze er geen prioriteit meer krijgen. Eens de auto’s een grotere laan of boulevard bereiken, krijgen ze weer prioriteit en kunnen ze weer vrij sneller rijden.\n\nWe vragen jullie om dezelfde regeling toe te passen in de straten van Schaarbeek die nu al een snelheidsbeperking van 30km per uur hebben. \n\nLaten we buurtleven en mensen weer in het centrum van onze buurten en onze gemeente zetten.  🌱 😊	2020-04-30 22:41:11+00	2020-04-30 22:41:11+00	nl	8140ec26fde31bb399b864bc6d40bf11	\N	\N	\N	2020-05-30
69	reponse-dadelheid-byttebier-echevine-de-la-mobilite-77067621	Réponse d'Adelheid Byttebier, échevine de la mobilité	Bonjour,\n \nMerci pour votre e-mail et pour cette initiative. \n\nJe salue personnellement l'appel. Comme vous le savez, en tant qu’échevine Groen, je plaide pour plus d'espace pour les piétons et les cyclistes.\nLe principe des zones résidentielles a donc été appliqué à plusieurs reprises à la Commune. Surtout en cette période exceptionnelle où nous aspirons tous à plus d'espace et de distance. Au sein du Collège, la majorité a fait preuve de beaucoup de discussion (il y avait des pour et des contres) et il a finalement été décidé que le parcours pour joggeurs autour du parc Josaphat serait réalisé. L’avenue des Azalées est devenu résidentielle à partir d’aujourd’hui et la latérale le long du Boulevard Lambermont est interdite à la circulation automobile. En outre, nous faisons un test en fermant plusieurs passages de l’avenue P. Deschanel et de l’avenue Voltaire pour la circulation automobile pour promouvoir cette zone de promenade verte.\nComme la ministre Elke Van den Brandt le décrit dans sa circulaire: ‘Chaque Commune choisit ses propres interventions : quartier résidentiel, rue cyclable ou autre’. Schaerbeek figure sur la liste des Communes qui y ont répondu.\n \nComme vous le savez, la redistribution de l’espace publique est un choix de la Commune. Nous travaillons à partir du cadre régional plus large de Good Move.\nMais avant que des instructions top down ne soient émises, nous commençons déjà ici notre plan de mobilité local.\nPour les rues cyclables, nous travaillons à partir du cadre Bypad où nous surveillons toutes sortes d'interventions, construisons des itinéraires communales et régionales (ICC et ICR) et proposons des nouveaux objectifs pour cette année.\nLe Schaerbeek Info a une section permanente qui emmène un public plus large à cette nouvelle vision de la mobilité qui part du principe de STOP (stappers, trappers, openbaar vervoer, privévervoer).\nCe sont des projets à long terme sur lesquels nous travaillons de manière approfondie et avec une vision à long terme.\n \nLes temps de Covid-19 offre des nouvelles opportunités : découvrons nos quartiers à pied, à la marche ou à vélo. Il y a également une prise de conscience croissante que l'espace public sera encore plus important cet été. Notre Commune sera la destination des vacances pour beaucoup. En interne, un nouveau groupe de travail Covid-19 a été mis en place sur le thème de l’espace public pour les enfants et les jeunes. Oui, l’été 2020 se prépare.\nOn va étudier la possibilité des zones vertes, des zones résidentielles et des rues réservées aux jeux. Je suis consciente que ça prend du temps mais nous voulons travailler avec soin et avec une vision globale sur des quartiers sûres et agréables à Schaerbeek.\n \nPour l'instant, je ne peux pas répondre immédiatement à votre demande de faire d’une grande partie de Schaarbeek une zone 20 comme le cœur de Bruxelles-ville mais beaucoup d’autres projets voient le jour.\nPartant de la même conviction, on peut contribuer ou bien avec la force des citoyens, ou bien avec la force politique. C’est un plaisir de voir combien de citoyens s’engagent. Ça donne de l’énergie.\n \nBien à vous,\nMet vriendelijke groeten,\n \nAdelheid BYTTEBIER\nSCHEPEN | ECHEVINE\nMOBILITEIT EN NEDERLANDSTALIG ONDERWIJS,  CULTUUR EN JEUGD | MOBILITÉ ET ENSEIGNEMENT, CULTURE ET JEUNESSE NEERLANDOPHONES\nGemeentehuis | Hôtel Communal • Colignonplein| Place Colignon	2020-05-15 10:12:20+00	2020-05-28 10:12:20+00	fr	0cb9df7ae7cee5aa2305b0ad37ae7cda	\N	66	\N	\N
70	reponse-dadelheid-byttebier-echevine-de-la-mobilite-77067621	Réponse d'Adelheid Byttebier, échevine de la mobilité	Bonjour,\n \nMerci pour votre e-mail et pour cette initiative. \n\nJe salue personnellement l'appel. Comme vous le savez, en tant qu’échevine Groen, je plaide pour plus d'espace pour les piétons et les cyclistes.\nLe principe des zones résidentielles a donc été appliqué à plusieurs reprises à la Commune. Surtout en cette période exceptionnelle où nous aspirons tous à plus d'espace et de distance. Au sein du Collège, la majorité a fait preuve de beaucoup de discussion (il y avait des pour et des contres) et il a finalement été décidé que le parcours pour joggeurs autour du parc Josaphat serait réalisé. L’avenue des Azalées est devenu résidentielle à partir d’aujourd’hui et la latérale le long du Boulevard Lambermont est interdite à la circulation automobile. En outre, nous faisons un test en fermant plusieurs passages de l’avenue P. Deschanel et de l’avenue Voltaire pour la circulation automobile pour promouvoir cette zone de promenade verte.\nComme la ministre Elke Van den Brandt le décrit dans sa circulaire: ‘Chaque Commune choisit ses propres interventions : quartier résidentiel, rue cyclable ou autre’. Schaerbeek figure sur la liste des Communes qui y ont répondu.\n \nComme vous le savez, la redistribution de l’espace publique est un choix de la Commune. Nous travaillons à partir du cadre régional plus large de Good Move.\nMais avant que des instructions top down ne soient émises, nous commençons déjà ici notre plan de mobilité local.\nPour les rues cyclables, nous travaillons à partir du cadre Bypad où nous surveillons toutes sortes d'interventions, construisons des itinéraires communales et régionales (ICC et ICR) et proposons des nouveaux objectifs pour cette année.\nLe Schaerbeek Info a une section permanente qui emmène un public plus large à cette nouvelle vision de la mobilité qui part du principe de STOP (stappers, trappers, openbaar vervoer, privévervoer).\nCe sont des projets à long terme sur lesquels nous travaillons de manière approfondie et avec une vision à long terme.\n \nLes temps de Covid-19 offre des nouvelles opportunités : découvrons nos quartiers à pied, à la marche ou à vélo. Il y a également une prise de conscience croissante que l'espace public sera encore plus important cet été. Notre Commune sera la destination des vacances pour beaucoup. En interne, un nouveau groupe de travail Covid-19 a été mis en place sur le thème de l’espace public pour les enfants et les jeunes. Oui, l’été 2020 se prépare.\nOn va étudier la possibilité des zones vertes, des zones résidentielles et des rues réservées aux jeux. Je suis consciente que ça prend du temps mais nous voulons travailler avec soin et avec une vision globale sur des quartiers sûres et agréables à Schaerbeek.\n \nPour l'instant, je ne peux pas répondre immédiatement à votre demande de faire d’une grande partie de Schaarbeek une zone 20 comme le cœur de Bruxelles-ville mais beaucoup d’autres projets voient le jour.\nPartant de la même conviction, on peut contribuer ou bien avec la force des citoyens, ou bien avec la force politique. C’est un plaisir de voir combien de citoyens s’engagent. Ça donne de l’énergie.\n \nBien à vous,\nMet vriendelijke groeten,\n \nAdelheid BYTTEBIER\nSCHEPEN | ECHEVINE\nMOBILITEIT EN NEDERLANDSTALIG ONDERWIJS,  CULTUUR EN JEUGD | MOBILITÉ ET ENSEIGNEMENT, CULTURE ET JEUNESSE NEERLANDOPHONES\nGemeentehuis | Hôtel Communal • Colignonplein| Place Colignon	2020-05-15 10:12:20+00	2020-05-28 10:12:20+00	nl	0cb9df7ae7cee5aa2305b0ad37ae7cda	\N	67	\N	\N
71	lettre-ouverte-a-la-commune-de-saint-josse-ten-noode-5f9076a5	Open brief aan de gemeente Sint-Joost-ten-Node	Op 13 april vroeg burgercollectief 1210/0 aan de burgemeester van Sint-Joost-ten-Node om tijdelijk een aantal straten autovrij te maken, zodat de Sint-Joostenaren zich op een veilige manier en volgens het principe van ‘social distancing’ in de publieke ruimte kunnen verplaatsen.\n\nWe zijn intussen beland in de eerste fase van een versoepeling van de maatregelen, waarbij steeds meer mensen zich in de publieke ruimte begeven. Er wordt nog steeds van hen verwacht dat zij zich houden aan de regels van ‘social distancing’, maar door de smalle stoepen in onze dichtbevolkte gemeente is het op veel plaatsen haast onmogelijk om mensen te kruisen op een afstand van anderhalve meter.\n\nHet Brussels Hoofdstedelijk Gewest lanceerde bij alle gemeenten het voorstel om een woonerf in te richten om meer ruimte te creëren op straat. In zo’n woonerf mogen nog auto’s rijden, maar hebben actieve weggebruikers voorrang en is de maximumsnelheid voor de voertuigen 20km per uur. Eens de auto’s een grotere laan of boulevard bereiken, krijgen ze weer voorrang. Onder meer de Stad Brussel besliste om de hele Vijfhoek om te vormen tot een woonerf en onderzoekt eveneens de mogelijkheid om bepaalde parkeerplaatsen om te vormen tot tijdelijke terrassen om de horeca te steunen. In heel wat gemeenten wordt gehoor gegeven aan de oproep van het Gewest: intussen hebben 16 van de 19 gemeenten plannen voor een tijdelijke heraanleg van straten.\n\nWe vragen aan de gemeente Sint-Joost-ten-Node om ook op de oproep van het Gewest in te gaan. Afstand houden is volgens de experten nog steeds de meest effectieve manier om de verspreiding van het coronavirus tegen te gaan. Meer ruimte geven op straat vergemakkelijkt dit.\n\nWe vragen ook aan de gemeente om de nodige maatregelen te nemen om wildparkeren op de voetpaden en fietspaden tegen te gaan, zodat de veiligheid van de actieve weggebruikers gegarandeerd wordt. \n\nTot slot vragen we om de parken die momenteel gesloten zijn terug open te stellen voor de bewoners van Sint-Joost, die vaak niet over een buitenruimte beschikken. Dit kan op een gecontroleerde manier, waarbij telkens een beperkt aantal mensen wordt toegelaten. Het zou ook interessant zijn om te bekijken hoe speelpleinen gecontroleerd opengesteld kunnen worden, bijvoorbeeld door een systeem waarbij telkens 1 gezin voor een halfuur of uur gebruik kan maken van de buitenruimte. Er zijn ongetwijfeld organisaties in onze gemeente die een rol willen opnemen in zo een project van gecontroleerde openstelling.\n\nLaten we aan de inwoners van Sint-Joost de ruimte geven die ze nodig hebben om zich op een veilige manier te kunnen verplaatsen in de publieke ruimte. Laat ons inzetten op een eerlijke verdeling van de publieke ruimte en zo de leefbaarheid in onze gemeente vergroten.\n \n\n1210/0 collectif de citoyens-burgercollectief\nFabrik\nGRACQ Saint-Josse\nTravertsons wijkcomité-comité de quartier\nRéseau IDée \nInstitut Kurde/Koerdisch Instituut\nMaison de Santé Atlas\nMaison de Santé Potager	2020-05-12 20:59:45+00	2020-05-12 20:59:45+00	nl	8140ec26fde31bb399b864bc6d40bf18	\N	\N	\N	\N
72	lettre-ouverte-a-elke-van-den-brandt-dimanches-sans-voiture-cet-ete-a-bruxelles-ebf9bf61	رسالة مفتوحة إلى   \nElke Van Den  Brandt\n: أيام الأحد بدون سيارة هذا الصيف في بروكسل	Elke Van Den Brandt ، عزيزي  نحن مواطني بروكسل ، نرجو منك أن تجعل أيام الأحد خالية من السيارات ، حتى نهاية سبتمبر على الأقل.  السبب الأول لهذا الطلب هو أنه منذ بدء عملية إزالة التلوث ، استؤنفت حركة المرور خارج وسط المدينة ولم تعد الشوارع آمنة ومرحبة للتنقل النشط. العائلات على الدراجات ، والأطفال ، ولكن أيضًا جميع أولئك الذين يبدأون ركوب الدراجات في المدينة لأول مرة لا يشعرون بالاطمئنان وينتهي الأمر بالكثير منهم بإخراج سيارتهم من الرغم من سلامتهم. ستمنح أيام الأحد الخالية من السيارات الفرصة لأكبر عدد ممكن من الناس (لإعادة) اكتشاف المدينة براحة من سرج دراجة وبدون ضغط. سيشجع هذا الأشخاص على استخدام دراجاتهم أكثر ، حتى في أيام الأسبوع.  السبب الثاني لهذا الطلب هو أننا بحاجة إلى الاستعداد. العطل قادمة وسيبقى الكثير من الناس في المنزل ، وهناك احتمال كبير أن يعود الفيروس بعد الصيف. إن امتلاك كل يوم أحد بدون سيارات سيسمح للأشخاص بالتخطيط والتنظيم لأنشطة (الإجازة) خارج أبوابهم الأمامية. سوف يجتمع الجيران مرة أخرى وهذا سيعزز مجتمعاتنا المحلية عبر بروكسل.  في الماضي ، نظمت بروكسل بنجاح أيام الأحد الخالية من السيارات. سكانها وزوارها يعرفون بالفعل كيف يعمل وكيف كان له تأثير إيجابي على رفاههم. نطلب منك ببساطة العودة كل يوم أحد بدون سيارة وبالتالي بدون ضغط ، كما هو الحال بالفعل في العديد من مناطق باريس ، على الأقل حتى  لذا عزيزي إلك ، بصفتك وزير التنقل في بروكسل ، هل يمكنك مع زملائك أن تجعل هذا حقيقة؟ إنها تتعلق برفاهية وصحة جميع مواطني بروكسل. امنحنا المساحة لإعادة تكوين المرونة المحلية حتى نتمكن خلال الفترة التالية من تقديم المساعدة والدعم لبعضنا البعض بشكل أفضل.  شكرا لك على اهتمامك واستجابتك. أخبرنا كيف يمكننا مساعدتك للوصول إلى هناك.	2020-06-04 00:00:00+00	2020-06-04 00:00:00+00	ar	8140ec26fde31bb399b864bc6d40bf16	1	\N	https://pbs.twimg.com/media/EYKbTVhXgAAFD4J?format=jpg&name=large	2020-05-30
\.


                                                                                                                                                      3897.dat                                                                                            0000600 0004000 0002000 00002453030 13666255372 0014312 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	4	Xavier Damman	Brussels	entrepreneur	Open Collective	319961ae7ea0f36b62da9eafda3100e5	f	2020-04-08 14:08:55+00	2020-04-08 14:08:55+00	\N
2	5	Xavier Damman	Brussels	Entrepreneur	All for climate	5946ecae6b9276091bbf667af92c985c	f	2020-04-09 12:29:36+00	2020-04-09 12:29:36+00	\N
3	6	Xavier Damman	Brussels	entrepreneur	All for Climate	2252ebef372ffea7396f0975864b025c	f	2020-04-09 22:56:12+00	2020-04-09 22:56:12+00	\N
4	11	Xavier Damman	brussels	entrepreneur	All for climate	5b390fc48e17c30f20b66c5f88fa44f1	f	2020-04-10 14:37:00+00	2020-04-10 14:37:00+00	\N
5	11	Xavier Damman	brussels	entrepreneur	data.be	27de8cecf6b4762154989c908c5d0df9	f	2020-04-10 14:46:10+00	2020-04-10 14:46:10+00	\N
6	12	Xavier Damman	Brussels	Entrepreneur	Open Collective	d57914e5fd3095b5be52def10a27dd08	f	2020-04-10 12:49:09+00	2020-04-10 12:49:09+00	\N
7	13	Yara	\N	\N	Extinction Rebellion Youth Belgium	f632f01d6bf3a04ca185982245536ac4	f	2020-04-10 13:49:38+00	2020-04-10 13:49:38+00	\N
258	22	Sofie Braems	Schaarbeek	Nurse	Upc kortenberd	e08e182096305d491262d6de3214fe54	f	2020-05-02 14:55:22+00	2020-05-02 14:55:22+00	\N
9	14	Yara 	\N	\N	Extinction Rebellion Youth Belgium	ccb9b3c86319ef0fb6a18a1805fd912e	f	2020-04-10 13:53:52+00	2020-04-10 13:53:52+00	\N
8	14	Yara 	\N	\N	Extinction Rebellion Youth Belgium	71747f1f1852d649885a9b796d9e9f7c	t	2020-04-10 13:53:52+00	2020-04-10 13:55:19+00	\N
10	12	Xavier Damman	brussels	entrepreneur	data.be	14587c17e9e0273625ffb51f34994d40	f	2020-04-10 17:29:09+00	2020-04-10 17:29:09+00	\N
11	10	Xavier Damman	\N	entrepreneur	\N	46943b4dfafda1dc4689baf2f36008bd	f	2020-04-10 17:30:17+00	2020-04-10 17:30:17+00	\N
20	14	\N	\N	\N	\N	2e1de92a2e0cf819b7c1ef5704a808c1	f	2020-04-10 18:02:50+00	2020-04-10 18:02:50+00	\N
22	14	Xavier Damman	Schaerbeek	rebel	XR Belgium	2aa6dd5008efc2235b4cd42a01b68bca	t	2020-04-10 16:33:17+00	2020-04-10 16:33:36+00	\N
23	14	Leen Schelfhout	Schaerbeek 	Facilitator&activist	AllForClimate 	5434477dc445c4c1e465346cd419d759	t	2020-04-11 12:07:35+00	2020-04-11 12:07:53+00	\N
24	14	Joeri Van Deuren	Mechelen	Rebel	XR	01127d901fba3438345656d46f65981b	t	2020-04-11 12:12:13+00	2020-04-11 12:14:02+00	\N
25	14	Nele	Antwerp	Activist	XR, By2020WeRiseUp	127df480a5a419e66cacb695be6020e7	t	2020-04-11 12:48:52+00	2020-04-11 12:49:19+00	\N
27	14	Martin 	Zaventem 	\N	Extinction rébellion youth	fe3c76a55bab9b1db67bd6cbd0a3de06	t	2020-04-11 12:53:25+00	2020-04-11 12:54:26+00	\N
26	14	Dani Heyvaert 	Melsbroek	\N	Citizen	c0de7a848c199c2c748ae6298e1449f3	t	2020-04-11 12:52:47+00	2020-04-11 13:00:50+00	\N
33	14	Tomas 	Tienen 	Zeer Bezorgde Burger	Privé 	591badf67fe7ba11d7a9820693dfbca8	f	2020-04-11 13:07:51+00	2020-04-11 13:07:51+00	\N
29	14	Paul Van Santvoort	Brussel	Gepensioneerd	\N	d3843ab14af1ef6d6a4513c3d99c557d	t	2020-04-11 12:58:39+00	2020-04-11 13:07:55+00	\N
34	14	Simon Ruts 	Antwerp	Model	Extiction Rebellion Youth, Students For Climate 	24ba7dbd562b49ecc0ca93a03bfdc152	f	2020-04-11 13:08:20+00	2020-04-11 13:08:20+00	\N
35	14	Ilse Wauters	Kontich	\N	Climate Express 	04cb2af0ce6cadda5f4be4415bf5fb63	f	2020-04-11 13:08:43+00	2020-04-11 13:08:43+00	\N
32	14	Johanna	Ghent	teacher	Teachers for Climate	fe239f59ca25d436932a84c0db0a0d9d	t	2020-04-11 13:06:46+00	2020-04-11 13:10:52+00	\N
37	14	Luc Van Malder 	Brussel 	bediende	Steward Youth For Climate	4dc3541394c9efb3d053cc11fc228112	t	2020-04-11 13:17:53+00	2020-04-11 13:18:12+00	\N
38	14	Jens pieters	Berchem	\N	\N	0926a109dc31fcedff711cf5feaa807d	t	2020-04-11 13:56:39+00	2020-04-11 13:56:53+00	\N
41	14	Robbe 	Lier 	\N	Burger	9c883abca31fbab63d9737d59ff62e23	t	2020-04-11 14:31:10+00	2020-04-11 14:31:29+00	\N
40	14	Pieter Van Dorsselaer 	Waasmunster	Groene jongen	Youth for climate 	a3a7676e07c863891e7bdceee04d1fde	t	2020-04-11 14:13:15+00	2020-04-11 14:33:38+00	\N
30	14	Nand	\N	\N	Climbers for future Belgium	e7917b4d18400c46b7a2b81a62142a01	t	2020-04-11 13:01:07+00	2020-04-11 14:39:47+00	\N
43	14	Aam	Antwerp	Student	\N	6b42c41e6ea14a8404ac45d1005fa3a9	f	2020-04-11 15:02:54+00	2020-04-11 15:02:54+00	\N
39	14	Veerle Duflou	Antwerpen	tolk	\N	cfcc18b9ea9b81b9a62217bb663d724c	t	2020-04-11 14:08:51+00	2020-04-11 15:07:43+00	\N
45	14	Smet Martien	Zoersel	Boekhoudster	\N	94efd0dbca568f0e1e5bc882fe662727	t	2020-04-11 15:10:06+00	2020-04-11 15:10:46+00	\N
46	14	Frank Delmelle 	Antwerp	Teacher	\N	9585582828cb5b47268bc89119b00973	t	2020-04-11 16:05:40+00	2020-04-11 16:21:36+00	\N
47	14	Hedwig	Kessel-Lo	\N	\N	817b1c308f832417ccb89c747ec5548a	t	2020-04-11 16:55:20+00	2020-04-11 16:55:39+00	\N
48	14	Nick Kasberg	Tremelo	Begeleider jeugdzorg	\N	65886d6268e0ae072a52efaa8cd891c4	f	2020-04-11 17:18:15+00	2020-04-11 17:18:15+00	\N
49	14	Laura	\N	\N	\N	3a573534fb73704f6e1c6ab7166e50e4	t	2020-04-11 17:52:11+00	2020-04-11 19:04:16+00	\N
50	14	Wannes Magits	Antwerpen 	Citizen	wannesmagits@gmail.com	0383023ce4b51591161a22d0b68fdf80	t	2020-04-11 19:15:17+00	2020-04-11 19:15:47+00	\N
51	14	Katelijne de vis	Antwerp	Teacher	\N	721df3bd785414b23b5c2d2f0d30aa27	f	2020-04-11 19:48:00+00	2020-04-11 19:48:00+00	\N
52	14	Steven	Boechout 	\N	\N	b45c32a43a68c080912bdb3a6a9a4bb8	t	2020-04-11 20:16:55+00	2020-04-11 20:17:26+00	\N
53	14	Erik Verhulst	Hoboken	\N	\N	9e090e6b104923ec493fdb9f5d2f2b40	f	2020-04-11 20:24:01+00	2020-04-11 20:24:01+00	\N
54	14	Karolien vdn	Antwerp	Activist	Climate Express	4c4756983f5f73955284779caad133ae	f	2020-04-11 21:35:00+00	2020-04-11 21:35:00+00	\N
55	14	Geert Calis	Evergem	docent	Activist	8948b18877baaaa13ffbceb7311fef1a	t	2020-04-11 21:40:15+00	2020-04-11 21:40:30+00	\N
56	14	Karolien VdN	Antwerp	Burger	Climate Express	3f726ae748d72199687da5baf7bf8f66	t	2020-04-11 21:40:22+00	2020-04-11 21:41:09+00	\N
57	14	lieve bouwens	BORGERHOUT (ANTWERPEN)	\N	1970	ec93dfe19e9be2153ee5f299bcde854e	t	2020-04-12 03:02:23+00	2020-04-12 03:03:05+00	\N
58	14	Mario Conjaerts	Borgerhout	Artist	\N	e438f3baf906888c1f04caaf6f09163c	f	2020-04-12 08:30:49+00	2020-04-12 08:30:49+00	\N
59	14	Julia	Antwerpen	activist	\N	78c890cb4c570bbaa2805d8d624d6fac	t	2020-04-12 08:47:19+00	2020-04-12 08:47:58+00	\N
44	14	Cato Van Den Kerchove	Dessel	Student	Students for Climate Leuven	127ef6915e3963173fcb815e1ee8954c	t	2020-04-11 15:04:06+00	2020-04-12 09:28:45+00	\N
60	14	Anne Marescaux	Ronse	\N	\N	31b5f04ec7f0f9934b959d011cddcd36	f	2020-04-12 10:37:11+00	2020-04-12 10:37:11+00	\N
61	14	Arne Van Den Kerchove	Leuven	Volunteer S4C Leuven	Students for Climate Leuven	7520515fd05f95d968e7cbcdb5f32859	t	2020-04-12 16:36:23+00	2020-04-12 16:37:12+00	\N
62	14	Marijke Deleu	Antwerpen	\N	\N	16de3e780e8332f0b4ee9ef1cc3970a8	f	2020-04-12 16:59:30+00	2020-04-12 16:59:30+00	\N
63	14	Elsje Claessens	Antwerpen	\N	\N	577dee8a8694807f1c027d874ec3eae8	f	2020-04-12 18:54:08+00	2020-04-12 18:54:08+00	\N
64	14	Lies 	Dessel	Teacher	Teachers for Climate	af3bfbcfcd3bf11426f9fce2a21e4e40	t	2020-04-12 20:04:19+00	2020-04-12 20:08:05+00	\N
65	14	Bruno Croes	Antwerp	Illustrator	Brun Croes BVBA	0c6ec9cee5dca950d425454bcd3c4c9e	t	2020-04-13 08:09:47+00	2020-04-13 08:10:02+00	\N
66	14	Christoph Wauters	Deurne	ICT-coördinator	\N	8e25ec265cc05b0fbeecc41b52183baa	t	2020-04-13 08:30:24+00	2020-04-13 08:32:17+00	\N
67	14	Hanno Van Den Kerchove	Dessel	citizen	XR	8a25d17b959ad3be4e4327d41e53737d	t	2020-04-14 05:13:31+00	2020-04-14 05:14:46+00	\N
68	14	Caitlin De Muer	Brussel	nationaal kernteam	Hart boven Hard	fd5a837c5d2c4023792d67a2473fec44	t	2020-04-14 09:03:52+00	2020-04-14 09:04:38+00	\N
69	20	test	\N	\N	\N	f80e68f427baaaedbf5a392fc0ffd0a9	f	2020-04-19 20:54:01+00	2020-04-19 20:54:01+00	\N
70	21	Kristoffer	Copenhagen	Human	Naive Studio	6595861d2b9591b073b33228c64cc875	t	2020-04-25 11:55:01+00	2020-04-25 11:55:14+00	\N
71	14	Johannes Lievens	Antwerpen	Student	Extinction Rebellion 	0ee62ed6a44f335c71fbab0c4b3f9eb8	t	2020-04-27 06:33:34+00	2020-04-27 06:33:55+00	\N
72	22	Xavier Damman	Schaerbeek	Citizen	\N	41e2db2a43a09d9659b8a7a59bed4d87	t	2020-04-30 22:43:15+00	2020-04-30 22:49:59+00	\N
105	22	Leen Schelfhout	Schaarbeek 	Citizen 	\N	a96665b3f2dc6c3e4c8ca3ea035935bb	t	2020-05-01 06:18:52+00	2020-05-01 06:19:35+00	\N
140	22	Azer Nessim	Schaerbeek 	\N	\N	11a9af643a87f98e471e4be144e3c08f	t	2020-05-02 10:25:23+00	2020-05-02 10:25:39+00	\N
141	22	Bram Dewolfs	1000	Placemaker	Urban Foxes	fef4ab5860afcddf96a07d4ab6a35ea6	f	2020-05-02 10:27:45+00	2020-05-02 10:27:45+00	\N
107	22	Geert van Waeg	Sint Lambrechts Woluwe	president & citizen	johanna.be, vzw	d8755adddb779743590f488741786bd5	t	2020-05-01 09:03:45+00	2020-05-01 09:04:03+00	\N
767	22	Wouter 	Brussel	B2B fiets leasing	\N	eaeb3190c98c5ed3f9c9ab586b1aaad2	f	2020-05-09 07:45:30+00	2020-05-09 07:45:30+00	\N
108	22	Julien Gordenne	Schaerbeek 	IT consultant	Citizen	45707589c190bc6042aeaf577216fb3a	t	2020-05-01 09:29:36+00	2020-05-01 09:35:03+00	\N
131	22	Julian Van Remoortel	Schaerbeek	Citizen	\N	bcb401af09f344dc7809261459268744	t	2020-05-02 09:50:06+00	2020-05-04 09:35:57+00	\N
143	22	Julia Eckhardt	Schaarbeek	cultural worker	\N	c50f159e1b56313d798928a9f5c99f52	t	2020-05-02 10:30:13+00	2020-05-02 10:30:40+00	\N
259	22	Suzanne Hana	Schaarbeek	\N	\N	1a1397831b29de8b1cae4716f7a5cee9	t	2020-05-02 14:55:58+00	2020-05-02 14:56:59+00	\N
111	22	Tim Cassiers	Schaarbeek	Inhabitant	\N	1d0dd3173f0d1d7fb852d2aff2ae5d99	t	2020-05-01 09:47:51+00	2020-05-01 09:48:10+00	\N
109	22	Elanor Gordenne	Schaerbeek	Etudiante 	Citoyenne 	39efbd6e6fdeb46bc21d4987bfa921d5	t	2020-05-01 09:43:27+00	2020-05-01 09:49:17+00	\N
112	22	Nicolas Moreau	Schaerbeek	\N	Citoyen	846ab6b5b8a9e8374496edd882295f46	f	2020-05-01 10:44:03+00	2020-05-01 10:44:03+00	\N
144	22	Thomas Anciaux	Evere	Student	\N	f3d14580e2fff5ef5c09eed6333d6590	t	2020-05-02 10:31:49+00	2020-05-02 10:32:28+00	\N
113	22	Djenk Ejup	Schaarbeek	Citizen	\N	d7a6be7b39ff38322ed0071775b39989	t	2020-05-01 10:51:31+00	2020-05-01 10:51:45+00	\N
130	22	Maxime Brasset	Schaerbeek	Citizen	\N	10155a1ec60870a5fed3d5199b98c5ca	t	2020-05-02 08:06:13+00	2020-05-02 18:01:20+00	\N
114	22	Marta Bergman	Schaerbeek	cinéaste	citizen	c6cca87371fa19f8392e19dbe526116b	t	2020-05-01 10:53:26+00	2020-05-01 10:54:22+00	\N
142	22	Louisa De Jonge	Brussels	Kid	\N	cc82617a49ea3459b732fc2025cf8d47	t	2020-05-02 10:28:45+00	2020-05-03 17:02:35+00	\N
115	22	Jasmijn Van Raemdonck	Schaarbeek	Citizen	\N	67c5f16086d1160e36dc48fd43ebeeca	t	2020-05-01 11:55:28+00	2020-05-01 11:57:17+00	\N
146	22	Lisa Tomassini	Schaerbeek	\N	2001	36ce4a04d7f2256a82d7da09e00b8819	t	2020-05-02 10:35:31+00	2020-05-02 10:36:29+00	\N
116	22	Lisanne Abts	Schaerbeek	Citizen	\N	1edb56af6e5e213ce16517a8e1112c5f	t	2020-05-01 12:07:48+00	2020-05-01 12:08:31+00	\N
147	22	Vanluyten Jeannine	Tienen	Huismoeder	\N	cef17817cc35d0bc6280b74fb2d6e8db	f	2020-05-02 10:37:35+00	2020-05-02 10:37:35+00	\N
157	22	Filip Libert	Schaerbeek	Citizen	\N	65e01ab7c415bb6e78ae524334c090e7	t	2020-05-02 11:02:06+00	2020-05-02 18:12:54+00	\N
117	22	François Cibot	Ixelles	Citizen	\N	1bec65da5b5e43a62bc67d386779d686	t	2020-05-01 12:22:27+00	2020-05-01 12:22:48+00	\N
118	22	Vincent Darmstaedter	Rixensart	Employee	Citizen	e73d0396760a7532ec8cbe1e13001317	t	2020-05-01 12:22:34+00	2020-05-01 12:23:05+00	\N
148	22	Frank Vaguener	1000	\N	\N	f9b8e6088e4e30f5be80e91768030743	t	2020-05-02 10:38:37+00	2020-05-02 10:39:13+00	\N
119	22	Marie Christine 	BRUXELLES	\N	\N	4f4c21c80bb3bd368ae28de6843f57c8	t	2020-05-01 13:13:36+00	2020-05-01 13:14:03+00	\N
164	22	Jonas Halkin	1030	Artist	\N	e7f43a2d0c98e143e1b23c93fdfeafb9	t	2020-05-02 11:15:24+00	2020-05-04 10:22:16+00	\N
120	22	Delhaye Kristine	bruxelles	peintre	Mur-muur	fdfbd3dbf813a653f46d07c77974acdb	t	2020-05-01 14:09:49+00	2020-05-01 14:10:13+00	\N
150	22	Gregory Vandendaelen	1030	Indépendant 	\N	7afdbf92b9a4ab90b35739bdadbae4bf	f	2020-05-02 10:42:06+00	2020-05-02 10:42:06+00	\N
121	22	Stef D'Huyvetter	Sint-Pieters-Woluwe	\N	Brussel - Biker   	c0bdd111996ccd89b36c303eb954a33e	t	2020-05-01 15:13:15+00	2020-05-01 15:13:28+00	\N
151	22	bernadette	1030	\N	\N	661cf312163dc0aed16b5769ec88188e	t	2020-05-02 10:42:59+00	2020-05-02 10:43:34+00	\N
123	22	Véronique CHANTRAINE	SCHAERBEEK	\N	\N	bc36d72d0126f67459a95ca9a08308df	t	2020-05-01 15:36:28+00	2020-05-01 15:36:50+00	\N
106	22	Katia Xenophontos	Schaerbeek	Citizen	\N	4f10ea96117b4c75a91b9697948d2546	t	2020-05-01 07:24:39+00	2020-05-01 07:29:15+00	\N
122	22	Poznantek Gaetan	Bruxelles	\N	\N	f3046933caec4f77a2d8b14ecb65c7f5	t	2020-05-01 15:33:23+00	2020-05-01 15:38:16+00	\N
152	22	Hannelore Xhonneux 	Schaarbeek 	Student social work	\N	300d81594978d70c4f9d2f7ef8d316f6	f	2020-05-02 10:44:45+00	2020-05-02 10:44:45+00	\N
124	22	Benoit Gérard	Schaerbeek	Citizen	\N	718c3a490be4df70968ac3ea28019b9e	t	2020-05-01 16:01:22+00	2020-05-01 16:03:38+00	\N
110	22	Gregory Claessens	KOEKELBERG - 1081	Citoyen	\N	bf05cd08826df8dc6cab249d0c1c54b7	t	2020-05-01 09:45:49+00	2020-05-01 17:00:44+00	\N
125	22	Charlotte	Schaarbeek	Citizen	\N	da42984d3b44ad328175475ad213aad2	t	2020-05-01 17:44:07+00	2020-05-01 17:44:26+00	\N
153	22	Dupont B	schaerbeek	citizen	\N	c4f5cd0537dc96b2189d2c38ff036133	t	2020-05-02 10:45:04+00	2020-05-02 10:45:25+00	\N
126	22	Sander gillis	Schaarbeek	VRT	VRT	059d516dacdf5578262ff416ff936e58	t	2020-05-01 18:12:02+00	2020-05-01 18:12:26+00	\N
154	22	Theun Vonckx 	Schaarbeek 	Inwoner	\N	3f0e2a5b71e8110ff1917ed64be535fa	f	2020-05-02 10:46:03+00	2020-05-02 10:46:03+00	\N
127	22	Tim Fabry	Schaarbeek	citizen	\N	98bb8dc92aeb5015cbc799e8fadbc086	t	2020-05-01 21:14:36+00	2020-05-01 21:16:55+00	\N
155	22	Mieke melis	1030	Course organiser	IFCSM	f43c1596302ff857855edabcb5ce5450	f	2020-05-02 10:49:32+00	2020-05-02 10:49:32+00	\N
128	22	Christophe Bernard	Schaerbeek	employee	\N	3d4d27b3f75b6e187c8cd5867250e30d	t	2020-05-01 21:37:47+00	2020-05-01 21:39:25+00	\N
129	22	Linde Maes	Schaarbeek 	Student	\N	4dae59147a2bc5f311996d6aa6ee6577	f	2020-05-02 01:58:25+00	2020-05-02 01:58:25+00	\N
145	22	Mannaert Wauter	Schaarbeek	Auteur	\N	21a8e8d7d58b8a5a181ff3433856f35b	t	2020-05-02 10:33:59+00	2020-05-02 10:50:59+00	\N
133	22	Philippe Van Meerbeeck	Schaarbeek	Lecturer	UGent	de7c05025ac140e8a31bcb631155ef30	t	2020-05-02 10:18:44+00	2020-05-02 10:19:27+00	\N
134	22	Léa Bodossian	Strasbourg	inhabitant	\N	f1bb959a2b998021dc797dbf28c1aed1	f	2020-05-02 10:20:28+00	2020-05-02 10:20:28+00	\N
156	22	Fulya  Toper	Schaarbeek	Citizen	\N	9018e8b538ca1cc0a0c855c5f9cd837e	t	2020-05-02 10:57:12+00	2020-05-02 10:57:23+00	\N
135	22	Pierre Burniat	1030	Citoyen schaerbeekois	Citoyen	e92a5aa12d21b92d32b12f7b436e8f18	t	2020-05-02 10:20:40+00	2020-05-02 10:21:17+00	\N
139	22	Laura Van Meerbeeck	1030	Schaarbeek	\N	772d3ebcbd1394e000495213a8cf8f6e	f	2020-05-02 10:23:14+00	2020-05-02 10:23:14+00	\N
138	22	Mélissa Poucez	Schaerbeek	Citizen	\N	050d7bdf5bf72ee2f02b8b999ebe4a39	t	2020-05-02 10:22:43+00	2020-05-02 10:23:26+00	\N
158	22	Christophe Devue	Schaerbeek	Citizen	\N	0b930d28049995582a7fbb20845d76e3	t	2020-05-02 11:03:19+00	2020-05-02 11:04:21+00	\N
161	22	Joren De Wachter	Schaarbeek	\N	\N	5ae57721e0a301925ca97829a9918113	t	2020-05-02 11:08:53+00	2020-05-02 11:09:07+00	\N
162	22	Caroline Vos	Schaarbeek 	Citizen	\N	6e75d39090bfb329df82f0bb53d0dd9c	t	2020-05-02 11:10:26+00	2020-05-02 11:10:56+00	\N
163	22	Serena	Schaerbeek	Citizen	\N	ec8e327a5425a0bf755f689fa7841d74	t	2020-05-02 11:11:19+00	2020-05-02 11:11:44+00	\N
165	22	Lien Vandamme	Schaarbeek	Citizen	\N	fb82b07a3afa608f01b4e789308def38	t	2020-05-02 11:16:55+00	2020-05-02 11:17:12+00	\N
160	22	Joris Nivelle	Schaarbeek	Citizen	\N	6251838543c4b3f80a761550d9728047	t	2020-05-02 11:08:51+00	2020-05-02 11:58:29+00	\N
159	22	Thomas Van Langendonck 	Schaarbeek	Citizen	\N	29b97d81671449ff9da75425d2fd707d	t	2020-05-02 11:07:12+00	2020-05-02 12:11:13+00	\N
132	22	Olivier Dewit	Schaerbeek	Sales 	\N	b2b86fc97978dbc502cd3fb84c349724	t	2020-05-02 10:17:00+00	2020-05-02 13:53:49+00	\N
137	22	Janssens 	Schaerbeek 	\N	\N	e5f7a80843e41b6b348867a3275b236a	t	2020-05-02 10:22:30+00	2020-05-02 14:47:35+00	\N
391	22	Fátima Morales	Schaerbeek	Citoyenne	\N	e326ec570d3dbddc99933370c9967039	t	2020-05-03 10:17:02+00	2020-05-03 10:17:29+00	\N
260	22	Harold Habousha 	Bruxelles 	Cadre	\N	8a70a547eaeb0bc3c4b8074765709517	t	2020-05-02 14:58:42+00	2020-05-02 14:59:06+00	\N
167	22	Peter Stuyck 	Schaarbeek 	Bediende 	Citizen	1f4bfd60b71d33cb7146c2ffb9b8c348	t	2020-05-02 11:19:38+00	2020-05-02 11:21:04+00	\N
168	22	Evie Coulier	Schaarbeek	Citoyenne	\N	997e6b5a0ace8b345c0a8f7d020d09d2	t	2020-05-02 11:20:53+00	2020-05-02 11:21:43+00	\N
305	22	Anne	Schaarbeek	\N	\N	c3e15d0ed2ac01552eade0d64ac8bdec	t	2020-05-02 18:05:06+00	2020-05-03 11:00:23+00	\N
369	22	Florence Meessen 	Schaerbeek 	Citoyenne	\N	5e349972aff5ca77a76ccb6dde0bf9f4	t	2020-05-03 07:04:53+00	2020-05-03 14:23:12+00	\N
262	22	Raymond frederick	Evere	Employee	03/03/1978	c02fbcb3e78bd835e80dff9d21db425a	t	2020-05-02 15:10:15+00	2020-05-02 15:10:36+00	\N
171	22	Yannick Hartstein	Schaerbeek	\N	\N	8424391038b5523e2f2b3ea78dcb6304	t	2020-05-02 11:27:28+00	2020-05-02 11:27:46+00	\N
170	22	Pieter Fannes	Schaarbeek	Illustrator	pieter fannes	f05f061988d35970e77c0ec62f52fe5e	t	2020-05-02 11:27:21+00	2020-05-02 11:28:12+00	\N
172	22	pieterjan schraepen	SInt-Gillis	citizen	\N	7030cd299c1a2d6674489b64d0ebdf78	f	2020-05-02 11:28:14+00	2020-05-02 11:28:14+00	\N
169	22	Marie Naudin	Schaerbeek	\N	\N	21fbf464b180196c1f9911707a603e55	t	2020-05-02 11:27:15+00	2020-05-02 11:29:27+00	\N
368	22	Willem Vriesendorp	BRUSSELS 	Consultant	#SustainablePublicAffairs	f6bade5de9f07698d8bbbd288401308a	t	2020-05-03 06:56:30+00	2020-05-04 06:50:26+00	\N
261	22	Yara	Brussels	Student	\N	26180403346354f9630cbf29519e557b	t	2020-05-02 15:07:52+00	2020-05-02 15:11:39+00	\N
304	22	Ruth Kevers	Schaarbeek	\N	Citizen	a625d15467342dfb7b5c2dc770ffbef7	t	2020-05-02 18:04:12+00	2020-05-02 18:04:27+00	\N
571	22	Brigitte Brisbois	Schaerbeek	\N	\N	2e42aef84abba16ba6f6635398ec8889	t	2020-05-04 06:58:05+00	2020-05-04 06:58:29+00	\N
313	22	Maud D'Huyvetter	Schaarbeek 	Citizen	\N	97030f4d5b1ef1d991e2bd3398be300a	t	2020-05-02 18:41:34+00	2020-05-09 06:40:36+00	\N
306	22	Marie Heyvaert	Schaarbeek	\N	\N	f52e0be580c2c19cf9fd6dfa4f6722b7	t	2020-05-02 18:06:32+00	2020-05-02 18:08:37+00	\N
308	22	Yves Govaerts	Schaerbeek	Managing Director	Rayference	55cc825b6f84108256dba38ae9833e1c	t	2020-05-02 18:19:45+00	2020-05-02 18:20:00+00	\N
312	22	Steven Houben 	Schaarbeek 	\N	\N	c0e5812cce11d9685446e8f520c44abb	t	2020-05-02 18:41:07+00	2020-05-02 18:41:19+00	\N
314	22	Marine Tondeur	Schaerbeek	Midwife	MSF	a4a2d52716be9dc991628413d3450a8b	f	2020-05-02 18:48:07+00	2020-05-02 18:48:07+00	\N
307	22	Vincent Lheureux	Schaerbeek	Auditeur interne	\N	0a4e0b8277868d7c9fa54a0a2a277d25	t	2020-05-02 18:18:11+00	2020-05-02 18:48:28+00	\N
319	22	Mélanie Ceyssens	1030	\N	\N	53ab3b227738032ba5e058f7a937dfdf	f	2020-05-02 19:24:38+00	2020-05-02 19:24:38+00	\N
317	22	Gideon Boie 	Schaarbeek	\N	\N	2c9db178f79adfac8a6d346edd8e4a05	t	2020-05-02 19:24:02+00	2020-05-02 19:25:12+00	\N
321	22	marit meganck	schaarbeek	architect	\N	6cda7fd04e0c0127f5c22bf0e27817d2	f	2020-05-02 19:27:37+00	2020-05-02 19:27:37+00	\N
320	22	Charles 	1030	Enseignant 	\N	fc6fced22bce40e0d569aaf1d3b5d41f	t	2020-05-02 19:26:59+00	2020-05-02 19:28:34+00	\N
318	22	Verbeeke	Schaarbeek 	Citizen	\N	b8e976273478d1a6111818d1de405902	t	2020-05-02 19:24:13+00	2020-05-02 19:31:42+00	\N
324	22	Marie Susini	Schaerbeek 	\N	My home	cc48d1881c9dba02b2d2dd4d31ae95ab	t	2020-05-02 19:56:44+00	2020-05-02 19:57:03+00	\N
326	22	Fanny Mayné	Uccle	\N	\N	48791c80a9c5a76df8eba90eeb330436	f	2020-05-02 20:08:40+00	2020-05-02 20:08:40+00	\N
327	22	Bruno Schols	Schaarbeek	Leerkracht	\N	259961116afea1e40abd0f1f6ce93ab9	t	2020-05-02 20:10:24+00	2020-05-02 20:10:59+00	\N
328	22	Franziska Neher	Schaerbeek	citoyenne	\N	a2a9bb81dbd8b990de79a9ffa74358ed	f	2020-05-02 20:11:35+00	2020-05-02 20:11:35+00	\N
329	22	jan wijffels	jette	statisticus	bnosac	29e867c47f3da66440fc73a848e0faf1	t	2020-05-02 20:14:03+00	2020-05-02 20:14:31+00	\N
332	22	Tom Zoete	Brussel	communicatiemanager	\N	565a7be01c7fd20227e16919b644aeb8	t	2020-05-02 20:31:24+00	2020-05-02 20:32:07+00	\N
333	22	Kristin	Evere	\N	Citizen	03535aa848cdc10d44cbf560953ae850	t	2020-05-02 20:32:33+00	2020-05-02 20:32:58+00	\N
341	22	Kristien Vanmerhaeghe	Schaarbeek	Architect	\N	dc99869066ad90951561bff8a3142c0b	t	2020-05-02 20:57:09+00	2020-05-02 20:57:30+00	\N
342	22	Diana Dolce	Schaerbeek	Citizen	\N	a9672104daac884eb4a53fe726da08c2	f	2020-05-02 21:01:47+00	2020-05-02 21:01:47+00	\N
343	22	Delcroix	Schaerbeek	citizen	\N	402f6af9e81cc45731a771049ebcc8cb	t	2020-05-02 21:02:32+00	2020-05-02 21:03:14+00	\N
344	22	Kätti	Bruxelles	urbaniste	Perspective	06a9ccbd4393f51412fa23adcf22ab33	t	2020-05-02 21:11:23+00	2020-05-02 21:11:48+00	\N
345	22	Mara Coppens	Schaerbeek	Citoyenne	Gracq	b6a0af7637879fb3a343c70b5299b5f5	f	2020-05-02 21:20:44+00	2020-05-02 21:20:44+00	\N
347	22	Yumika lecluyze	Schaarbeek	Citizen	\N	da13c6a7ec12edf7317cea5662160442	t	2020-05-02 21:21:42+00	2020-05-02 21:21:52+00	\N
346	22	Cornelia van der Weide 	Schaerbeek	Bewoner	\N	f15a27b1028a7eaf82305f60a87be43a	t	2020-05-02 21:21:31+00	2020-05-02 21:25:41+00	\N
348	22	Vic Geldhof	Schaerbeek	Student	\N	e21c5aaaef4b665af9263a676192e08b	f	2020-05-02 21:27:07+00	2020-05-02 21:27:07+00	\N
349	22	Victor Geldhof	Schaarbeek	Student	\N	6bf8940b211ce5af8aa53fa4aa895cfa	t	2020-05-02 21:32:31+00	2020-05-02 21:32:59+00	\N
356	56	Leen	\N	\N	\N	3783f239c26597e5fddc31f6af3976cb	f	2020-05-03 00:00:43+00	2020-05-03 00:00:43+00	\N
358	56	Leen	\N	lover	\N	e43ecd8fa3d487c443463f38e0420399	f	2020-05-03 00:03:48+00	2020-05-03 00:03:48+00	\N
359	56	Xavier	\N	\N	\N	87ae07f37341242c1ff79d63c32657f2	t	2020-05-03 00:14:08+00	2020-05-03 00:14:26+00	\N
360	22	Charlotte Vaes	Schaarbeek 	\N	\N	d503e4397a22c6678b51f4112c29e800	f	2020-05-03 05:17:16+00	2020-05-03 05:17:16+00	\N
363	22	Elodie & Guerric De Becker - Cerfontaine	Schaerbeek	Citizen	\N	2c9a3c3777a238c7c41f7202f3cdae3f	t	2020-05-03 06:07:47+00	2020-05-03 06:08:30+00	\N
364	22	Richard Mezzin	1030	Citoyen schaerbeekois	Habitant	dbc86eaf3a5c39d61f4633d93523ae6c	t	2020-05-03 06:10:00+00	2020-05-03 06:10:30+00	\N
316	22	Véronique Decruynaere 	Schaerbeek 	Enseignante 	\N	1923f09a0e5f24f5f04f0e6ba0f63525	t	2020-05-02 19:15:24+00	2020-05-03 06:11:25+00	\N
365	22	Charles D.	Schaerbeek	\N	Citizen	76127523e9794d563c0c8eceeea3ac70	t	2020-05-03 06:50:43+00	2020-05-03 06:50:59+00	\N
366	22	Stijn Roovers	Schaarbeek	Burger 	\N	aa5fbfddea3a5df38193fb0b569f3ee0	t	2020-05-03 06:52:08+00	2020-05-03 06:52:21+00	\N
367	22	Silke Vandaele	Schaarbeek	cultural worker	\N	c2008cf795f12461fa7153a02cf831f3	t	2020-05-03 06:56:30+00	2020-05-03 06:57:17+00	\N
370	22	Marie-Paule Lemmens	Schaerbeek 	Digital	RTBF	65bb89cdcf5e1937ec3fe4b92ffe3c04	t	2020-05-03 07:26:15+00	2020-05-03 07:28:01+00	\N
355	22	Nina Mallants	Schaarbeek	\N	\N	0341a31fd90dc72fa02d2a4bf56879bb	t	2020-05-02 23:47:31+00	2020-05-03 07:28:19+00	\N
371	22	Rodier	Schaerbeek 	Ergothérapeute 	\N	0eca380b2ac953afb18c36450ad8070a	t	2020-05-03 07:40:43+00	2020-05-03 07:41:16+00	\N
372	22	Bernard VOITA	Schaerbeek 	Artiste 	\N	634f70138a877215c09897e3352a9d04	t	2020-05-03 07:44:49+00	2020-05-03 07:45:11+00	\N
373	22	Uslu Rabia	Schaarbeek	Citizen	Imagine Brabant	9a43f929e485387e3b795731fe6a0404	t	2020-05-03 07:45:37+00	2020-05-03 07:45:57+00	\N
375	22	Verity J	1030	Citizen	\N	a9f26e2ecd730be11a2b6c214bd36da2	f	2020-05-03 07:54:47+00	2020-05-03 07:54:47+00	\N
325	22	Simoens Ilse	Schaarbeek	\N	\N	a1bcd36a64e893dc69c688fb4764cca8	t	2020-05-02 20:07:07+00	2020-05-03 08:23:12+00	\N
263	22	Nelson Polfliet	Schaarbeek	film maker	\N	aab7a0c9298a00ee4a9ce1ed67e15f69	t	2020-05-02 15:10:43+00	2020-05-03 08:55:15+00	\N
572	22	Van der perre	Schaarbeek	Burger	\N	67e585987c5cfe75212c33b54a461b9c	f	2020-05-04 07:04:37+00	2020-05-04 07:04:37+00	\N
173	22	Sien	Schaarbeek	Photographer	\N	e5869c1973013f3f260a07575697f676	t	2020-05-02 11:29:14+00	2020-05-02 11:29:25+00	\N
264	22	tim lettany	\N	\N	\N	b2105ab39227b3e895ebd08ae1caf186	t	2020-05-02 15:17:30+00	2020-05-02 15:18:12+00	\N
174	22	Birgit D’hont	1030	\N	Citizen	acb4903fab75ae5fc3b8a73e4373302f	t	2020-05-02 11:29:57+00	2020-05-02 11:30:21+00	\N
1038	59	Ariane d'Hoop	1030	habitante	\N	2271fe7cb3946d83e33938fb9330bcff	t	2020-05-14 10:32:39+00	2020-05-14 10:33:52+00	\N
176	22	Marc de Bournonville	Schaerbeek	Laborantin 	UCL	6e3358d64d1d450ce103d86626c1da18	f	2020-05-02 11:30:45+00	2020-05-02 11:30:45+00	\N
175	22	Nicole Huckert	Schaerbeek	citoyenne et piétonne	\N	ba0aa8f7f0a44fcb8923f31fde2da741	t	2020-05-02 11:30:30+00	2020-05-02 11:30:49+00	\N
166	22	Djoeni	Schaarbeek 	Product manager	\N	10b34e599506cf48ab4f6c7584590c85	t	2020-05-02 11:18:21+00	2020-05-02 11:31:09+00	\N
265	22	etienne belotti	scaherbeek	\N	\N	ea814a52bf8b3fe476ffd9447770f42f	t	2020-05-02 15:28:10+00	2020-05-02 16:06:24+00	\N
194	22	Gehenot Christine	Schaerbeek	Conseillère CPAS	\N	6688d4467e78412cbf69515fd376f702	t	2020-05-02 12:08:06+00	2020-05-02 16:50:01+00	\N
235	22	Brecht Vercruysse	Schaarbeek	\N	\N	75c25949c2c1a397cef068aa18ae9daf	t	2020-05-02 14:00:19+00	2020-05-02 16:56:56+00	\N
188	22	Wim Schaerlaekens 	Schaarbeek 	Diplomat	FOD BZ	1fa9274d3d8e537618ffdf5af9962f58	t	2020-05-02 11:44:54+00	2020-05-02 17:28:35+00	\N
178	22	Sabine Delfosse 	Schaerbeek 	Sage-femme 	\N	5d970ed9181ae6ada96d04642d0fdcc5	t	2020-05-02 11:31:31+00	2020-05-02 11:32:05+00	\N
226	22	Luis Akakpo	1030	IT consultant	\N	3410f47ed3771f884edf6d02aab0e55d	t	2020-05-02 13:28:10+00	2020-05-02 17:52:23+00	\N
149	22	Francis Vanden Bavière	Schaarbeek	architect & citizen	\N	eb3685d11fa1cbf55d601f3863ce52e3	t	2020-05-02 10:41:43+00	2020-05-02 11:35:30+00	\N
221	22	Brigitte  Marchal	Brussels 	\N	espoir.tjrs@gmail.com	34d49297803b1ef62e424341caf9f2f6	t	2020-05-02 13:08:28+00	2020-05-03 05:28:05+00	\N
183	22	Barry Nauta	Schaarbeek	\N	\N	f8ef819689c3edb892c79ed884015974	t	2020-05-02 11:37:04+00	2020-05-02 11:37:33+00	\N
177	22	Thomas Schoenmakers	Schaarbeek	Citizen	1986	9813c5175c825d2b40ab5ce7f4761542	t	2020-05-02 11:31:13+00	2020-05-02 11:40:25+00	\N
185	22	Joelle	1030	Student	\N	59359fa16f3309de44ddc4f1dff3f5de	f	2020-05-02 11:41:58+00	2020-05-02 11:41:58+00	\N
187	55	Xavier Damman	Schaerbeek	Entrepreneur 	All for climate	b32650a76d658b57032cf6e0cfda14e9	t	2020-05-02 11:43:45+00	2020-05-02 11:43:56+00	\N
186	22	Mathilde Gallière	Evere	\N	\N	62883bddc39f328af78a410f538ce2d4	t	2020-05-02 11:43:13+00	2020-05-02 11:44:00+00	\N
182	22	Ansgar Wansing	1030	\N	\N	4fec6d9e6145134d1ae30c49040fe831	t	2020-05-02 11:35:33+00	2020-05-02 11:48:15+00	\N
189	22	Noémie Dembour	Schaerbeek	Employée 	Pro Velo	e1a980fb476d13c79516e96b06a6c2f4	f	2020-05-02 11:55:00+00	2020-05-02 11:55:00+00	\N
190	22	Noémie Dembour	Schaerbeek	Citoyenne	\N	5e0efe55be531e010bb83013cb52d26a	t	2020-05-02 11:56:19+00	2020-05-02 11:56:38+00	\N
191	22	Carine Gardin	Schaarbeek	civil servant	\N	0721228f26a60897e0b65455c8f7b658	t	2020-05-02 11:57:41+00	2020-05-02 11:58:01+00	\N
192	22	James Petitseigneur	Schaerbeek	Citoyen	\N	82e9694cdad3c00d6b0dd83dac4c286c	t	2020-05-02 12:00:03+00	2020-05-02 12:00:27+00	\N
193	22	Ans Brugmans	Schaarbeek	\N	\N	2c7b1662200416bf1af60225d3b680fc	f	2020-05-02 12:00:48+00	2020-05-02 12:00:48+00	\N
195	22	Joa Hasaert	Schaerbeek	Citizen	\N	d763ca6940f11dbc4693dcb7a05059bb	t	2020-05-02 12:09:37+00	2020-05-02 12:10:13+00	\N
196	22	martine vanrolleghem	Brussel	\N	\N	8dcc044eb7c662d8c2534773c6b67ab8	t	2020-05-02 12:10:37+00	2020-05-02 12:11:06+00	\N
197	22	Celine Giraudeau 	Schaerbeek 	Citizen	\N	dbf8af17b10b58b6624d027de4c4449e	t	2020-05-02 12:11:04+00	2020-05-02 12:11:20+00	\N
199	22	Lotta de Meulenaere	Schaarbeek	\N	Inwoner	6f537d6f8d7e29b4cbe6f376ebf8e744	t	2020-05-02 12:11:44+00	2020-05-02 12:12:51+00	\N
200	22	Verstuyf Yves 	Brussel 	\N	\N	216ccf1f4dd7aa5c79dd4b1f9ecf6dc4	t	2020-05-02 12:15:18+00	2020-05-02 12:15:31+00	\N
198	22	Hilde de bruycker	Schaarbeek	Citizen	\N	d89deb2d6ac0c14f6e315afceb1030e7	t	2020-05-02 12:11:16+00	2020-05-02 12:15:50+00	\N
202	22	Van der perre	Schaarbeek	Burger	\N	dcfdebbfc9c4ddc4c065fa82c1d84f01	f	2020-05-02 12:16:59+00	2020-05-02 12:16:59+00	\N
203	22	Syd Uten	\N	\N	Citizen 	5845561cfce6ddd4ca5e066b62b42cc6	t	2020-05-02 12:17:37+00	2020-05-02 12:17:50+00	\N
205	22	Philippe Marbaix	Schaerbeek	\N	\N	41c7e0e2ad0b56efad3f9b0c3902b44a	t	2020-05-02 12:18:32+00	2020-05-02 12:19:42+00	\N
207	22	Jean-Luc ory	Schaerbeek	Fonctionnaire	ONSS -RSZ	8c4b62303a3b42ee481b6c0655ee358b	t	2020-05-02 12:21:25+00	2020-05-02 12:24:27+00	\N
209	22	Philippe Debroe	Schaerbeek	Paysan	\N	fe73f9d283616e439b4938e24403b313	f	2020-05-02 12:25:41+00	2020-05-02 12:25:41+00	\N
208	22	Yasmine Alfihri	Schaerbeek	enseignante	\N	d89e6610dd930047b8c0ca3ac0f7e51a	t	2020-05-02 12:25:22+00	2020-05-02 12:25:44+00	\N
210	22	Claudia Bohn	\N	\N	\N	6bcd1f8b9bdc22abfb419b6768dc9cce	f	2020-05-02 12:28:30+00	2020-05-02 12:28:30+00	\N
184	22	Nathalie Goudinoux 	Schaerbeek	Citizen	\N	fd27b7439fc99a97793ddcdf4772f1d9	t	2020-05-02 11:41:16+00	2020-05-02 12:43:05+00	\N
213	22	Hendrick BlickfieldJ	Schaarbeek	Citizen	\N	e6d70e618679f1e5164d3e11f70552c1	f	2020-05-02 12:44:26+00	2020-05-02 12:44:26+00	\N
215	22	Wiet Vandaele 	Schaarbeek 	\N	Heroes for zero 	f438b5994a1683ee4e6d20feeddf7966	t	2020-05-02 12:48:22+00	2020-05-02 12:49:19+00	\N
216	22	Hendrick J. Blickfield	Schaarbeek	Citizen	\N	fb6ec9fa722061215050e66ca79d3a34	t	2020-05-02 12:48:42+00	2020-05-02 12:49:59+00	\N
217	22	Devooght Sarah	Bruxelles 	Citizen	\N	4fdc4b19ee4ca23e4704ec5ab42817a4	t	2020-05-02 12:54:46+00	2020-05-02 12:55:04+00	\N
218	22	Laura Knops	Dworp	student	VUB	69979d950271d1c8262ab72dc7f1cb8b	f	2020-05-02 13:00:28+00	2020-05-02 13:00:28+00	\N
211	22	Clara Mennig	Schaerbeek	\N	\N	3b3d37fe85948baa432afff041ad4c1a	t	2020-05-02 12:33:51+00	2020-05-02 13:01:01+00	\N
220	22	Renaud 	Schaerbeek	\N	\N	8646db10478473a30f80a6331704954f	t	2020-05-02 13:05:37+00	2020-05-02 13:06:04+00	\N
222	22	Katy Wiese	Schaarbeek	Citizen	\N	7ef431ba3f4bbde7a1287a491c0930ac	t	2020-05-02 13:12:47+00	2020-05-02 13:15:06+00	\N
223	22	Andrea Huppmann	Schaerbeek	Citizen	\N	db530ae2b131d8f325b075a4af784e2b	f	2020-05-02 13:15:31+00	2020-05-02 13:15:31+00	\N
224	22	Clément Leclercq	1030	Citizen	\N	ea590597c6b3934426966e0ed24b0664	t	2020-05-02 13:18:06+00	2020-05-02 13:18:26+00	\N
225	22	Bart 	Schaarbeek 	\N	\N	c2ed34e730013ba110247edbc285eb57	t	2020-05-02 13:19:57+00	2020-05-02 13:22:07+00	\N
227	22	Elvina Motard	Schaerbeek	Ingenieur	\N	51125fb2b557709a80b535ff2cb04c9f	t	2020-05-02 13:29:08+00	2020-05-02 13:30:43+00	\N
228	22	Marie Figoureux	Schaarbeek	\N	\N	862c3f4f9d40bb08891f0070f5476906	t	2020-05-02 13:33:01+00	2020-05-02 13:33:29+00	\N
229	22	Delphine Peraya	\N	Cycliste	\N	ba2db4b40b159a3cb87a3fbfe2eb09ae	t	2020-05-02 13:34:37+00	2020-05-02 13:36:05+00	\N
230	22	Karen Ardila	Ixelles	\N	\N	0d3973529a8e09bc15f14c32633d731b	t	2020-05-02 13:38:33+00	2020-05-02 13:38:57+00	\N
206	22	Alice Sonmereyn	Schaerbeek	\N	\N	a99b3c8c516752389bd592e64a007d8f	t	2020-05-02 12:19:32+00	2020-05-02 13:42:12+00	\N
232	22	Katrien Stroobants	Schaarbeek	\N	\N	da968ce9fbcc2b1112d144e3f4c86eb0	t	2020-05-02 13:45:51+00	2020-05-02 13:46:11+00	\N
231	22	Alice escalier	Schaerbeek	Architecte	/	6b645a46267ee29373fc5265dada877c	t	2020-05-02 13:43:11+00	2020-05-02 13:52:37+00	\N
234	22	Thibault Baradat	London	\N	Tibocut	0230b477a447ebd266d026016ff55ab8	t	2020-05-02 14:00:12+00	2020-05-02 14:01:34+00	\N
236	22	Jan Nachtergaele	1030	\N	Citizen	8eed560de5152a5928758cb34086aef5	t	2020-05-02 14:00:45+00	2020-05-02 14:02:42+00	\N
237	22	Amy Norrington	Schaarbeek	Musician 	\N	bd11ced5d52be98f505bfe40d4acf8ee	t	2020-05-02 14:05:19+00	2020-05-02 14:06:10+00	\N
376	22	Lise Van den heuvel	Schaarbeek	citizen	\N	b663d67845e9cb7993c888bc151e6e9a	t	2020-05-03 08:01:04+00	2020-05-03 10:19:38+00	\N
238	22	Géraldine de Borman	Schaerbeek	Reliante	Asbl Ile aux bains et Schaerbon	766b11533740a3e6a2b4ce9d6373bc22	t	2020-05-02 14:08:33+00	2020-05-02 14:09:50+00	\N
266	22	mathilde	schaerbeek	artist	duu din ka	a76a0190231691e8c137b3c4e8b02fe1	t	2020-05-02 15:34:21+00	2020-05-02 15:34:43+00	\N
241	22	Lore Binon	Schaarbeek	Musician	\N	fe9080fb716c33309ff3ef282fc8a234	f	2020-05-02 14:13:14+00	2020-05-02 14:13:14+00	\N
240	22	Sophie girard 	1030	\N	\N	b676b866230c557e9b8d21a4a0f71e00	t	2020-05-02 14:12:53+00	2020-05-02 14:13:17+00	\N
242	22	Delphine Verstraete	Etterbeek	Citoyenne	\N	2164d05f15ca1d866d3dc838ed05efe5	f	2020-05-02 14:15:31+00	2020-05-02 14:15:31+00	\N
769	22	Geroge Watsky	Schaerbeek	PhD, citizen	\N	8b91945bbf221a40fc5107a4aa204b97	t	2020-05-09 09:25:36+00	2020-05-09 09:25:53+00	\N
267	22	Chantal Kesteloot 	Schaerbeek 	Historian	\N	65a782377478ddbd82f25749fa06181b	t	2020-05-02 15:39:01+00	2020-05-02 15:41:01+00	\N
268	22	Jo wuyts	1030	\N	\N	9df06a78aaf34e1b773325f93e1ae6d7	f	2020-05-02 15:41:34+00	2020-05-02 15:41:34+00	\N
269	22	Bernaerts bruno	Schaerbeek 	Enseignant	\N	35f55b7fd8dd33d6809d3abb25a0bcdf	f	2020-05-02 15:48:22+00	2020-05-02 15:48:22+00	\N
374	22	Gerina Dijkema	Schaarbeek	\N	\N	7cd7bf5329ce946862ceb63a2bc08cac	t	2020-05-03 07:45:46+00	2020-05-03 10:32:57+00	\N
393	22	Eline Goovaerts	Schaarbeek	Citizen	\N	bb0f067eea20b91dcd0f69cece826066	t	2020-05-03 10:29:52+00	2020-05-03 10:33:56+00	\N
270	22	Ophélie Durand	Schaerbeek	Citizen	\N	e20aa104895ff69b6ca737fe852a7f11	t	2020-05-02 15:52:55+00	2020-05-02 15:53:17+00	\N
392	22	Renard	Schaerbeek 	\N	\N	4262eabfd0af937381054c3d54f8ae56	t	2020-05-03 10:24:26+00	2020-05-03 10:37:55+00	\N
233	22	Noëlie Jacqmin	Schaerbeek	\N	\N	0962f6e578efe64298b7ae4944a29f33	t	2020-05-02 13:52:01+00	2020-05-02 15:56:16+00	\N
272	22	Lydie thonnard	Schaerbeek	\N	\N	cf348bba358204dfb73a155f846d57b9	t	2020-05-02 15:55:59+00	2020-05-02 15:56:57+00	\N
402	22	Heidi dierckxsens	1030	\N	Burger	0fc1e8d7924306fafaa36a7bfdb71e94	t	2020-05-03 11:14:39+00	2020-05-04 15:47:26+00	\N
285	22	Sindy Kinard	Schaerbeek	\N	\N	2387c1a69408c74f4ab7ddd520eb2f18	t	2020-05-02 16:53:23+00	2020-05-05 08:29:33+00	\N
397	22	Karel Arnaut	Schaarbeek	antropoloog	gemeente	c0f6af3e2f2fea14c8e0f07f7aa937f5	t	2020-05-03 10:50:48+00	2020-05-03 10:51:06+00	\N
275	22	Tanguy Ollinger	\N	coordinateur	GRACQ Schaerbeek	b14952c7e58d6f556a2a0d0d85c6fdc9	t	2020-05-02 16:03:55+00	2020-05-02 16:04:30+00	\N
276	22	julie van haver	Schaarbeek	Citizen	\N	00e28ee661275c6b9294c6d974b0dca2	t	2020-05-02 16:04:40+00	2020-05-02 16:04:52+00	\N
274	22	Raul Rodrigo Gomez	Schaarbeek	Citoyen 	\N	4d882260a26b8fc1b169d9e08d459693	t	2020-05-02 16:03:00+00	2020-05-02 16:07:47+00	\N
398	22	Maxime 	Schaerbeek	\N	\N	079a16bec485e910ad33ec1beb1d9085	t	2020-05-03 10:51:53+00	2020-05-03 10:52:09+00	\N
280	22	Jonas Heylen	Schaarbeek	\N	\N	33a4a7141788a107975b05006792d0ed	t	2020-05-02 16:30:18+00	2020-05-02 16:31:25+00	\N
281	22	Julien LEVEQUE	Schaerbeek 	Producer	RTBF	aa0c6613fcdb25c8f2ee5d8d1638381d	t	2020-05-02 16:32:36+00	2020-05-02 16:32:53+00	\N
399	22	Françoise Fredericq	Schaarbeek	Employee	Citizen	abe25061b5fb5e25499b150371b10a8d	t	2020-05-03 10:58:58+00	2020-05-03 10:59:50+00	\N
284	22	lievin chemin	Schaerbeek	bekendeschaerbėékois	\N	88e0b63963fd066fc137dd8333e5e1f1	t	2020-05-02 16:47:12+00	2020-05-02 16:47:55+00	\N
287	22	Jéromine Gehrenbeck	Schaerbeek	Citizen	\N	a6654f5dd4e8824ae7417a0295fc587a	t	2020-05-02 17:11:19+00	2020-05-02 17:13:09+00	\N
294	22	Gunther De Wit	Brussels	\N	\N	e999a39d344dca8c25e1602e59374aee	f	2020-05-02 17:31:15+00	2020-05-02 17:31:15+00	\N
400	22	Émilie Tack 	Schaerbeek 	Citizen 	\N	dcea4e8573ef3280e7a2ac4250064158	t	2020-05-03 11:04:55+00	2020-05-03 11:05:12+00	\N
401	22	Gertjan De Boeck	Koekelberg	\N	\N	58fd20acea047ae81e4d28e071d757b4	f	2020-05-03 11:13:26+00	2020-05-03 11:13:26+00	\N
309	22	Da Assunção Jacinta	Bruxelles	Aide menageire	\N	bcedccd4991f8571e165ec7ce268a3d9	t	2020-05-02 18:25:15+00	2020-05-02 18:32:27+00	\N
310	22	Hangya-Lachmann Noemi	Schaerbeek	Libre	\N	66b06575ae80bec3bbc5cccce7ec13a1	t	2020-05-02 18:30:33+00	2020-05-02 19:05:16+00	\N
350	22	Anna Schröder 	Schaerbeek 	Feminist 	\N	ec459f6a086c96e70b11d2cce9c190d1	f	2020-05-02 21:52:33+00	2020-05-02 21:52:33+00	\N
351	22	Luigi Petito 	Brussels	Consultant 	\N	86795d291c9ca766efc93707ecfdf062	f	2020-05-02 22:07:26+00	2020-05-02 22:07:26+00	\N
271	22	Isabelle Grosjean	Schaerbeek	Citizen	\N	34a3f5246f92d4fdea437975832c385a	t	2020-05-02 15:53:08+00	2020-05-03 07:49:46+00	\N
361	22	Burniat	Limal (Wavre) Belgique	Médecin retraite	\N	7eade3db412a5fef7f44053d3b02bae0	t	2020-05-03 05:58:19+00	2020-05-03 08:05:41+00	\N
377	22	Beatrijs Prové	Koekelberg	\N	grootmoeder met kleinkinderen in Schaarbeek	b9acf84bc53829de9b2261d3634cbaba	t	2020-05-03 08:11:16+00	2020-05-03 08:11:49+00	\N
403	22	Kris Janssen	Schaarbeek	Citizen	\N	1d502079377787f68a35bea78f88028a	t	2020-05-03 11:15:15+00	2020-05-03 11:15:43+00	\N
378	22	Heather Moore	Schaarbeek 	citizen	\N	708c3b7c14125d75f53bd4c1e284e376	t	2020-05-03 08:13:06+00	2020-05-03 08:15:39+00	\N
404	22	Maarten Depypere	Schaarbeek	\N	\N	de87ca45db8c674fb78630415b284811	t	2020-05-03 11:16:54+00	2020-05-03 11:17:38+00	\N
381	22	Filippo Positano	Scaherbeek	EU staff	\N	6277643ac418c7085af126a3126e1b42	t	2020-05-03 08:20:48+00	2020-05-03 08:21:33+00	\N
405	22	Matthias Van Wijnendaele	Brussels	1030	Citizen	b72d665af5ffbaaafbe1f9d548f6e215	t	2020-05-03 11:21:55+00	2020-05-03 11:22:18+00	\N
383	22	Daniel Nuijten	Schaarbeek	Bewoner	\N	b1764e7d8b36f7dbdd1d65c055fac9d9	t	2020-05-03 08:28:29+00	2020-05-03 08:29:10+00	\N
380	22	Kadri Soova	1030	Citizen	\N	a8e5b690a1d9b0e6de4553a808bb8850	t	2020-05-03 08:14:01+00	2020-05-03 08:38:18+00	\N
379	22	Mark Vertstaete	Kruisem	\N	\N	6a9ee3bb879abca8632aab17a9868638	t	2020-05-03 08:13:35+00	2020-05-03 08:55:06+00	\N
384	22	Wouter Rijmen	\N	\N	\N	33835977894f5e254a2e5af2717d1d5b	f	2020-05-03 09:00:17+00	2020-05-03 09:00:17+00	\N
406	22	Daan van Heesch	Schaarbeek	Inwoner	\N	db9bc9cb99d6af682e48b80a59bad50f	t	2020-05-03 11:27:30+00	2020-05-03 11:27:55+00	\N
382	22	Ivana Filipovska	Schaerbeek	\N	\N	b1f64c1475a40a7e46ce3db55c6e3441	t	2020-05-03 08:24:39+00	2020-05-03 09:04:29+00	\N
386	22	Thierry Jimenez	Schaerbeek	multimobiliste	\N	bbffe3031a817061699d613bb6bf43bd	t	2020-05-03 09:03:35+00	2020-05-03 09:05:37+00	\N
385	22	Ine Leen Sorgeloos	Schaarbeek	Citizen	\N	a73172b821db00957cb1493c393a8823	t	2020-05-03 09:01:20+00	2020-05-03 10:04:57+00	\N
407	22	Leyla Malsagova	Bruxelles	\N	\N	c6e51537790a39174d1a985891ecc2b3	t	2020-05-03 11:30:07+00	2020-05-03 11:30:32+00	\N
408	22	Katharine Meier 	Schaarbeek 	Citizen	\N	1c68bb7ced2d2cd8ab2bee1405466f95	t	2020-05-03 11:30:08+00	2020-05-03 11:30:35+00	\N
409	22	Elien Vrijsen	Schaarbeek	School teacher	\N	57dba0b52c1d18021fe574ad3d8f8d6b	t	2020-05-03 11:30:27+00	2020-05-03 11:31:53+00	\N
410	22	Laurence Philippe	1030	Citoyenne	\N	c633da05717178c0012bc1c154d11641	t	2020-05-03 11:32:58+00	2020-05-03 11:33:15+00	\N
411	22	Renaat Jespers	brussels	social worker	\N	61a0c06ddbe776401a54c65ba817ba8a	t	2020-05-03 11:35:35+00	2020-05-03 11:36:43+00	\N
412	22	Eva Kongs	Schaarbeek	Inhabitant	\N	74ab17ec5b79abdb08b30bc2e130c6c7	t	2020-05-03 11:37:57+00	2020-05-03 11:38:09+00	\N
413	22	Katja Vuori 	Brussels	Citizen	\N	4b2bdf054e4734d79fdbd724106eed8c	t	2020-05-03 11:38:15+00	2020-05-03 11:38:55+00	\N
423	22	Joeri Boterman	Schaarbeek	\N	\N	e360016067a14766d464158d65c1978b	f	2020-05-03 12:01:43+00	2020-05-03 12:01:43+00	\N
273	22	Simon horsten	Schaarbeek	Citizen	\N	7367776beb3b276860634891d6803c38	t	2020-05-02 15:58:18+00	2020-05-03 21:36:54+00	\N
573	22	Vincent Vasseur	Schaarbeek	Egineer	Citizen	06f846fa613a1a6e21307801481de92f	t	2020-05-04 07:08:36+00	2020-05-04 07:09:35+00	\N
244	22	Sandra	Schaarbeek	\N	\N	540563caec784010b8f77d2eb4ffb524	f	2020-05-02 14:20:33+00	2020-05-02 14:20:33+00	\N
243	22	Vink, Martijn 	1030 Schaarbeek	Musicus	\N	629d8162c63878311c907da00b0345ec	t	2020-05-02 14:18:57+00	2020-05-02 15:04:47+00	\N
256	22	James Armstrong	\N	\N	\N	3c7331b2ac034e9961d461cd6869adef	t	2020-05-02 14:47:19+00	2020-05-02 15:27:11+00	\N
394	22	Charles Herincx	Brussels	civil servant	European Commission	84595fb2de63e16cb75ba7f0e8294d1e	t	2020-05-03 10:48:06+00	2020-05-03 10:48:28+00	\N
247	22	Berenice Castiau	Brussel	\N	\N	d6329bc565189ebe956a33348e6ad758	t	2020-05-02 14:23:42+00	2020-05-02 15:32:45+00	\N
248	22	Sabina Kumeling	Schaarbeek	Citizen	\N	5a57e32062b2a2623cf686d50e761039	t	2020-05-02 14:28:45+00	2020-05-02 14:29:18+00	\N
249	22	Dafne Oosten	Schaarbeek	Citizen	\N	20b3751cce7178f6d2576a8cd15d1554	t	2020-05-02 14:31:52+00	2020-05-02 14:32:27+00	\N
246	22	SimonDalfrth	Schaerbeek 	Citoyen 	\N	e1b57ae9a82245d694b3b22fe1c69280	t	2020-05-02 14:23:01+00	2020-05-02 14:32:45+00	\N
250	22	Aline	1030	Citizen, maman, être respirantonctionnaire	Federal govt 	5051d78db00292a9e4eb8d39b99881b4	f	2020-05-02 14:34:48+00	2020-05-02 14:34:48+00	\N
277	22	Romain Weikmans	Ixelles	\N	\N	745b0a28eb25cd84ce8da834d3f05c8b	t	2020-05-02 16:16:14+00	2020-05-02 16:16:41+00	\N
252	22	Laureline Jacqmin	Bruxelles	\N	\N	84878938ff28c259022fbca1ba704476	f	2020-05-02 14:40:21+00	2020-05-02 14:40:21+00	\N
219	22	Beatrice Jacquemyn	Sint-Joost-ten-Node	Bibliothecaris	\N	941d22705955930321df696e0dcf81c6	t	2020-05-02 13:04:52+00	2020-05-02 14:44:50+00	\N
254	22	Denis Jacqmin	Schaerbeek	Fonctionnaire	\N	487c9af03b8e642b0f08b28deb3e0018	f	2020-05-02 14:45:57+00	2020-05-02 14:45:57+00	\N
396	22	Taïs Gomes de Santana	Schaarbeek	\N	\N	6615883c31e5068f29b6e2cf7fc2fc2e	t	2020-05-03 10:48:55+00	2020-05-03 10:49:10+00	\N
255	22	Wim Didelez	Brussel	\N	\N	6b77241f2a84bbf56621f1446592e7d8	t	2020-05-02 14:46:06+00	2020-05-02 14:46:38+00	\N
253	22	mario	brussel	student	erasmushogeschool brussel	c3e831eb4093dbff5a9944cd7563d8c0	t	2020-05-02 14:40:45+00	2020-05-02 14:47:14+00	\N
395	22	Annabella Schwagten	Schaarbeek	\N	\N	dac040d678f6448e7447a0e2dd2df773	t	2020-05-03 10:48:38+00	2020-05-03 10:50:10+00	\N
279	22	Mady Decrick	\N	\N	\N	17b65054616297a0ed7d49e5708b2dfe	t	2020-05-02 16:23:23+00	2020-05-02 16:24:10+00	\N
257	22	Martijn	Schaarbeek	burger	\N	ebd02aaabf83f3866851e5efaeba14b8	t	2020-05-02 14:48:17+00	2020-05-02 14:48:29+00	\N
282	22	Laurie	Bruxelles	\N	\N	f6cfea0486c92bb361e52093a5926ef3	t	2020-05-02 16:37:27+00	2020-05-02 16:38:05+00	\N
283	22	Katrien Schuermans	Sint-Gillis (Brussel)	\N	\N	24c04aed62eeac1ed64e619e09a7c8e7	t	2020-05-02 16:43:42+00	2020-05-02 16:44:06+00	\N
278	22	Namias Bernard	Bruxelles	Médecin	\N	dc88b5ece7ebd9a40fecf99b9fc55e55	t	2020-05-02 16:19:35+00	2020-05-02 16:54:25+00	\N
286	22	Benjamin Peltier	1030	habitant	\N	948cf76ba2abc35a78a48f92519e2c4c	f	2020-05-02 17:02:55+00	2020-05-02 17:02:55+00	\N
289	22	Nederlandt Olivier	Schaerbeek	Journaliste 	\N	7ba9240bf19ebcfd98ab8efb3a5fe4e0	f	2020-05-02 17:24:14+00	2020-05-02 17:24:14+00	\N
415	22	Tristan Depré	Brussel	\N	\N	d045ed3e016d7bad22fb3dbb03124511	t	2020-05-03 11:46:22+00	2020-05-03 11:46:52+00	\N
291	22	Jan Vleugels	Schaerbeek	Father of two	VRT	83c3006bdd48665b88d9b7b36806e059	t	2020-05-02 17:25:39+00	2020-05-02 17:25:57+00	\N
292	22	Cuvelier	Schaerbeek	\N	1984	480a87d86b93f25242040c7efa4b4063	t	2020-05-02 17:29:13+00	2020-05-02 17:29:45+00	\N
293	22	Barbara De Laet	Schaarbeek	Citizen	\N	c53ed91a9cc1987c98fbddf99f86deeb	t	2020-05-02 17:29:21+00	2020-05-02 17:29:59+00	\N
417	22	Camille Dereze	Schaerbeek	\N	\N	78944d77b7a67944c8aa3e4ad28efcc2	t	2020-05-03 11:47:01+00	2020-05-03 11:47:16+00	\N
296	22	Lidewij Nuitten	Schaarbeek	Citizen	VRT	309b6119fe8f2869c57fa2a6e69dc25b	f	2020-05-02 17:42:50+00	2020-05-02 17:42:50+00	\N
418	22	Stefan Jille	Etterbeek	\N	\N	016540775e425e58d477c7230b2af235	t	2020-05-03 11:47:04+00	2020-05-03 11:47:27+00	\N
419	22	lenormand	Schaerbeek	\N	Citizen	c14b8d0a2cc6ec33fe896bbb6f839538	t	2020-05-03 11:47:04+00	2020-05-03 11:48:40+00	\N
298	22	Valderrama Opazo Maykel	Bruxelles	Employé 	\N	b68c6c8f09e248a1d7a6f5ae4f09cca0	t	2020-05-02 17:45:09+00	2020-05-02 17:45:28+00	\N
416	22	Jakob D'herde	Schaarbeek	PhD Candidate	KULeuven	a8d33a3ee92a1be29c125e0597daf03a	t	2020-05-03 11:46:40+00	2020-05-03 11:49:06+00	\N
299	22	Nederlandt Olivier	Schaerbeek	Journaliste	\N	fd58598ee158f0d34736d94aa8bfd37a	t	2020-05-02 17:48:40+00	2020-05-02 17:48:59+00	\N
414	22	Pagel  Schweitzer	Schaerbeek	Brusilia, Louis Bertrand 104	Infirmière hospitalière 	637b8370ab60206697faf22f670f29a3	t	2020-05-03 11:45:27+00	2020-05-03 11:50:10+00	\N
300	22	Kathrin	\N	\N	\N	50b17aa3739aa9a163d63b8c32881b21	t	2020-05-02 17:50:53+00	2020-05-02 17:51:28+00	\N
301	22	Benoît Vanden Bemden	Schaerbeek	Musicien	\N	aad206d274740d8bea45a64e0b557994	t	2020-05-02 17:54:28+00	2020-05-02 17:56:23+00	\N
420	22	Anton Vanderhasselt	Schaarbeek	Citizen	\N	000cd9c28809b1ddf3cacd8286b1f332	t	2020-05-03 11:51:56+00	2020-05-03 11:52:10+00	\N
302	22	Anton Schuurmans	1030	\N	\N	1a2e7d8a67201dc987601d075cdaccef	t	2020-05-02 17:59:00+00	2020-05-02 17:59:24+00	\N
303	22	Maarten Gerard	Schaarbeek	Burger	\N	eb9a53bc9b62d7b8c794d6c7ebf2257b	f	2020-05-02 18:00:47+00	2020-05-02 18:00:47+00	\N
295	22	Aude Goovaerts	Schaarbeek	\N	\N	4f3a41918128788c10e604d9cf543aa9	t	2020-05-02 17:37:16+00	2020-05-02 18:24:35+00	\N
322	22	Alice Evrard	Schaerbeek	\N	\N	9b8bfa3d4fd01397ffdfead36d83f063	t	2020-05-02 19:51:03+00	2020-05-02 19:51:20+00	\N
323	22	Pauline Bekaert 	1030	Infirmière 	\N	8919fb957a189771a74fddfb19557fa5	t	2020-05-02 19:55:44+00	2020-05-02 19:56:09+00	\N
421	22	Sandra Schreurs	Schaarbeek	bewoner	\N	743c20d871f5ab91a79ca2ba54dc0d22	t	2020-05-03 12:00:09+00	2020-05-03 12:39:21+00	\N
330	22	Hilde Debelder	Schaarbeek	Citizen	\N	2fb7dae4a9a281fd744a45867c8ba5b0	t	2020-05-02 20:22:56+00	2020-05-02 20:26:44+00	\N
388	22	Jeroen Swinnen	\N	\N	\N	f3b928751f894731ed464aa985b7bf94	t	2020-05-03 10:05:17+00	2020-05-03 13:02:54+00	\N
336	22	Raphaël Beck	Evere	Citoyen	\N	328454e36c699801857bd399b0e045f7	t	2020-05-02 20:37:45+00	2020-05-02 20:38:00+00	\N
338	22	Greg Falisse 	Schaerbeek	Citizen	\N	7029965d71c82f5c645c5009a72bd7a6	t	2020-05-02 20:41:03+00	2020-05-02 20:41:26+00	\N
337	22	Anne-Marie Molenberg	1030 - Schaerbeek	Citizen 	\N	9025551bf3a74e1c5467c56a9aa160e5	t	2020-05-02 20:40:18+00	2020-05-02 20:46:38+00	\N
340	22	Jesse Pappers	Schaarbeek	\N	\N	6e62ee29aa152aaa77b3c4d01ad3efa0	t	2020-05-02 20:45:16+00	2020-05-02 20:46:57+00	\N
297	22	Elise Henin	Schaerbeek	Citoyenne	\N	9b13754f94141797e631321be8bb5d54	t	2020-05-02 17:44:54+00	2020-05-02 21:05:20+00	\N
335	22	Natalie Herr	Schaerbeek	Architect	\N	8c6f968e93755df42f77ddebe8b61fad	t	2020-05-02 20:37:07+00	2020-05-02 21:41:06+00	\N
352	55	leen	bxl	lover	all for climate	1ae0d73d72082047bbc20ef49981b253	t	2020-05-02 23:17:30+00	2020-05-02 23:17:51+00	\N
353	22	emilien leurquin	1030	employé 	unisoc	3449c5ae38ae81f17cac840683f511f0	f	2020-05-02 23:18:11+00	2020-05-02 23:18:11+00	\N
354	55	hello	city	world	\N	513c3b43d99d75cf92336f047a8b88b7	t	2020-05-02 23:19:45+00	2020-05-02 23:20:31+00	\N
339	22	Joost Vandenbroele	Schaarbeek	Bediende	1980	7dac73797f5f79b7317672407aa1a627	t	2020-05-02 20:44:18+00	2020-05-03 08:01:09+00	\N
290	22	Aurélie de coster	Schaerbeek 	Happy founder	Kriekebiche	7d9b42b48a432b54b3b544abd33dc6b6	t	2020-05-02 17:24:33+00	2020-05-03 08:48:37+00	\N
389	22	Roel Vanhee	Schaerbeek	citizen	\N	e6440160ae30f36f7c3675cae061f806	t	2020-05-03 10:08:53+00	2020-05-03 10:10:50+00	\N
390	22	Sandrine Tonon	Schaerbeek	Citoyenne	\N	4a86c4bf60ec0eb15d8067e34dc649b4	t	2020-05-03 10:09:15+00	2020-05-03 10:11:50+00	\N
465	22	Van Nieuwenhoven Gil	Bruxelles 	Étudiant 	\N	f2b47a998820ffd1daa9650e483e2886	t	2020-05-03 13:56:59+00	2020-05-04 07:46:44+00	\N
424	22	Ute Koch	Schaerbeek	Citizen	\N	993d5f8dc78bac67b5d8cc9e6f9a858e	t	2020-05-03 12:04:16+00	2020-05-03 12:04:36+00	\N
425	22	Quentin Fabri	Schaerbeek	Citoyen	\N	7699a8d118ab2562752b986c0fc2e225	t	2020-05-03 12:04:31+00	2020-05-03 12:04:59+00	\N
422	22	Bart Maras	Schaarbeek 	CX Lead	\N	4f5bba42ddd5ec2c38eb69fbed60d4a7	t	2020-05-03 12:01:03+00	2020-05-03 12:07:19+00	\N
444	22	Sophie Buysse	Schaarbeek	Burger	Debateville	c6d9624a6121ea527a8f13ef83ae4a78	t	2020-05-03 12:49:16+00	2020-05-04 15:11:21+00	\N
427	22	Yasko Deboodt	SCHAARBEEK	\N	\N	9dc79d00d7e5b55b589098ab4be3f27d	t	2020-05-03 12:16:07+00	2020-05-03 12:16:46+00	\N
428	22	Ella Engels	Schaarbeek	Inwoner 	\N	03fa8bccdf627ce68cc9347a960316b5	t	2020-05-03 12:18:22+00	2020-05-03 12:18:37+00	\N
429	22	Laura	Schaarbeek 	\N	\N	3bd2a557e844bae44a56211443e0d570	f	2020-05-03 12:18:40+00	2020-05-03 12:18:40+00	\N
430	22	Hendrik Opdebeek 	Schaarbeek 	\N	\N	b8d09fa031ca020459633563b2532ae0	f	2020-05-03 12:20:02+00	2020-05-03 12:20:02+00	\N
431	22	Tjibbe de Haan	Schaarbeek	Citizen 	\N	31983ad12b326a04915515f2de827a59	t	2020-05-03 12:23:45+00	2020-05-03 12:23:59+00	\N
432	22	Ruth P. Acosta	Schaerbeek 	Citizen	\N	ca68af190a3220419680c0106e6f999e	t	2020-05-03 12:26:41+00	2020-05-03 12:27:09+00	\N
433	22	Jan Reynders	Schaarbeek	Architect	B2Ai	04e39233603bfcb85861848e90b9deae	f	2020-05-03 12:32:56+00	2020-05-03 12:32:56+00	\N
435	22	Karel Cappelle	Schaarbeek	Ambtenaar	\N	2ccd752266634f8278e3d74719f25fba	t	2020-05-03 12:34:27+00	2020-05-03 12:36:09+00	\N
434	22	Lieve Polet	Schaarbeek	\N	Lets-Brussel	be034b8ab93dcf98deba5732ac8a764e	t	2020-05-03 12:33:30+00	2020-05-03 12:37:56+00	\N
437	22	Anne Guisset 	Schaerbeek 	Psychologue	\N	2a17518a8b6cabacd3f379a6a6e04fc1	f	2020-05-03 12:40:50+00	2020-05-03 12:40:50+00	\N
436	22	Siemon S.	Schaarbeek	Citizen	\N	ae438e130ca9936a2f26558e6e241b4d	t	2020-05-03 12:40:50+00	2020-05-03 12:42:03+00	\N
439	22	Frank Louwrier	Schaarbeek	Ambtenaar	\N	0b23e1966ce896ce3915bb58aa1dbfd0	f	2020-05-03 12:44:12+00	2020-05-03 12:44:12+00	\N
438	22	Kathleen van hove	Schaarbeek	\N	\N	257e49b7a1c853d2063df1778f5ac12d	t	2020-05-03 12:43:54+00	2020-05-03 12:44:16+00	\N
440	22	Saskia Vandamme	1030	\N	\N	09fbbabc6634353b8081fdd75fd0aab4	t	2020-05-03 12:45:22+00	2020-05-03 12:47:55+00	\N
445	22	Sara Vande veegaete	Schaarbeek	Citizen	\N	14b0d7feea39b61fd662c9bae27259dc	t	2020-05-03 12:50:31+00	2020-05-03 12:51:10+00	\N
446	22	Deborah Bailly	Schaarbeek	Citizen	\N	276f6c3974dc68d5bddfe56fb161597e	t	2020-05-03 12:51:12+00	2020-05-03 12:52:46+00	\N
447	22	Theo d. 	Schaerbeek 	Citizen	\N	c0f841e1c575564753e7390d4d969154	t	2020-05-03 13:09:14+00	2020-05-03 13:09:40+00	\N
441	22	Van Goethem	Schaerbeek	\N	\N	88c5e9b6d5be5c84729d1a8ef8774912	t	2020-05-03 12:45:42+00	2020-05-03 13:11:48+00	\N
449	22	joost rademaekers	SCHAARBEEK	Verpleegkundige	\N	48ae1ae1977c908386912e934a2cb2dc	t	2020-05-03 13:12:38+00	2020-05-03 13:13:21+00	\N
451	22	Alizée Jouffroy	Schaerbeek	\N	\N	a92ec53dc5eb9ad406134c8abaad0e99	t	2020-05-03 13:21:58+00	2020-05-03 13:22:12+00	\N
452	22	Tina Pössinger 	Schaerbeek 	Retraitée	\N	57421c754a4b02706746724bec4be67b	t	2020-05-03 13:23:22+00	2020-05-03 13:24:07+00	\N
453	22	Plumier	Schaerbeek	Cycliste	\N	9ec8cf22f48da19ea3a61477e868a5ff	f	2020-05-03 13:37:19+00	2020-05-03 13:37:19+00	\N
454	22	Evelien Vanderstraeten	Schaarbeek	Biker	\N	e327a7dc6116f54db6309d7b84cd0b9d	t	2020-05-03 13:39:25+00	2020-05-03 13:39:39+00	\N
455	22	Frank Louwrier	Schaarbeek	Inwoner	/	f9b2c2ea3c841bd44706fdcec533c41c	t	2020-05-03 13:42:26+00	2020-05-03 13:42:57+00	\N
456	22	Dagmar Ottevangers	Schaarbeek 	Systems analyst	\N	6a523f093a25b6c02f76e49b22349360	f	2020-05-03 13:44:37+00	2020-05-03 13:44:37+00	\N
458	22	Dagmar Ottevangers	Schaarbeek 	Citizen, pedestrian	\N	7d4df624f7f4dbe11927b3faaacb774d	f	2020-05-03 13:47:05+00	2020-05-03 13:47:05+00	\N
459	22	Dagmar Ottevangers	Schaarbeek 	Citizen, pedestrian	\N	0ce7e7ee0b58f818efa2e4543e5d410c	t	2020-05-03 13:48:04+00	2020-05-03 13:48:17+00	\N
460	22	WALTER VERMANDER	SCHAARBEEK	\N	Curieus Schaarbeek	fae352d4e6605aeb0abf27a5f1211b1a	t	2020-05-03 13:49:06+00	2020-05-03 13:50:36+00	\N
461	22	Maria Helene Louwrier	Schaarbeek 	\N	\N	23349aced23175717dbe68c4c75e9e1e	t	2020-05-03 13:50:05+00	2020-05-03 13:50:54+00	\N
463	22	MaximilianLangeder 	Schaerbeek	Employé et citoyen	\N	610b04a358402949e4323b03b35440ff	t	2020-05-03 13:54:20+00	2020-05-03 13:54:34+00	\N
464	22	Sebastien Beauduin	Schaarbeek	Consultant	\N	039d9628ac0de389a9b7d0bdf77af8f4	t	2020-05-03 13:55:03+00	2020-05-03 13:55:31+00	\N
466	22	Camille	Bruxelles	\N	\N	a5bdf7b6c8bbc67191d9a761b7758af4	t	2020-05-03 13:57:59+00	2020-05-03 13:58:27+00	\N
448	22	Helen Reynolds-Brown 	Schaerbeek	\N	\N	3ab3c1f557973ac588f751d09b45323a	t	2020-05-03 13:10:13+00	2020-05-03 13:58:40+00	\N
462	22	Svetoslav Dimitriev	Schaerbeek	musicien	\N	081dac193e763961388ed792162861c7	t	2020-05-03 13:52:59+00	2020-05-03 14:00:51+00	\N
467	22	Anke Van den Bremt	Schaarbeek	Citizen	\N	eea7cc32c13a6efa1a1492900a7dc0be	f	2020-05-03 14:01:41+00	2020-05-03 14:01:41+00	\N
468	22	Myriam Van Imschoot 	Schaa 	Kunstenaar	\N	051cb298085a166425fc02b7e95c523d	t	2020-05-03 14:03:48+00	2020-05-03 14:06:32+00	\N
469	22	Ward Van Hal	1030	\N	\N	77c0c86144613c473f1aee6545126c52	t	2020-05-03 14:15:22+00	2020-05-03 14:15:42+00	\N
470	22	Levy Hidalgo M	1030	\N	\N	c37583f09c2bbaedbe0c47be380698ae	t	2020-05-03 14:17:02+00	2020-05-03 14:17:33+00	\N
471	22	Martine Di Fiore	Schaerbeek 	Habitante	\N	2ef6fa856e937f7afdb9dd099703887b	f	2020-05-03 14:20:08+00	2020-05-03 14:20:08+00	\N
472	22	Maarten V	Schaarbeek	\N	citizen	335fcca5e89f979e86efbd42cf17cac8	t	2020-05-03 14:23:18+00	2020-05-03 14:23:32+00	\N
473	22	Rosanne Poltrock	Schaarbeek	Student	\N	fbd18d74d0e0287e43bfd44657d9f476	f	2020-05-03 14:27:35+00	2020-05-03 14:27:35+00	\N
474	22	Dalle Marie-Julie 	1030	Citoyenne 	\N	3fd70dcf1c51fde00e7d3bc821774077	t	2020-05-03 14:29:34+00	2020-05-03 14:29:53+00	\N
475	22	Jolien De Mesmaecker	Schaarbeek	\N	\N	733e70382ff86c4101ba0397e6af4b59	f	2020-05-03 14:38:46+00	2020-05-03 14:38:46+00	\N
477	22	Mireille Bocken 	Schaerbeek	Citoyenne	\N	2c883ed10fb929b756f9154bfe0bb209	t	2020-05-03 14:39:24+00	2020-05-03 14:39:53+00	\N
479	22	Veronica	Bruxelles	Musicienne	\N	037f43e5662b3f6beeb86a85f452c48a	t	2020-05-03 14:43:24+00	2020-05-03 14:46:32+00	\N
484	22	Hannes Rooms	Schaarbeek	citizen	\N	0cd1d909ab6340b30e6b3bcaf4e91beb	t	2020-05-03 14:49:24+00	2020-05-03 14:49:51+00	\N
482	22	Lucas Verschragen	Bruxelles	\N	\N	77a30416ab5c0267d1ee6cd3769c0003	t	2020-05-03 14:47:52+00	2020-05-03 14:50:56+00	\N
486	22	Pieter Serkeyn	Schaarbeek	Bewoner	\N	6c0fe41b46c77c5f45d93dcfe903d71d	t	2020-05-03 14:50:56+00	2020-05-03 14:51:05+00	\N
478	22	Pascale Pongegnie	1030 	Enseignante	\N	4fff21b7a758066f43c5485f0146ec43	t	2020-05-03 14:41:01+00	2020-05-03 16:36:19+00	\N
443	22	Stijn Rosiers	Schaarbeek	1	stijn_rosiers@hotmail.com	f1def2a61f32e8ea11a2989ad2b3b97a	t	2020-05-03 12:47:48+00	2020-05-03 16:57:45+00	\N
426	22	Laura Narli	Schaarbeek	Bewoner	\N	ae90b05c895f836bafd25247d7b3e26c	t	2020-05-03 12:07:54+00	2020-05-03 17:07:10+00	\N
450	22	Elke Geuens	Schaarbeek	Citizen	\N	5a8fe69073caf4675589fdab2c93ec0e	t	2020-05-03 13:20:52+00	2020-05-03 18:14:01+00	\N
457	22	Clotilde Guyomar	Schaerbeek	Employée	\N	d528545839008e4b9e179b39777e934b	t	2020-05-03 13:45:30+00	2020-05-03 20:09:38+00	\N
481	22	Degris	Bruxelles	\N	\N	718bc6650ef2064740496e8f3e6ca907	t	2020-05-03 14:47:23+00	2020-05-04 06:47:52+00	\N
574	22	Wim Baeck 	Sint joost ten node	\N	\N	35e1437a9136c5fa106ec7adb09a2dc5	t	2020-05-04 07:20:33+00	2020-05-04 07:21:19+00	\N
545	22	\N	\N	\N	\N	97483e7e186e2db772003d7eb8321fe3	t	2020-05-03 19:08:05+00	2020-05-04 09:01:11+00	\N
488	22	Eva Naudts	Schaarbeek	Citizen	\N	557ddb4625a61eb36ffd392a0f41f368	t	2020-05-03 14:58:00+00	2020-05-03 14:58:44+00	\N
489	22	Fanny de Smet	Schaerbeek	Citizen	\N	f546b947dc02305d438f97b0a57fe2df	t	2020-05-03 14:58:37+00	2020-05-03 14:59:17+00	\N
487	22	Anne Cremer 	Schaerbeek 	Retraitée 	\N	1d7c59e6d34de641462a5c2a2103542d	t	2020-05-03 14:54:17+00	2020-05-03 15:01:30+00	\N
490	22	Johan Heymans	Schaarbeek	\N	\N	2030c61776e8ff2453e37f3067efb524	f	2020-05-03 15:02:06+00	2020-05-03 15:02:06+00	\N
543	22	Pieter Jansen	Schaarbeek	IT Consultant	\N	abb7c21692281d95a83bd3fe44e47ecd	t	2020-05-03 18:55:24+00	2020-05-04 10:03:16+00	\N
523	22	Johan Serck	Bruxelles	emloyé	Maks vzw	a20187c9c45f893710cdbc59a7ca9ec9	t	2020-05-03 17:05:53+00	2020-05-04 14:19:56+00	\N
491	22	werner gladines	brussel	\N	freelance	1da3e9cd3ea65dadb0512e41f60410cb	t	2020-05-03 15:04:07+00	2020-05-03 15:04:51+00	\N
770	22	Meryiem Corniau	schaerbeek	citizen	\N	e58194e07f1016edb4249705fb761527	t	2020-05-09 09:26:35+00	2020-05-09 09:27:43+00	\N
492	22	Sebastián De La Rosa Carriazo	Schaarbeek 	Student 	\N	befd7cdd416b86911db188a50acf3558	t	2020-05-03 15:04:51+00	2020-05-03 15:05:09+00	\N
493	22	Oscar Tigchelhoff 	Schaarbeek	\N	me, myself & I 	b9f627a4934c24ec047dc040d3e62b04	t	2020-05-03 15:04:55+00	2020-05-03 15:05:44+00	\N
494	22	Hans Van Gaever	Schaarbeek 	Project Officer	\N	8baac17be8a9c279f4dae2560d356e1c	t	2020-05-03 15:08:36+00	2020-05-03 15:11:24+00	\N
495	22	Esther	Schaarbeek	Citizen	\N	af5151b51de09bb7450cac1c5ae609e5	t	2020-05-03 15:13:25+00	2020-05-03 15:13:47+00	\N
496	22	Françoise Dubucq 	Rosières 	Citizen	\N	efca0443a4ee11ebaccb7d6ad4953b83	t	2020-05-03 15:15:32+00	2020-05-03 15:16:47+00	\N
497	22	Thomas Morlion	Schaarbeek	Burger	\N	09cd426488c6d038c55e2e887df95a2b	t	2020-05-03 15:19:11+00	2020-05-03 15:19:38+00	\N
498	22	Rens Gijsen	Schaarbeek	\N	GBS Paviljoen	045966f10b71548b8477206298605dec	t	2020-05-03 15:20:35+00	2020-05-03 15:20:56+00	\N
499	22	Marita Vihervaara	Schaerbeek 	Citizen	\N	52df2301922680be3fdba6b0e9805d54	t	2020-05-03 15:21:52+00	2020-05-03 15:22:19+00	\N
501	22	Thomas Maenhout	Sint-Agatha-Berchem	\N	Thomas	2174f8abb9014f21658a8fe7aaa67e98	t	2020-05-03 15:23:56+00	2020-05-03 15:24:13+00	\N
502	22	Isabelle Van Asbroeck	schaerbeek	\N	citoyenne	59a43dc1ccd90e2a847c0077f5f88c4e	t	2020-05-03 15:34:21+00	2020-05-03 15:36:17+00	\N
503	22	Jeroen Lenaerts	Schaarbeek	Inwoner	Vrt	0c67dca4a6357f81ecfabcd2988f57db	t	2020-05-03 15:45:07+00	2020-05-03 15:47:38+00	\N
504	22	Jan Bosmans	Jette	1090	Bosmans Jan	124b67d7e7664001f53fd1e8b125c5c6	t	2020-05-03 15:50:29+00	2020-05-03 15:50:43+00	\N
505	22	Lisa pepermans	Ever	Etudiante 	Citoyenne 	968bc5db6930756a7026d1c6e2a373b1	t	2020-05-03 15:54:29+00	2020-05-03 15:56:11+00	\N
508	22	Manon K. Janssen	Sint-Joost-Ten-Node	citizen	\N	e584d82f3663873a036260d3ea53e2aa	t	2020-05-03 15:58:28+00	2020-05-03 15:59:10+00	\N
510	22	Kolya Corno	Schaerbeek	engineer	\N	fb5f5babc5544ca61784e7d801b9eea1	t	2020-05-03 16:01:45+00	2020-05-03 16:04:29+00	\N
511	22	Bert Spreuwers	Schaerbeek	juriste	/	b896bb6ed2dfe790bf2ae3194f177667	t	2020-05-03 16:03:37+00	2020-05-03 16:06:03+00	\N
512	22	Lieve Franssen	Schaarbeek	\N	\N	b83a1810e08ba0190f83190ab2663364	t	2020-05-03 16:07:48+00	2020-05-03 16:08:15+00	\N
513	22	Al Sawalha Mazen	Schaarbeek 	Teckniker 	\N	c9f00a41dab4c927965c985547059052	f	2020-05-03 16:09:51+00	2020-05-03 16:09:51+00	\N
515	22	Paula Dumont	Schaarbeekl	bewoner	\N	1c62b84c3283efafb5136852c4e9e2e0	t	2020-05-03 16:33:15+00	2020-05-03 16:33:43+00	\N
516	22	Nicolas Bertholet	Bruxelles	étudiant	/	549710ea74180a376aba896956af3256	t	2020-05-03 16:33:30+00	2020-05-03 16:33:53+00	\N
506	22	Yann-Aël Le Borgne	Schaerbeek	Citizen	\N	f3373715dcd28429335cf4cca42cfa74	t	2020-05-03 15:56:11+00	2020-05-03 16:36:00+00	\N
517	22	Lea Repo	SCHAERBEEK	Citoyenne	\N	e162a3039e4398955cad2e5fc04ce605	f	2020-05-03 16:36:30+00	2020-05-03 16:36:30+00	\N
518	22	Dominique Germay	Bruxelles 	Professeur de français langue étrangère 	\N	5b56905c1bc242b242587f5c575ef05f	t	2020-05-03 16:47:43+00	2020-05-03 16:48:07+00	\N
519	22	Mark Gutschoven	1030	Bewoner	\N	a63edd9f7baf56b608cb90c8d9a36c31	t	2020-05-03 16:48:41+00	2020-05-03 16:48:55+00	\N
520	22	Patsy M	Schaarbeek 	Inwoner	\N	6f8e243dbb2dcec20e7aa062790f5e1c	t	2020-05-03 16:54:46+00	2020-05-03 16:55:05+00	\N
522	22	Gerry Ortega	Brussels	Citizen	\N	c9616abdf0e08bf72482fec54010d142	t	2020-05-03 16:59:49+00	2020-05-03 17:01:02+00	\N
524	22	Stijn Billen	Schaarbeek	Bewoner	\N	716975ff0aaac2a99da18570dd808b0a	t	2020-05-03 17:06:25+00	2020-05-03 17:06:51+00	\N
526	22	Arjen Rosiers	Sint-Joost-ten-Node	\N	Test-Aankoop	dc23ef73553393034c22a29b1de7f6ae	t	2020-05-03 17:11:21+00	2020-05-03 17:11:38+00	\N
527	22	Pieter Thibaut	Schaarbeek	citizen	\N	7690947f4baf1b0c9806e378c4c54e23	t	2020-05-03 17:17:28+00	2020-05-03 17:17:38+00	\N
528	22	Marije van Velzem	Schaarbeek	Bewoner	\N	c5e1c6c1f51f16f1e459373a2582fcff	t	2020-05-03 17:19:13+00	2020-05-03 17:20:27+00	\N
500	22	Brendan Culley	Schaerbeek	\N	Citizen	ab1658e6f0de7b8a22985d65b9b8a8eb	t	2020-05-03 15:23:42+00	2020-05-03 17:29:38+00	\N
530	22	Vermeersch Pieter	Schaarbeek	\N	\N	30e60ea06f01e3500efaeb980dbb5f87	f	2020-05-03 17:38:48+00	2020-05-03 17:38:48+00	\N
531	22	Maël Brunet	Schaerbeek	citizen	\N	25e57d35b94a09e76423213ab341082d	t	2020-05-03 17:39:43+00	2020-05-03 17:40:08+00	\N
525	22	Janssens	Schaerbeek	citizen	\N	83b7d62c992dccaf6fcd08d1249c3607	t	2020-05-03 17:08:08+00	2020-05-03 17:40:44+00	\N
532	22	Lore Desmet	Schaarbeek	\N	\N	85783eb6d342f2bebcb51633c39e0ad2	t	2020-05-03 17:40:32+00	2020-05-03 17:40:45+00	\N
529	22	Suzanne Wan	Schaarbeek	\N	\N	6ac7a24ee41a56fe72a700b3d433bcf6	t	2020-05-03 17:35:21+00	2020-05-03 17:46:12+00	\N
533	22	Jerome Kisielewicz 	Schaerbeek	Citizen	\N	5b030cd749f1915b07d44084f1696b73	t	2020-05-03 17:46:23+00	2020-05-03 17:46:48+00	\N
534	22	Laure Allain	Schaarbeek	\N	\N	172bb206c7bbe3c9424101ba41a3a108	t	2020-05-03 17:53:55+00	2020-05-03 17:54:15+00	\N
536	22	Freia Van Hee	Schaarbeek	Inhabitant	\N	bf9fef10f4a804c99bba74f0f49aaafd	f	2020-05-03 18:00:41+00	2020-05-03 18:00:41+00	\N
537	22	Jeroen De Waegemaeker	Schaerbeek	Citizen	\N	95b2a3dceb9b3ef09614cd37475d5471	t	2020-05-03 18:11:20+00	2020-05-03 18:11:39+00	\N
538	22	Kathrin	1030	\N	Citizen	b105fbe8e277ca773988123816b0937e	f	2020-05-03 18:16:36+00	2020-05-03 18:16:36+00	\N
539	22	Hamers	Schaarbeek	\N	\N	8ed049d8b4f0ef1c5539fbd033de7a15	f	2020-05-03 18:21:07+00	2020-05-03 18:21:07+00	\N
540	22	Irina Radu	Schaerbeek	IT consultant	\N	183594631268a9c7b82fcafcf8d366ba	t	2020-05-03 18:21:29+00	2020-05-03 18:21:44+00	\N
541	22	Sébastien Driessens	Schaarbeek	\N	\N	2b8ac4df9b3060bfc698d7eeea301c12	t	2020-05-03 18:30:32+00	2020-05-03 18:34:24+00	\N
542	22	Thibault Jacobs	Schaerbeek	citoyen	\N	831f8a7801665600473612617a759b2f	f	2020-05-03 18:53:13+00	2020-05-03 18:53:13+00	\N
544	22	Annelies Smets	Schaarbeek	\N	Inwoner	6f7c12e000ee2b252dbc8957594df9f2	f	2020-05-03 18:58:50+00	2020-05-03 18:58:50+00	\N
546	22	Tom Van Cleynenbreugel	Schaarbeek	\N	\N	b28b566222766fe822647d4e1bb468ea	f	2020-05-03 19:10:34+00	2020-05-03 19:10:34+00	\N
521	22	Julie Van Soest	Schaarbeek	\N	\N	c03eeb5de3b6caa1c447d46ed00c1ac5	t	2020-05-03 16:59:05+00	2020-05-03 19:38:40+00	\N
507	22	Gilles Vandaele	Schaarbeek	Citizen, student	\N	9e33ffa214ec556b946e4956e5d92943	t	2020-05-03 15:57:38+00	2020-05-03 21:41:43+00	\N
535	22	Jean-François De Hertogh	Brussels 	Social worker 	Open Collective Brussels 	e6a19c42f1db51ab50dd458c7890a0d6	t	2020-05-03 17:55:59+00	2020-05-03 23:43:44+00	\N
1039	59	Annick Letecheur	\N	\N	\N	1142f3dfd5ef6c383b0aba9d0006db9a	t	2020-05-14 10:46:35+00	2020-05-14 10:47:05+00	\N
563	22	Heather 	Schaarbeek 	Pensionnée	\N	34da4fc27f7ecfd33e253e7bea8da91b	t	2020-05-04 04:50:14+00	2020-05-04 06:54:54+00	\N
548	22	Jenna Gailly	Schaarbeek	 Citizen	\N	3e983d6b32678002a0d4d502d3325b2e	t	2020-05-03 19:25:56+00	2020-05-03 19:26:30+00	\N
514	22	Sanne Peeters	Schaarbeek	Bewoner	\N	d9649b5e8e27d87ae1ee3350fede29a0	t	2020-05-03 16:12:48+00	2020-05-03 19:34:20+00	\N
570	22	Wim Vranken	Schaarbeek	\N	\N	bfecc734bce4222de2105385b329d572	t	2020-05-04 06:45:15+00	2020-05-04 06:57:49+00	\N
549	22	Joris Moonen	Schaarbeek	\N	\N	94c3a0241ec6faf2c5339d2e26cd8c82	t	2020-05-03 19:37:45+00	2020-05-04 07:16:36+00	\N
551	22	Laurence Vanden Eynde	Bruxelles	\N	Madame	22ad460c845b48d026954fb561dee793	t	2020-05-03 20:01:40+00	2020-05-03 20:07:33+00	\N
387	22	Sanne rous	1030	\N	\N	e7fffe30fd7594928963f201b56d1028	t	2020-05-03 09:30:29+00	2020-05-03 20:18:22+00	\N
575	22	Wouter Derijck	Schaarbeek	\N	\N	6de6140f8531c3257e9cd8fb055a8893	t	2020-05-04 07:22:51+00	2020-05-04 07:23:57+00	\N
553	22	Johan Simon	Schaarbeek	Student	\N	beb48cf305d7887308d92af848ab2d05	t	2020-05-03 20:22:42+00	2020-05-03 20:24:24+00	\N
554	22	Leen Rossignol	Schaarbeek	Citizen	\N	43a2bbd951558912daadc6b8f8892225	f	2020-05-03 20:33:14+00	2020-05-03 20:33:14+00	\N
555	22	Laura Calabrese	Brussels	citizen	\N	5989bdb40ae9bdbe8332500de9be9672	f	2020-05-03 20:38:05+00	2020-05-03 20:38:05+00	\N
556	22	Anthony Baert	Schaarbeek	economist	Ecolo-Groen	35a71bc5caf4b804445d52d542b1994b	f	2020-05-03 20:41:20+00	2020-05-03 20:41:20+00	\N
557	22	Arlette Hayère	Schaarbeek	Retraitée 	Comité des Bienfaiteurs 	6da27e8f9a4a6e15a8a253902720f91e	f	2020-05-03 20:42:46+00	2020-05-03 20:42:46+00	\N
547	22	Justine Maheux	Schaerbeek	Citizen	\N	8c179ee4f0c477090cc0ae9557c63121	t	2020-05-03 19:24:27+00	2020-05-04 07:36:21+00	\N
558	22	Maurice van der Velden	Schaarbeek	Consultant	\N	8c0bffe43e8d9dffec564942baa2ca2b	t	2020-05-03 20:49:52+00	2020-05-03 20:50:02+00	\N
509	22	Beatrice Bellavia	Ixelles	etudiante	\N	fbed7ecc91d69f66aeb1cecf7a009020	t	2020-05-03 16:00:02+00	2020-05-04 07:42:37+00	\N
550	22	Pieter Van Leemputten	Schaarbeek	Bewoner	\N	b3f2470b4d160ffbd02692cd7cb54095	t	2020-05-03 19:55:55+00	2020-05-03 20:57:31+00	\N
552	22	Sylke Van Dierdonck	Schaarbeek	\N	Huisarts	d571dd0918ea9907b432822e8fe50886	t	2020-05-03 20:15:02+00	2020-05-03 21:06:07+00	\N
560	22	Sofie Bické	1030	Schaerbeekoise	PME - Philomena	4b033ada5bf47a268594d00da0bf961c	t	2020-05-03 21:28:29+00	2020-05-03 21:28:45+00	\N
576	22	Jan Stoop	Schaarbeek	Inwoner	\N	eb85921a677177046a0adc3a67b693fd	t	2020-05-04 07:58:11+00	2020-05-04 08:02:45+00	\N
561	22	Christine l	1030	\N	\N	75b8d38a6bb25644666564255510f059	t	2020-05-03 22:31:05+00	2020-05-03 22:31:25+00	\N
562	22	Koen Vandekerkhove	Schaarbeek	\N	\N	c7a93d137acdc47c8bfa0506ab6f39d5	t	2020-05-03 22:41:05+00	2020-05-03 22:41:45+00	\N
577	22	emily smith	Brussels	\N	\N	f2d20d6e73d88d0f46fadf7f80dcfda1	t	2020-05-04 08:05:52+00	2020-05-04 08:06:09+00	\N
565	22	Emilie	1480	Employée	\N	00e455cb2f7e183650c7dd70d6b650b4	f	2020-05-04 05:30:33+00	2020-05-04 05:30:33+00	\N
566	22	Paloma Petrement	1030	Citoyenne	Gracq	0d6233ad84a82fda2a16e7f0aa55a676	t	2020-05-04 05:50:42+00	2020-05-04 05:51:02+00	\N
578	22	Astrid Cousin	Schaerbeek	employee	\N	bd7df6868dc4b28588b2332475323c24	t	2020-05-04 08:13:16+00	2020-05-04 08:17:57+00	\N
567	22	Maïka Bernaerts	Schaerbeek	avocate	\N	12f49a79a15e9350b861731abb30bcae	t	2020-05-04 06:01:49+00	2020-05-04 06:02:22+00	\N
579	22	Christophe Himpens	Schaarbeek	Citizen	\N	d4af9eaf33a733c86f5eb40d4ff9d54b	f	2020-05-04 08:21:14+00	2020-05-04 08:21:14+00	\N
568	22	Ben Beerens	Schaarbeek	Citizen	\N	054ad9fc29a0568f582e865b2395e750	t	2020-05-04 06:24:47+00	2020-05-04 06:25:06+00	\N
569	22	Pierre Sommereyns	Schaerbeek	employé	\N	2af7e970c1bd308e223a7a93b3b96440	t	2020-05-04 06:30:42+00	2020-05-04 06:31:11+00	\N
564	22	Estíbaliz García Recio	Schaerbeek	Ergothérapeute	Citoyenne	4993586d0850c788e8e366858438e403	t	2020-05-04 04:50:31+00	2020-05-04 06:33:12+00	\N
580	22	Philippe Cornelis	Schaarbeek	Citizen	\N	e640e604cd9d041810a086be74bd0778	t	2020-05-04 08:23:36+00	2020-05-04 08:46:54+00	\N
581	22	Thomas Brégeon	Schaerbeek	employé	citoyen	62548edf76279d3e4f754d098034cc4e	t	2020-05-04 08:39:01+00	2020-05-04 08:47:59+00	\N
584	22	Hoolans	Schaerbeek 	Habitante	\N	bc1f79b72be2d3c84be713caf5660c68	t	2020-05-04 08:51:44+00	2020-05-04 08:53:07+00	\N
586	22	Marian Lodewijckx 	Schaarbeek	Citizen	\N	669ee97e84d2a6ccbe97ba45bf477a10	t	2020-05-04 08:56:45+00	2020-05-04 08:57:33+00	\N
585	22	F. Cuignet	1160	Citoyenne	\N	77d186ba4c872be46a2260bc6e53cd6c	t	2020-05-04 08:56:44+00	2020-05-04 08:58:06+00	\N
587	22	Sébastien ALBANESE	Schaerbeek	Citizen	\N	6dfa93fef0fd9006241b2bf918f171f5	t	2020-05-04 09:00:43+00	2020-05-04 09:15:36+00	\N
588	22	Kristof Van den Eynde	1030	citizen	\N	1efcec8c815002a7b252ac4ed42f9c70	t	2020-05-04 09:26:41+00	2020-05-04 09:27:15+00	\N
589	22	Stéphanie Antolini	Schaerbeek	citoyenne	habitante	b102af40ab36281949bbdb576ccfb977	t	2020-05-04 09:30:56+00	2020-05-04 09:31:08+00	\N
590	22	Mathieu Caillez	Schaerbeek	citoyen	\N	f2b823ed61c0db6542fa16c175d67d94	t	2020-05-04 09:33:59+00	2020-05-04 09:34:11+00	\N
591	22	Peter Kupers	Schaarbeek	Banker	\N	42dcad25d5a7098ad4b925f9b5d4ec16	t	2020-05-04 09:39:26+00	2020-05-04 09:39:59+00	\N
592	22	rik hendrickx	\N	\N	\N	183abb3e74801dd02a18b8735e76d8d5	t	2020-05-04 09:48:06+00	2020-05-04 09:48:24+00	\N
595	22	Naomi Cambien	Schaarbeek	\N	\N	5b421042e00ad20409132a5049fc6421	t	2020-05-04 10:10:14+00	2020-05-04 10:11:37+00	\N
596	22	Nathalie De Leeuw 	Schaarbeek 	\N	Architect 	bcf9cfdcaacd12c77eb9f1c51628fc9a	f	2020-05-04 10:11:58+00	2020-05-04 10:11:58+00	\N
597	22	Yarne Daeren	Schaarbeek	\N	\N	1ca5c8ec64a9ea8ead92548360d6908d	t	2020-05-04 10:21:14+00	2020-05-04 10:21:23+00	\N
599	22	Jef De Smet	SCHAARBEEK	Citizen	\N	cc05aa0c2b693ffc858d2187dbad2003	t	2020-05-04 10:23:42+00	2020-05-04 10:24:26+00	\N
600	22	Tobias Santens 	\N	Citizen	\N	f752fab5d18b8c85e3fd52ad47bf59af	f	2020-05-04 10:29:51+00	2020-05-04 10:29:51+00	\N
601	22	Sonia RINGOOT	Bruxelles	\N	habitante de Schaerbeek	37d8d4901dfa424082c4993566f4df5c	t	2020-05-04 10:34:53+00	2020-05-04 10:35:10+00	\N
602	22	Wouter De Ceulaer	Schaarbeek	Citizen	\N	7d687ad4e839af421a0f69759f16c972	t	2020-05-04 10:53:11+00	2020-05-04 10:54:07+00	\N
605	22	Pieter Maes	Schaarbeek	inwoner	\N	2b3d2f7c3c6dc1f59cccb609aadd0280	t	2020-05-04 11:12:01+00	2020-05-04 11:12:15+00	\N
607	22	Glaesener	1030	Psychologue 	\N	e06ccd3826a1aa8ad0e2432acb3f2a03	f	2020-05-04 12:02:48+00	2020-05-04 12:02:48+00	\N
606	22	De Backer-Eggers	Schaarbeek	\N	\N	9a8c9e81e8f03fca3ad0396854392d92	t	2020-05-04 12:02:00+00	2020-05-04 12:06:17+00	\N
603	22	Emi Catteeuw	1030	\N	\N	d8fbb373331b7ea30cb552f12932c1a4	t	2020-05-04 11:00:13+00	2020-05-04 12:11:55+00	\N
608	22	Monika Ramos	Schaerbeek	\N	citizen	fd5247455eb8db2f8b25ce10027f3e0b	t	2020-05-04 12:22:16+00	2020-05-04 12:24:31+00	\N
609	22	Lies Gilis	Brussel	Citizen	\N	ceee3abc2e245796cdc4a9c0becca3ef	t	2020-05-04 12:29:14+00	2020-05-04 12:29:34+00	\N
610	22	Alberto Doce	Schaerbeek	Adm	EC	2215e739fa4506b395c39c2f3756b97b	t	2020-05-04 12:31:09+00	2020-05-04 12:31:41+00	\N
604	22	Tessa Namias	Schaerbeek	citoyenne	\N	a8064ebe8ddbf6bbbaad00ea561464cc	t	2020-05-04 11:09:03+00	2020-05-04 12:34:31+00	\N
611	22	Liepina Ruta	Schaerbeek	Traductrice	\N	3441a7c9ce1911356440eb987935a423	t	2020-05-04 12:43:44+00	2020-05-04 12:54:30+00	\N
612	22	Hadewijch Vanhaverbeke	Schaarbeek	\N	\N	804c5dac255f75fbbf6e5c0efd999401	f	2020-05-04 12:55:45+00	2020-05-04 12:55:45+00	\N
593	22	Felix HAAS VINÇON	Schaerbeek	1030	Privé	0964b5487f7536721432de633e0a5035	t	2020-05-04 09:50:45+00	2020-05-05 18:49:51+00	\N
613	22	Alex Housen	Schaarbeek	Academic	VUB	771f1a8a7c390c35140b2408d94e4557	f	2020-05-04 12:56:42+00	2020-05-04 12:56:42+00	\N
614	22	Renée Dekker	Schaerbeek	Citizen	\N	69a464b44a34aa181717b830f4c8b9cd	t	2020-05-04 13:04:52+00	2020-05-04 13:05:07+00	\N
640	22	Jeanne Babar	Schaerbeek	Employee	\N	76ae58617c13c259de7d44878bee124a	t	2020-05-04 19:52:14+00	2020-05-10 20:25:11+00	\N
615	22	Robert Phoenix	Schaarbeek	Employee	\N	ab759fc91a39f2e4359ead4ddfe17c6b	t	2020-05-04 13:37:12+00	2020-05-04 13:38:00+00	\N
616	22	David De Witte	Mechelen	ex-schaarbeek bewoner	\N	172c857d29980c0db4fe934fa2ce3514	t	2020-05-04 13:52:55+00	2020-05-04 13:53:05+00	\N
618	22	Jeroen van Gent	Schaarbeek	Wetenschapper	\N	3ce89acab27313d688022cd7f1044043	t	2020-05-04 14:01:45+00	2020-05-04 14:02:16+00	\N
619	22	Joran Desmet	Schaarbeek	\N	\N	fda77c3ad6e56715503a455ba42d3aec	f	2020-05-04 14:04:58+00	2020-05-04 14:04:58+00	\N
617	22	Olivier Coupleux	schaarbeek	citoyen	\N	5f6a7221c7371bde563973c235c417da	t	2020-05-04 13:55:19+00	2020-05-04 14:06:16+00	\N
620	22	Pieter-Jan Broos	Schaarbeek	Journalist	\N	c402488eb138d8b89cee10e982a84d9b	t	2020-05-04 14:34:39+00	2020-05-04 14:35:16+00	\N
621	22	anne simon	schaerbeek 	citizen	\N	4cf6d340fae3e9180c5adf4ff4a022c4	t	2020-05-04 14:40:51+00	2020-05-04 14:41:20+00	\N
622	22	Sabine Bronchart	Schaarbeek	Project manager	Burger	50c08505d73c50c5b951b20172870fd7	t	2020-05-04 14:44:13+00	2020-05-04 14:44:40+00	\N
623	22	Félicien Dufoor	\N	\N	\N	5d3a2515c171b6364790d89b64843dd6	f	2020-05-04 15:00:01+00	2020-05-04 15:00:01+00	\N
624	22	Benjamin Deboosere	Schaarbeek	Filmmaker	\N	2153fbaf29e489b2415659ba9bd07092	t	2020-05-04 15:23:35+00	2020-05-04 15:26:30+00	\N
625	22	Helena Claerhout	Schaarbeek	Citizen	\N	fa37d1143dc87d55bc0932e9404181d7	t	2020-05-04 15:41:32+00	2020-05-04 15:42:00+00	\N
626	22	Sandy Macharis	Molenbeek	Citizen	\N	4eccff2bc7aeb0da32e9f26a19c3a542	t	2020-05-04 15:47:23+00	2020-05-04 15:49:53+00	\N
628	22	Lien De Tavernier	Schaarbeek	Citizen	\N	0f73ff4bc82073722901a0a1a57e3316	t	2020-05-04 16:24:20+00	2020-05-04 16:25:05+00	\N
627	22	Frederik De Schepper	Puurs	BXL enthousiast 	\N	c62e688e1b5c7adbfdd49508141b6e1a	t	2020-05-04 16:00:37+00	2020-05-04 16:25:28+00	\N
315	22	Bart Onsia	Schaarbeek	bediende	\N	78c861bfc1140a7f224f93be97c887bc	t	2020-05-02 19:11:28+00	2020-05-04 16:55:11+00	\N
631	22	Pauline Billiouw 	Schaerbeek	Entrepreneur	Skillsfactory	470d36d7fcb4e4d76af132ddcedcbde9	t	2020-05-04 18:03:35+00	2020-05-04 18:03:54+00	\N
633	22	Gaëtan Meyer	Schaerbeek	\N	\N	8b9780247f75c9e38c99b57326bd5c60	t	2020-05-04 18:30:07+00	2020-05-04 18:30:32+00	\N
632	22	Gertjan van Koolwijk	Schaarbeek	human	\N	ccf240bb63283e8585c80624097a1c92	t	2020-05-04 18:29:47+00	2020-05-04 18:30:42+00	\N
634	22	Verjans Sophie	Schaarbeek	Bewoner	\N	6efb9debf0439b08170211dc583bcd93	t	2020-05-04 18:33:42+00	2020-05-04 18:33:59+00	\N
635	22	Marleen De Winter	Schaarbeek	\N	\N	66d37b7749e0bd1658dd87c8ba2b30da	t	2020-05-04 18:39:54+00	2020-05-04 18:40:24+00	\N
637	22	Julien	Schaerbeek	Citizen	\N	96722c84b1f2fe3c9238a5da424775da	t	2020-05-04 18:55:51+00	2020-05-04 18:57:52+00	\N
638	22	Khaldoun Sinno	Schaerbeek	\N	\N	87b21f6f7e88468b10f2a875a9ca3959	t	2020-05-04 19:02:59+00	2020-05-04 19:03:33+00	\N
642	22	Francis Donvil	Schaarbeek	\N	\N	609e90823da05caa879b81c77307103d	t	2020-05-04 20:04:11+00	2020-05-04 20:07:40+00	\N
639	22	Ruben Hostens	Schaarbeek	\N	1987	8500ac7efd25115a79d4267bc40f7ed5	t	2020-05-04 19:41:52+00	2020-05-04 20:11:45+00	\N
643	22	Philippe Serruys	Schaerbeek	citoyen	\N	9207c328f0135db9894989688932fa01	t	2020-05-04 20:27:15+00	2020-05-04 20:27:39+00	\N
644	22	Katia melis	Bruxelles 	Avocate	\N	e90796a81ae36b2c14e2126238f65a59	t	2020-05-04 20:28:44+00	2020-05-04 20:33:37+00	\N
645	22	Nele Van Damme	SCHAARBEEK	\N	\N	38647007691866a88f115ba36f1671ce	t	2020-05-04 20:47:50+00	2020-05-04 20:48:30+00	\N
646	22	Mart Achten	Schaarbeek	\N	\N	1ccc8ad111da3c1ea2757538da7f08cd	t	2020-05-04 20:52:36+00	2020-05-04 20:53:47+00	\N
647	22	Ruth Van Dyck	Schaarbeek	\N	\N	1f171d07eaba3a497bc606c8abb4f3d2	t	2020-05-04 20:55:02+00	2020-05-04 20:55:39+00	\N
648	22	Jonathan Sprooten 	Schaerbeek 	Citizen	\N	74707c253f107bcdc7512b1140ee9062	t	2020-05-04 21:10:59+00	2020-05-04 21:11:19+00	\N
649	22	Sophie Louis	Schaerbeek	\N	\N	553bc5f643347952341525fb16620fc2	t	2020-05-04 22:06:23+00	2020-05-04 22:06:55+00	\N
651	22	Lana ieven	Schaarbeek	\N	\N	7f7d9782fc8e405465f0d52a8c3ef141	t	2020-05-04 22:13:06+00	2020-05-04 22:13:27+00	\N
650	22	Lamarque Cédric	Schaerbeek	\N	\N	3e8a6d13886e2e9f89773fc232d338ef	t	2020-05-04 22:07:48+00	2020-05-04 22:51:47+00	\N
653	22	Anne-Catherine Melis	Schaerbeek	Citoyenne	\N	225dcecd7c7e0e4d1fa23b9bdb4a5ead	t	2020-05-05 06:13:27+00	2020-05-05 06:14:31+00	\N
654	22	Toon Maenhout	Schaarbeek	Inhabitant	\N	585119f7fe8b815b200102e80c300163	t	2020-05-05 06:17:48+00	2020-05-05 06:18:09+00	\N
655	22	Ine Maenhout	Laken	2	\N	399ee6e84eda93d8b445686e02786f47	t	2020-05-05 06:24:36+00	2020-05-05 06:25:01+00	\N
656	22	Wendy Van Wynsberghe	Schaarbeek	lecturer	citizen	70bec8c080cdc1261dd3e73433ff207f	t	2020-05-05 07:12:24+00	2020-05-05 07:12:40+00	\N
641	22	Johan Loeckx	Schaarbeek	\N	\N	80291bf2f0d9c55041323b6932a198c5	t	2020-05-04 19:56:00+00	2020-05-05 07:20:41+00	\N
658	22	George Blackman	Schaerbeek	Citoyen	\N	3f787596863881c2e52464fa84cdf721	f	2020-05-05 07:42:36+00	2020-05-05 07:42:36+00	\N
657	22	Kris Deschouwer	Schaarbeek	\N	\N	54d1bb265594dbb3879bc884e3bcb214	t	2020-05-05 07:42:13+00	2020-05-05 07:43:13+00	\N
652	22	Dries Verdoodt	Sint-Gillis	\N	\N	a5ac0c68731d806b5d69024921fcf6c9	t	2020-05-04 22:50:43+00	2020-05-05 08:06:28+00	\N
660	22	Alex Colling	Ixelles	Student 	Miss	9fe846fb2cbffd4a79623060bc35b774	f	2020-05-05 08:19:21+00	2020-05-05 08:19:21+00	\N
659	22	Annelies Mollet	Schaarbeek	\N	publiq	578d456437347c82e8af49b9d68f9240	t	2020-05-05 08:19:14+00	2020-05-05 08:19:47+00	\N
661	22	cyril spruytte	Brussels	student	\N	2144e24d4193af97d1c8c84f9e458a95	t	2020-05-05 08:28:00+00	2020-05-05 08:28:54+00	\N
662	22	nele dehantschutter	st joost ten node	\N	\N	f0dcda81917ff25e32541d1bc386c6d7	t	2020-05-05 08:30:48+00	2020-05-05 08:51:30+00	\N
664	22	Karen Sas	Schaarbeek	\N	inwoner/citizen	d9e461776b0fabd64fc31e9caad52749	t	2020-05-05 09:27:15+00	2020-05-05 09:27:36+00	\N
666	22	Elias Goossens	Overijse	\N	\N	813d13910e5c5edb1289dcd572423b04	t	2020-05-05 09:55:15+00	2020-05-05 09:55:38+00	\N
667	22	Niamh cullen 	Brussels 	Communications 	Citizen 	6e42b2818a34083ebf575468389a1c32	t	2020-05-05 10:00:11+00	2020-05-05 10:01:37+00	\N
668	22	Jan Maenhout	schaarbeek	\N	architect-stedenbouwkundige	963b25653cd76e28068ea70ef51b45b3	t	2020-05-05 10:41:25+00	2020-05-05 10:47:43+00	\N
670	22	Rianne van Dam	Gent	\N	\N	bbe17e9ec8421045348036818e335f89	t	2020-05-05 10:53:44+00	2020-05-05 10:54:07+00	\N
671	22	Karla Merckx	Schaarbeek	\N	\N	130f4fe1a899f742e66c41f81ade21c9	f	2020-05-05 11:07:43+00	2020-05-05 11:07:43+00	\N
672	22	Jan laute	Schaarbeek	1030	\N	7a2a326230914d1eb8380bc964c5513b	t	2020-05-05 11:37:29+00	2020-05-05 11:41:20+00	\N
673	22	Leticia Sere	1030	\N	\N	cac022beaa0a9c8ba563370e024a0310	t	2020-05-05 11:42:06+00	2020-05-05 11:42:25+00	\N
674	22	Jana Vanderkelen	Brussel	Citizen	\N	bbee81c4e00a570d35f255cefa58a63d	f	2020-05-05 11:42:30+00	2020-05-05 11:42:30+00	\N
675	22	Thomas Küpper	Brussels	Citizen	\N	8581bad9150ec48c92ac0137be5841a0	t	2020-05-05 12:17:01+00	2020-05-05 12:17:19+00	\N
665	22	Agnès Leroux	1030	Policy Director	\N	67bef165fa511e182a459d8dde0a768c	t	2020-05-05 09:37:52+00	2020-05-05 14:02:26+00	\N
636	22	Bernard PLADET	Schaerbeek	Citizen	\N	90b1a14b81a65c7e81d229fb1ef40e4b	t	2020-05-04 18:53:04+00	2020-05-05 21:30:41+00	\N
676	22	Karla Merckx	\N	\N	\N	a561c7f91ac3cefa35228fec57494dc4	t	2020-05-05 12:24:50+00	2020-05-05 12:25:21+00	\N
677	22	Koen Plessers	Brussel	\N	\N	252fe9bee81412e6f75f5750de2879bd	f	2020-05-05 13:25:01+00	2020-05-05 13:25:01+00	\N
771	22	Fabienne Seveillac	Schaerbeek	Musician	\N	44ef329eb073b731952d8e7ea296814b	t	2020-05-09 10:40:28+00	2020-05-09 10:50:09+00	\N
678	22	Linden Farrer	Brussels	citizen	\N	49b78dafb9559eba916169dbe3f8969d	t	2020-05-05 13:34:03+00	2020-05-05 13:36:54+00	\N
679	22	Hupet Anne Sophie	schaerbeek	citoyenne	\N	eeaac3497b0b60df77d3f9aa13f82117	t	2020-05-05 13:44:21+00	2020-05-05 13:45:18+00	\N
680	22	Maria Grazia Montella 	Schaerbeek 	Project manager	\N	e4b5a767659b91fe676fd1e132b66d84	t	2020-05-05 13:48:11+00	2020-05-05 13:48:27+00	\N
594	22	Lies Fern	\N	\N	\N	0e576e769c7ef48bc60b93da73728aa2	t	2020-05-04 09:58:56+00	2020-05-05 14:48:11+00	\N
683	22	Barbara Merckx	1030	\N	\N	45b33396b14e781d72a02780a860d6e1	t	2020-05-05 15:43:47+00	2020-05-05 15:44:41+00	\N
681	22	Alicia Thomas	Schaerbeek	Citizen	\N	e384401ce09a956058bf4b0567160789	t	2020-05-05 15:31:34+00	2020-05-05 15:57:52+00	\N
685	22	Farah Nolens	1030	Citizen	\N	0434e53711c88bded7a741743ada98f1	t	2020-05-05 15:47:12+00	2020-05-05 16:00:40+00	\N
686	22	Thomas Vande Velde	Schaerbeek	Urbaniste/citoyen	\N	5e2b27948820faad6711ccbb37ec8cfd	t	2020-05-05 16:26:07+00	2020-05-05 16:26:44+00	\N
688	22	Jeroen Baekelandt	Schaarbeek	\N	\N	ad6ebb1e6bc9dcaa536350a88c8325c6	t	2020-05-05 16:54:23+00	2020-05-05 16:54:37+00	\N
689	22	Gobiet Jean-Philippe 	1030 	Avocat	Coteaux 	f5787a373339ae8f566b268f1102aa7e	f	2020-05-05 16:56:50+00	2020-05-05 16:56:50+00	\N
687	22	Hannelore Goeman	SCHAARBEEK	\N	sp.a	2f563c85744212c000715ed33b4e6d4e	t	2020-05-05 16:41:45+00	2020-05-05 17:03:48+00	\N
690	22	Aubry Touriel	Schaerbeek 	Citoyen	\N	4b4a96fcb6924255fecfa5c6b4283ca1	t	2020-05-05 18:24:39+00	2020-05-05 18:24:56+00	\N
692	22	Geraldine Bruyneel	Schaarbeek	\N	\N	531d823373d17e0cf47a49b6eb468bb3	t	2020-05-05 18:48:01+00	2020-05-05 18:48:17+00	\N
695	22	Michiel Herteleer	1030	\N	\N	ecf97a17e496f93377955b5f9665c120	t	2020-05-05 19:50:18+00	2020-05-05 19:52:54+00	\N
696	22	Jochem Devens	Schaarbeek	\N	\N	0eeb47aa4ab5f5fbfe61bcf82be4d7da	t	2020-05-05 19:55:37+00	2020-05-05 19:56:01+00	\N
697	22	Kilimnik	Schaerbeek 	Gerant	La maison du vélo 	1afbbfd02bc8d0513949f85f7e439cd7	t	2020-05-05 20:13:55+00	2020-05-05 20:14:10+00	\N
698	22	Nicolas DEBUE	Bruxelles	Dirigeant entreprise, Citoyen 	\N	202ec0441a77d41f437544a913063d46	t	2020-05-05 20:36:51+00	2020-05-05 21:07:55+00	\N
684	22	Rosie Ball	Brussels	\N	Citizen	daf3e02e176d1e2372e21d09732a40ea	t	2020-05-05 15:45:51+00	2020-05-05 21:12:22+00	\N
699	22	Delphine	\N	\N	\N	6ed8bfa401a27269b979bc220dde1eba	f	2020-05-05 21:43:38+00	2020-05-05 21:43:38+00	\N
700	22	Naomi Zwaenepoel	Schaarbeek	Citizen	\N	209e22e0343bd1170fc7d0af22e554b2	t	2020-05-05 23:05:28+00	2020-05-05 23:05:52+00	\N
702	22	Emilie Bigaré	Schaerbeek	Citoyenne	\N	0523cbd402bb35f55f8c4529ea45e6b6	t	2020-05-06 06:31:56+00	2020-05-06 06:33:12+00	\N
701	22	Mieke Vandewynckele	Schaarbeek	Citizen	\N	af5649b68c4345674285b4a52252b03d	t	2020-05-06 06:01:49+00	2020-05-06 06:53:29+00	\N
703	22	Egea	Schaerbeek	Employee	Citoyenne	c4ff814e4b6fe880435aa9ac801dde59	f	2020-05-06 06:54:52+00	2020-05-06 06:54:52+00	\N
704	22	Manon Brulard	Elsene	Citizen	HackYourFuture Belgium	dedc2a5730fdc258292732bd3debe2f0	t	2020-05-06 07:26:59+00	2020-05-06 07:27:12+00	\N
693	22	Bart Veys	Schaarbeek	Citizen	\N	c398a9cc525359fcf768c223575f6142	t	2020-05-05 19:03:39+00	2020-05-06 08:10:45+00	\N
705	22	Iliana Janssens	\N	\N	\N	6440c5f04fefee4b206fbf4ec0dbbdb6	t	2020-05-06 08:18:59+00	2020-05-06 08:19:57+00	\N
706	22	Anna Sriethorst	\N	\N	\N	b3dc8cec10821925bc3d366a1c8464de	t	2020-05-06 08:43:44+00	2020-05-06 08:44:07+00	\N
707	22	océane badiou	ixelles	citoyenne	\N	4de9d4b1f44b05f8192d650046ebc80a	t	2020-05-06 08:47:10+00	2020-05-06 09:58:47+00	\N
708	22	Rémi Denimal	1030	\N	\N	d0f5dd1849afe069ac26ba16a2aefb41	t	2020-05-06 10:14:36+00	2020-05-06 10:15:09+00	\N
709	57	Legros	bruxelles 	\N	\N	bab2e27228e2614a71f327a43d98110f	f	2020-05-06 10:16:57+00	2020-05-06 10:16:57+00	\N
710	22	nicodemo	bxl	flâneur	citizeneke	99e0b3120829da09a4267b412a4d2bad	t	2020-05-06 10:22:35+00	2020-05-06 10:27:06+00	\N
712	57	Salima	Bruxelles 	\N	\N	2274678598aa4625e69d4a06ff9005cc	t	2020-05-06 10:32:23+00	2020-05-06 10:32:47+00	\N
713	57	Ahmet Yilmaz	1030	Indépendant 	\N	8ed6db1d2fc9c8e463f8ff4c51fe9685	f	2020-05-06 10:39:12+00	2020-05-06 10:39:12+00	\N
714	57	Nathalie 	Anderlecht 	\N	\N	5089c5a796933981617301360daa8619	f	2020-05-06 11:10:19+00	2020-05-06 11:10:19+00	\N
711	22	thomas HEndrickx 	Schaarbeek	\N	\N	8c8ff20afe1246b10c379b4c015e35d1	t	2020-05-06 10:25:11+00	2020-05-06 11:58:16+00	\N
716	22	Nicolas Dubuisson	1080	employé	\N	923517f4e906f2a0a4ae8c4332f8b966	t	2020-05-06 12:49:22+00	2020-05-06 12:50:28+00	\N
717	22	Buysse	Bruxelles	\N	\N	324d92cfcd839502d2079f6459d834cb	t	2020-05-06 13:01:45+00	2020-05-06 13:03:45+00	\N
715	57	Kazan Ilyas 	Bruxelles 	Schaerbeek 	\N	8259be113d2ea180f8a77b614b65dbc2	t	2020-05-06 11:57:28+00	2020-05-06 13:09:56+00	\N
718	22	Cyrille Bollu	Schaerbeek	\N	\N	610e0852c8fe3cbdbb1caf0b9dfe1131	f	2020-05-06 14:52:59+00	2020-05-06 14:52:59+00	\N
691	22	Jannes Loffens	Schaarbeek	Citizen	\N	a1f5cbb65ad2bc199c79a72f9efd9465	t	2020-05-05 18:43:54+00	2020-05-06 15:04:06+00	\N
719	22	Cyrille Bollu	Schaerbeek	\N	\N	fbc726bfca62ff1d9377d7e8ea8dfb44	t	2020-05-06 14:53:39+00	2020-05-06 15:18:14+00	\N
721	22	Jenni Tukiainen	Schaerbeek	\N	citoyen	d4eefae22130e563aaf1d621b4142d74	f	2020-05-06 18:21:51+00	2020-05-06 18:21:51+00	\N
722	22	Jenni Tukiainen	Schaerbeek	\N	Citizen	09b8c6ff4af54d4c3272c87f6ea041fb	f	2020-05-06 18:24:48+00	2020-05-06 18:24:48+00	\N
720	22	Agnes	Brussels	citizen	\N	e614bcab165dd38740df13bc565b356d	t	2020-05-06 18:18:26+00	2020-05-06 18:25:41+00	\N
723	22	Caroline Englebert	Sint-Joost-ten-Node	\N	\N	5f4d12eb65319418442b94a1e493092b	t	2020-05-06 21:18:20+00	2020-05-06 21:18:55+00	\N
724	22	ahammad	1030	Citizen 	\N	f697912e557f15ab0152ddc368648192	t	2020-05-06 21:52:17+00	2020-05-06 21:52:51+00	\N
726	22	Els Verheirstraeten 	Brussel	Inwoner	\N	f535a22a3eca66dd83e0309266784030	f	2020-05-07 06:00:24+00	2020-05-07 06:00:24+00	\N
727	22	Nghi Tram	Schaerbeek	\N	\N	e8c75525642f89623e35930087a76d06	t	2020-05-07 07:11:10+00	2020-05-07 07:11:29+00	\N
728	22	Cyprien Houdmont 	Schaerbeek	Citizen	\N	a62a5c0ea8e49362f25245fd9e7a5191	f	2020-05-07 08:28:13+00	2020-05-07 08:28:13+00	\N
730	22	Simon	Schaerbeek 	student	\N	927f0cb469e6a2a4e2d4c6c4182ea4e8	t	2020-05-07 10:05:06+00	2020-05-07 10:05:40+00	\N
731	22	Nick Haaker	Schaerbeek	Citizen	\N	705c9f4f8664c48f2afc64e037f564b6	t	2020-05-07 10:30:21+00	2020-05-07 10:30:44+00	\N
732	22	Malte Arhelger	Bruxelles	Employé	\N	01248e0daf9bad382ca4a17cf5c8eefa	t	2020-05-07 11:46:37+00	2020-05-07 11:48:50+00	\N
733	22	Caroline Jacobs	Schaerbeek	citoyenne	\N	af392d21ddc9b25d567cc3a4b225e328	t	2020-05-07 11:55:35+00	2020-05-07 12:03:04+00	\N
729	22	Felix Fabich	Schaarbeek	 Citizen	\N	4d47550180f6addb441e9e8885559493	t	2020-05-07 10:02:40+00	2020-05-07 12:03:11+00	\N
734	22	Marianna Tuokkola	Schaerbeek	citizen	\N	ab3c79b8b55e2abdacebb32f14f24797	t	2020-05-07 13:20:48+00	2020-05-07 13:21:23+00	\N
735	22	Luigi Bisogno	Schaerbeek	étudiant	ULB	6d573f9a5ab9acb67787b5d1697863ed	t	2020-05-07 13:42:06+00	2020-05-07 13:42:32+00	\N
736	22	Jérôme Jacques 	Schaerbeek 	Citoyen 	\N	b06909de9969c8e890d0c722acb6ad56	f	2020-05-07 14:10:46+00	2020-05-07 14:10:46+00	\N
737	22	Céline Rigole	Schaerbeek	citizen	\N	e6bf4c93f676539ac17f20e78b624bf5	t	2020-05-07 16:15:36+00	2020-05-07 16:16:10+00	\N
239	22	Jan Peyls	Schaarbeek	\N	\N	c2183fb432627f1f9d156e1df7b9135c	t	2020-05-02 14:09:44+00	2020-05-07 17:22:53+00	\N
738	22	Blondel	schaerbeek	\N	MOC	feecd8e071252b46041496f8d25b72d0	t	2020-05-07 17:26:54+00	2020-05-07 17:30:25+00	\N
773	22	Joep van Dijk	Brussel	Ambtenaar	\N	bfd748223091d4df59dcb8161f1cea56	t	2020-05-09 13:59:49+00	2020-05-09 14:01:47+00	\N
739	22	Florence Grégoire	Schaerbeek	Citoyenne 	\N	6b6c7fe16f536008d926851c682abd7f	t	2020-05-07 18:08:38+00	2020-05-07 18:08:57+00	\N
740	22	Karen De Cooman	Schaarbeek	Citizen	\N	feac3974ce2b67ca7f0c9de50cf69671	t	2020-05-07 18:08:40+00	2020-05-07 18:09:25+00	\N
741	22	Cindy Vandeweyer	Schaarbeek	\N	\N	5f16cc6792e6015d3500659f11764527	t	2020-05-07 18:33:59+00	2020-05-07 18:36:03+00	\N
775	22	Pierre Hansquine	Brussel	Citoyen et consultant	\N	5c7321a53a8cb18fe0f40deecab3cea6	f	2020-05-09 14:37:29+00	2020-05-09 14:37:29+00	\N
742	22	Matthias Jespers	Schaarbeek	Citizen	\N	1bf73afb94e905bf76e5ad6602303884	t	2020-05-07 22:17:01+00	2020-05-07 22:17:25+00	\N
754	22	antoon janssens	1030	Sociaal assistent	\N	73fba12d77f46b36183392b458e9ba6d	t	2020-05-08 15:44:34+00	2020-05-09 16:46:45+00	\N
772	22	Jonathan Pues	\N	\N	\N	0936fdf9ec3e3605c1f8a5944c87aecd	t	2020-05-09 10:56:43+00	2020-05-09 18:50:51+00	\N
745	22	Thomas	Brussels	\N	\N	aaa8448a7538c682849b7fd8d427d2bc	f	2020-05-08 12:13:07+00	2020-05-08 12:13:07+00	\N
776	22	Marie Verbeeke	Leuven	\N	\N	93699b59f312e5f1c853d05cc1cfcd60	f	2020-05-09 20:30:04+00	2020-05-09 20:30:04+00	\N
744	22	gilles debrun	1190 - Forest	architecte	\N	b1e2748cc588254cb5c13bfb6d743af9	t	2020-05-08 12:11:08+00	2020-05-08 12:19:38+00	\N
747	22	Matthieu VIROT 	Schaerbeek 	citoyen	\N	1594bca12ad2c3964316901b59193957	t	2020-05-08 13:31:17+00	2020-05-08 13:31:34+00	\N
778	22	Campos	Bruxelles	Citoyenne	\N	359d0d41dd81d02db34d2cf448d58cab	f	2020-05-09 20:45:58+00	2020-05-09 20:45:58+00	\N
748	22	Jennar	1030	Juriste	\N	3296e1bca1f385a0c0c937978a783018	t	2020-05-08 14:03:41+00	2020-05-08 14:04:15+00	\N
749	22	Stefan Reinhold 	Schaerbeek 	\N	\N	04df6b7edf2ce8623c364614295ddcb6	f	2020-05-08 14:53:32+00	2020-05-08 14:53:32+00	\N
779	22	Lotte Kennivé	Schaarbeek	Citizen	\N	fa04f3023b55fd66a31875e1332044af	f	2020-05-09 21:08:19+00	2020-05-09 21:08:19+00	\N
750	22	Ilona Lo	Schaarbeek	Burger	\N	ded3bf3cb3db2e1325ebe5e041de012f	t	2020-05-08 15:08:04+00	2020-05-08 15:08:19+00	\N
751	22	charlene marechal	\N	\N	\N	d6818466324d214f778648cce2ea054a	f	2020-05-08 15:30:04+00	2020-05-08 15:30:04+00	\N
780	22	Kristien Sacré	Brussel	Citizen	\N	7d0d5f85653612167f23776f6941ff3b	t	2020-05-09 21:50:30+00	2020-05-09 21:51:44+00	\N
753	22	Birgitte Bønding 	1030 Bruxelles 	Opera singer	\N	586b244859a92fb8a1e273a76b57c9ba	t	2020-05-08 15:39:02+00	2020-05-08 15:39:20+00	\N
752	22	Nicolas AUZANNEAU 	1030 	Schaerbeekois 	\N	ede6cda88a477b94359765b9ac8848d7	t	2020-05-08 15:33:25+00	2020-05-08 15:40:26+00	\N
781	22	Anca Toma	Brussels	\N	\N	ebf56143a4085f197533c66219d799e1	f	2020-05-10 06:32:36+00	2020-05-10 06:32:36+00	\N
755	22	Jonathan Huart	Schaerbeek	\N	\N	66cd19d00ec561e105147fa1fc0736bc	t	2020-05-08 15:45:11+00	2020-05-08 15:47:32+00	\N
782	22	Ruth Kennivé	Schaarbeek	\N	\N	9120d6c09549eeae19de909a4f412b1c	f	2020-05-10 07:29:44+00	2020-05-10 07:29:44+00	\N
756	22	André Duijsters 	Brussels	\N	\N	f34fa25fd7777db41c9dac2fea5cdd0c	t	2020-05-08 15:49:06+00	2020-05-08 15:49:28+00	\N
757	22	Basil Saen	1030	Advocaat	\N	f7a00a402c843afaef6991118d7b1346	t	2020-05-08 15:53:24+00	2020-05-08 15:53:43+00	\N
783	22	Geert Vansintjan	Hansbeke	\N	\N	a216f1d1fdd14650523e83ad42ac9369	t	2020-05-10 10:39:55+00	2020-05-10 10:40:18+00	\N
759	22	Toussaint 	Schaerbeek 	\N	\N	6191a175bb197ac80ab175ce959ee23b	f	2020-05-08 16:14:37+00	2020-05-08 16:14:37+00	\N
760	22	Toussaint 	Schaerbeek 	Designer	Filigrane 	a692ccd2168f9c67d3f7c7d1c20995ea	t	2020-05-08 16:16:50+00	2020-05-08 16:18:03+00	\N
761	22	Anaïs Lambert 	Molenbeek-Saint-Jean	citizen	\N	3fa3729a4ffea931a79a9d8abf1f9626	t	2020-05-08 16:31:31+00	2020-05-08 16:31:54+00	\N
786	22	Hélène Paquay	Schaerbeek	Citizen	\N	da2286fa561501961ca7266f4076dc52	t	2020-05-10 15:37:10+00	2020-05-10 15:37:51+00	\N
762	22	Sylvia Hartinger	Schaerbeek	\N	\N	88fc830974b91b9677ce7f4da64d6ae7	t	2020-05-08 19:14:54+00	2020-05-08 19:27:53+00	\N
763	22	Nicolas Sauveur	Liege	world citizen	\N	d0270d774e369ee3d58709ad2e50fe75	t	2020-05-08 19:20:44+00	2020-05-08 19:46:01+00	\N
764	22	Javier Bernal Revert	Etterbeek	Photographe	\N	bc9203cd5037affe028605c482794408	t	2020-05-08 20:42:57+00	2020-05-08 20:43:49+00	\N
743	22	Anniina Kuronen 	Schaarbeek 	Citizen	\N	66600e2708cc776cbe04d2d05e147849	t	2020-05-07 23:09:08+00	2020-05-08 21:23:36+00	\N
787	22	Frodo Daems	Schaarbeek	\N	\N	56946c65a404b6b0fa038c9eedf207c8	t	2020-05-10 15:41:12+00	2020-05-10 15:41:41+00	\N
765	22	Chantal vanoeteren 	Schaerbeek 	Citoyenne	\N	b16d3c5cd4135f54fc73f4854edc4bfb	t	2020-05-09 05:56:55+00	2020-05-09 05:57:53+00	\N
788	22	An Schurmans	Schaarbeek	Citizen	\N	85451169ceb369474b73e5725399f998	f	2020-05-10 16:19:46+00	2020-05-10 16:19:46+00	\N
766	22	Christine Guillain 	1030	Citoyenne 	\N	2f73f21c92d3863c435eab2f53b9a18d	t	2020-05-09 07:21:37+00	2020-05-09 07:36:55+00	\N
789	22	Wauter Mannaert	Schaarbeek	Auteur	\N	ddbb4631c1987fcf8cc5cad900087a24	t	2020-05-10 16:56:17+00	2020-05-10 16:56:39+00	\N
790	22	Jef Vandenbergen	Jette	1090	\N	9514aa335fe252eb260cab1fe169fcdd	t	2020-05-10 17:01:03+00	2020-05-10 17:06:51+00	\N
792	22	Elise delens	Schaerbeek 	Citizen	\N	0f810ccdb6f6c270342735a4191322fc	f	2020-05-10 17:23:13+00	2020-05-10 17:23:13+00	\N
793	22	Richard Weston	Nantwich	Academic	UCLan	1809443476648d4ac2b92a5c92f9614f	t	2020-05-10 17:33:24+00	2020-05-10 17:36:40+00	\N
795	22	Lembrechts Pieter	Evere	\N	\N	81140609c8507f4cc80103b236e48fc9	f	2020-05-10 19:37:18+00	2020-05-10 19:37:18+00	\N
796	22	Leonhard den Hertog	Schaarbeek 	\N	\N	3d378ba3dd002e28af66c2932b59ce7f	t	2020-05-10 20:04:40+00	2020-05-10 20:04:56+00	\N
797	22	Eva van Velzen	Schaarbeek	\N	\N	996016645fa8353b77d66db231549f14	t	2020-05-10 20:08:23+00	2020-05-10 20:08:37+00	\N
799	22	Robby Merckx	Schaarbeek	Inwoner	\N	4bbc9f54e04829a60cc38a282f0b120f	t	2020-05-10 21:08:49+00	2020-05-10 21:10:19+00	\N
800	22	Magali Sasse	Bruxelles	Juriste	Mademoiselle	11ff434ef01a01ffe7ebf6e9f7ebcad0	t	2020-05-11 05:17:55+00	2020-05-11 05:18:17+00	\N
801	22	Dorien Vanden Boer	Schaarbeek	Citizen	\N	861c7db5c1b1eb2f5f8530a472f1894b	f	2020-05-11 07:43:01+00	2020-05-11 07:43:01+00	\N
791	22	Elisabeth Verniers	Schaarbeek	Citizen	\N	aef87666cae11fe955924d3f7ec016bd	t	2020-05-10 17:10:42+00	2020-05-11 09:33:25+00	\N
803	22	Bart Verstraeten	Schaarbeek	Inwoner	\N	3adce088e2f3cbc8717d4a914d071518	f	2020-05-11 15:54:55+00	2020-05-11 15:54:55+00	\N
804	22	jotte vandenabeele	schaarbeek	\N	\N	db268f13ae64a17e8f8193e46bc05f07	t	2020-05-11 16:24:20+00	2020-05-11 16:24:45+00	\N
805	22	Bogdan Chelariu	Schaerbeek 	citizen	\N	d123e9d6967ae30d81a3aead79d5559d	t	2020-05-12 07:27:06+00	2020-05-12 07:27:24+00	\N
806	22	Christophe Samray	Schaerbeek	Citoyen	\N	f2f45bb84b1ffdde3aaab46968737260	t	2020-05-12 08:17:25+00	2020-05-12 08:18:57+00	\N
807	22	Vincent Hargot	Saint Josse Ten Noode	Citizen	\N	d8be7148439bff0846372fdbd674766d	t	2020-05-12 15:39:05+00	2020-05-12 15:45:40+00	\N
808	22	Doniol Valcroze elsa	Bruxelles 	Realisatrice	\N	5f6e479637f5cb99222df05abed37dd2	t	2020-05-12 17:11:45+00	2020-05-12 17:12:23+00	\N
809	59	nele dehantschutter	st joost ten node	\N	Burger	78a29b8840a21d692d59e9338e4be631	t	2020-05-12 21:22:50+00	2020-05-12 21:23:11+00	\N
810	59	Caroline Englebert	Sint-Joost-ten-Node	citoyen	\N	0e37ce20de8682d63512ca847dcfdfce	t	2020-05-12 21:26:18+00	2020-05-12 21:26:56+00	\N
811	59	Barbara Dessers	Sint joost ten node	Inwoner	\N	e04356d510c41f8de619462da93e812a	t	2020-05-12 21:34:45+00	2020-05-12 21:35:10+00	\N
1028	59	Bo	\N	\N	\N	7426f7efe3a58a70d00c6445607130de	t	2020-05-14 08:06:37+00	2020-05-14 08:06:54+00	\N
812	59	Laure Capitani	1210	Citoyenne	\N	7c27e6d3acd0542efa7b0c0525928e99	t	2020-05-12 21:39:08+00	2020-05-12 21:39:25+00	\N
859	59	Zoe Gray	Saint-Josse	Curator	Wiels	815c32e45f5874de02bf3f3bf338e433	t	2020-05-13 08:37:39+00	2020-05-14 13:12:00+00	\N
814	59	Annelore Schittecatte	1210	\N	\N	135b4f0756b7b2a58e2e4fca5a2e909d	t	2020-05-12 21:41:41+00	2020-05-12 21:45:42+00	\N
815	59	Christina Gens	Sint-Joost-ten-Node	1210	Buurvrouw (en voor alle niet-menselijk leven van sint-joost)	e80b3e6c0765d903e34bda9941a2d40b	t	2020-05-12 21:46:22+00	2020-05-12 21:50:03+00	\N
816	59	Pietter Lansens	1210	\N	\N	dd1df4a209b7de021e09b0042019d243	t	2020-05-12 21:52:53+00	2020-05-12 21:53:11+00	\N
817	59	Carolina Mateo	1210	\N	\N	2640404a41fc042970762ca8ec48862b	t	2020-05-12 22:01:28+00	2020-05-12 22:02:18+00	\N
818	59	Nicola Di Virgilio	 Saint-Josse-Ten-Node	\N	\N	f1dd55756cf24b367c59334e1e45fe53	t	2020-05-12 22:05:05+00	2020-05-12 22:05:28+00	\N
819	59	Paul Steinbrück	1210	busy	\N	660e36653529b73c91e5fa81ab110d87	t	2020-05-12 22:09:20+00	2020-05-12 22:09:49+00	\N
821	59	Petra Reichel	1210	\N	\N	d553da92641f88870d9754a2fbf8c1ee	f	2020-05-12 23:04:50+00	2020-05-12 23:04:50+00	\N
822	59	Joannes Vandermeulen	Sint-Joost-ten-Node	Ontwerper	Namahn bv/sp	713dd80ed042dbb2a3a8052a4bbc2cdc	f	2020-05-13 04:27:52+00	2020-05-13 04:27:52+00	\N
823	59	Anna Cottyn	1000	Burger	\N	053915041c52893a45f861a2bab48125	t	2020-05-13 05:28:38+00	2020-05-13 05:29:03+00	\N
824	59	Marie Palmers	1210	\N	\N	376b8bf0db63db97d2ea7a5bf3ff9416	t	2020-05-13 05:37:22+00	2020-05-13 05:37:43+00	\N
829	59	Katrijn Cassiers 	1210	\N	Burger	a27721a2f654fdbe1de74c81f6f47e81	t	2020-05-13 06:16:53+00	2020-05-13 06:17:55+00	\N
832	59	Eva  	1030+1210	\N	\N	22a382844842edd104ffc67435fd3cc3	t	2020-05-13 06:37:01+00	2020-05-13 06:37:20+00	\N
833	59	Geert Palmers	\N	Bewoner	\N	eee848deaf2fff8d235e2fb2db552ee7	f	2020-05-13 06:44:26+00	2020-05-13 06:44:26+00	\N
834	59	Maria Helene Louwrier	Sint Joost/ Schaarbeek	Burger	\N	b4b039ebe4ea2c60e25a54862a2a8368	t	2020-05-13 06:46:36+00	2020-05-13 06:46:59+00	\N
825	59	Geertrui Van de Weghe	Sint Joost ten Nodee	Inwoner	\N	03423d21e780706e8cf54ee7a01a2ff6	t	2020-05-13 05:48:31+00	2020-05-13 06:57:51+00	\N
826	59	Benedikt Verhaeghe	Bruxelles Saint-Josse-ten-Nood	\N	\N	3e4a5d3a9082b67480d0fe9b2ebd1c63	t	2020-05-13 06:00:43+00	2020-05-13 07:05:25+00	\N
835	59	Lotte Veuchelen	Schaarbeek	\N	1980	9480be3bae434385bb0f63ec73913ed7	t	2020-05-13 07:08:45+00	2020-05-13 07:09:16+00	\N
837	59	Cinzia Castignani 	1210 bruxelles	Photographe 	Citoyen 	719ace0606bf1412a20e0d3599f6c7a0	f	2020-05-13 07:15:14+00	2020-05-13 07:15:14+00	\N
836	59	Dorothee baert	Saint Josse schaerbeek	\N	\N	11131a479e43b80a4f7b678c9e528f17	t	2020-05-13 07:14:43+00	2020-05-13 07:15:58+00	\N
838	59	Petrus Pincé 	1210 bruxelles	\N	Citoyen 	54aa9a9e1c4d3db6f1a501620a4a4d1e	f	2020-05-13 07:17:27+00	2020-05-13 07:17:27+00	\N
839	59	Cinzia Castignani 	1210 bruxelles	\N	Citoyen 	26b749af43368fd93d5a6c9ace2b0d59	t	2020-05-13 07:19:03+00	2020-05-13 07:20:02+00	\N
840	59	Els Samyn	Sint-Joost-ten-Node	Inwoner	\N	37cd0a5b9813c1d1967bffc930c28810	t	2020-05-13 07:42:00+00	2020-05-13 07:44:18+00	\N
842	59	Axel Gosez	Saint-Josse-ten-Node	Citoyen	\N	436a676a9e9f1804d8a38baf6406bc53	t	2020-05-13 07:44:01+00	2020-05-13 07:45:05+00	\N
843	59	Giorgia Morero 	Saint-Josse-ten-Noode 	\N	\N	29df4a00c312d59d7288187d7bf1192e	f	2020-05-13 07:48:37+00	2020-05-13 07:48:37+00	\N
844	59	Sophie Di Ruggiero	1210	\N	Citoyenne 	55b75103d736ebf59af1b9568fc9cf3f	f	2020-05-13 07:49:18+00	2020-05-13 07:49:18+00	\N
846	59	Schiettecatte Michel	1210	habitant	\N	a1cb6ca4e8c821482bc0592e32ee3ca4	t	2020-05-13 07:52:17+00	2020-05-13 07:53:34+00	\N
841	59	Freia Van Hee	Schaarbeek	Moeder	\N	b32a4f25d8aa5e9d49c4d6de78277ded	t	2020-05-13 07:43:31+00	2020-05-13 07:58:08+00	\N
848	59	Emilia Van Roy	Sint-Joost-ten-Node	Inwoner	\N	b54752b156e1a098a6a6ccf87e86661a	t	2020-05-13 08:14:27+00	2020-05-13 08:14:48+00	\N
820	59	Hilde Van Vreckom	Sint-Joost-Ten-Noode	Advocate en inwoner 	\N	6a5d1a7e15f5fc498532b52e7695e302	t	2020-05-12 22:28:07+00	2020-05-13 08:15:02+00	\N
850	59	Philippe Putman	Sint-Joost-ten-Node	waakzame burger	anti-street racers front	e7c3a5e8c515c77eab0c30f052afa8ef	t	2020-05-13 08:19:34+00	2020-05-13 08:23:07+00	\N
852	59	Maarten Franssens	Sint-Joost-ten-Node	Inwoner	/	34fd16ddeaf49196da528cafc715b9f2	f	2020-05-13 08:23:40+00	2020-05-13 08:23:40+00	\N
851	59	Lut Delva	Sint Joost ten node	Burger	\N	65ff373db8c19340725b4e17bf84256c	t	2020-05-13 08:23:26+00	2020-05-13 08:23:53+00	\N
853	59	Clara Vanmuysen	Sint-Joost-ten-Node	inwoner	\N	d8fa08a322ffac9670a7d580e7d52cd5	t	2020-05-13 08:24:00+00	2020-05-13 08:24:27+00	\N
854	59	Gijs Ieven	Sint-Joost 	Inwoner	Inwoner	0a016bc1504fb5191884f534543f74bf	t	2020-05-13 08:25:27+00	2020-05-13 08:26:20+00	\N
855	59	Francis Vanden Bavière	Schaarbeek	Architect	\N	e04e066f84e102bcd9a884b61f06b8f0	t	2020-05-13 08:26:09+00	2020-05-13 08:26:29+00	\N
856	59	Steven Raeman	Sint-Joost-ten-node	\N	\N	52214a1f2c414f9b48dc0a03442cf882	t	2020-05-13 08:27:22+00	2020-05-13 08:28:12+00	\N
858	59	Romina	1210	Inwoner	\N	32d622a88f808341128af94c656a480a	t	2020-05-13 08:28:57+00	2020-05-13 08:29:22+00	\N
857	59	Jeroen Van Laer 	Schaarbeek 	1030	Inwoner	c8c1287e313da800f3a6920077c58b5c	t	2020-05-13 08:28:36+00	2020-05-13 08:39:28+00	\N
861	59	Pieter-Jan Vandromme	1210	Fietskarloper	\N	17b3bce0487d87d245b4d3d0f24f1317	t	2020-05-13 08:48:01+00	2020-05-13 08:48:32+00	\N
849	59	Kathleen Van Schel	Sint-Joost-ten-Node 	\N	kathleen@oxalys.be	e25a0d9f18defadb4a1b5d34008c709b	t	2020-05-13 08:19:17+00	2020-05-13 08:51:31+00	\N
863	59	Fanny Mertz	1210	\N	\N	a8f8d7ab98f7aeb0cf2238c47ae7910d	t	2020-05-13 08:51:33+00	2020-05-13 08:55:58+00	\N
866	59	Géraldine Capart	Saint Josse 	Citoyenne 	\N	9c5f1df9ebdf24549ab9e3116e6387a6	t	2020-05-13 09:01:01+00	2020-05-13 09:02:20+00	\N
867	59	Mertens Marie	Liege	\N	\N	efa16bdd7319ee942d4e072dcfd12e3f	f	2020-05-13 09:06:04+00	2020-05-13 09:06:04+00	\N
868	59	Filippo Gagliardi	St Josse ten Noode	Fonctionnaire	EU Research Executive Agency	a40af950a471f271125ba18ee357824a	t	2020-05-13 09:07:23+00	2020-05-13 09:07:33+00	\N
869	59	Koen Meeus	Sint-Joost-Ten-Node	Burger	\N	4f553e5c621cbf2d182400284dab3ecc	t	2020-05-13 09:09:09+00	2020-05-13 09:09:37+00	\N
870	59	Stefan Schippers	Sint-Joost-ten-Node	Entrepreneur & inwoner	B.E.E.P. 	6d7d7880708e68d0cd523f2597d8465b	t	2020-05-13 09:09:25+00	2020-05-13 09:09:56+00	\N
871	59	Hanna Ilczyszyn	Brussels 	\N	\N	749ec7386c76ff038d32f4c818197dc4	t	2020-05-13 09:10:51+00	2020-05-13 09:11:15+00	\N
872	59	Tristan Hoogewys	Saint-Josse	Salarié	\N	69cf3c2ab0f98fcbf02a0f2ba3e33dde	t	2020-05-13 09:13:22+00	2020-05-13 09:14:07+00	\N
873	59	Lydie Rossignon	BRUXELLES	étudiante	ulb	db4f2f0a690b643039fe21320d9639bc	t	2020-05-13 09:13:58+00	2020-05-13 09:14:20+00	\N
874	59	Keren-Peta Lorier	1210 Sint-joost-ten-node	\N	\N	5a05122487b71f396ee76939af47f1c2	t	2020-05-13 09:14:03+00	2020-05-13 09:15:18+00	\N
875	59	Mathilde Rossignon	Etterbeek	Consultant	\N	a1353447712a302614079ef70dfa1880	f	2020-05-13 09:19:28+00	2020-05-13 09:19:28+00	\N
876	59	Petra Reichel 	1210	\N	\N	637aa2fd395be10d06c020ae72900429	t	2020-05-13 09:20:30+00	2020-05-13 09:21:25+00	\N
860	59	Kristien Sacré	Sint-Joost-ten-Node	\N	\N	6c52b156b34b388c98c9122e5a10dd10	t	2020-05-13 08:43:33+00	2020-05-13 10:20:22+00	\N
1002	59	Clarisse Lasserre	1210	Citoyenne	\N	8d71705316e018bd8622974788d34850	t	2020-05-13 19:20:06+00	2020-05-13 19:22:42+00	\N
813	59	Wiet Vandaele 	Schaarbeek 	\N	\N	df9108ef587a78f5ed0dc7cb9b484283	t	2020-05-12 21:40:09+00	2020-05-14 07:19:19+00	\N
920	59	Luc Stevens 	Bruxelles 	\N	Gracq 1000Bruxsel	22db5aff8631816a4686e63281662311	t	2020-05-13 10:57:09+00	2020-05-14 10:56:46+00	\N
877	59	Isabelle de Spirlet 	Bruxelles	Habitante	\N	672beac6c74777099836e7fe8d3bdcc3	t	2020-05-13 09:21:03+00	2020-05-13 09:21:35+00	\N
1040	59	Lien Nauwelaerts	1210	burger	\N	37d71baeff4e39512260abeb8390c331	t	2020-05-14 11:38:21+00	2020-05-14 11:38:51+00	\N
878	59	Nico Deblauwe	1210	inwoner	\N	de5a67a38bdefc1b31156b96e26788ea	t	2020-05-13 09:21:57+00	2020-05-13 09:22:11+00	\N
880	59	Riet Ory	Sint-Joost-ten-Node	Inwoner	\N	42be2bc34a0a55e57a82187452accbd2	f	2020-05-13 09:27:59+00	2020-05-13 09:27:59+00	\N
879	59	Benoit Gérard	Schaerbeek	\N	Traverse Saint josse régulièrement	607d5b0d31059ccfc33939d9f5b63fe9	t	2020-05-13 09:22:21+00	2020-05-18 18:25:35+00	\N
881	59	Sébastien Mathieu 	Saint Josse	Gestionnaire Maison de Santé Atlas	Maison de Santé Atlas	5eb18b3862696361d286e95662ecf4f4	t	2020-05-13 09:30:46+00	2020-05-13 09:31:26+00	\N
882	59	Song-A Mun 	Brussels	Musician	\N	4a1763f93321a1cccafaa239899810f2	f	2020-05-13 09:37:12+00	2020-05-13 09:37:12+00	\N
883	59	Sophie Di Ruggiero 	1210	\N	Citoyenne 	d92ed7655d364cbddd3428fdcaef3ff1	t	2020-05-13 09:38:13+00	2020-05-13 09:38:36+00	\N
884	59	Velge Charlotte 	1210	Citoyenne	\N	ba03cb17d77d4c3c6058cb2ca78292cd	f	2020-05-13 09:40:14+00	2020-05-13 09:40:14+00	\N
887	59	Gillis Veldeman	Sint Joost	Musician	\N	980fcea22aa479cd33f790d66991e2f7	t	2020-05-13 09:43:07+00	2020-05-13 09:43:42+00	\N
886	59	Marie-Catherine Michaux	1200	\N	\N	cdc50cc8e482a5c2df019d49d37bba33	t	2020-05-13 09:42:47+00	2020-05-13 09:47:00+00	\N
888	59	Jakob Ghijsebrechts	Sint-Joost-Ten-Node	Inwoner	\N	378b7240a4b4e5d592720d05437680c8	t	2020-05-13 09:47:43+00	2020-05-13 09:48:07+00	\N
890	59	Brecht Verstraete	Sint-Joost-ten-Node	\N	Burger	825b9f7e87154934654c1c62d3953263	t	2020-05-13 09:48:34+00	2020-05-13 09:49:20+00	\N
891	59	Romain Weikmans	Bruxelles	\N	\N	e87626c061c1156bf6ba46f8bf192be3	t	2020-05-13 09:53:42+00	2020-05-13 09:54:50+00	\N
893	59	Martin Couwenbergh	\N	éducateur	Institut Kurde	9ae5da6fb50584ec1ec0fa2fa98ee08c	t	2020-05-13 09:56:56+00	2020-05-13 09:57:27+00	\N
892	59	Marie-Thérèse COENEN	Bruxelles	pensionnée	--	fafe588749168570b6bbc7206b773c77	t	2020-05-13 09:56:43+00	2020-05-13 09:58:09+00	\N
895	59	Elisabeth De Schutter	1210	\N	\N	94de55addb7cb6df8a8022e9dd8d57b4	t	2020-05-13 10:03:56+00	2020-05-13 10:05:00+00	\N
899	59	Olivier Dewit	1030	\N	\N	84ab2d381fd3f151f1d272b14cca7685	f	2020-05-13 10:08:23+00	2020-05-13 10:08:23+00	\N
897	59	Hugo Pecarrere	Saint-Josse-ten-Noode 	\N	\N	4f3c92e62cbbe0b313431f9d02b2c84f	t	2020-05-13 10:08:09+00	2020-05-13 10:08:39+00	\N
962	59	Niels Wennekes	Molenbeek	Dipl	\N	1268eaf60ec459f6bdef51cab7d7d3f0	t	2020-05-13 13:58:10+00	2020-05-13 13:59:16+00	\N
898	59	Valentin Fontaine	Saint-Josse	Consultant	\N	fc0e4999fd6e945e71f567820ceed604	t	2020-05-13 10:08:23+00	2020-05-13 10:09:27+00	\N
900	59	Jan Völkel	\N	\N	\N	f9ecb2f5e9a1891fa2d0976a30b8ca64	f	2020-05-13 10:10:45+00	2020-05-13 10:10:45+00	\N
901	59	Jonathan Delchambre	Bruxelles	ingénieur 	MSF	e1f5e8e2c63ab4d4c6a616cfa3b5b3dd	t	2020-05-13 10:10:49+00	2020-05-13 10:11:15+00	\N
902	59	Jan Völkel	\N	\N	\N	32ea3936294c757338d8620d687d02c4	t	2020-05-13 10:15:39+00	2020-05-13 10:16:14+00	\N
903	59	Sirisha malla	Brussels	IT professional	Axa	94eb758aa46d274f0dbd56566d737186	t	2020-05-13 10:16:45+00	2020-05-13 10:17:21+00	\N
904	59	Anaïs Moschonas	Bruxelles	Infirmière	Maison de Santé Atlas	84b505a497aa0f6a899daa65e4d7d1bd	t	2020-05-13 10:18:53+00	2020-05-13 10:20:22+00	\N
896	59	Elodie Mertz	1080	\N	\N	532f21cb76ad5b804463c1f411bd06ef	t	2020-05-13 10:07:36+00	2020-05-13 10:21:56+00	\N
905	59	Céline Godart	1030	citoyenne	\N	d2865cc49f2c7a7d5078d5cd07e45c28	t	2020-05-13 10:22:44+00	2020-05-13 10:23:41+00	\N
908	59	Johan Kerckhoven	1210	Inwoner	\N	2ce8d47a9b3cbae3e92fef5abdb0d662	t	2020-05-13 10:29:44+00	2020-05-13 10:30:01+00	\N
907	59	Evelyne Fremaux	1060	Citoyenne	\N	eedc771ebf334c00c95c9b113c1fb2ff	t	2020-05-13 10:28:49+00	2020-05-13 10:30:04+00	\N
910	59	J Moreira	St Josse	ingénieur 	\N	b9bba9b1e28110e03b0341abef34940a	t	2020-05-13 10:30:19+00	2020-05-13 10:31:50+00	\N
911	59	Wullens Lydia	Bruxelles	\N	\N	3bbfa28fb15c584562e43bb6ff6123c9	f	2020-05-13 10:31:55+00	2020-05-13 10:31:55+00	\N
894	59	Jean Michel Muhire	Saint Josse ten Nolde	Citoyen	\N	0ff250e907ee90ff269a9b313bc66c74	t	2020-05-13 09:59:06+00	2020-05-13 10:33:50+00	\N
912	59	Milena Patuelli	Saint-Josse-Ten-Noode	\N	\N	2546bf16f8147387772d0db76f05128a	t	2020-05-13 10:35:05+00	2020-05-13 10:35:43+00	\N
913	59	Thaïs Baugniet	Saint-Josse	Citoyenne	\N	5c322bc0858a2aaa630fb5f6f5d845fc	t	2020-05-13 10:35:32+00	2020-05-13 10:35:53+00	\N
914	59	Nicola Testa	Saint Josse	Citoyen 	\N	a014dfc37cc897aef6d8b4a5a9c0194c	t	2020-05-13 10:44:57+00	2020-05-13 10:45:16+00	\N
915	59	Pierre Stevens	Bruxelles	designer	citoyen	14b68b602f1a2548317d9b8de6bdb92f	t	2020-05-13 10:46:06+00	2020-05-13 10:46:29+00	\N
909	59	pascale missenheim	ORP JAUCHE	formatrice	EYAD ASBL	089e782a2057d35736a08e7ccd48de47	t	2020-05-13 10:30:15+00	2020-05-13 10:47:26+00	\N
916	59	Evelyn Blondeel	Sint Joost ten Node	\N	\N	e9d32030351f04e0ecb67939a38e8584	t	2020-05-13 10:53:41+00	2020-05-13 10:54:03+00	\N
918	59	Elora-Jeanne	Bruxelles	Etudiante	IHECS	326c42f1b5d1795a932a36394649d0f3	t	2020-05-13 10:56:28+00	2020-05-13 10:56:55+00	\N
921	59	Dierckx	St josse	\N	isadierckx@hotmail.com	1d190d39171af224c41aa6e87a38c9e1	f	2020-05-13 10:59:19+00	2020-05-13 10:59:19+00	\N
917	59	ben deboeck	Sint-Joost-ten-Node	burger	\N	fe7b57a52af7227ad488e17f1d2892ed	t	2020-05-13 10:55:59+00	2020-05-13 11:00:19+00	\N
919	59	rik deboeck	Sint-Joost-ten-Node	fietsende mini-burger	\N	7c84aec05745ee95322dbcf78b5d80a0	t	2020-05-13 10:56:55+00	2020-05-13 11:01:18+00	\N
889	59	Anne	1030	Schaerbeekoise habitant à 50m de St Josse	\N	abbbe38b8ee1559493796cc2427e1b6b	t	2020-05-13 09:48:23+00	2020-05-13 11:08:07+00	\N
922	59	Felicien	Bruxelles	\N	\N	1bf85394d276dd5ed2fe59d87e8e51e1	t	2020-05-13 11:10:34+00	2020-05-13 11:11:03+00	\N
923	59	marie delieux	Saint-Gilles	\N	\N	894bab4f4a4e6252237e9cbd86a11de6	t	2020-05-13 11:14:34+00	2020-05-13 11:14:52+00	\N
827	59	Van balberghe sophie	Saint josse	Citoyenne	\N	67244d21cbf7d804a85c97ca0d2f2aab	t	2020-05-13 06:01:12+00	2020-05-13 11:19:13+00	\N
925	22	Rodrigo Burgos	Schaerbeek	architect	\N	157878f18785b9d4b54b7b73524b5929	t	2020-05-13 11:20:43+00	2020-05-13 11:20:56+00	\N
924	59	Guillaume Defossé 	Saint-Josse 	Citoyen	\N	666542a32a8a88c18c9313f97d0013b6	t	2020-05-13 11:20:42+00	2020-05-13 11:21:22+00	\N
926	59	Florence Gillet	Bruxelles	Citoyenne	\N	d3d63148bea31c0939261282d1d39522	t	2020-05-13 11:21:10+00	2020-05-13 11:27:44+00	\N
928	59	Hélène	1210	citoyenne	\N	c30fe475790f29003a9087ddeaff4aed	t	2020-05-13 11:30:13+00	2020-05-13 11:31:04+00	\N
929	59	Anna Sandh	Brussels	Lawyer	\N	a75f79f8a76f5b300047aeb9fee930e1	t	2020-05-13 11:37:07+00	2020-05-13 11:37:42+00	\N
930	59	Gery Hubin	Bruxelles	citoyen	\N	d8dbcceec30762a94adeed0f013314a8	t	2020-05-13 11:38:14+00	2020-05-13 11:38:28+00	\N
931	59	Sarah Bello Vega	1000 Bruxelles	cycliste	\N	28c8f2c80503a16a1a9b574f4cb798fc	t	2020-05-13 11:39:38+00	2020-05-13 11:39:51+00	\N
933	59	Bob Geldermans	1210	\N	\N	b47d07b637159e813b6c5282729ab6fa	t	2020-05-13 11:48:36+00	2020-05-13 11:49:21+00	\N
934	59	Charles Delvaux	Saint-Josse	Employee	1988	256f3c7aed0027b68b3a667e875d6ef5	t	2020-05-13 11:49:45+00	2020-05-13 11:49:57+00	\N
935	59	A. van C.	Brussels	\N	\N	d4de392c13ed1f55c99471878243f4fd	t	2020-05-13 11:50:12+00	2020-05-13 11:50:46+00	\N
927	59	Teresa Maisano	1210	\N	\N	2f5d23644c7a3740237abc798ba98f66	t	2020-05-13 11:27:34+00	2020-05-13 12:40:44+00	\N
936	59	Ward Van Brussel	Schaarbeek	Vader	\N	84bcdf14891fb8f5451a3c786f5597d1	t	2020-05-13 11:53:55+00	2020-05-13 16:25:47+00	\N
954	59	Eva De Bruyn 	Sint-joost-ten-node	\N	Inwoner	8b859e6fa4772f277d43c9087158a622	t	2020-05-13 13:16:49+00	2020-05-14 12:47:00+00	\N
937	59	Bénédicte Bouvez	Saint-Josse	Présidente CFEP	CFEP	2e91fc9ecf764637a9d33f46de07cbca	t	2020-05-13 12:04:33+00	2020-05-13 12:05:01+00	\N
940	59	Olivier Vermeulen	Sint-Joost-ten-Noodde	Habitant	\N	6d1c54b92a85b9b72f9ec3e52ad7bd00	t	2020-05-13 12:21:41+00	2020-05-13 12:23:20+00	\N
942	59	Mathias Junqué	Bruxelles	\N	\N	06d0a98e16988764f3586cfd0e60c850	t	2020-05-13 12:30:07+00	2020-05-13 12:31:23+00	\N
943	59	ALdo Verschuere	1000	\N	\N	c57aec6b8610ad4114b14febfe72b5cc	t	2020-05-13 12:30:59+00	2020-05-13 12:31:28+00	\N
932	59	EYAD ASBL	1210	asbl	eyad asbl	b37ff52b407235314994cefe8e3ccda5	t	2020-05-13 11:40:23+00	2020-05-13 12:38:33+00	\N
939	22	Ronald Detige	1030	\N	\N	21344d9c644c6b81d0262fcf16a626c0	t	2020-05-13 12:21:15+00	2020-05-13 12:48:09+00	\N
944	59	tine vanfraechem	1210	burger	\N	bc8c7a5424a38bff3ae4030433794d45	t	2020-05-13 12:48:33+00	2020-05-13 12:49:10+00	\N
945	59	Thomas Prédour	1210	habitant 	\N	679731858635d17485b13ed8bfd41918	f	2020-05-13 12:49:12+00	2020-05-13 12:49:12+00	\N
946	59	Sophie	St-Josse-ten-noode	habitant	\N	e7152bab692d7eb5b87fa0f499e01ceb	t	2020-05-13 12:52:17+00	2020-05-13 12:53:31+00	\N
947	59	SOPHIE COLLETTE	Saint Josse	Citoyenne 	\N	2db1e24251d5b03ac15398c9c168358c	t	2020-05-13 12:58:45+00	2020-05-13 12:59:07+00	\N
948	59	Anna Sofia Bello Schmit	Schaerbeek	Ir architecte	\N	bc91b079491150928b795c982665626a	t	2020-05-13 13:01:01+00	2020-05-13 13:02:55+00	\N
949	59	JEANNOLIN Maïté	Saint Josse ten Noode	citoyenne	\N	673e185bb3ca4874bded88e67bffb609	t	2020-05-13 13:04:31+00	2020-05-13 13:04:43+00	\N
951	59	SEBASTIEN WIELEMANS	BRUSSELS	citoyen	1981	b201ae3d35d3b653160ec704f7b6fd96	t	2020-05-13 13:07:02+00	2020-05-13 13:07:16+00	\N
950	59	Henri	Saint josse	Architecte	\N	53b96b04b22d0b2e21e1840bdb7d031f	t	2020-05-13 13:06:22+00	2020-05-13 13:07:56+00	\N
952	59	Ina Ciumakova	Bruxelles 	Citoyenne 	1210	8158a8c2e824bbfa1bc7a67e46c641c9	t	2020-05-13 13:16:03+00	2020-05-13 13:18:00+00	\N
955	59	Anthony Stern	1030	Citoyen	\N	5746bcacc772d38ca44b907038c04e51	t	2020-05-13 13:18:08+00	2020-05-13 13:18:31+00	\N
956	59	Pierre DUSHIME 	Bruxelles	Architecte	\N	ecc80c87c946f604edc55184a25886c9	f	2020-05-13 13:21:51+00	2020-05-13 13:21:51+00	\N
957	59	Silvia Calbi	Sint-Joost-ten-Node	Citoyenne	\N	600d2e938fe2af2ec977dae29104eff9	t	2020-05-13 13:22:45+00	2020-05-13 13:23:10+00	\N
958	59	François Janne d'Othée	Saint-Josse	habitant	\N	205a71b73904355d9ff1ee4f966a4747	t	2020-05-13 13:29:48+00	2020-05-13 13:30:30+00	\N
959	59	Frank	1030	Ouder	\N	c76c22345060d63fb99c5a0930719826	f	2020-05-13 13:40:56+00	2020-05-13 13:40:56+00	\N
960	59	Emily Darrow	St Josse ten Noode	Independente	\N	e08e308c882ddac3264e025bc2707a0f	t	2020-05-13 13:47:56+00	2020-05-13 13:48:16+00	\N
961	59	Joannes Vandermeulen	1210	Ontwerper	Namahn bv/sp	eea1f0f220d829e87bcbd920f29141b7	t	2020-05-13 13:51:55+00	2020-05-13 13:53:41+00	\N
963	59	Laura Flament	Saint-Josse-Ten-Noode	citoyenne	\N	be5a69f63e5ba748597fd76dbecfb0ec	t	2020-05-13 13:59:52+00	2020-05-13 14:00:04+00	\N
965	59	Bouslimi	Bruxelles	Kinésithérapie	\N	8584e1f35f7a81731db71a129fdbf3a7	t	2020-05-13 14:05:00+00	2020-05-13 14:05:35+00	\N
966	22	Tom vanhee	Schaarbeek	\N	Atelier Tom vanhee 	ec3a5491059fa439de8fcc8a648402bc	t	2020-05-13 14:11:43+00	2020-05-13 14:12:29+00	\N
967	59	Guillaume Marichal	1210	realisateur	\N	cc2ac141abe97793b642d05868a0a5ed	t	2020-05-13 14:17:56+00	2020-05-13 14:18:12+00	\N
969	59	Isabelle Hennes	Sint-Josse-ten-Noode	\N	\N	ccebe7b4dbea91cd7aba6dcac261b216	t	2020-05-13 14:21:09+00	2020-05-13 14:21:58+00	\N
970	59	Vallée	1210	Machiniste opéra	Aucune	7dc1e1b2117fb3e6798e129682e6406e	t	2020-05-13 14:53:21+00	2020-05-13 14:54:41+00	\N
971	59	Daniele Cavallari	Saint Josse	\N	Citoyen	96e2689573f23a38a38bf55332a34a38	t	2020-05-13 14:55:31+00	2020-05-13 14:59:38+00	\N
973	59	Helene Vandermeulen	Sint-Joost-Ten-Noode	Student 	\N	1d1adb560239eebc4a8339fdbf99c426	t	2020-05-13 15:05:12+00	2020-05-13 15:05:38+00	\N
974	59	Jozef vandermeulen	Sint-Joost-ten-Node	Student	\N	b96c29cd88bf1ef4e66d79f37816b26e	t	2020-05-13 15:10:36+00	2020-05-13 15:11:38+00	\N
976	59	Philippe Bouillard	Brussels	\N	\N	2ac9da8e775ebb3b133a8d39fe05708d	t	2020-05-13 15:16:09+00	2020-05-13 15:17:17+00	\N
978	59	Mathilde Plaete	Saint Josse 	\N	\N	a887c27aac5bb0f39ec70fb8d9aa2c99	t	2020-05-13 15:24:36+00	2020-05-13 15:25:09+00	\N
941	59	Rodrigo Burgos	Schaerbeek	Inwoner	\N	914f701f1f3626c12b55138a489b6f74	t	2020-05-13 12:29:55+00	2020-05-13 15:27:08+00	\N
979	59	Lieve daens	1210	\N	Inwoner	ec3b394947c6dc069d49a5538c534816	f	2020-05-13 15:28:58+00	2020-05-13 15:28:58+00	\N
977	59	Coveliers Luc	Arras	\N	\N	f1c9dcb3b6d528e85ae309415f529a5a	t	2020-05-13 15:18:56+00	2020-05-13 15:51:57+00	\N
980	59	Lautrédoux  Mathieu	\N	\N	\N	ff75a6f0abcfd3fc06210bf558457320	t	2020-05-13 15:53:28+00	2020-05-13 15:53:44+00	\N
975	59	pol vervaeke	brussel	soc.cult.werker	ten noey	6cd3c0c7dcb85d8657abb11a7e671fdf	t	2020-05-13 15:14:02+00	2020-05-13 15:59:12+00	\N
983	59	Florence Defuisseaux	\N	Citoyenne	\N	6c4c2b14c54f7fbbfe299a5cbea93560	f	2020-05-13 16:01:14+00	2020-05-13 16:01:14+00	\N
984	59	Fanny Levie	Brussels	\N	\N	57d069cc60976305bd727dbdd6fe9e85	t	2020-05-13 16:03:31+00	2020-05-13 16:07:36+00	\N
981	59	Joséphine Quéfellec	Saint Josse ten Noode	\N	\N	238fe21fda4957926dc3e923e697b349	t	2020-05-13 16:01:04+00	2020-05-13 16:09:33+00	\N
985	59	Myriam Govaerts	1000	Maison	myriam_govaerts@hotmail.com	fda80414ffed4be2afda448d2ca4cda2	f	2020-05-13 16:10:01+00	2020-05-13 16:10:01+00	\N
986	59	nina mallants	sint joost/schaarbeek	inwoner	\N	4fdb6bd5eed98ff73257c2c2a2df06ea	t	2020-05-13 16:10:21+00	2020-05-13 16:12:08+00	\N
987	59	François Huntzinger	1210	\N	\N	81c71312a9cdd995a51e1ff9b8e5e361	t	2020-05-13 16:19:38+00	2020-05-13 16:20:10+00	\N
989	59	Polona Car	1030	\N	\N	65f3d8faee878e668945c39036955417	t	2020-05-13 16:41:59+00	2020-05-13 16:42:36+00	\N
991	59	Patrick Moyersoen	St Joost Ten Node	Inwoner	\N	138722ed0c1f22fbb17b152b7da7f4da	f	2020-05-13 17:22:35+00	2020-05-13 17:22:35+00	\N
993	59	Lidia Rey	Saint-Josse-ten-Noode	citoyenne	\N	ac08183682d2411512c2dff7c05fc291	t	2020-05-13 17:26:24+00	2020-05-13 17:26:57+00	\N
994	59	Bouillon Myriam 	Habay 	\N	\N	b21aa9ace0c20f3d56300fb3ce54451c	t	2020-05-13 17:28:18+00	2020-05-13 17:28:51+00	\N
995	59	Yannick Bailly	Saint-Josse-ten-Noode	\N	\N	91dd48d12c85cdcababdd1fb115c28b6	t	2020-05-13 18:11:47+00	2020-05-13 18:12:08+00	\N
996	59	Carlens	Verviers	Médecin 	\N	021f2ec0e6a24d601d09dcec466286bb	f	2020-05-13 18:32:06+00	2020-05-13 18:32:06+00	\N
999	59	Akbas hacer	1210	\N	\N	632ce3e4d2ff0c71bede4476c5e1e619	t	2020-05-13 18:48:10+00	2020-05-13 18:48:49+00	\N
1000	59	Elsje verdoodt	Sint-Joost-ten-Node	Inwoner	Inwoner	32ff41802310ae5855392790554df47d	t	2020-05-13 19:02:16+00	2020-05-13 19:04:05+00	\N
1001	59	Hanne De Loof	1030	Burger	\N	50cafc224786f4d4bb8f87047f8d6ae1	t	2020-05-13 19:10:04+00	2020-05-13 19:10:35+00	\N
964	59	Daniel Muller	Saint-Josse	Gérant	\N	9c55986b03b99ff327054de0db32e6c1	t	2020-05-13 14:02:47+00	2020-05-13 21:55:38+00	\N
990	59	Engels Jean-Jacques 	Ixelles	Pensionné 	Gracq Gracq 	ba0a7d2464b7f12dca96ddc665e0673d	t	2020-05-13 17:14:30+00	2020-05-14 03:36:04+00	\N
988	59	jonas van bockhaven	1000	burger	\N	c232b7d910322e5fd1d674c19c6377bb	t	2020-05-13 16:23:54+00	2020-05-14 07:25:00+00	\N
997	59	Annika Lenz	\N	\N	\N	85794d678253171ad864eebfec8f512c	t	2020-05-13 18:36:56+00	2020-05-14 08:03:01+00	\N
1041	59	Eloïse Dhuy	\N	piétonne, cycliste, travailleuse	fabrik asbl-vzw	54c6c4bba61838eee83f5b84fd2333d8	t	2020-05-14 11:51:28+00	2020-05-14 12:01:28+00	\N
1004	59	Gaëtan Dubois	Saint Josse ten Noode 	Agronome	Citoyen 	f333982db5a955c90d12fdc65ba75062	f	2020-05-13 19:57:38+00	2020-05-13 19:57:38+00	\N
1015	59	Jean Comte	Schaerbeek	Citoyen	\N	391664d6f26a3689ecf53cc352bdfe6f	t	2020-05-13 21:05:34+00	2020-05-14 12:01:33+00	\N
1005	59	Benoît Dupont	Saint-Josse-Ten-Node	Citoyen	\N	13644979fd91bf469bd635c19aafca6b	t	2020-05-13 20:21:23+00	2020-05-13 20:21:48+00	\N
1007	59	Tom mannaerts	Sint-Joost-ten-Node	\N	\N	200d2996a7f3dea1aeed1a6e85591090	f	2020-05-13 20:33:17+00	2020-05-13 20:33:17+00	\N
1042	59	François Chatelle	Schaerbeek	citoyen	\N	4a8d53c63c0ba0015088be0b93700ffd	t	2020-05-14 12:06:02+00	2020-05-14 12:11:15+00	\N
1009	59	Sophie Ghyselen	1210	habitante	\N	5828bc3855367f987daff0ea89f4f726	t	2020-05-13 20:35:08+00	2020-05-13 20:35:24+00	\N
1043	59	Caroline Mathieu	1210	\N	\N	99bbbe5ce60a526cc21d53e564b34e5c	t	2020-05-14 12:18:12+00	2020-05-14 12:18:45+00	\N
1008	59	Kathleen Deschamps	Bruxelles	habitante	\N	04937f28eb906d3126a52007c52c3fec	t	2020-05-13 20:34:56+00	2020-05-13 20:36:48+00	\N
1006	59	NICOLAS TAILLET	Schaerbeek	Architecte	\N	c2cd16f1f450085d92a7008f3367db0b	t	2020-05-13 20:27:46+00	2020-05-13 20:36:59+00	\N
1011	59	Lilas Weber	St Josse	Habitante	\N	840ba56e6469b9774ee405ff82d00734	t	2020-05-13 20:52:47+00	2020-05-13 20:53:03+00	\N
1044	59	Elodie Garcin	1210	accueillante Maison de Santé Potager	\N	d58064380cf87fd287c2e9b4ee85deda	t	2020-05-14 12:59:00+00	2020-05-14 13:01:23+00	\N
1013	59	Pauline Warnotte	Saint-Josse-ten-Noode	citoyenne, conseillère communale 1210	\N	bb255e11427cbd8b31aeb8dc818d1426	t	2020-05-13 21:01:51+00	2020-05-13 21:04:39+00	\N
1012	59	Vincent Hargot	Saint-Josse-Ten-Noode	Citoyen musicien	\N	a0f0f04bac8cf7a33706e4cbfa0542c2	t	2020-05-13 20:59:37+00	2020-05-13 21:06:14+00	\N
1016	59	Camilla Carini	Saint-Josse-ten-Node	Officer	Citoyenne	907caab843aef2c9b417ff2e5aef197b	t	2020-05-13 21:07:52+00	2020-05-13 21:08:16+00	\N
1017	59	Gregory Carnoli	1210	\N	habitant	9592e477604ebe546a9c0a72b9897101	f	2020-05-13 21:27:33+00	2020-05-13 21:27:33+00	\N
1046	59	Hanae	1210 	Etudiante 	\N	171c005502a559d0b50fb2f62cb940b9	t	2020-05-14 13:27:57+00	2020-05-14 13:28:09+00	\N
1019	59	Francoise Bodenez	St Josse	Fonctionnaire UE	\N	8df8fa122d57a245213f3329ff63476a	t	2020-05-13 21:28:30+00	2020-05-13 21:29:10+00	\N
1047	59	Beatrice Jacquemyn 	Sint-Joost-ten-Node	Verbiststraat 84	\N	f708adf1acb00e64057528003a5b2089	t	2020-05-14 13:32:08+00	2020-05-14 13:32:23+00	\N
1020	59	Thomas Derveaux	Elsene	Burger	\N	dc6bf1b92928cfcc111ffa1137b288a7	t	2020-05-13 22:48:41+00	2020-05-13 22:49:00+00	\N
1021	59	Teiva Marc	SJTN	Prostituée	Libre/Vrij	eca8e1b605c715896c1fe909ae6e9583	t	2020-05-13 23:06:34+00	2020-05-13 23:07:05+00	\N
1048	59	Garry Chistophe	Bruxelles	Analyste	APB	3946e6988ac780cf01175116c9a77e75	t	2020-05-14 13:42:41+00	2020-05-14 13:50:10+00	\N
1022	59	plisnier cedric	1210	\N	\N	1fb040f48ecf49130f06a565e2c35db2	t	2020-05-14 05:10:13+00	2020-05-14 05:10:26+00	\N
1014	59	Pierre Sabbadini	Saint-Josse-ten-Noode	citoyen	\N	031624f24c108eddf8abc78e0a4499cf	t	2020-05-13 21:02:47+00	2020-05-14 14:06:34+00	\N
1023	59	Dominique Pique	Bruxelles	Ergotherapeute	Privé	652b58af48a5d2742689977e4c7314bd	t	2020-05-14 05:44:16+00	2020-05-14 05:44:37+00	\N
1025	59	Laurence Vandelanotte	1210	\N	\N	2ffdd5b25bdbe9e822e288b9e5c6afb7	f	2020-05-14 06:27:50+00	2020-05-14 06:27:50+00	\N
1049	59	Laurence Philippe	1030	Citoyenne	\N	9aa88a3a4885e264a45223fc040e7585	t	2020-05-14 14:20:09+00	2020-05-14 14:20:22+00	\N
1054	59	Linde Smeets	Laken	Burger	\N	a4bed050b42249f1e0e09232cb34fe9c	f	2020-05-14 17:08:55+00	2020-05-14 17:08:55+00	\N
1027	59	Liepina Ruta	1030	citoyen	pieton	9b4e8cd660c15d7ebfbbc4d7d2a9b873	t	2020-05-14 07:27:24+00	2020-05-14 07:27:41+00	\N
1003	59	Cimsir Rukiye	Saint josse	Animatrice	Association féminine Belgo-Turque	024e5933eb4a14ecf44302e3a0b8fe4c	t	2020-05-13 19:26:46+00	2020-05-14 08:42:13+00	\N
1033	59	Fleur Brenninkmeyer 	1210	Citoyenne	\N	bac6e1c897ff1ad237db4ce561bc1338	t	2020-05-14 09:42:33+00	2020-05-14 09:45:19+00	\N
1055	59	Maarten Janssens	Laken	\N	\N	b2fef97ae31988c5b0d7b41c657d23f9	t	2020-05-14 17:16:14+00	2020-05-14 17:18:03+00	\N
1056	59	Veronika Mabardi	Bruxelles	\N	1962	7e6da5fceeaefa2135a9a0809689ea20	t	2020-05-14 19:08:28+00	2020-05-14 19:12:00+00	\N
1057	59	Stévenne Paola	Saint Josse	\N	\N	7a8cab296409e3ad5ee68293bdc47969	t	2020-05-14 19:45:02+00	2020-05-14 19:45:42+00	\N
1058	59	Zoé Tenret	1210	Scénographe 	\N	4275993872dfde799cbd3840abac66a0	t	2020-05-14 19:45:57+00	2020-05-14 19:46:48+00	\N
1059	59	Eva Michiels	Sint-Joost-Ten-Node	Inwoner	\N	499f8beda36bf3c86227162a92cff61c	t	2020-05-14 21:24:16+00	2020-05-14 21:24:49+00	\N
1060	59	Freija De Baere	Sint Joost Ten Node	\N	Inwoner sint joost	2cb07979bdcad9e8e618440beeb34d82	f	2020-05-14 21:51:23+00	2020-05-14 21:51:23+00	\N
1045	59	Hazel Corthouts	Brussel	\N	\N	4506cafd852e870b353acb6bd1c5b1ef	t	2020-05-14 13:12:52+00	2020-05-14 22:25:26+00	\N
1061	22	Sylvie Perederejew 	Schaerbeek 	Citizen 	\N	01bbf45cfb8731b7f3a2a34ed01d40ed	t	2020-05-14 23:00:41+00	2020-05-14 23:02:17+00	\N
1063	59	Kaatje van hemelrijck	Sint Joost	\N	GC Ten Noey	a02199b3dad68789a261656fbb9f3145	f	2020-05-14 23:44:12+00	2020-05-14 23:44:12+00	\N
1062	59	Kaatje van hemelrijck	Sint Joost	\N	GC Ten Noey	f892f0540aee869a00afbdd7a1680ce6	t	2020-05-14 23:38:22+00	2020-05-15 00:02:00+00	\N
1065	59	Roland Voglaire	1050	\N	\N	ceea2a6d6381da7b25f6fd48e633b363	f	2020-05-15 05:33:51+00	2020-05-15 05:33:51+00	\N
1067	59	Hilde De Pessemier	Schaarbeek 	Werknemer in 1210	\N	c96b1682bcd1f7fdc648866622b182c4	f	2020-05-15 06:44:40+00	2020-05-15 06:44:40+00	\N
1068	59	Sophie Buysse	Brussel	Burger	\N	f0d1470c012ad47da4ef06ed1a845c00	t	2020-05-15 06:44:44+00	2020-05-15 09:16:52+00	\N
1066	59	Kristien Van Mechelen	Sint-joost-ten-node	\N	\N	d5e51d9381602a6b8857bf0da331b589	t	2020-05-15 06:29:58+00	2020-05-15 10:43:28+00	\N
1096	22	Aurélie Hanot	Schaerbeek	\N	\N	52d4dfd8bdf7f0ace2e43ab83f2a54b4	t	2020-05-15 12:54:46+00	2020-05-15 12:55:04+00	\N
1099	59	Pieter Fannes	Schaarbeek	\N	pieter fannes	c3d5810b42a6b50701bfe14089f060ba	t	2020-05-15 14:29:12+00	2020-05-15 14:29:29+00	\N
1103	59	De Bruecker Ward 	Sint-Joost-ten-Node	Braemtstraat 	Burger	4c086ffee26accd6291bd3c6659f0fe2	f	2020-05-15 17:33:59+00	2020-05-15 17:33:59+00	\N
1106	59	Ankelien Kindekens	Sint-Joost-ten-Node	Inwoner	\N	eae3fe043bc13f46c574cc0337997471	t	2020-05-15 21:00:21+00	2020-05-15 21:03:11+00	\N
1064	59	Ulrike Storost	Schaerbeek	cycliste et voisin Schaerbeekois	\N	bcf3c35ed82bba1424b258450944aa0d	t	2020-05-15 05:20:52+00	2020-05-15 21:10:03+00	\N
1107	22	AN Goovaertd	Schaarbeek 	Burger	\N	744b0da9ea27179751c8313e0eef5434	t	2020-05-15 21:47:50+00	2020-05-15 21:51:22+00	\N
1108	22	Gudrun Willems	1030	\N	Burger	c250d0316d258275212b94918d9c59e2	t	2020-05-15 22:21:11+00	2020-05-15 22:25:03+00	\N
1109	59	Hilde Asnong	Sint-Joost-ten-Node	inwoner	\N	1c642cbf434d5c9b8503aa74fc232363	t	2020-05-15 22:26:29+00	2020-05-15 22:26:51+00	\N
1110	22	Bram Fret	Schaarbeek	\N	\N	17bcf46a3c2968af20206ff6a037150d	t	2020-05-15 22:56:39+00	2020-05-15 22:57:15+00	\N
1112	59	Charlotte Guibert	saint-josse	animatrice	\N	f5b4f9342a5f0eeb3050853a59db9891	t	2020-05-16 10:31:38+00	2020-05-16 10:33:20+00	\N
1113	59	Eric van Dieren	Saint-Josse-ten-Noode	photographe	\N	b0734a2d1aaf4160aba24b0116a3ebbf	t	2020-05-16 10:52:51+00	2020-05-16 10:53:47+00	\N
1114	59	Guns 	\N	Retraitée 	\N	c468b5a746cb270eb83a8bf59f41e462	t	2020-05-16 10:53:54+00	2020-05-16 13:08:34+00	\N
1097	59	Lucas Verschragen	Bruxelles	Citoyen	\N	6d114b80e470f0aa9ccf6c6971ebe614	t	2020-05-15 13:02:56+00	2020-05-16 16:51:38+00	\N
1029	59	Manon K. Janssen	Sint-Joost-Ten-Node	\N	\N	dced0277d2ebdd3599f4ad76eeba6737	t	2020-05-14 08:19:50+00	2020-05-14 08:20:08+00	\N
1037	59	Els verheyden	Sint joost ten node	\N	\N	98fdc7a781b7a1f6163c40f94318b73d	t	2020-05-14 10:02:43+00	2020-05-14 10:04:08+00	\N
1031	59	Kadri Soova	\N	Mother of schoolgoing kids in St Josse	\N	714eca908d76a2ffac2196b11f0bc51e	t	2020-05-14 08:53:32+00	2020-05-14 09:06:50+00	\N
1032	59	Katleen Willems 	1210	\N	\N	583454fd4095325d9416f6dd5a09ec3e	t	2020-05-14 09:07:44+00	2020-05-14 09:08:05+00	\N
1050	59	Mot	\N	Prof	École 	53270b7a89b0b6d10d149ed26bcda458	t	2020-05-14 15:20:37+00	2020-05-14 15:21:52+00	\N
1034	59	Alena Aga	Brussel 	\N	Burger	cafde5769f1aa7c3401f616c8ba9ca09	t	2020-05-14 09:49:54+00	2020-05-14 09:50:23+00	\N
1035	22	Tarik D	1050	Citizen	\N	f916689dc17fe2bbc72852a9cca572c4	t	2020-05-14 09:53:40+00	2020-05-14 09:56:39+00	\N
1051	59	Isabelle lamouline	Bruxelles	Artiste	\N	3c157301b4bda46719b1bcebc943ddf9	t	2020-05-14 16:27:24+00	2020-05-14 16:44:45+00	\N
1036	59	Florence Kévers	1210	independante	\N	ce7003cc7d17f05b0bd0c07afde0df95	t	2020-05-14 10:01:23+00	2020-05-14 10:02:54+00	\N
1052	59	Castiau Bérénice	Saint-Josse-ten-Noode	Fonctionnaire	\N	b7237ac19368dfae72904b04d2b523e5	t	2020-05-14 17:00:42+00	2020-05-14 17:02:36+00	\N
1084	59	Frank	1030	Ouder	\N	09ca251e400358365d4cc1b306ec0def	t	2020-05-15 07:39:00+00	2020-05-15 07:39:17+00	\N
1085	59	Monique Lejeune	St Josse	habitante	\N	cf694cfc602196a46bfa7db6553975e9	t	2020-05-15 08:23:25+00	2020-05-15 08:24:13+00	\N
1087	59	Sabine Delfosse 	1030 	\N	\N	216fa9ef5f0ab86dc85e5376a7594ee4	t	2020-05-15 08:55:46+00	2020-05-15 09:01:40+00	\N
1069	59	Tielemans Magda 	Sint-Joost-ten-Node 	\N	GC Ten Noey 	9fc0494563e2699ba2c2204e99796240	t	2020-05-15 06:49:33+00	2020-05-15 09:12:04+00	\N
1090	59	Sofie Bullynck	Schaarbeek	\N	\N	661b08d7ac63ea65e136c54a94d4af31	t	2020-05-15 09:31:44+00	2020-05-15 09:32:07+00	\N
1088	59	Ziggy Vendemmia	Etterbeek	medewerker	gc TEN NOEY = Sint-Joost	fbac64bcc49818e5c841c414f8607d98	t	2020-05-15 09:08:08+00	2020-05-15 10:15:53+00	\N
831	59	Lisa De Visscher	Sint-Joost-ten-Node	Inwoner	\N	5d0ff390ddd275a0482fccf54ffbabea	t	2020-05-13 06:20:40+00	2020-05-15 10:23:37+00	\N
1094	59	Nathalie Hoes	Sint-Joost	\N	\N	d72c6d5bb44b8bd97322eea63483f502	t	2020-05-15 10:30:51+00	2020-05-15 10:31:17+00	\N
1091	59	Daphne Galle	Brussel	Burger	\N	69ad4bbd265b7ef6bf02943038c73bef	t	2020-05-15 10:12:05+00	2020-05-15 11:36:47+00	\N
1098	59	Annemie Mathues	Sint-Joost-ten-Node	Tolk-vertaler	\N	b20f7ff489adf36e15e833a01571eeff	t	2020-05-15 13:55:48+00	2020-05-15 13:56:35+00	\N
1100	59	Mady Decrick	1050	Teacher	\N	4784cb7800ff032ea551d4f0461aba46	f	2020-05-15 15:10:50+00	2020-05-15 15:10:50+00	\N
1102	59	Apolline Malevez	Schaerbeek	citoyenne	\N	3887e4af41057103d9e0a61cc6d6844f	f	2020-05-15 15:40:52+00	2020-05-15 15:40:52+00	\N
1095	59	Hallet Sandrine	Schaerbeek	employée d'asbl à St-Josse	\N	7fbc6292c30fbc94a29d10de2a3db5dc	t	2020-05-15 11:04:16+00	2020-05-15 15:45:37+00	\N
1104	59	Nicole Huckert	Bruxelles	\N	\N	acacd7e7534e8b86813ed32bf8742708	f	2020-05-15 19:20:29+00	2020-05-15 19:20:29+00	\N
1105	59	Luciana Naverri	Bruxelles 	Retraitée	\N	86279eef62e6f20cc6c8c39c7abe9b92	t	2020-05-15 19:46:16+00	2020-05-15 19:56:45+00	\N
1111	22	Liesbet Polspoel	Schaarbeek	\N	23/07/1980	dd09b28cdeb391c8b4f89bd1419c8d03	t	2020-05-16 06:59:54+00	2020-05-16 07:00:31+00	\N
1115	59	Violante Machado Cristina	Bruxelles	sage-femme	\N	cb2aeaa78c4ac62ccfc3b715704c03e0	t	2020-05-16 17:04:58+00	2020-05-16 17:06:54+00	\N
1116	22	Roel Verbeeke	Heverlee	\N	\N	682482d8bd0a987c83f4f9b5ee1114d1	t	2020-05-16 18:45:14+00	2020-05-16 18:47:26+00	\N
1117	59	Piotr Barczak	brussels	policy officer	zero waste	b19af104af61db811096509913ef7db6	t	2020-05-17 06:54:58+00	2020-05-17 08:25:53+00	\N
1118	59	Nicole Huckert	Schaerbeek	\N	\N	33ffe9f8b3aecd3c46e2df6baca3fc51	t	2020-05-17 09:22:40+00	2020-05-17 09:23:35+00	\N
1120	59	Thérèse wattecamps 	Saint-Josse	\N	\N	0b5c3935d5ef4182a533759c35a99228	t	2020-05-17 17:34:45+00	2020-05-17 17:35:37+00	\N
1121	59	Maréchal 	Saint-Josse-Ten-Noode	\N	\N	019d524c5d54d85f10867cbbb726f263	t	2020-05-17 18:23:33+00	2020-05-17 18:24:12+00	\N
1123	59	Claire Huysegoms	Saint-josse 	Habitante 	claire.huysegoms@gmail.com	365375bd644c69ac167012d5275fc4bf	t	2020-05-17 21:05:20+00	2020-05-17 21:05:57+00	\N
1122	59	Philippe Jolet	Saint-Josse-ten-Noode	pensionné	\N	e8add322aa4241da31d437a67791ec43	t	2020-05-17 21:05:19+00	2020-05-17 22:02:12+00	\N
1124	59	Yasmine Nouri	1210	Busy	\N	4b15e1a1803b2c0efcae83a87111544c	t	2020-05-17 22:54:13+00	2020-05-17 22:54:32+00	\N
1125	59	Tom Istaz 	Saint-Josse-ten-Noode	Ingénieur 	\N	f1b95a23911f492f2d305bab1e8c0bfd	t	2020-05-17 23:01:20+00	2020-05-17 23:01:30+00	\N
1126	59	Frédéric Rasier	1090 Jette	Inwoner 	\N	44748144b7722d06275a2e3e79c437e6	t	2020-05-18 05:45:11+00	2020-05-18 05:45:41+00	\N
1127	59	Strauven 	Schaerbeek 	Architecte 	\N	ac486e2ab9d164906be24dc91cc066c7	t	2020-05-18 07:08:24+00	2020-05-18 07:30:18+00	\N
1129	59	catherine luxereau	1210	psychiatre	Le Meridien	99a6e5aec8b3ed33b508f376cb5b6cf9	t	2020-05-18 07:50:02+00	2020-05-18 07:50:16+00	\N
1130	59	Marie Collard	Schaerbeek 	\N	\N	cb9aa9820da417aa81c6443bc3e19656	t	2020-05-18 07:51:55+00	2020-05-18 07:52:18+00	\N
1132	59	Maria Miguel	1210	citoyenne	\N	281559e3ba0169f008f1ac9f2670ec1d	t	2020-05-18 08:03:56+00	2020-05-18 08:04:41+00	\N
1128	59	Rudolph Alexandre	Saint-Josse-ten-Noode	Citoyen	\N	a85db70cac8e598a2968147c3ac6a677	t	2020-05-18 07:27:22+00	2020-05-18 08:14:07+00	\N
1030	59	D'Agostino	bruxelles	\N	\N	b57875a73950614f4ce0aa02cc2856df	t	2020-05-14 08:40:22+00	2020-05-18 08:32:12+00	\N
1134	59	Afansala Gilbert	1210	Employer	Africa-sub-sahara ASBL	1385d8991f5f440e5f746366afc6e6ad	t	2020-05-18 10:29:23+00	2020-05-18 10:32:37+00	\N
906	59	Degris	1000	\N	\N	54f9e73b80529debd2d81fbd56a4b151	t	2020-05-13 10:26:19+00	2020-05-18 11:02:19+00	\N
1135	59	Veerle Vandenabeele	Sint-Joost-ten-Node	Inwoner	\N	8d42aaa5b8afdbccc7dc46bc284c0fc2	t	2020-05-18 11:00:10+00	2020-05-18 11:03:20+00	\N
1136	59	christine Hermans	1210	\N	\N	daf36f3bb9cd27769787be9edc7f7999	f	2020-05-18 11:05:06+00	2020-05-18 11:05:06+00	\N
1137	59	Chloé Deligne	Saint-Josse	Habitante	\N	8856b472f024fd92160f0690e2815bcc	t	2020-05-18 11:13:06+00	2020-05-18 11:13:42+00	\N
1138	59	Victoria Pujol	Saint Josse Ten Noode	infirmière	Samu social	05d0465d55fecf7516edafc4f724dec8	f	2020-05-18 11:17:49+00	2020-05-18 11:17:49+00	\N
1139	59	Tim Vermeir	Madou, 1000 Brussel	\N	\N	8efb824e870f47ac413b13319eb83dd1	t	2020-05-18 11:33:24+00	2020-05-18 11:34:00+00	\N
1133	59	Julie Godart	schaerbeek	employée	\N	baa38a8d867824fe08fb5c8486c865aa	t	2020-05-18 09:57:51+00	2020-05-18 11:41:15+00	\N
1142	59	Nathalie Lecras 	St Josse 	Residente	\N	4bd00140c997e7ec92d6001ca218a8ec	t	2020-05-18 11:43:34+00	2020-05-18 11:43:55+00	\N
1143	59	Diana Pamias	Sint-Joost-ten-Node	citoyenne	\N	c30d953462dd0223b7155ff532b6c189	t	2020-05-18 13:00:25+00	2020-05-18 13:02:09+00	\N
1140	59	jamal youssfi	1210	\N	ASBL les nouveaux disparus	64ff0ff4c75d971756cb22c2213a56f9	t	2020-05-18 11:38:26+00	2020-05-18 13:02:34+00	\N
1144	59	Joan de Sola-Morales	St Joost ten Node	citoyene	\N	2d1b66aa77162f2a35415859db5cf1eb	t	2020-05-18 13:12:53+00	2020-05-18 13:13:10+00	\N
1146	59	Thierry Dessilly	1210	Citoyen piéton	\N	f29197bb3459d184207a0a9db3e90e86	t	2020-05-18 13:57:27+00	2020-05-18 14:10:50+00	\N
1147	59	Progress Lawyers Network	Sint Joost Ten Noode 	advocatenkantoor 	\N	97654e9e0517cdaf056b65184fa5758e	t	2020-05-18 14:12:45+00	2020-05-18 14:17:02+00	\N
1148	59	Stéphanie D'Haenens	Saint-Josse-ten-Noode	Habitante	\N	d0b26f087bd74d60769edeb81ac2d8fd	t	2020-05-18 14:50:02+00	2020-05-18 15:08:44+00	\N
1149	59	Katja Steinmetzer	Saint-Josse	\N	\N	e527ae3033a56c676b486231441d2d43	t	2020-05-18 15:09:59+00	2020-05-18 15:12:38+00	\N
1150	59	suptille susie	1210	\N	\N	b1d86710c0bbd9274a00015c45995eb0	t	2020-05-18 16:10:11+00	2020-05-18 16:15:03+00	\N
1151	59	Notre Quartier asbl	Saint-Josse-ten-Noode 	RueVerte	\N	0c4e57cfb658e6bfcb4f7fb91f49825e	f	2020-05-18 17:49:59+00	2020-05-18 17:49:59+00	\N
1152	59	Leveque Martin	Bruxelles	1210	Nonpareil.srl	5a146e96c321a42781d9b5670c8988f8	t	2020-05-18 17:53:57+00	2020-05-18 17:54:25+00	\N
1153	59	Caroline Ingelbrecht	Sint-Joost	\N	\N	71d90236f853176afccea86ee46e86d5	f	2020-05-18 18:13:41+00	2020-05-18 18:13:41+00	\N
1155	59	Camille	\N	\N	\N	0178f75a1f43df4895388ca7e2dec6b0	t	2020-05-18 18:27:18+00	2020-05-18 18:27:50+00	\N
1156	59	Sterckx claudia	Jette	\N	Travail en crèche les enfants on besoin des parc	d4b1ef21c7e6d893d22fcc701f4a0105	t	2020-05-18 18:43:39+00	2020-05-18 18:44:14+00	\N
1154	59	Adelaide Baranger	Saint josse	\N	\N	f176e9109e0377c07cef8f19bf713fef	t	2020-05-18 18:14:54+00	2020-05-18 18:51:32+00	\N
1157	59	Freija	Sint-Joost-ten-Node	\N	Inwoner	9110e861717d07d652f2307d7abea858	t	2020-05-18 19:00:20+00	2020-05-18 19:02:14+00	\N
1158	59	Scarbotte Fanny	Saint Josse	27 square Armand steurs	\N	62322fa8021533905114eaf4b2f4cabe	t	2020-05-18 19:04:26+00	2020-05-18 19:07:01+00	\N
1159	59	Isabelle Linclau	Sint-Joost 	Al 15 jaar in 	\N	73a01641c58c011db00c366c3cc36505	t	2020-05-18 19:26:56+00	2020-05-18 19:27:12+00	\N
1163	59	Daan Van Tassel	Leuven	3010	Vive la vie	3397b227d9d633a0ec47318785714ff3	f	2020-05-18 19:33:48+00	2020-05-18 19:33:48+00	\N
1165	59	THIERRY MASSANT	ST JOSSE	\N	LE BEAU BUREAU	56474e03710f6ec966726808a7f31221	t	2020-05-18 20:48:38+00	2020-05-18 20:54:26+00	\N
1164	22	Natacha	Schaerbeek	\N	\N	d3d817fb01c70fac67e78cb1f4c9fac0	t	2020-05-18 20:23:23+00	2020-05-19 07:23:38+00	\N
1166	59	Jérémie Vanhoof	Bruxelles 	\N	Monsieur	a07b9e481950f0341b84a0826cefd894	t	2020-05-19 04:35:27+00	2020-05-19 08:57:46+00	\N
1167	59	Astrid De Troyer	1210	\N	\N	2c2d50ffbcb27945cbbe71f77e3a1f3d	t	2020-05-19 09:17:45+00	2020-05-19 09:18:22+00	\N
1168	59	Nathalie	1210	Maman	\N	5b9c6b61641c94da79bd1a5d13821e57	t	2020-05-19 09:59:06+00	2020-05-19 09:59:18+00	\N
1169	59	Nicky	1210	Inwoner	\N	d26d2d42987b4e081207d8127ef9d570	f	2020-05-19 12:15:28+00	2020-05-19 12:15:28+00	\N
1171	59	Nicky Houba	1210	Inwoner	\N	1df24be9534b2731200f9f324cb71d7a	t	2020-05-19 12:16:32+00	2020-05-19 12:22:13+00	\N
1172	59	Jolente	Brussel	\N	\N	6970edc5815a37ae3969e8234f60e131	t	2020-05-19 13:06:18+00	2020-05-19 13:06:40+00	\N
1173	59	Lisanne De Gendt	Brussel	\N	\N	0c9d758991dbe123ad6e11b058ef6879	t	2020-05-19 13:07:40+00	2020-05-19 13:08:25+00	\N
1174	59	Karen Swyngedauw	1210	\N	\N	426f527509ba15fd1355df4e1114ad7b	t	2020-05-19 13:51:56+00	2020-05-19 13:52:09+00	\N
1175	59	Gabrielle Fenton	1030	Chercheuse	BSI	4749a106386b27040607a4332422ab14	t	2020-05-19 15:05:53+00	2020-05-19 15:06:05+00	\N
1176	59	Thérèse Fromentin 	St Josse t’en noode	Retraitée 	\N	04b542b2d4246d237b2823cd8fe34a82	t	2020-05-19 15:33:21+00	2020-05-19 15:35:28+00	\N
1177	59	Klaas Van de Loock	Sint-Joost-ten-Node	Inwoner	\N	cf8cbdf8bbb8c944fc24afe8c1b5457e	f	2020-05-19 15:49:02+00	2020-05-19 15:49:02+00	\N
1178	59	Ana Dresler	1210	inwoner	\N	8e4c28f136a90c762945c9e70a0c03ee	t	2020-05-19 15:53:44+00	2020-05-19 15:54:22+00	\N
1179	59	Ouderraad Sint-Joost-aan-Zee	1210	\N	SJAZOR	e79049bb375efcaf7adebbd510ca736e	t	2020-05-19 16:36:38+00	2020-05-19 16:36:59+00	\N
1181	59	Jan Vleugels	Schaarbeek	Vader van 2	\N	8a4247d629a31815eaba4cb3e1e8157d	t	2020-05-19 17:26:29+00	2020-05-19 17:26:40+00	\N
1182	59	Colak Fatma	Saint Josse	Résidente	\N	6d79d74470478af16c333f8f1b2c0c01	t	2020-05-20 06:49:38+00	2020-05-20 06:50:23+00	\N
1183	59	Isabelle	\N	citoyen	\N	95020968aeded22f895a56a89e38e1d3	t	2020-05-20 06:58:33+00	2020-05-20 06:58:57+00	\N
1185	59	Semanur Azzi	Saint-Josse-ten-Noode 	Citoyenne	\N	9224715e96f1d4cfdce2b6515d4a036b	f	2020-05-20 08:56:02+00	2020-05-20 08:56:02+00	\N
1184	59	Emilie Muller	Saint Josse	\N	\N	a4939f66757ae19c5146556b8fc7f9d6	t	2020-05-20 08:53:40+00	2020-05-20 09:33:47+00	\N
1186	59	Benjamin Clarysse	Schaerbeek	Inwoner	\N	4959fba38ce397e69c89bd818e64a405	t	2020-05-20 09:18:49+00	2020-05-20 09:40:16+00	\N
1187	59	Marie Defreyne	Schaerbeek	citoyenne	\N	1984cececb239d82dec01c2f1eb04d6e	t	2020-05-20 10:00:23+00	2020-05-20 10:02:49+00	\N
1189	59	Els dittrich	Molenbeek	\N	\N	84b01142a17c520b09e6665ca8962a4d	t	2020-05-20 16:30:13+00	2020-05-20 16:30:46+00	\N
1190	59	Sonia Marconi	Saint-Josse-ten-Noode	\N	\N	07adaa6142a480fb1ad96c536ad9413a	t	2020-05-20 17:06:29+00	2020-05-20 17:07:07+00	\N
1188	59	Katrien De Koster	1020	Burger	\N	a8975be34872221e5fce552c27c58d71	t	2020-05-20 14:06:25+00	2020-05-20 17:46:55+00	\N
1191	59	Anke De Neef	1000	\N	\N	abb57ce709842b1291ae8c628b442832	f	2020-05-20 18:37:38+00	2020-05-20 18:37:38+00	\N
1194	59	Gertje Elsocht	\N	\N	\N	22352323a1fb6816a3925b3342d089d4	t	2020-05-20 19:13:02+00	2020-05-20 19:14:09+00	\N
1192	59	Tine Van der Wee 	Brussel	\N	\N	557151bdd92752368d71c8f005d07007	t	2020-05-20 18:50:29+00	2020-05-20 19:18:11+00	\N
1196	59	Geraldine Bruyneel 	Schaarbeek 	\N	\N	82c0ef21ac9ba82f2a14f48cb5d90163	f	2020-05-20 21:21:47+00	2020-05-20 21:21:47+00	\N
1198	59	Anke Dujardin 	Schaarbeek	\N	\N	6af7abe6749629263d580fbf9ae67c0b	f	2020-05-20 21:28:21+00	2020-05-20 21:28:21+00	\N
1195	22	Florian VAN STEENBERGE	SCHAARBEEK	\N	\N	4c08ef101a4b6e5e6287d810504470d1	t	2020-05-20 20:32:39+00	2020-05-21 14:13:10+00	\N
1231	59	Denis Mustafa Tetik	Bruxelles	\N	1970	da1ad3a09154b9247983f929694760f5	f	2020-05-21 16:50:11+00	2020-05-21 16:50:11+00	\N
1232	59	dayez brigitte	Bruxelles	habitante retraitée	\N	1d546ce0d277138f816d36da76f84301	f	2020-05-22 08:15:21+00	2020-05-22 08:15:21+00	\N
1642	62	Valentine Lebacq 	Laken	\N	\N	b41d091dc8f05435a0cc40d85d987440	f	2020-05-23 07:11:10+00	2020-05-23 07:11:10+00	\N
1235	59	Joren Sansen	1210	inwoner	\N	f664934d86f216330e9dc61ced38d546	t	2020-05-22 10:09:08+00	2020-05-22 10:09:20+00	\N
1234	62	Leen Schelfhout	Schaerbeek	Mom of 3 boys	AllForClimate, CitizenSpring	f75b0e7b4f72deaf2f5cfa864f70233e	t	2020-05-22 10:06:19+00	2020-05-22 10:10:02+00	leenschelfhout@telenet.be
1236	61	Xavier Damman	Schaerbeek	Dad of one girl	AllForClimate, CitizenSpring	9f893092eed85507d7deb1fcdad627d6	t	2020-05-22 10:09:38+00	2020-05-22 10:10:11+00	xdamman@gmail.com
1237	60	Laura Damman 	Bruxelles 	7 ans	\N	531600c1586929e24fe397e7e137947d	t	2020-05-22 10:16:40+00	2020-05-22 10:17:39+00	lauradammansedda@gmail.com
1238	61	Djenk	Schaerbeek 	Student	Queer Refugee Platform	01f5f10d1881f053cc7b15e0abcbc1ce	t	2020-05-22 10:27:33+00	2020-05-22 10:27:56+00	dzenkejup@gmail.com
1240	61	David O’Leary	Schaerbeek	Parent, teacher, comms person	\N	9bce6295f69f260e4a8835621f833110	t	2020-05-22 10:30:06+00	2020-05-22 10:31:45+00	\N
1241	61	Toon Vanagt	Brussels	Tech entrepreneur	OpenKnowledge.be, Data.be, Lex.be	f75a7de1bb3a45ecad0a321ceb45a7c3	t	2020-05-22 10:34:12+00	2020-05-22 10:34:30+00	toon@data.be
1243	61	Vincent Darmstaedter	Rixensart	Citizen, parent	\N	c6798234f77337d3c9fe0b96905f757e	t	2020-05-22 10:52:01+00	2020-05-22 10:52:21+00	vdarmsta@gmail.com
1242	61	Sylvia Hartinger	Schaerbeek	Citoyen 	\N	94de1db1f35072526613a14980d868e4	t	2020-05-22 10:48:02+00	2020-05-22 10:53:59+00	sylvinbxl@yahoo.com
1244	60	Ramdani	Bruxelles	Chauffeur	Citoyen	029c638044c511933fe8e68b8e66ae19	t	2020-05-22 10:53:49+00	2020-05-22 10:54:35+00	ramdani963@gmail.com
1245	60	Katia Xenophontos	Bruxelles	Citizen	Schaerbeek	b77027712f2fdb9266c31497dcb8ddd1	t	2020-05-22 10:53:52+00	2020-05-22 10:55:48+00	katiaxeno@gmail.com
1246	61	Roland Kulke	Brussels	\N	citizen	aae5c7f29fffaefb3bbe7b0b23491b1e	t	2020-05-22 11:02:32+00	2020-05-22 11:07:41+00	\N
1249	61	Julian van remoortel	Schaerbeek	Citizen	\N	41cc0b78a9f7ecf28215906f303e6220	f	2020-05-22 11:11:33+00	2020-05-22 11:11:33+00	julianvanremoortel@hotmail.com
1248	62	Thomas Schoenmakers	Schaarbeek	Citizen	\N	f3e12a070ffe0e08ffed5415946802a3	t	2020-05-22 11:11:32+00	2020-05-22 11:11:46+00	\N
1252	60	Engels Jean-Jacques 	Ixelles	Pensionné 	Gracq 	7692a49b9453df8df604b3a5dc55b219	t	2020-05-22 11:19:23+00	2020-05-22 11:19:55+00	engelsjeanjacques@gmail.com
1253	61	Thibault Baradat	London, UK	Lazy Cars, Active Bikes	Tibocut	9fe467d552ddbd8b76c034b180f55fc5	t	2020-05-22 11:19:56+00	2020-05-22 11:20:43+00	\N
1251	61	Andreas Van Nuffelen	Brussels	\N	\N	a1ed0e281d3ccdd684de695d206b1a59	t	2020-05-22 11:19:18+00	2020-05-22 11:22:07+00	avnbuzz@gmail.com
1256	60	Jesse Pappers	Schaarbeek	\N	\N	3458ec25151b58029d0ca6b457e7cbae	t	2020-05-22 11:21:47+00	2020-05-22 11:22:23+00	\N
1247	61	Joanie lemercier	Anderlecht	\N	Studio jl	410c07a7a2dffdd5ad15e8253f58f891	t	2020-05-22 11:09:04+00	2020-05-22 11:24:07+00	hello@joanielemercier.com
1257	60	Alain Debeer	Woluwe Saint Pierre	\N	\N	db099c08976b5a9f0ba2b8ae4c929be4	t	2020-05-22 11:25:22+00	2020-05-22 11:35:58+00	alain.debeer@scarlet.be
1258	60	Valderrama Opazo Maykel 	Bruxelles 	Employé 	\N	4a0f83393638da039473d33f761f621e	t	2020-05-22 11:37:02+00	2020-05-22 11:37:39+00	vmaykel@gmail.com
1250	61	Pieter Meiresone	Brussels	Engineer	BGFI	cc2548b5e4b708bcbb49046a8aaf0a3f	t	2020-05-22 11:15:59+00	2020-05-22 11:40:17+00	pieter.meiresone@gmail.com
1259	60	Daniel Nix	Forest	\N	\N	03eb04bf2efc541249cf8483087fe9d2	t	2020-05-22 11:41:35+00	2020-05-22 11:42:15+00	\N
1260	60	Picavet Louis	Koekelberg	Employé	Citizen	8b27505fb1ecb4ddc85d81c9aa94a76c	t	2020-05-22 11:43:12+00	2020-05-22 11:43:35+00	l.picavet@protonmail.com
1261	61	Jean-François De Hertogh	Brussels 	\N	Open Collective Brussels 	f6e9e9e77ddf367d6dead05aea0b6dbe	t	2020-05-22 11:44:21+00	2020-05-22 11:44:51+00	\N
1262	62	Rob Roemers	St. Joost-ten-node	Entrepeneur	Smarter.brussels	5e6b78004057fd0f7797f42c3b9d083a	t	2020-05-22 11:48:20+00	2020-05-22 11:48:48+00	rob@roemers.be
1239	60	Justine Maheux	Schaerbeek	Citizen	\N	51761a4978b85ba8ed444c75fc091088	t	2020-05-22 10:28:09+00	2020-05-22 11:51:07+00	\N
1266	60	Apostolakis 	Brussels	Employee	Stib	5cb37161997dad8c16e98c026d04e08b	f	2020-05-22 11:54:39+00	2020-05-22 11:54:39+00	spuros.apostolakis@telenet.be
1268	60	Apostolakis	Brussels	Employee	Stib	5f5e1646b3697ecd5fc193ea848c2977	f	2020-05-22 11:57:11+00	2020-05-22 11:57:11+00	spyros.aposrolakis@telenet.be
1263	60	Sarah	bruxelles	Employé	87	72a75643b7d995c9017b1599d2766e4d	t	2020-05-22 11:51:27+00	2020-05-22 11:52:43+00	\N
2155	60	Ruben Diaz-Plaja	Etterbeek	Fonctionnaire	\N	795cdbb63d5d8b323996a1f1c3240992	f	2020-05-23 22:41:31+00	2020-05-23 22:41:31+00	rdiazplaja@gmail.com
1265	61	Melvyn Hills	Watermael-Boitsfort	Dad, developer	\N	a436245355b78a6f4e61cc01f66a6e1b	t	2020-05-22 11:53:14+00	2020-05-22 11:53:59+00	\N
1643	60	Octavio Pineiro	Saint Gilles	\N	\N	e2dbbb0781c50db59559053f46161cd3	t	2020-05-23 07:15:31+00	2020-05-23 07:15:53+00	pineiro.octavio@gmail.com
1267	60	Matthieu Coulonval	Schaerbeek	\N	\N	909660c0972f50f0904703d549dc0fd6	t	2020-05-22 11:55:12+00	2020-05-22 11:55:46+00	matt.coulonval@gmail.com
1264	62	Steven Declerck	Sint-Pieters-Woluwe	\N	\N	3311fe3d97978295d823fa35fa811dd4	t	2020-05-22 11:51:27+00	2020-05-22 11:56:17+00	\N
1644	62	Barbara Sandra	1050	Stedenbouwkundige	\N	45f38b249cc0175b66cde25efefd59b6	f	2020-05-23 07:16:34+00	2020-05-23 07:16:34+00	barbara_sandra@hotmail.com
1645	60	Céline Bouton	Schaerbeek 	\N	\N	1a2c0365f65b55378f5b8caa41f2d7b8	f	2020-05-23 07:18:32+00	2020-05-23 07:18:32+00	\N
1270	61	Raph Beck	Brussels	Citizen, father of two	\N	0cd42ca73cf6352b1a1627fd6ebee992	t	2020-05-22 12:02:26+00	2020-05-22 12:03:36+00	raphbeck@gmail.com
1271	60	Philippe Schoepen	Auderghem	Copywriter	\N	cc67fd9722da1bceb065f59e2ac0d5c6	t	2020-05-22 12:05:08+00	2020-05-22 12:09:57+00	\N
1269	60	Ben Baudart	Brussels	Webdesigner, citizen, daily biker	John Doe	08575606ca85a786b5423a254494b546	t	2020-05-22 11:58:35+00	2020-05-22 12:14:06+00	nospam@baudart.be
1646	62	Maarten Ipers	Schaarbeek	\N	\N	fabb7b489847160979bc3aba4f6189db	t	2020-05-23 07:20:48+00	2020-05-23 07:21:22+00	maarten.ipers@gmail.com
1652	60	Grégoire Legrain 	Bruxelles 	Production expositions 	Bozar	f9b49c01d5b41c5a23d66951f369b572	t	2020-05-23 07:27:55+00	2020-05-23 07:28:24+00	\N
1650	60	Eliane Fourré	Bruxelles	\N	\N	2b15482be22e9e361cb8976c04526fea	t	2020-05-23 07:26:15+00	2020-05-23 07:29:17+00	eliane.fourre@hart-chirurgie-cardiaque.org
1660	62	Roos Zuidervaart	Laken	\N	\N	a4c4d848c7f28d4e0072c4c75a8c62f9	f	2020-05-23 07:45:34+00	2020-05-23 07:45:34+00	rooszuidervaart4@hotmail.com
1661	60	Ana Rafful	Ixelles	urbaniste	\N	e912bd0550a76992d3ea4f7bf5d39cdc	t	2020-05-23 07:45:58+00	2020-05-23 07:48:21+00	anarafful@gmail.com
1658	61	Giulio Crisante	Brussels	videographer	\N	a1de9ed546663f6e3962ba3cb5f8689d	t	2020-05-23 07:43:39+00	2020-05-23 07:48:36+00	\N
1662	60	vincent F	Saint-Josse-ten-Noode	magasinier	färm	fe3917bc954f86d4b79d3795150cfb82	t	2020-05-23 07:48:29+00	2020-05-23 07:50:02+00	\N
1659	61	Steven Lorie	Sint-Agatha-Berchem	\N	\N	68cf4d17af6f88c5d3ec33547f97a59f	t	2020-05-23 07:45:23+00	2020-05-23 08:00:41+00	steven.lorie@telenet.be
1736	61	KATERINA DIMADI	BRUSSELS	ARCHITECT	\N	c38e84dd0083f10fe68a219d17e77b8f	f	2020-05-23 09:06:42+00	2020-05-23 09:06:42+00	\N
1737	62	Lien Bauwens	Laken	\N	\N	a902980bc3dd2b5ac67efa00bfe357fc	t	2020-05-23 09:07:49+00	2020-05-23 09:08:17+00	\N
1738	60	Olivia	Molenbeek	\N	\N	1ff2a1d069739f8471fd75a927fc6c35	t	2020-05-23 09:09:30+00	2020-05-23 09:10:06+00	\N
1739	62	Roel De Cleen	Schaarbeek	\N	\N	50d2dd0351c172ca4d24236eece61233	t	2020-05-23 09:10:38+00	2020-05-23 09:11:13+00	\N
1747	60	Sébastien 	Schaerbeek	\N	\N	7f1e96e4694b7f29b91ef7f782685bf0	t	2020-05-23 09:30:05+00	2020-05-23 09:31:06+00	sebbarroo@yahoo.fr
1748	61	Nils rocklin	Uccle	\N	\N	bc78a96b83f1237661fcc18d84909ffa	t	2020-05-23 09:32:04+00	2020-05-23 09:34:35+00	\N
1755	61	Ketevan Tskitishvili	Brussels	Consultant	ketevannyc@gmail.com	d64674c508aba72880b8680ad4f1d636	t	2020-05-23 09:51:54+00	2020-05-23 09:52:14+00	ketevannyc@gmail.com
1756	61	Kristof Vde	Schaarbeek	Citizen	\N	cf27cb0175cfc964765b509801fb5ccd	t	2020-05-23 09:52:17+00	2020-05-23 09:52:30+00	\N
1757	61	Raluca Tanasescu	Etterbeek	Researcher	\N	ebacec87d62b98819efdffed8e098138	t	2020-05-23 09:54:07+00	2020-05-23 09:54:27+00	r.a.tanasescu@gmail.com
1764	60	Benjamin H	Schaerbeek	\N	\N	afd7707b1e3e0424b8b6dd06d145d4e1	t	2020-05-23 10:05:04+00	2020-05-23 10:05:16+00	\N
1765	61	Marco Balatti	Ixelles	IT	\N	9eb27f4c255d41968f70cc30ca22b4c1	t	2020-05-23 10:07:28+00	2020-05-23 10:07:48+00	\N
1766	61	Kasper Van Lombeek	Schaarbeek	Statistician	Self Employed	6b65642da12495c0b21e606111634303	t	2020-05-23 10:09:41+00	2020-05-23 10:10:13+00	\N
1767	60	Denis Janowski	Braine-l'alleud	détaché pédagogique	\N	3984ab6f4c7d30e1c66db588a3e90354	t	2020-05-23 10:10:29+00	2020-05-23 10:10:54+00	\N
1768	60	Julie Engel 	Bruxelles 	Emoloyee	\N	44fdd2afd7e9fc76a1181a0ca64838b9	t	2020-05-23 10:12:58+00	2020-05-23 10:13:34+00	jujuengel@hotmail.com
1769	61	Jamie Renee Martino	Woluwe St Pierre	Citizen	\N	8a4454403b33be7635095f7ddf02a39f	t	2020-05-23 10:13:37+00	2020-05-23 10:13:47+00	\N
1770	61	K Niemi	Bruxelles	\N	\N	d891634a6111ad449251208d7ec5f952	t	2020-05-23 10:16:24+00	2020-05-23 10:17:19+00	katjamaaretn@gmail.com
1771	60	Delfosse Monique 	Bruxelles	Pensionnee	\N	e7206846f2c65af5beca8a5a79f307fd	t	2020-05-23 10:16:43+00	2020-05-23 10:17:45+00	mdelfosse@hotmail.com
1772	61	Joakim Smedman	Schaerbeek	\N	\N	d19ab91cd478530710f5b0d8ce83703f	f	2020-05-23 10:18:10+00	2020-05-23 10:18:10+00	\N
1773	61	Emily gold	Ixelles	\N	\N	5c64884c584eea3840c3b6678e7f9714	t	2020-05-23 10:19:04+00	2020-05-23 10:19:22+00	\N
1841	61	Cristina	Brussels	Fonctionnaire	\N	929eab15f219b0b9280e3b3a78037510	t	2020-05-23 11:37:23+00	2020-05-23 11:37:57+00	\N
1842	61	Anete Bandone	Woluwe-Saint-Lambert	\N	\N	5e55bb6dd493987ea9fb8cb140b2f469	f	2020-05-23 11:38:29+00	2020-05-23 11:38:29+00	anetebandone@gmail.com
1843	61	Geraud	Uccle	\N	\N	4bb19f43013914ac22ad38a4ab068c29	t	2020-05-23 11:38:34+00	2020-05-23 11:38:54+00	lund.sonn@gmail.com
1881	61	Mar Serra	Bruxelles	\N	\N	85d640d7e6fced68daecddaac2905763	t	2020-05-23 12:39:08+00	2020-05-23 12:39:49+00	\N
1882	60	martin francois	\N	\N	\N	b8125f1a74b549b7ef9688aa67d270d8	t	2020-05-23 12:39:24+00	2020-05-23 12:40:05+00	\N
1883	60	Louise Bossut	Bruxelles	\N	\N	27611159e0b3dcb2a9c175fff10d242d	t	2020-05-23 12:40:30+00	2020-05-23 12:41:05+00	\N
1885	60	Tessa namias	Bruxelles	cuisinière	\N	ae3d23f3c9d78f252be65fffe2e74dfe	t	2020-05-23 12:42:19+00	2020-05-23 12:43:11+00	\N
1886	62	Cris Wouters	Sint Agatha Berchem	\N	\N	78a07755fa5cc460cbfa573a7a0aa019	t	2020-05-23 12:43:37+00	2020-05-23 12:44:04+00	wouterscris2@gmail.com
1887	62	Lieve kuypers	Wijgmaal	3018	Architect	8c4c830fb67dff8024f7ed24fa214e75	t	2020-05-23 12:44:44+00	2020-05-23 12:45:19+00	lieve.kuypers@skynet.be
1884	60	Lemaitre	Wezembeek oppem	Pensionnee	\N	604d55570c622911fa78d7efa01e8d46	t	2020-05-23 12:42:05+00	2020-05-23 12:47:04+00	\N
1890	61	Lélia Barros 	Belgium 	Diplomat	Consulat general Du Bresil à Bruxelles 	486805a6963d7325c90e2b9f5eb97075	t	2020-05-23 13:00:41+00	2020-05-23 13:02:20+00	leliamayrink@gmail.com
1891	60	Judith 	Bruxelles	\N	\N	5ad74b7e6e50a3c0a692343c297d5529	f	2020-05-23 13:02:40+00	2020-05-23 13:02:40+00	\N
1893	62	Eva Wilsens	Brussel	\N	\N	7f3509fca092c6401ad66afb2f0c1b8c	t	2020-05-23 13:10:59+00	2020-05-23 13:11:16+00	\N
1888	60	Gregory Claessens	KOEKELBERG - 1081	Citoyen	Citoyen	87af047bc6d9b287de170390e8256467	t	2020-05-23 12:46:13+00	2020-05-23 13:23:43+00	gregclaessens@yahoo.fr
1895	60	Lina Giansante	Morlanwelz	Retraitee	\N	d5256698475880f4742b179200a1060d	f	2020-05-23 13:28:11+00	2020-05-23 13:28:11+00	lina.giansante@hitmail.com
1892	60	Marie-Pierre Grégoire	Bruxelles	\N	\N	d6432caf563b7edbab6315acd92478f1	t	2020-05-23 13:06:48+00	2020-05-23 13:47:11+00	mariepierre.gregoire@scarlet.be
1651	61	Gauthier Vanderlinden	Schaerbeek	Ingénieur	\N	ac0876decbf3cfd484afcc5f251b5d30	t	2020-05-23 07:27:10+00	2020-05-23 16:28:03+00	\N
1647	62	Jan Hoffmann	1000 Brussel	Architect 	\N	8372e2601f44bee2d275a71d24c3eae6	f	2020-05-23 07:21:38+00	2020-05-23 07:21:38+00	\N
1272	61	Jerome E. 	Woluwe Saint Pierre 	Employee	\N	7d5a4b319dbd0b36bb8d69636b5170a5	t	2020-05-22 12:33:35+00	2020-05-22 12:39:05+00	mrbadguy78@gmail.com
2156	60	Edwige fouvry	Auderghem 	\N	\N	79d734783b3e0ec7b13d42151b3250fd	f	2020-05-23 22:52:44+00	2020-05-23 22:52:44+00	\N
1648	61	Ellis	1081	\N	\N	39db44844afb531c09570c020e540e72	t	2020-05-23 07:22:15+00	2020-05-23 07:22:50+00	\N
1275	61	Jonas Helseth	Brussels	Father of a little girl, taxpayer, employer	Bellona Europa	b5f1f4627f127fab7aaca1450a9a8425	t	2020-05-22 13:19:39+00	2020-05-22 13:20:39+00	\N
1307	60	Kim Le Quang	Bruxelles	Moniteur	Rise for Climate Belgium	641c1f64e80e08dfc54a4b6736e93f40	t	2020-05-22 15:02:29+00	2020-05-23 11:06:12+00	kimlequang@yahoo.fr
1276	60	Loo.is	Ixelles	DJ	La Jacqueline	70d476e3e6ad3e45d64e6f1a6f6ead4a	t	2020-05-22 13:23:38+00	2020-05-22 13:23:50+00	loois33@gmail.com
1277	60	Nic	Brussels	citizen	VUB	fecf8efb5514d425c5cf101e0e403ae3	t	2020-05-22 13:39:01+00	2020-05-22 13:39:22+00	\N
1278	62	Amaury Jonkers	Bruxelles	Citizen	\N	2baf8756e36afb8a39170589cc8c9aab	t	2020-05-22 13:43:11+00	2020-05-22 13:44:36+00	\N
1274	61	Malen Otero	Bruxelles	consultant	\N	0c8b35648c883e2603f11a5899522de2	t	2020-05-22 13:12:12+00	2020-05-22 13:48:31+00	malenotero96@gmail.com
1255	60	Lieutenant Nicolas 	Schaerbeek	Privé 	\N	249d054da7ca33d849e92e4d486262aa	t	2020-05-22 11:21:18+00	2020-05-22 13:49:39+00	nlieutenant@gmail.com
1279	60	Noémie De Clercq	Saint Gilles	Food & Brussels Lover	FoodWIN	680d308597151bb5b13bc14266bd3170	t	2020-05-22 13:50:01+00	2020-05-22 13:50:21+00	\N
1273	60	Hugo	Ixelles	\N	\N	29230da89bf1a78af197bdabce6c1b4f	t	2020-05-22 13:04:44+00	2020-05-22 13:58:27+00	\N
1280	60	Tiago Mendes-Costa	Uccle	\N	\N	09dea8268f088d012d187a8d66a1a8aa	t	2020-05-22 14:00:55+00	2020-05-22 14:02:53+00	openletter.id@mendes-costa.net
1281	60	Matthieu Christiaens	Bruxelles	\N	\N	062043886642f78564a13617b963320c	t	2020-05-22 14:01:50+00	2020-05-22 14:02:56+00	\N
1282	60	Raphaël Lejeune	Forest	\N	\N	99041c36549f31f245849bf9f6c4de39	t	2020-05-22 14:03:31+00	2020-05-22 14:03:43+00	\N
1283	61	Pierre-Louis	LLN	Entrepreneur	\N	8799f8db723d32f27b04607e0c2e2dea	t	2020-05-22 14:04:25+00	2020-05-22 14:04:35+00	\N
1284	60	Cyril Claude	Laeken	Étudiant	\N	4a0b0e7897adc9aa0bb70c1045d85e77	t	2020-05-22 14:08:39+00	2020-05-22 14:08:55+00	cyril-claude@hotmail.com
1285	60	Quentin Devillers	Schaerbeek	Artiste	\N	f8d307c0a3bf56c2d26ea0eda7bbee0a	t	2020-05-22 14:11:02+00	2020-05-22 14:11:25+00	\N
1286	61	Ruairi Patterson	Brussels	\N	\N	775ad84ce7e03c959bc5e026f2934765	t	2020-05-22 14:17:06+00	2020-05-22 14:17:44+00	ruapat@gmail.com
1287	60	Namias Bernard	Bruxelles	Médecin	\N	ffbe71b079166a682d8fed9cc59c3ced	t	2020-05-22 14:19:00+00	2020-05-22 14:19:38+00	bernard.namias@laposte.net
1288	61	Pierre de schaetzen	Forest	Entrepreneur	Billy Bike	11fca26ce94c34e1b81af7f5037ea52b	t	2020-05-22 14:21:38+00	2020-05-22 14:22:17+00	\N
1289	60	Sabine Mahy 	Wezembeek-Oppem	Préoccupée par le climat 	\N	e21fe4365f6fee23bf299a149eacf5ab	f	2020-05-22 14:23:00+00	2020-05-22 14:23:00+00	abinemahy@hotmail.com
1291	60	CarolineDe Decker 	Brussels	Citizen	\N	2e8471db94f51fbd30c201867c78bdb3	t	2020-05-22 14:28:13+00	2020-05-22 14:29:12+00	\N
1292	61	Veronika Vimpelova	Brussels	Fashion designer	MAD Home of Creators	d24380736544030c43e618931f81d9ce	t	2020-05-22 14:29:05+00	2020-05-22 14:29:26+00	vvimpelova@gmail.com
1293	60	Sébastien Dachy	Bruxelles	Architecte 	\N	0550bebbe7f6831fbc5a69ad1e8ebdd7	t	2020-05-22 14:32:05+00	2020-05-22 14:32:31+00	sebastien.dachy@gmail.com
1294	60	Benoît Hoquez 	Beersel	Enseignant	Bougr’ Aventure asbl	246feb20098440cb6e1bc4534efe2769	t	2020-05-22 14:32:38+00	2020-05-22 14:32:59+00	benoithoquez@hotmail.com
1290	60	Charlotte Ramaekers	Bruxelles	\N	\N	7b0a8a492cb3db1ec3eea46121bfc81e	t	2020-05-22 14:25:14+00	2020-05-22 14:35:01+00	\N
1295	60	Michaël R	1200	Employé 	\N	36c9d76f86f9a1dc6568b07ceb79e99e	t	2020-05-22 14:34:09+00	2020-05-22 14:39:47+00	\N
1296	61	Malte Arhelger	Bruxelles	Employé	\N	29572cdf31a685b5a8bbfa457d5fdf47	t	2020-05-22 14:40:25+00	2020-05-22 14:41:17+00	\N
1297	61	Laurent Vermeersch	Forest	\N	\N	c0e2caa4dacd6ecfbdc69292db1a9c46	f	2020-05-22 14:43:37+00	2020-05-22 14:43:37+00	\N
1299	61	George van Hecke	Etterbeek	Consultant	Bain	bd76e04c4cc0fae09503889f8ee6d072	t	2020-05-22 14:47:39+00	2020-05-22 14:48:33+00	vanhecke.george@gmail.com
1300	61	Larry Moffett	Brussels	Member	Rise for Climate Belgium	4e009047066a3186163abd9ffd8e7c89	t	2020-05-22 14:48:21+00	2020-05-22 14:48:39+00	larrymoffett@gmail.com
1302	61	Quentin	1050	Consultant 	Greenfish	b5ee27d5d2e47192383593d21da781f8	f	2020-05-22 14:49:37+00	2020-05-22 14:49:37+00	pacifikent@hotmail.com
1298	60	Miguel Van Damme	1150	Indépendant  	\N	3b623121fa881848e3a4d65403366cce	t	2020-05-22 14:46:37+00	2020-05-22 14:49:46+00	miguel.vandamme@gmail.com
1301	60	Charlotte woolfson	Etterbeek	Consultant	Fipra 	5870bb5f0e967d6589c58cd298eba3ae	t	2020-05-22 14:49:28+00	2020-05-22 14:49:52+00	\N
1303	61	Hadrien van Hecke	Brussels	\N	\N	1568d9255dd939d8b3a7a1d4d3a39030	t	2020-05-22 14:52:03+00	2020-05-22 14:52:20+00	hadrienvanhecke@gmail.com
1304	62	Kevin Smets	Etterbeek	\N	\N	6a9763b02309d7a9be9eb84a6ae2253e	f	2020-05-22 14:53:34+00	2020-05-22 14:53:34+00	\N
1306	61	Karolina Vasiljeva	Ixelles	Citizen	\N	5721ac015e365f7fcd6c0df25d5f07ac	t	2020-05-22 15:01:53+00	2020-05-22 15:02:58+00	karolina.vasiljeva@gmail.com
1308	61	Jaana Hotakainen	brussels	official	\N	3c74ecb503b2d6e16f82206587959866	f	2020-05-22 15:03:25+00	2020-05-22 15:03:25+00	\N
1305	60	Tanguy Grandjean	Brussels	Renewables	WindEurope	2fc3eb48e3cca3b64a11e7c3c564d3a9	t	2020-05-22 15:01:04+00	2020-05-22 15:03:37+00	\N
1309	61	Charles Randaxhe	Ixelles	\N	\N	15d8b5bc44d26ba5523a05fc1cd1455a	t	2020-05-22 15:03:27+00	2020-05-22 15:03:49+00	che.rdx@gmail.com
1310	61	Chloé Van Driessche	\N	\N	\N	1304dacff46478dff4d7c526e50f06d9	t	2020-05-22 15:04:23+00	2020-05-22 15:04:55+00	\N
1311	60	Anthony Stern	Schaerbeek	Citoyen	\N	ccdd2276e410bdef0eb1654ec1f7d96a	t	2020-05-22 15:04:43+00	2020-05-22 15:05:10+00	anthostern@gmail.com
1314	60	Milan Martinot	Schaerbeek	\N	\N	3a1c81416a0706b2871d8d46bdc41a6e	t	2020-05-22 15:06:47+00	2020-05-22 15:07:05+00	\N
1315	60	Delphine Desmet 	Woluwe-Saint-Lambert 	Bruxelloise	\N	45ca5dc99fd9afe20d49560595d33599	t	2020-05-22 15:08:37+00	2020-05-22 15:09:02+00	del.desmet@gmail.com
1317	60	Guillaume Lambin 	1000	Employé 	\N	23d9fecfaeedb2469d7df33d655f98bd	t	2020-05-22 15:09:22+00	2020-05-22 15:09:52+00	guillaume.lambin@gmail.com
1318	62	Raf Knops	Brussel	Human in need of clean air	\N	36fa4f4dea609a91c7f423971683fe72	f	2020-05-22 15:10:19+00	2020-05-22 15:10:19+00	\N
1319	60	Mathieu LAURENT	Ixelles	Employé	\N	3340537e0d373f829de94404204b8126	t	2020-05-22 15:12:19+00	2020-05-22 15:12:55+00	mathieu.laurent@gmail.com
1320	60	Natacha Demanet	Boitsfort	Enseignante	Communauté française	3520002d112d1db8a2dd413a7e868d19	t	2020-05-22 15:12:59+00	2020-05-22 15:13:12+00	natachademanet@gmail.com
1313	60	Claire De Hertogh	Bruxelles	\N	Lancz Gallery	1d3bd750cff1c61243e1c479356f0d2b	t	2020-05-22 15:06:05+00	2020-05-22 15:21:38+00	\N
1324	61	Gerard Bros	Etterbeek	\N	\N	b75d24956f35a9dd10a9d2187f2ef182	t	2020-05-22 15:15:14+00	2020-05-22 15:23:03+00	\N
1321	60	Tanguy Ollinger 	Schaerbeek 	\N	\N	d58e0ce698754dcfd8685b7627430498	t	2020-05-22 15:14:27+00	2020-05-22 15:24:22+00	tanguy.ollinger@gmail.com
1312	61	Bram Algoed	Vorst	\N	\N	ad702dfe98ffa7ba0dc6e891d9beabd1	t	2020-05-22 15:05:32+00	2020-05-23 05:02:50+00	\N
1322	60	Petre simon	Nruxelles	Employe	Csc	dc9f7cd0496ebed763201a1ffbf89f17	t	2020-05-22 15:14:39+00	2020-05-22 15:15:25+00	\N
1653	61	Elvia Gonzalez	Brussels	Urban designer	Buur	aa3d6105235e11320aae476756d6c8df	t	2020-05-23 07:33:39+00	2020-05-23 07:34:30+00	elviagcostas@gmail.com
1326	60	Simon Thiebaut	Schaerbeek	Employé 	\N	37ef25fc616ce2db14054573c6aaaa77	t	2020-05-22 15:17:07+00	2020-05-22 15:17:25+00	\N
2910	60	Christine Guillain	1030	Professeure	\N	49d5afec6fd56a90d5d970469397e918	f	2020-05-25 08:20:14+00	2020-05-25 08:20:14+00	\N
1327	62	Florian D'Hoore	Sint-Gillis	\N	\N	b71ee6810a15d7a62c679b2794428d7e	t	2020-05-22 15:17:28+00	2020-05-22 15:17:43+00	floriandhoore@gmail.com
4809	60	Stéphane stadler	uccle	\N	\N	d6571d128787cdbdc28e0f233fefe248	f	2020-05-27 16:28:38+00	2020-05-27 16:28:39+00	\N
1330	60	Goeseels	Bruxelles	Enseignante	\N	a4210f2168cee48b9702f54ccadce06e	t	2020-05-22 15:22:29+00	2020-05-22 15:22:49+00	\N
1656	60	André 	Bruxelles 	Electricien	\N	1c46320943b4832858246aacc75b2f2f	t	2020-05-23 07:38:48+00	2020-05-23 07:39:24+00	andre.gaetan@gmail.com
1331	60	Elisabeth Heymans	Bruxelles	\N	\N	20d5a2e6d37d8f77fa4f1c01e06ba76e	t	2020-05-22 15:24:12+00	2020-05-22 15:26:14+00	\N
1654	62	Sarah Van Ransbeeck	Sint-Gillis	\N	\N	a5202bb176338dca5d6ab4f277f279b1	t	2020-05-23 07:36:15+00	2020-05-23 07:39:44+00	\N
1333	61	Louis Borsu	Brussels	Engineer	\N	52e6f4a061c843fb5cd73fd7f0812ced	t	2020-05-22 15:27:38+00	2020-05-22 15:27:46+00	netbandbis@gmail.com
1657	61	Malene Rasmussen	Bruxelles	Lawyer	\N	ef52efe5350f147d9dc1c9384db38834	t	2020-05-23 07:39:26+00	2020-05-23 07:39:50+00	malenerasmussen@btinternet.com
1655	61	\N	Ixelles	Technicien Vendeur	Les petits riens	2a3b8326a56003707203d4ac6f5d8652	t	2020-05-23 07:37:25+00	2020-05-23 07:43:12+00	leandro.rabbone@gmail.com
1338	60	Maxime Lambrecht	Ixelles	Chercheur	\N	4654fb32a71763e886bc93c20e6c0367	t	2020-05-22 15:35:58+00	2020-05-22 15:36:09+00	\N
1340	61	Viona Rijsbosch 	\N	\N	\N	616d6730539d3c3f04e3b01458b4b025	t	2020-05-22 15:37:17+00	2020-05-22 15:37:47+00	\N
1774	61	Joakim Smedman	Schaerbeek	\N	\N	9d8bde07373a37d716775bc4bca2f5c9	t	2020-05-23 10:20:02+00	2020-05-23 10:20:24+00	\N
1341	60	Matthieu Henkens	Schaerbeek	Citoyen 	\N	588c8398795f6d516c61ba8b410d416a	t	2020-05-22 15:37:59+00	2020-05-22 15:38:14+00	matthinmoscow@gmail.com
1342	60	Le boucher 	Bruxelles 	Banquier 	\N	345bc7d519cfbcbb3a1a25690ceb3caf	f	2020-05-22 15:38:53+00	2020-05-22 15:38:53+00	\N
1775	60	Bouvez lefebvre	Wezembeek oppem	\N	\N	9dd5c29309a91fb7338631fed12ca735	t	2020-05-23 10:20:28+00	2020-05-23 10:20:57+00	\N
1344	60	Magali Brunelle	Evere	psychologue	\N	208ae7eebe9081878ff95124f3aff1f1	t	2020-05-22 15:43:41+00	2020-05-22 15:45:16+00	maggynelle@hotmail.com
1345	62	Koen Dhondt	Sint-Gillis	leraar	\N	8b54f710c46d97d50396a4c9f666ff9b	t	2020-05-22 15:44:09+00	2020-05-22 15:45:17+00	koen.dhondt.bxl@gmail.com
1781	61	Ike Teuling	Brussel	activist	\N	416193cbeee3f5f846990dc4232771c7	t	2020-05-23 10:25:25+00	2020-05-23 10:25:47+00	iketeuling@gmail.com
1332	62	Stefania Marzo	1030	\N	\N	55333a88440d83ee8d06813f45aa53ac	t	2020-05-22 15:27:32+00	2020-05-22 16:01:20+00	\N
1352	60	Julien Carlier	Etterbeek	Consultant	EDITx 	19c3b1ea81cceb012efc23548443a55e	t	2020-05-22 15:53:25+00	2020-05-22 16:01:51+00	\N
1357	61	Stephan Kampelmann	St. Gilles 	\N	\N	77cd40986c6665f69bf643cdad76fc1a	f	2020-05-22 16:01:51+00	2020-05-22 16:01:51+00	\N
1353	61	Adrian Hill	Brussels	planner/designer	\N	ce6c22dc8fa0b812c8079323b8454dee	t	2020-05-22 15:53:44+00	2020-05-22 16:02:11+00	avhsubscriptions@gmail.com
1328	61	Kadri Soova	\N	\N	\N	efb9ae44cc5e99013b1bf092b568850a	t	2020-05-22 15:18:37+00	2020-05-22 16:06:59+00	\N
1363	61	Patrick Roncato	Schaerbeek	Project manager	\N	e68082cb835b4013174ab4a0d5ab91e5	t	2020-05-22 16:08:15+00	2020-05-22 16:09:38+00	\N
1783	62	Kim Pipeleers	Geen stad	Vrij	\N	829d8f29448b1774403fe2314d69d57b	f	2020-05-23 10:28:37+00	2020-05-23 10:28:37+00	\N
1367	60	Camille Goret	Bruxelles	Journaliste	\N	773af1c1c544a6bb380d85a52e9bf3b7	f	2020-05-22 16:15:01+00	2020-05-22 16:15:01+00	\N
1784	61	Gabriel Hollander	Brussels	\N	STIB	1612aab639bb700310d24481ec396819	t	2020-05-23 10:31:11+00	2020-05-23 10:31:43+00	gabriel.hollander@gmail.com
1369	61	Lucian Stănescu	Brussels	interpreter	\N	588fb9ae9dda71772021f899e851f6e1	t	2020-05-22 16:20:54+00	2020-05-22 16:21:08+00	stanescoo@gmail.com
1780	62	Catherine Tirez	UKKEL	\N	\N	b5f4de21adfc964591d0ad9063d8b86a	t	2020-05-23 10:24:53+00	2020-05-23 10:32:50+00	catherine.tirez@outlook.com
1782	61	Geert van Waeg	SLWoluwe	multimodal citizen	johanna.be	db21a84fe9f9c80b968ff7565f1f03c9	t	2020-05-23 10:28:01+00	2020-05-23 10:36:29+00	geert.vanwaeg@johanna.be
1372	60	Georis	Bruxelles	employée	aide à la jeunesse	4a97603aad808b419b0b1a43b6cb7a63	f	2020-05-22 16:24:35+00	2020-05-22 16:24:35+00	\N
1373	60	Laurent Cochaux	Bruxelles	Gérant Horeca 	Fat Boy’s Sport Bar	e1c0673ad95d818a72d4ef3edf2455f8	t	2020-05-22 16:25:33+00	2020-05-22 16:25:51+00	\N
1374	60	Lucas Majard	Saint Gilles	Automotive project engineer	\N	103c2fd41a0c8639fb7ed3a8a48bc040	f	2020-05-22 16:27:39+00	2020-05-22 16:27:39+00	majard.lucas@gmail.com
1370	60	Marie Baudet	Forest	journaliste 	\N	2c294bc03d0019b587724c419e6cd58b	t	2020-05-22 16:21:15+00	2020-05-22 16:29:16+00	mariebaudet@yahoo.fr
1844	61	Leslie	Brussels 	\N	\N	aa802b745dba65c84e3897dfbf60307c	t	2020-05-23 11:39:42+00	2020-05-23 11:40:01+00	\N
1375	61	Loucas Papantoniou 	Brussels	Designer	\N	3ac6da418e5c796afe782948987a3f27	t	2020-05-22 16:29:28+00	2020-05-22 16:29:42+00	loucaspapa@gmail.com
1376	60	de Mathelin Antoine	SCHAERBEEK	\N	\N	e0e437a27a88fc3436d7957d8a41c4f1	t	2020-05-22 16:30:53+00	2020-05-22 16:31:16+00	\N
1377	60	botta	Bruxelles	indépendant	Les Organisateurs	87821d149d4899f2231b25cd118e3853	t	2020-05-22 16:31:00+00	2020-05-22 16:31:18+00	\N
1846	60	Thibault Mir	Ixelles	\N	\N	08ec4a73e14ae22e7fe8b0adc5ea4a2d	t	2020-05-23 11:42:30+00	2020-05-23 11:42:50+00	thibaultmir@free.fr
1379	61	Luciane Sopchenski Santos	Mons	\N	\N	a4f744a79b13f56e359af538c59a4ac5	t	2020-05-22 16:34:53+00	2020-05-22 16:35:38+00	lucianeck@gmail.com
1847	61	Adela Buruzan	Etterbeek	\N	\N	5456c42dcba63e8078517992f32c4b16	t	2020-05-23 11:43:21+00	2020-05-23 11:43:32+00	\N
1383	60	Weisengrun caroline 	Bruxelles 	\N	\N	a949d97e670940b2f6f7e1b4bc78dd2d	t	2020-05-22 16:38:33+00	2020-05-22 16:39:01+00	caroweisengrun@hotmail.com
1384	60	Alicia Cochaux	Bruxelles 	Étudiante 	\N	e7066c9140eb1a40d915f12e69f00471	t	2020-05-22 16:38:51+00	2020-05-22 16:39:03+00	\N
1339	60	Astrid MEEUS	Bruxelles 	Employé 	\N	83d6ecfd5c4e65d756f459b9c7796b69	t	2020-05-22 15:36:03+00	2020-05-22 16:40:04+00	\N
1365	60	Véronique Flammang	Bruxelles	gérante	\N	afe71911616a988be4b988c45abcfe51	t	2020-05-22 16:11:28+00	2020-05-22 17:22:57+00	\N
1371	61	Nadège Vanhoutte 	Ixelles 	Engineer	\N	bbea27adddcf1ba6148f7c9ecade47b8	t	2020-05-22 16:23:44+00	2020-05-22 17:28:47+00	\N
1355	60	Paul Van Osselaer	Ganshoren	employer	\N	4ecb59e77cd4248ff88c5211aa135339	t	2020-05-22 15:56:43+00	2020-05-22 18:18:34+00	pvomxt@gmail.com
1366	61	Laurent Hublet	Bruxelles	Entrepreneur	\N	ced3becaffaa89607841b2cc0ee79940	t	2020-05-22 16:12:38+00	2020-05-22 18:42:03+00	\N
1354	60	Gonzalez	Landenne	\N	1987	6813f6e0fc7ce39e8a755c152571c50e	t	2020-05-22 15:56:11+00	2020-05-22 18:49:44+00	\N
1854	62	Sarah Pauwels 	Brussel 	\N	\N	f1eb966a5fb12ad95f9d5d9282c6799d	t	2020-05-23 11:49:57+00	2020-05-23 11:50:47+00	\N
1865	61	Chris Mitchell	Brussels	Comme specialist	FedEx	54ba76de3888ef6c1c975eab163d0b17	f	2020-05-23 12:13:17+00	2020-05-23 12:13:17+00	mitchris@hotmail.be
1779	60	Marianne Schoofs	Bruxelles	médecine générale	\N	bbb40afb3e8bea83ed9ab41552304c1b	t	2020-05-23 10:24:52+00	2020-05-23 18:59:02+00	\N
1325	60	Andres hertsens 	bruxelles	Graphiste	\N	5b68f37f7fe483204eeebf6ae5ed8387	t	2020-05-22 15:15:19+00	2020-05-22 15:15:32+00	\N
1663	60	De Brier	Bruxelles	Office Manager 	\N	822a285adcfd9b2af53649bf41ba7ac2	f	2020-05-23 07:50:58+00	2020-05-23 07:50:58+00	florence.debrier@simontbraun.eu
1334	61	Ana	Brussels	Unemployed	Unemployment	7ae3888b27f0f576210653e5fb405351	f	2020-05-22 15:31:17+00	2020-05-22 15:31:17+00	ana.rolo.vub@gmail.com
1382	60	de Troyer Jim	1150	\N	\N	6eb1d2d2f24e4b09c80f8536689ee5bf	t	2020-05-22 16:36:08+00	2020-05-23 15:46:35+00	j_detroyer@hotmail.com
1336	60	Federico Garcia	Bruxelles	Informaticien	Independant	ef87faa3a118770f2a8872deb3301731	f	2020-05-22 15:33:53+00	2020-05-22 15:33:53+00	fedegp@hotmail.com
1329	60	Violaine Petre	Bruxelles	Aide-soignante 	\N	7a5da904af1d81204b42cc817cd84b33	t	2020-05-22 15:20:41+00	2020-05-22 15:34:05+00	violaine_petre@hotmail.com
1335	60	Chris Hermann	Bruxelles	Sales	DPG Media	b5c83868f8e912d76e69c2e5526e1c35	t	2020-05-22 15:33:27+00	2020-05-22 15:34:19+00	\N
2911	61	Eva Kamanda	1090 Jette	\N	\N	c32be476396ebcbccc06b910ba8c5e4e	t	2020-05-25 08:21:38+00	2020-05-25 08:21:51+00	eva.kamanda@gmail.com
1343	60	Agnès 	Bxl	Enseignante 	\N	a6d40c0151b55727c9f3ee83d6504ee1	t	2020-05-22 15:40:28+00	2020-05-22 15:41:05+00	\N
1337	60	Quentin 	Braine l'Alleud	Travailleur social	\N	b1f31b1ff83e0184228883ae7109cc93	t	2020-05-22 15:34:25+00	2020-05-22 15:48:03+00	\N
2912	62	Hannes	Antwerpen	Gamen	vanheetum schelfhout	bc01a7f93c66c1d75703c394907b63ce	f	2020-05-25 08:22:23+00	2020-05-25 08:22:23+00	\N
4811	61	Alexander Hoffmann	Bruxelles	\N	\N	2cc050ca3b11becffd8b4c9b34920f49	t	2020-05-27 16:40:55+00	2020-05-27 17:05:47+00	hoffmann-alex@gmx.de
1347	60	Nathalie Vercruysse	Woluvé St Lambert	Mère de famille nombreuse	\N	229a84cb84140d1ac756d369d9c6e685	t	2020-05-22 15:48:13+00	2020-05-22 15:48:40+00	nathalie.claire.claude@gmail.com
1349	61	Omar Cruz	Brussels.	Dancer	\N	2b837824d99918ac40257098aa6d4141	t	2020-05-22 15:48:48+00	2020-05-22 15:49:17+00	\N
1350	60	françois bourgaux 	Laeken	Télétravailleur	\N	623325bfda371e7a18e722d66eddcee0	t	2020-05-22 15:49:09+00	2020-05-22 15:49:39+00	\N
1346	60	Stéphan Milis	Kraainem 	Gérant de société 	\N	b7cccf26469d0c57e332ff8d495a7105	t	2020-05-22 15:48:09+00	2020-05-22 15:50:07+00	stephan.milis1@gmail.com
1348	60	corentin demanet	Woluwe Saint Pierre	\N	\N	3eec4ad6eaad54645c1b7f7ec113c783	t	2020-05-22 15:48:25+00	2020-05-22 15:50:47+00	\N
1351	60	Aurelia Lee	Woluwe-Saint-Pierre 	\N	\N	9fb6ff9544e2de09058d4ded6fec8c89	t	2020-05-22 15:52:01+00	2020-05-22 16:03:37+00	\N
1362	60	Marie-Dominique Verbruggen	Kraainem	\N	\N	1aabe502a1ed749ddd2db5eed6c57d6c	t	2020-05-22 16:06:14+00	2020-05-22 16:10:45+00	\N
1358	62	Pieter Fannes	1030	\N	\N	f7eaf54c186f377a20d29cd28eeb3ed6	t	2020-05-22 16:02:29+00	2020-05-22 16:27:05+00	\N
1378	60	Riffont	Ganshoren	Employée	\N	e879ecf890c4c82d5194a30a9c4156d5	t	2020-05-22 16:34:08+00	2020-05-22 16:34:37+00	maryse.riffont@topbrands.be
1381	60	Stephanie Mahieu	Uccle	Anthropologue 	\N	f9a0f07c48f80b6b676093ca6e9b62c9	t	2020-05-22 16:35:50+00	2020-05-22 16:39:19+00	sfafmahieu@gmail.com
1385	60	Zamaron Pauline	Ixelles	Architecte	\N	866f38c8b287a557f9cb5b88077220cc	t	2020-05-22 16:39:49+00	2020-05-22 16:41:00+00	zamaronpauline@hotmail.fr
1387	60	Aude 	\N	\N	\N	6affc161591f65827e02e88d71323bfa	f	2020-05-22 16:44:59+00	2020-05-22 16:44:59+00	salukiworld@hotmail.com
1386	61	Ester Favero 	Bruxelles 	Employees 	Cartoonbase 	5be6275b04b66c519a92367054df6669	t	2020-05-22 16:44:20+00	2020-05-22 16:45:31+00	\N
1389	61	Shabbeer Hussain 	Brussels	Studying	Student	0009b0bab704ab9ae630b12754becece	t	2020-05-22 16:50:57+00	2020-05-22 16:51:48+00	\N
1390	61	Alberto González	Brussels	Student	\N	a74feb4ae23fa95476e29fd8e1bc552e	t	2020-05-22 16:51:34+00	2020-05-22 16:52:32+00	superpatacount@gmail.com
1391	60	Sabine	\N	\N	\N	f4bdb30a91f506145a16e5c4ba1a9061	t	2020-05-22 16:53:19+00	2020-05-22 16:54:25+00	\N
1392	60	Martin Lefrancq	Bruxelles	Employé	\N	a80d539afaba7d2a5c3b860a8d6dd3c0	t	2020-05-22 16:55:37+00	2020-05-22 16:56:39+00	martinlefrancq@gmail.com
1393	62	Olivia Rochette	Sint-Gillis	\N	\N	98778d3ac37d3b17dec5e6445c0e5d7c	t	2020-05-22 16:57:56+00	2020-05-22 16:58:34+00	\N
1388	60	Grégoire Monnoyer	Bruxelles	Independant	Gmg Consult	b502fce2abf28ddda702875d3135d729	t	2020-05-22 16:50:54+00	2020-05-22 17:01:32+00	\N
1396	60	Brossier Sarah 	Nivelles	Enseignante	\N	ca34e9dc8a8567f9163e55dbb9d112e9	f	2020-05-22 17:05:57+00	2020-05-22 17:05:57+00	\N
1395	60	Laura	Bruxelles	Étudiante	\N	85bf03e8344edf41620484df4e6f6bdf	t	2020-05-22 17:05:28+00	2020-05-22 17:07:03+00	\N
1397	60	Aude Vandeputte	Nivelles 	Fonctionnaire	\N	a2f92b70b04b5e041d34453725bed1e9	f	2020-05-22 17:07:24+00	2020-05-22 17:07:24+00	aude.vdp@gmail.com
1400	60	Karvouniaris	Laeken	Institutrice	\N	407bf025429ee81598a2795fc78c6f73	t	2020-05-22 17:09:56+00	2020-05-22 17:10:26+00	astil16@hotmail.com
1399	61	Stephane Roland 	1190	Designer	\N	823ce36b8f909737af9fa2b1ddc97809	t	2020-05-22 17:07:44+00	2020-05-22 17:11:00+00	\N
1401	61	Carlos Garcia	Brussel	Telecom. Eng.	STE iDirect Europe	4e293feba6ad9241836a9244be06106a	t	2020-05-22 17:12:41+00	2020-05-22 17:13:11+00	\N
1402	61	Marco Sirotti	Brussels	PhD student	\N	2a2eb7835160f85a5600e4309f6bca5b	t	2020-05-22 17:19:51+00	2020-05-22 17:20:22+00	\N
1404	61	Manon Brulard	Elsene	Coordinator	HackYourFuture Belgium	18d744a811e5a001e57f0a8d11f79d18	t	2020-05-22 17:22:04+00	2020-05-22 17:26:38+00	manbrulard@gmail.com
1405	61	William Bourgeois	Jette	\N	Mr.	2e9f363882dd268797d182ad5149d3cb	t	2020-05-22 17:26:46+00	2020-05-22 17:28:44+00	madcap1090@gmail.com
1407	60	Martin Martin	1080	Cadre	Sodexo	59e3395be7a637da161a145da04e0271	f	2020-05-22 17:36:19+00	2020-05-22 17:36:19+00	artin@yopmail.com
1403	60	Luca Ciccia	Saint-Gilles	Employé	\N	2fe971678199f199b331abcd50fb5bb3	t	2020-05-22 17:20:45+00	2020-05-22 17:38:05+00	\N
1408	62	Seghers Birgitta	\N	\N	\N	2bef0d32b7bfc1a7695e730cdfc68e9f	f	2020-05-22 17:40:58+00	2020-05-22 17:40:58+00	birgitta.seghers@gmail.com
1412	61	Valentine Vandergeeten	Etterbeek	Etudiante	Jury Central	a2edf1745d3793df6bd4c84476af6ba5	f	2020-05-22 17:43:11+00	2020-05-22 17:43:11+00	valentinevdg@gmail.com
1414	62	Sarah Baur	Brussel-stad	regisseur	Choux de Bruxelles - Artist Collective	5dee92d6add8f0318985ea442940d35d	f	2020-05-22 17:43:52+00	2020-05-22 17:43:52+00	online.sb@tutamail.vom
1410	60	Simon Berwart	Ixelles	Ingenieur	Thomas et Piron 	53da23507ea801562302a8e4f9fb11bd	t	2020-05-22 17:42:36+00	2020-05-22 17:44:20+00	\N
1411	60	A V	Bruxelles 	\N	\N	7f927dadf343bfeda33878dfd39fb94c	t	2020-05-22 17:42:51+00	2020-05-22 17:55:49+00	\N
1415	60	Milis Olivier	Ixelles	\N	\N	e0bd64c65373b359c7c3e1ae2a1c1557	t	2020-05-22 17:45:47+00	2020-05-22 18:03:46+00	\N
1356	61	Sam Cortvriend	1080	\N	\N	fe07196806b0994e5782ef6d85480546	t	2020-05-22 16:00:07+00	2020-05-22 18:12:49+00	sam.cortvriend@me.com
1364	60	Goeseels Luc	Bruxelles 	Pensionné	\N	d6a23ff836cb451048cffd2287520461	t	2020-05-22 16:10:02+00	2020-05-22 18:16:17+00	luc.goeseels@infonie.be
1398	60	Servais Olivier	Bruxelles	Consultant	Transports Collectifs Net	92a5723749b4c4b06a7e630ff10114bc	t	2020-05-22 17:07:33+00	2020-05-22 18:37:07+00	\N
1409	61	Ben Vandergeeten	Woluwe St Pierre	Fonctionnaire	Comité Economique et Social Européen	04d9e7172553e1ad5f2643dd9497f2af	t	2020-05-22 17:41:47+00	2020-05-22 22:10:19+00	ben@vandergeeten.eu
1360	60	Rémi Mayet	Uccle	Ingénieur 	\N	8c6a3a475069a6240c5eb649c9e93e1e	t	2020-05-22 16:04:35+00	2020-05-23 00:10:48+00	johanna.heidenreich@skynet.be
1359	61	salvatore	Brussels	IT	not applicable	ed24266d39314630746ccb7c2a277a0c	t	2020-05-22 16:02:45+00	2020-05-23 06:34:18+00	salvatoresaia@gmail.com
2157	62	Greet Callaerts 	Brussel	/	\N	8307e9ebeed8fef422b77dfbb84b36e6	t	2020-05-23 22:59:32+00	2020-05-23 23:01:13+00	callagreet@gmail.com
1423	60	William Van Dingenen	Watermael-Boitsfort	Ingénieur agronome	\N	e6ce5c902137b4819dfa07c8dc4ec700	t	2020-05-22 17:55:02+00	2020-05-23 08:12:41+00	\N
1470	60	Alexis VJ	Tervuren	Employé 	\N	24b3d5ec65ed679ed679b6f2be5da0e7	t	2020-05-22 18:49:04+00	2020-05-23 12:38:20+00	alexis.vanjeun@gmail.com
1481	61	Bernardo Rodrigues	1050	\N	\N	dd5400999d190a7505d55072c022a822	t	2020-05-22 19:17:05+00	2020-05-23 16:40:57+00	\N
4810	60	Catja Ostner	Bruxelles 	Traductrice 	\N	857e54b5930c1b6d93c5c9305565310a	t	2020-05-27 16:36:36+00	2020-05-27 16:36:57+00	catja2202@gmail.com
1421	62	Lula Maris	Brussel	student	VUB	11f36457301fc42efedc2a65f3b41718	t	2020-05-22 17:52:29+00	2020-05-22 17:52:40+00	\N
1416	61	Rebekka Eisner	Schaerbeek	\N	\N	2f39fe8ec3e0797cd4dc651d9e5352a5	t	2020-05-22 17:49:01+00	2020-05-22 17:54:05+00	rebekka.eisner@gmail.com
1422	61	Lara Gill	Brussels	\N	\N	d4fb50c2142da89d046ecdbcbbb75bfc	t	2020-05-22 17:54:19+00	2020-05-22 17:54:34+00	\N
1425	62	Sara Janssen	Elsene	Huismoeder	\N	1b65c48d71953ec3c6eafa1484f64306	f	2020-05-22 17:57:42+00	2020-05-22 17:57:42+00	\N
1426	60	Dorothée Maréchal	Bruxelles	\N	\N	24c0ca748821038cb79d0286c34de75a	t	2020-05-22 17:59:40+00	2020-05-22 18:00:26+00	\N
1424	61	Jeremy Leon	Ixelles	Ingénieur 	Mr.	64ccf557ef49c20670e395f5a59c7f7a	t	2020-05-22 17:57:03+00	2020-05-22 18:04:14+00	\N
1442	60	Rappe	Woluwe-Saint-Lambert 	Consultant 	FINSQUARE 	355e90771cdf36f3bb9bd1432d0e6b87	t	2020-05-22 18:04:13+00	2020-05-22 18:05:02+00	alexandre.rappe.trav@gmail.com
1446	60	Olivier Suys	Bruxelles	Chercheur	ULB	cd1b426afa64908261dd4e170caa9546	t	2020-05-22 18:05:26+00	2020-05-22 18:05:47+00	osuys.be@gmail.com
1447	61	Leonardo B. Coelho	Ixelles	Chercheur	\N	fe9c2263b179f980549b277b08aba27b	t	2020-05-22 18:06:17+00	2020-05-22 18:06:47+00	bcoelho.leonardo@gmail.com
1448	61	MARIA Serrenti	Brussels 	Cheffe de project	Agrer	bce5985b9c482d5ffba3af10cbb20b21	f	2020-05-22 18:08:13+00	2020-05-22 18:08:13+00	\N
1428	60	Ludovic Somers	Woluwe Saint Pierre	\N	\N	2e7c045bd87d48e4d29b0ddabc591847	t	2020-05-22 18:03:48+00	2020-05-22 18:08:55+00	\N
1451	60	Jéromine Gehrenbeck	Bruxelles	citoyenne	\N	7aa5addbfe181a84d539c564da17e54d	t	2020-05-22 18:09:51+00	2020-05-22 18:11:10+00	jeromine.gehrenbeck@gmail.com
1453	60	Jessica De Coninck	\N	\N	\N	df37f100aa04e522db005b24eee0ca4a	f	2020-05-22 18:11:57+00	2020-05-22 18:11:57+00	6kdec@hotmail.com
1452	60	Costenoble	Bruxelles	Invalide	costenoblechristian3@gmail.com	2e44188f4cd0974a3546b124d95a8664	t	2020-05-22 18:10:46+00	2020-05-22 18:12:03+00	costenoblechristian3@gmail.com
1455	61	Dan Stanciu	Bruxelles	Project Manager	Freelance	c7d00d66b3caaba73cc8f0bf600d67c1	t	2020-05-22 18:12:28+00	2020-05-22 18:12:43+00	dan.stanciu@outlook.com
1419	60	Sania Daoudi	BRUXELLES SAINT-GILLES	\N	\N	2613faec59ae4e5a9c9adaae323d21d2	t	2020-05-22 17:51:08+00	2020-05-22 18:14:23+00	\N
1450	60	Daniel N.	Schaerbeek	Enseignant	\N	37d71cf1367987aec14e2cef580c16db	t	2020-05-22 18:09:06+00	2020-05-22 18:14:52+00	danielnetik@gmail.com
1454	62	Isabelle Vanassche	1020	Laken	\N	8001a180cdc80bed02e647e50e7374a1	t	2020-05-22 18:11:59+00	2020-05-22 18:15:25+00	\N
1456	60	Boris Najman	Bruxelles	Enseignant	Université Paris Est Créteil 	71ec5b8f2edfbf2dd6cbfc2c406ca6cd	t	2020-05-22 18:15:58+00	2020-05-22 18:16:22+00	\N
1457	60	Vereecke 	1030	\N	\N	cc04c1f290059e2345dd6891edc6b1f7	f	2020-05-22 18:17:09+00	2020-05-22 18:17:09+00	\N
1458	60	Arnaud de Boulard 	Schaerbeek 	Ingénieur 	\N	de62593753e223f893ce522dcb795428	t	2020-05-22 18:19:09+00	2020-05-22 18:19:25+00	\N
1459	60	Lydie Renaud 	Bruxelles	Cadre	\N	fac74220e8e49e6f2631f7ec566c4c25	f	2020-05-22 18:20:26+00	2020-05-22 18:20:26+00	\N
1460	61	Sergio Giner	IXELLES	\N	\N	702c83be701c41a60558fa8d7eb3a57b	t	2020-05-22 18:22:48+00	2020-05-22 18:23:26+00	sergioginer@hotmail.com
1461	60	Alice Alice Cordier 	Bruxelles	\N	\N	01f4db5c95c7418ddf36083414d41ebd	t	2020-05-22 18:23:23+00	2020-05-22 18:23:57+00	alicecordier@yahoo.com
1463	62	Theun Vonckx	Schaarbeek 	Inwoner 	\N	f2161dff6c6645ec52da53b5780ac847	f	2020-05-22 18:29:33+00	2020-05-22 18:29:33+00	\N
1464	60	Monic	Bruxelles	Consultant	\N	81806dbcca799635beddaa769c650ba9	t	2020-05-22 18:30:01+00	2020-05-22 18:31:09+00	davidmonic@gmail.com
1467	60	Sarah France	Woluwe-Saint-Lambert	\N	\N	a7b7352ae65850d7fd7c612432ee3908	t	2020-05-22 18:38:40+00	2020-05-22 18:39:11+00	\N
1468	60	Collet	Ixelles	Doctorante	\N	65de49b6dfcfae2ceddd1464c97cdfd6	t	2020-05-22 18:39:03+00	2020-05-22 18:39:34+00	\N
1462	61	corentin kopp	Brussels	\N	\N	34c198bfbdb0893ee08a5647ede6a29f	t	2020-05-22 18:25:25+00	2020-05-22 18:42:43+00	kopp_corentin@yahoo.fr
1469	61	alessandro	etterbeek	employes	\N	167d28282147f91ecd513636d1ae82c0	t	2020-05-22 18:47:56+00	2020-05-22 18:48:17+00	\N
1472	62	Rochette	Sint Gilles	\N	\N	1126645e370755d619b9634fd6796996	t	2020-05-22 18:53:11+00	2020-05-22 18:53:37+00	\N
1474	60	B Gochet	1050	Archi.	\N	b6b9e18942850fa67cbf63107cfe0652	t	2020-05-22 18:55:19+00	2020-05-22 18:55:37+00	bgochet@gmail.com
1418	61	Jeroen De Swaef	1000	software developer 	\N	8cb01504d4d9ef6f37b0f3d962b0a8d2	t	2020-05-22 17:51:01+00	2020-05-22 18:57:25+00	j@recallq.com
1466	60	Marie	Bruxelles	Psychologue	\N	a2ab3cb0f73fa6b30477aea26ac88258	t	2020-05-22 18:38:33+00	2020-05-22 19:01:17+00	\N
1476	61	Rozina Spinnoy 	1081	Designer / Social Entrepreneur	BIDs Belgium 	a87cde3243078f4c2f29d3d7d153e20f	f	2020-05-22 19:02:15+00	2020-05-22 19:02:15+00	rsp@bids-belgium.com
1475	61	Petra Reichel 	1210	\N	\N	3d16788b18d74648ff3f34af69c126f3	t	2020-05-22 19:00:30+00	2020-05-22 19:03:37+00	petrareichel@hotmail.com
1477	61	André Duijsters 	Schaarbeek	Citizen 	\N	3965b8d67f74040c78b4c38fadf91d4d	t	2020-05-22 19:03:27+00	2020-05-22 19:03:57+00	duijsters@gmail.com
1479	61	Delphine Lacroix	Bruxelles	Citizen, mother	\N	7d6becc9a8db54b177611d1740249b61	t	2020-05-22 19:08:04+00	2020-05-22 19:08:46+00	\N
1478	60	Roland de Biolley	Bruxelles	Employe	\N	642e811b48a714ab48c1a0de566d73e2	t	2020-05-22 19:07:23+00	2020-05-22 19:11:39+00	\N
1465	62	Mieke Van den Broeck 	Schaarbeek	\N	\N	e5afdb057b09aa63a6079d18053a7852	t	2020-05-22 18:38:10+00	2020-05-22 19:14:06+00	\N
1480	62	Annelies Vangoidsenhoven 	Koekelberg 	\N	Citizen	3285811c71e43daf7f26f6c9796b4eec	t	2020-05-22 19:13:38+00	2020-05-22 19:14:11+00	\N
1482	62	Kristof Brunfaut	Brussel	Citizen	\N	aea53aca56e4537363f495822850972a	f	2020-05-22 19:24:33+00	2020-05-22 19:24:33+00	\N
1483	61	Aldo Fazio	Employé 	\N	XL en Transition 	c889a7b52cb4b8f4dc4e073c5b95230a	t	2020-05-22 19:25:36+00	2020-05-22 19:26:10+00	aldo.fazio@gmail.com
1484	60	Michel Derville	Uccle	Papa de 3	\N	4228fb3f3b5640d2567a547e149665b9	t	2020-05-22 19:29:01+00	2020-05-22 19:29:17+00	mderville@gmail.com
1485	60	Benfettouma	1060	Bruxelles	\N	a2e29e5f501a25f1222a8586ae7062e8	f	2020-05-22 19:30:23+00	2020-05-22 19:30:23+00	hich1997@hotmail.com
1486	60	Julien Gervais	Jette	Cycliste	\N	808ccc5cf75026ca69e1983eb2e9da57	t	2020-05-22 19:31:04+00	2020-05-22 19:31:51+00	\N
1449	61	Luiza Bonin	Ixelles 	Researcher	\N	c1918b546774be11fa411cdc40e160d6	t	2020-05-22 18:08:45+00	2020-05-22 20:45:31+00	\N
1471	60	Laurence	Chaumont-Gistoux 	\N	\N	4711528caf5584bb0060179bb0e07241	t	2020-05-22 18:53:10+00	2020-05-22 20:47:11+00	laurencepierre167@gmail.com
1420	61	Annamaria Zonno	Ixelles	\N	\N	e75f43d3a8c9ce4b7e9e5ade770b460c	t	2020-05-22 17:52:09+00	2020-05-22 21:26:30+00	am.zonno@gmail.com
1473	60	CAMBOULIVE	ixelles	\N	\N	7308711e3d8d723838fc43064284b91f	t	2020-05-22 18:55:00+00	2020-05-23 06:04:00+00	\N
1665	61	Antonio sanna	Brussels	Architect	\N	4082dea8ad833df20b5fe87654244033	f	2020-05-23 07:51:29+00	2020-05-23 07:51:29+00	zstoni85@gmail.mail
1487	60	Cordemans 	Bruxelles 	Economist 	\N	778c05676999e3f88c81d5a9e41c64bf	t	2020-05-22 19:31:51+00	2020-05-22 19:32:06+00	nacordemans@hotmail.com
1488	60	Aflalo	Bruxelles	Comédienne 	\N	80ca964d56e25651daa15a64dd654290	t	2020-05-22 19:33:57+00	2020-05-22 19:34:41+00	boudadouda@hotmail.com
1489	61	etienne belotti	schaerbeek	\N	\N	26a4e93f979b7872618240bdb62be470	f	2020-05-22 19:34:43+00	2020-05-22 19:34:43+00	etienne@belotti.be
1664	61	Alejandra	Brussels	Architect	\N	510369f58bc607675e245a6e782840c1	t	2020-05-23 07:51:07+00	2020-05-23 07:51:35+00	\N
1501	61	tim lettany	1030	\N	\N	33217d079d8c6e5f93a66f292e05c497	t	2020-05-22 19:52:53+00	2020-05-22 19:53:09+00	\N
2159	60	Helen Oberg	1180	Employee 	\N	41189115096f31a85413cfeb2a6498e7	f	2020-05-23 23:02:20+00	2020-05-23 23:02:20+00	helen_oberg@hotmail.com
1666	60	Marine Jeannin	Bruxelles 	\N	\N	b25a1fd37db904f149d3e0c208d884de	t	2020-05-23 07:51:55+00	2020-05-23 07:52:25+00	\N
1507	61	Farah Nolens	1030	Citizen	\N	0bfc9e4c79c8b8046511ce1f9bb1dc79	t	2020-05-22 19:59:30+00	2020-05-22 19:59:58+00	sundaywithoutcars@farah.sjarels.be
1506	60	Francois CHOMIENNE	Woluwe saint pierre	\N	\N	b81aa87997255cf467836e7a1d0aed7e	t	2020-05-22 19:59:14+00	2020-05-22 20:12:43+00	chomienne@hotmail.com
1785	60	Brune	Berchem-Sainte-Agathe 	Médiatrice - therapeute	\N	f7436d0ce62f80bb8fe76f52bb9de145	t	2020-05-23 10:33:26+00	2020-05-24 08:34:34+00	\N
4993	60	Buggenhout	Kraainem	\N	Bioingénieur	a198ca06d73e9609ffd2b7c843fddbd9	f	2020-05-28 15:28:53+00	2020-05-28 15:28:53+00	\N
1668	60	Benoît De Coninck	Evere	\N	\N	bab180de631b5a981ad92df32e908b74	t	2020-05-23 07:54:06+00	2020-05-24 12:17:33+00	benoit.de.coninck@gmail.com
1669	61	Morgane Bourgeois	Bruxelles	Enseignante	\N	01f556d4804d83c55860261fab10d9ee	t	2020-05-23 07:55:02+00	2020-05-23 07:55:22+00	\N
1671	60	Dans Robin	Bruxelles	\N	\N	764128a013ae665d76ecf6d316830241	t	2020-05-23 07:55:40+00	2020-05-23 07:56:00+00	\N
1670	61	Anna Cavallero	Brussel	\N	1988	8b0b195cd5350cda25128ae8fbec08a7	t	2020-05-23 07:55:13+00	2020-05-23 07:56:25+00	a.annacavallero@gmail.com
1672	61	Bart Van Langendonck	Brussels	Zaakvoerder 	Savage film	906c136ab42d096ab6721263141fc798	f	2020-05-23 07:59:18+00	2020-05-23 07:59:18+00	bart@savagefilm.be
1673	62	Marlies Stubbe	Laken	1020	marlies.stubbe@gmail.com	fd986ae7eb9ad0bbeccd4991df338481	t	2020-05-23 07:59:29+00	2020-05-23 07:59:57+00	\N
1600	62	Sanne Peeters	Schaarbeek	\N	\N	c93c53d6cdef7625f78c0f67324e7e09	t	2020-05-23 05:39:55+00	2020-05-23 08:00:05+00	\N
1683	62	Sophie Derycke	Schaarbeek	\N	\N	2d5451df6a248c3e5df12ed5c0ea50d6	t	2020-05-23 08:14:30+00	2020-05-23 08:15:58+00	phie@skynet.be
1684	60	Jean Blanchard 	Bruxelles	Employé	\N	358e0e098c112d3c1b280b59dbf72f0a	f	2020-05-23 08:16:19+00	2020-05-23 08:16:19+00	jonyblan2002@yahoo.ca
1685	60	Alice Maës	Ixelles	\N	Madame	dcf1444333414e1a4d88719682e944fa	t	2020-05-23 08:16:49+00	2020-05-23 08:17:16+00	\N
1686	62	Stan DeWulf	Brussel	\N	\N	4c6883e6e7cbaac51cc0bfb2b4bff499	f	2020-05-23 08:17:23+00	2020-05-23 08:17:23+00	\N
1687	60	Bert Spreuwers	Schaerbeek 	Juriste	/	45e22d146e0aa52276d761cf29a73863	t	2020-05-23 08:18:22+00	2020-05-23 08:18:54+00	\N
1688	60	Iskandar Degouis	Bruxelles	Indépendant	\N	ab459ba6eacf501beb4dd51cd0ac47b4	t	2020-05-23 08:20:44+00	2020-05-23 08:21:20+00	iskandar.degouis@gmail.com
1689	61	Kristīne Aroniete 	Woluwé-Saint-Pierre	Interpreter	EP	149e2328df8d773c117d091a87a15276	t	2020-05-23 08:21:13+00	2020-05-23 08:21:56+00	kristine.aroniete@gmail.com
1690	60	Ali Ismail	Bruxelles	architecte	\N	c20ba83eb73f7e074ccb90cbed9e8d20	t	2020-05-23 08:21:57+00	2020-05-23 08:22:36+00	\N
1692	60	demuliere	ixelles	\N	\N	c08148a6fecd327f837973a765072449	f	2020-05-23 08:22:39+00	2020-05-23 08:22:39+00	\N
1691	60	Corentin Crutzen	Ixelles	Etudiant	\N	0fe272c11ea8a0f34eeab7adbde79387	t	2020-05-23 08:22:16+00	2020-05-23 08:22:59+00	corentin_crutzen@hotmail.com
1693	60	Joya Capelluto	Ixelles	Orthoptiste	\N	fbe18a4c34f59773d86ed369406f1ae9	t	2020-05-23 08:22:56+00	2020-05-23 08:23:26+00	joyaleacapelluto@gmail.com
1695	60	Vincent Demulière	Bruxelles	Citoyen	\N	76b5d49f33cf34fac605f643ce3d0145	t	2020-05-23 08:25:11+00	2020-05-23 08:25:45+00	20100.d@protonmail.com
1696	60	Marie Fallon	WOLUWE-SAINT-LAMBERT	\N	BE0424448739	603a28bcbc5ad393a50b4cb3c0a6a04a	t	2020-05-23 08:26:29+00	2020-05-23 08:27:28+00	fallon304@gmail.com
1698	62	Annelies Joostens 	\N	\N	\N	1548d1c7017737da60724e177fa195fd	f	2020-05-23 08:27:57+00	2020-05-23 08:27:57+00	\N
1697	61	Leonie sijtsma 	Schaarbeek 	Office manager	\N	21a335e01268337f492204648f51228c	t	2020-05-23 08:27:14+00	2020-05-23 08:28:08+00	leoniesijtsma@live.com
1699	61	Aryani Sari Rahmanti 	Brussels	Urban designer	\N	68d1ed577a3820230af59260b532ebcc	t	2020-05-23 08:30:15+00	2020-05-23 08:31:18+00	aryani.sari@gmail.com
1700	60	GASSENBAUER 	bruxelles	motion designer 	\N	d5f74851b2ba319abc18406e9a2c549b	t	2020-05-23 08:32:30+00	2020-05-23 08:32:49+00	\N
1703	62	Laurence decraene 	Gent	\N	\N	c82647107635031609c38fb7f18e92f0	t	2020-05-23 08:33:27+00	2020-05-23 08:33:54+00	ferdinance.crane@gmail.com
1704	61	Delphine Mortier	Auderghem	Citoyenne	\N	6b8d4915e1985b38e68b69b1596545cb	t	2020-05-23 08:33:37+00	2020-05-23 08:37:34+00	\N
1701	61	Andrea Bortolotti	Etterbeek	Chercheur	ULB	eebf7c5825054588e7bf8f88f8afac8f	t	2020-05-23 08:32:30+00	2020-05-23 08:49:35+00	andreabohr@libero.it
1702	61	Soraya Belghazi 	Brussels 	consultant	\N	1b659297b91feec027c08496f48901e9	t	2020-05-23 08:33:26+00	2020-05-23 08:59:46+00	\N
1777	61	Katalin Marton 	Brussels 	\N	\N	e31610475a8da6c127c9f991be445fc1	f	2020-05-23 10:22:14+00	2020-05-23 10:22:14+00	\N
1776	61	Jesse Geelissen	Jette	programmer	\N	18212c207106e0eff315b725c315d557	t	2020-05-23 10:22:01+00	2020-05-23 10:22:14+00	\N
1778	62	Marios Bellas	Brussel 	ETUDIANT	XR	93a12e5fffbe9eacbf3f172f573a8dde	t	2020-05-23 10:23:41+00	2020-05-23 10:24:05+00	\N
1786	60	Thomas Carton de Wiart	Ixelles	Father	Raise 	880b85674b1356948a042cd660f9fe74	f	2020-05-23 10:34:14+00	2020-05-23 10:34:14+00	thomas.carton@gmail.com
1788	60	Clémentine Le Roy	Bruxelles	étudiante	\N	9519e7baecfcdd6a8bc2261ded579040	t	2020-05-23 10:35:02+00	2020-05-23 10:35:17+00	clementine.leroy8@gmail.com
1787	60	Sophie Jaminon	Bruxelles	\N	\N	539c987c8a0fc0f94030b8a708d6d656	t	2020-05-23 10:35:01+00	2020-05-23 10:35:25+00	sophiejaminon@hotmail.com
1798	61	Ivana Juraga	St Gilles, Brussels	Official	\N	13594661303386342db2d2a1edc9c617	t	2020-05-23 10:40:04+00	2020-05-23 10:40:18+00	\N
1799	60	Namias Caroline 	Forest	\N	\N	6e2a3ce9d6743a18a03e6950af43a7cd	t	2020-05-23 10:40:28+00	2020-05-23 10:40:50+00	namiasc@gmail.com
1800	62	Stef D'Huyvetter	Sint-Pieters-Woluwe	\N	\N	f2bd68e0067a5c65ce647dc0290c7ad0	t	2020-05-23 10:40:41+00	2020-05-23 10:40:51+00	sdhuyvetter@gmail.com
1789	62	Anna Franziska Jäger	Elsene	2	\N	65eac11edf364fe700c23c78b6d037a4	t	2020-05-23 10:37:14+00	2020-05-23 11:16:21+00	\N
1866	60	Joan Canton 	Woluwe saint lambert	\N	\N	6473d17db8488c8cde89a14f7010b621	f	2020-05-23 12:14:50+00	2020-05-23 12:14:50+00	oancanton@gmail.com
1867	60	Helen thomas	Ixelles	\N	\N	738ef9f36abe9971366a7e4c25fade5f	t	2020-05-23 12:14:58+00	2020-05-23 12:15:47+00	\N
1868	61	Bart Vermeire	Brussel	Verzekeringsmakelaar 	\N	b6a27f83c438de719b72bffebd3b70c2	t	2020-05-23 12:15:53+00	2020-05-23 12:16:15+00	\N
1869	61	Yan Busby	Ex-Saint-Gillois	Chercheur	Blue Planet	ae712c6099315a34745e54125006ed30	t	2020-05-23 12:16:24+00	2020-05-23 12:16:41+00	busbyan@gmail.com
1667	61	Giacomo Bonato	Bruxelles	\N	\N	d799be07f97084c60c460f15d88dd8b1	t	2020-05-23 07:53:30+00	2020-05-23 16:09:28+00	bntgcm@gmail.com
1490	60	Sens	Woluwe-Saint-Pierre 	\N	\N	d8f6c8e8ba3e75305e4d76697cb24bc0	t	2020-05-22 19:37:50+00	2020-05-22 19:38:46+00	celinesens@hotmail.com
1491	60	Michaël de Borman	Schaerbeek	Cycliste et employé	Prévention vol des vélos @ Cyclo	782f08ce2e742f007c754d031ecd61e9	f	2020-05-22 19:40:04+00	2020-05-22 19:40:04+00	mybike@cyclo.org
1548	62	Benoît Henriet	Etterbeek	\N	\N	a606715188e7e2b8f567740f7763eb1f	t	2020-05-22 21:19:45+00	2020-05-23 07:13:08+00	\N
1492	60	Valérie Vliegen 	Forest	Employée 	Fmsb	e21f1e0365bfb188999a8349e1fbb7e2	t	2020-05-22 19:40:04+00	2020-05-22 19:40:30+00	\N
1493	61	Jan Vleugels	Schaerbeek	\N	\N	d0b355291e13985738c291304c90e691	t	2020-05-22 19:43:34+00	2020-05-22 19:43:44+00	vleugels.jan@gmail.com
1494	61	Fred Bonus	Linkebeek	\N	Forquest	b080ab1440558033e1574e8d73d90b31	f	2020-05-22 19:43:55+00	2020-05-22 19:43:55+00	fred@forquest.com
1513	62	Aline WD	1030	\N	Citizen, mother, tax payer	03b4e34187bbc428cebcdae655282047	t	2020-05-22 20:08:22+00	2020-05-23 11:27:17+00	duchatea@yahoo.co.uk
1496	62	Rochette ilona	Sint-Gillis 	\N	\N	5722dbbafd5d9b8cac302f8dbf0c156d	t	2020-05-22 19:44:58+00	2020-05-22 19:45:41+00	\N
2914	61	Veerle Van Orshoven	Leuven	\N	\N	e3d0b0598b09de337858d970ee4dbd9d	t	2020-05-25 08:22:51+00	2020-05-25 08:30:20+00	\N
1495	60	Michaël de Borman	Schaerbeek	Employé	Prévention vol des vélos @ CyCLO asbl/vzw	6b94b92f3089868b317f4a37bace9217	t	2020-05-22 19:44:00+00	2020-05-22 19:49:41+00	mick1030@me.com
1498	61	Steven Houben	1030	\N	\N	198f370e0a3a806146363f7928d0d4fb	t	2020-05-22 19:50:15+00	2020-05-22 19:50:48+00	steven.houben@gmail.com
1500	60	Logiou Caroline	1060	Autrice- Metteure en scène 	\N	aa688b2fb8181ac8737707995b22f5ed	t	2020-05-22 19:51:20+00	2020-05-22 19:53:05+00	\N
1502	62	Niels	Brussel	bediende	\N	c3e580fec525dbee6aa4ffc0715a8df2	t	2020-05-22 19:56:31+00	2020-05-22 19:56:58+00	\N
1503	60	quentin wibaut	bruxelles 	économiste 	eeb1	15bfd05f4d459cb119c6a1be52075485	f	2020-05-22 19:57:25+00	2020-05-22 19:57:25+00	\N
1499	62	Andreas Lauwaert	Brussel	1000	\N	cedcac48f7232b1d628b3ea91fcd3d2f	t	2020-05-22 19:50:29+00	2020-05-22 19:57:46+00	\N
1504	60	Marie Lagarrigue 	Bruxelles 	Maman cycliste 	\N	3d89b66ce89b670bfdfdf73b0920ea1b	t	2020-05-22 19:57:49+00	2020-05-22 19:58:28+00	\N
1508	61	Jeroen Baekelandt	Schaarbeek	\N	\N	a7afe4467e988e1d30a2a5a0ecda5a76	t	2020-05-22 20:02:45+00	2020-05-22 20:05:30+00	\N
1512	61	Eva Kongs	1030	\N	\N	a9370b6cb930ae05dd28b2ff95b09de5	t	2020-05-22 20:07:29+00	2020-05-22 20:07:59+00	eva.kongs@gmail.com
1515	60	Pierre	Bruxelles	Employé	\N	375105d3d54f31f6eea403cce00e80ea	t	2020-05-22 20:09:26+00	2020-05-22 20:10:01+00	pierreharkay@gmail.com
1509	60	Claeys Bouuaert	1090	Bibliothécaire	\N	7a6ee52008f6e3ee22a7a44e86d24df4	t	2020-05-22 20:04:17+00	2020-05-22 20:11:11+00	\N
1510	60	Laszlo DC	Bruxelles	Médecin 	\N	b1b7fba991cd66738f215f8d201b390b	t	2020-05-22 20:04:39+00	2020-05-22 20:14:11+00	laszlodc@hotmail.com
1497	60	Alain Geerts	Louvain-la-Neuve	\N	\N	c1093538c636ee51599b9c7e72dcd1b3	t	2020-05-22 19:49:15+00	2020-05-22 20:14:57+00	\N
1517	60	Géraud	Ixelles	Employé	\N	26c2eab05629760273e43f168f56da99	t	2020-05-22 20:17:41+00	2020-05-22 20:18:36+00	neve.geraud@gmail.com
1516	62	jens de schutter	jette	\N	jens de schutter	51db6faea6d2b697734b9c21a507f2f9	t	2020-05-22 20:16:54+00	2020-05-22 20:20:24+00	jensdeschutter@gmail.com
1521	60	Benoit Genard	Namur	\N	\N	43516ae9e0b57dd207fe4b6bc58e4c3a	t	2020-05-22 20:23:13+00	2020-05-22 20:23:50+00	\N
1519	62	Yumika Lecluyze	Schaarbeek	Muzikante	\N	12d308b3c97dba113c79cb8667a67c47	t	2020-05-22 20:18:36+00	2020-05-22 20:25:41+00	yumika@skynet.be
1511	60	luis borges	bruxelles	musicien	\N	05b0ee03d7277fbf97cb45bf8dd0ae31	t	2020-05-22 20:06:54+00	2020-05-22 20:26:00+00	\N
1520	60	Emilie	Bruxelles	Chômage 	\N	d2fe6745e4147ead12c6c79fa0ebb887	t	2020-05-22 20:21:20+00	2020-05-22 20:26:02+00	emilieralet@gmail.com
1522	60	Diana Dolce	Bruxelles	Monteuse Audiovisuelle	\N	3a7053c3904975e9fca40a79416f5f8d	t	2020-05-22 20:25:30+00	2020-05-22 20:26:04+00	diadolce@yahoo.it
1523	60	Philippe Wagner	Forest	\N	\N	81a3525a9541f9aacb3f3cdaa101b8ee	t	2020-05-22 20:28:45+00	2020-05-22 20:29:07+00	\N
1524	61	Tomas leyers	Brussel	Film producer 	MInds Meet	03c4e831aa0f59fd62ee7ebe9a5f106a	f	2020-05-22 20:30:35+00	2020-05-22 20:30:35+00	tomas@mindsmeet.be
1525	60	Christelle Petrr	Bruxelles	Comptable	Conac	bdad23c9f93dd800a383c0d9d45539c2	t	2020-05-22 20:32:32+00	2020-05-22 20:33:14+00	\N
1528	62	Barbara Merckx	Schaarbeek 	\N	\N	20c69bf8f37a334996f261691c0060d8	f	2020-05-22 20:36:27+00	2020-05-22 20:36:27+00	\N
1527	61	Jonas Heylen	Schaarbeek	\N	\N	1cee6c2cddb23c732f058d0980086830	t	2020-05-22 20:36:23+00	2020-05-22 20:36:39+00	\N
1529	60	Aurélie Larcy	Anderlecht	enseignante	\N	31857fd62a8ce1795a0c91abc7f3eca1	t	2020-05-22 20:40:52+00	2020-05-22 20:41:26+00	larcy.aurelie@gmail.com
1518	60	Stephen Barris 	Bruxelles	Coordinateur exaequo 	\N	836d6afc2132fe8aaad36d95ebb51207	t	2020-05-22 20:18:31+00	2020-05-22 20:43:23+00	sbarris@gmail.com
1530	60	David Serraz 	Ixelles 	\N	\N	1d1434d9e0ad015b9c71424d4b8bf0ce	t	2020-05-22 20:42:45+00	2020-05-22 20:45:59+00	david.serraz@gmail.com
1531	60	Antoine Wilhelmi	Bruxrlles	Activist	\N	16bc48995215883bb7ac3fa65e12e33c	t	2020-05-22 20:47:50+00	2020-05-22 20:48:05+00	\N
1532	62	Ans Wouters	Jette	\N	\N	344e29db9efa0925cca874bfef4bf867	t	2020-05-22 20:47:51+00	2020-05-22 20:48:34+00	anshardtwouters@gmail.com
1534	62	Diane Engels	Brussel	\N	\N	68679f576d0c8b878e0943b612e097f0	f	2020-05-22 20:49:31+00	2020-05-22 20:49:31+00	dianengels@hotmail.com
1535	60	ruy De Barros	Bruxelles	\N	\N	26122dc8925bd02df1ecf9e2bd106640	t	2020-05-22 20:50:15+00	2020-05-22 20:50:30+00	\N
1536	60	Khattabi Youssef 	Laeken 	Ouvrier 	Port de bxl 	b9e601bab034f0827be392bec24f2b97	f	2020-05-22 20:54:34+00	2020-05-22 20:54:34+00	khattabiyoussef@86gmail.com
1537	60	Alexandre Plaideau 	Etterbeek	Indépendant 	\N	9ff420def6550090f0c7ddec0cca43c8	f	2020-05-22 20:54:41+00	2020-05-22 20:54:41+00	aplaideau@gmail.com
1539	61	Karolina Zalewska	Brussels	\N	\N	d02ca871d48f22b62d209dd7630a9e46	t	2020-05-22 20:57:48+00	2020-05-22 20:58:06+00	\N
1538	60	Jeanne Boute	Schaerbeek	\N	\N	96bd070f7ac3a95dad96402b2aa86dc6	t	2020-05-22 20:57:47+00	2020-05-22 21:03:45+00	\N
1541	60	Evelyne Fremaux	Saint-Gilles	\N	\N	bea34d8e39ce3f674df5e9fea3bee4cf	t	2020-05-22 21:02:00+00	2020-05-22 21:03:54+00	evelyne.fremaux@gmail.com
1540	60	Suys	Bruxelles	Retraité 	Brulabo	097a45aef937abece350d3a87ce69987	t	2020-05-22 21:02:00+00	2020-05-22 21:06:14+00	ivansuys@skynet.be
1544	61	Patricia Fridrich 	Laeken (Brussels) 	\N	\N	f3f6eb74b575b4ed5969669a64688e67	f	2020-05-22 21:06:43+00	2020-05-22 21:06:43+00	patricia.frudrich@gmail.com
1543	60	Annick Demerre	Bruxelles 	Infirmiere Pensioneennee	Sans	137e3d0560e2567c55eec662c7b3648e	t	2020-05-22 21:06:29+00	2020-05-22 21:08:49+00	\N
1545	60	Francois Severin	Ixelles	Directeur Général	\N	28ae13c8f9107e3d9587cf549d3b5ba8	t	2020-05-22 21:11:10+00	2020-05-22 21:11:29+00	\N
1546	62	Paul Van Cappellen	Laken	\N	\N	62f5306c79af471f343c2efd904ccbdd	t	2020-05-22 21:11:42+00	2020-05-22 21:12:50+00	\N
1547	60	Vincent Jauneau 	Schaerbeek	\N	\N	f838f8610a948dad88c2769a684894ef	f	2020-05-22 21:17:30+00	2020-05-22 21:17:30+00	\N
1505	62	Wouter Devriese	Anderlecht	\N	\N	05050bb34b2d8905f74526562c79f49e	t	2020-05-22 19:57:55+00	2020-05-22 21:19:54+00	\N
1551	60	Dao	Bruxelles	Dentiste 	\N	57c52a3068ef04516fa3d42131fab2b8	f	2020-05-22 21:24:11+00	2020-05-22 21:24:11+00	\N
1549	60	Khattabi Youssef 	Laeken 	\N	\N	90b50997eea907b142b1a0cd7d6a3518	t	2020-05-22 21:20:50+00	2020-05-22 21:21:23+00	\N
2160	60	Sylvia smolar 	Bruxelles	Citoyenne	\N	62785bc1ba6ce10c70aca6e58507b249	t	2020-05-23 23:13:26+00	2020-05-23 23:13:46+00	\N
1550	60	Thibaut Randaxhe	Bruxelles	\N	\N	4f8781af5a686f43aa19035b226eba3c	t	2020-05-22 21:22:37+00	2020-05-22 21:22:57+00	randath@gmail.com
1553	60	Thibaut	Bruxelles	Employé	\N	9c22309f2cd0054690715a42442a2e40	f	2020-05-22 21:28:30+00	2020-05-22 21:28:30+00	thibradi@gmail.com
1674	61	Alexander Kloeck 	Brussel 	\N	\N	6d28f9695f56f0cee15686ad407bfa9f	t	2020-05-23 08:00:36+00	2020-05-23 08:01:52+00	alexander.kloeck@gmail.com
1554	60	Delphine Boone	Schaerbeek	Employee 	boonedelphine@hotmail.com	e9af9efd0428b9797f0006280f3f0e42	t	2020-05-22 21:32:08+00	2020-05-22 21:32:39+00	\N
1677	61	Irina Elena	1050	IT consultant	\N	f4ad08c575d7cc2d37bf1f1682433b41	t	2020-05-23 08:08:09+00	2020-05-23 08:08:31+00	\N
1558	62	David Poltrock	Schaarbeek	\N	\N	18536ae987f36a92b476d416e00b8305	t	2020-05-22 21:33:27+00	2020-05-22 21:33:45+00	poltrock@me.com
1556	60	Esteban Debrulle	Ixelles	\N	\N	ec5c76e59aee24cc029b96f286960452	t	2020-05-22 21:32:52+00	2020-05-22 21:34:00+00	\N
1675	60	catherine detaille	1180 - Uccle	\N	\N	72246b1d4ace39b1f860ade04a1d85e5	t	2020-05-23 08:01:29+00	2020-05-23 08:08:52+00	\N
1559	61	Gerhard Jäger	Laken	\N	\N	829705c6f23d17f9c4b3e80a499010bd	t	2020-05-22 21:35:11+00	2020-05-22 21:35:30+00	\N
2164	62	Jérôme Vande Velde 	Schaarbeek	Ingenieur	\N	0fc8b4b02b5d6017c1154d492a1d30c4	t	2020-05-23 23:41:18+00	2020-05-23 23:43:46+00	jer.vande.velde@gmail.com
2165	62	Erik Pardaens	\N	\N	\N	c2f9aae6fc4368e0db239a801a6e1f03	f	2020-05-23 23:53:17+00	2020-05-23 23:53:17+00	\N
1561	60	Jean Comte	Schaerbeek	Citoyen	\N	8e995ebf30132723c00e3c4a3b295c4d	t	2020-05-22 21:40:53+00	2020-05-22 21:41:17+00	\N
1560	62	Hildegard Debelder	Schaarbeek	\N	\N	6aa03c87cb3ecf5c928f7ef312ed0887	t	2020-05-22 21:39:42+00	2020-05-22 21:41:56+00	\N
1555	60	Denis Jacqmin	Bruxelles	Fonctionnaire fédéral	\N	4e22ca540e6f35a9274b94c49b69898d	t	2020-05-22 21:32:42+00	2020-05-22 21:47:11+00	\N
1557	60	Martine Van Adorp	Bruxelles	Retraitée 	\N	4dafe3b2bccccb5994e4568715a55d24	t	2020-05-22 21:33:05+00	2020-05-22 22:30:04+00	tinevana@live.be
1680	60	Cédric Jernander	Bruxelles 	Employé 	\N	3f91eb6867656b2854b5195d383a419e	t	2020-05-23 08:10:53+00	2020-05-23 08:11:27+00	cedricjernander@msn.com
1681	61	Harold Fallon	Brussels	Architect, Prof. 	KULeuven, AgwA architecture	c92f4e6ca5e5aa70f20253bc0c6d8b50	t	2020-05-23 08:14:10+00	2020-05-23 08:15:08+00	\N
2193	60	Karolina Babicka	Bruxelles 	Juriste	\N	c44018af22cae8c130ada72cd2455b70	t	2020-05-24 07:24:11+00	2020-05-24 07:27:20+00	karolina.babicka@gmail.com
1716	60	Florence Leclercq 	1050	Enseignante 	\N	3adc9ee7fcb12818f8ee7e040ed1b4e9	f	2020-05-23 08:40:58+00	2020-05-23 08:40:58+00	\N
1715	61	Olga van den reeck	Brussels 	\N	\N	857e7d41fc49bce1030f932a6b072fe4	t	2020-05-23 08:40:54+00	2020-05-23 08:41:23+00	\N
1718	61	Elze	Brussels	\N	\N	2759da3d5c09978ab418300d2ff5563a	f	2020-05-23 08:44:32+00	2020-05-23 08:44:32+00	elziute@gmail.com
1717	60	Verdoot Philippe	Ixelles	Médecin	\N	9920ca588ae075387c5208bd5e1f4789	t	2020-05-23 08:44:10+00	2020-05-23 08:44:52+00	p.verdoot@icloud.com
2195	61	Marine	Schaerbeek	Sage-femme	\N	0b51bf5dc4fb367c7e48de6dc42c4900	t	2020-05-24 07:34:53+00	2020-05-24 07:35:40+00	\N
1720	60	Benjamin Peltier	1030	\N	\N	39e98d2a9397866304a09eea5549000f	t	2020-05-23 08:45:41+00	2020-05-23 08:46:04+00	\N
1721	62	Daphne Jouret	Sint-Jans-Molenbeek	\N	\N	b6000ba972634823c9fdd8043bd429ba	t	2020-05-23 08:47:22+00	2020-05-23 08:47:59+00	daphnejouret1@gmail.com
2191	60	Florence Defuisseaux 	Ixelles	\N	\N	35fba6561a3c18e775b2c92815c76eba	t	2020-05-24 07:20:25+00	2020-05-24 07:58:25+00	flodefuisseaux@gmail.com
2228	60	Dubocquet	\N	\N	\N	cdb9d948605ea52903123b126dc45b54	f	2020-05-24 08:43:06+00	2020-05-24 08:43:06+00	\N
1725	60	Pierre Marchandise-Fallon	bruxelles	Étudiant	\N	191688c2f70fb1aa37fe32e2a5f83833	f	2020-05-23 08:51:52+00	2020-05-23 08:51:52+00	\N
1722	62	Lieve Polet	Schaarbeek	\N	LetsBrussel	0b98aa9640b9b2d0ac2eff4bd3180cda	t	2020-05-23 08:50:32+00	2020-05-23 08:52:25+00	\N
2229	62	Olivier Dewit	1030	\N	\N	2827ee2cde7696e1971b2e3c446414a0	t	2020-05-24 08:45:08+00	2020-05-24 08:58:06+00	\N
1728	61	Eva Recio	Ixelles	architect	Eva Recio Rodríguez 	bbcd0dc6c67dc9c6600613b2d8b78eab	t	2020-05-23 08:53:41+00	2020-05-23 08:54:07+00	\N
1726	61	Fulya T.	1030	\N	\N	a75a4ccb34920f29b73589dd9308966a	t	2020-05-23 08:53:37+00	2020-05-23 08:55:00+00	fulyatoper@gmail.com
1678	62	Wiet Vandaele 	Schaarbeek 	\N	\N	a9f00fd9c98a4d52b3e81921beb2524a	t	2020-05-23 08:08:12+00	2020-05-23 08:58:01+00	wietvandaele@hotmail.com
1730	60	Antoine Bertrand	Woluwe Saint Pierre	\N	\N	cd77576cea76b017d6ede18465a2d8bb	f	2020-05-23 08:59:03+00	2020-05-23 08:59:03+00	\N
1676	62	Ben Keppens	Brussel	1020	\N	5f3f01a85f24f14e8fb17321b453a6a1	t	2020-05-23 08:04:47+00	2020-05-24 09:29:48+00	benkeppens@hotmail.com
1731	62	Hannes Verhoustraete	Laken	1020	\N	75dcdc52c6d1dfc92c7ab386569fa7ff	t	2020-05-23 08:59:11+00	2020-05-23 08:59:20+00	\N
1724	62	Felix Fabich	Schaarbeek	\N	\N	83e56cd0e49a77fcf4feebda1faa2424	t	2020-05-23 08:51:21+00	2020-05-23 09:36:39+00	\N
1679	62	Mieke Matthé 	Grimbergen	\N	\N	10042a6fbc5e2f48a3239bb0d58cc8b6	t	2020-05-23 08:10:17+00	2020-05-23 09:37:02+00	miekematthe@gmail.com
1791	61	Yousef Pourvais	Brussels	PjhD Student	Vrije Universiteit Brussel, B-PHOT	00127019d97a46b47cfedb6820f2db01	f	2020-05-23 10:38:19+00	2020-05-23 10:38:19+00	\N
2163	60	Jean-Michel Nil 	Saint Gilles 	\N	\N	ee7ce190117d49f40de399142a4e63e8	t	2020-05-23 23:39:11+00	2020-05-24 11:02:42+00	\N
1793	62	Nathalie De Boelpaep	Brussel 	\N	\N	8eae5cbde4ee72f1970447d4c1f4794e	t	2020-05-23 10:38:27+00	2020-05-23 10:38:42+00	\N
1792	61	Irena Peresa	Ixelled	Economist	\N	3f9c6441de38bbf98252939dc9e75c6d	t	2020-05-23 10:38:25+00	2020-05-23 10:38:45+00	\N
1794	60	Georges	Schaerbeek	Retraitée 	\N	e5a1966451a88a09d66a5dcc135cc98a	t	2020-05-23 10:38:34+00	2020-05-23 10:38:51+00	francegeorges@hotmail.com
1795	62	Alex.Dulenko	Jette	\N	1994	0793e1600f90a5e814eedaf50b015c00	t	2020-05-23 10:38:45+00	2020-05-23 10:39:04+00	alexanderdulenko@gmail.com
1797	60	Sapronov	Ixelles	Indépendant	Aucune	f64990a8a4569233c73096851c6b0d28	t	2020-05-23 10:39:07+00	2020-05-23 10:39:23+00	\N
1796	60	Philippe Serruys	Schaerbeek	citoyen	\N	ee05fbc2575aa37479698eae0fa6badf	t	2020-05-23 10:39:04+00	2020-05-23 10:39:29+00	\N
1803	61	Laura De Keyzer	Saint-Gilles	\N	\N	852187d6e2b9a754dddcc1c301d60d3d	t	2020-05-23 10:42:02+00	2020-05-23 10:42:11+00	laura.keijzer@gmail.com
1802	62	Elisa Van Broeck	Brussel	1060	\N	7a57c8831eaec6c50c8ae42efa95d6a8	t	2020-05-23 10:41:44+00	2020-05-23 10:42:26+00	elisakuhl@gmail.com
1805	62	Anna Van Waeg	Brussel	\N	\N	a6c09b5c8c8f5b493372d55b8a887000	t	2020-05-23 10:43:09+00	2020-05-23 10:43:41+00	a.vanwaeg@gmail.com
1801	61	Ramona	Brussels	Economist	\N	bcdf4568ebe1e1deb79e02405b767abd	t	2020-05-23 10:41:15+00	2020-05-23 11:00:25+00	\N
1727	60	Delphine Thézé	Bruxelles	\N	delphine.theze@gmail.com	752ecf0cf864164adf3773619c5c26f4	t	2020-05-23 08:53:38+00	2020-05-23 12:26:31+00	\N
1723	60	Florence Cochin 	1050	\N	\N	c0ccd9e9ac8e993008675be8d1c4d1f1	t	2020-05-23 08:51:03+00	2020-05-23 16:32:53+00	\N
1562	60	Mariane Andrin	Woluwe-St-Lambert	retraitée	\N	12c31c44719743d035bd42225a46be0b	t	2020-05-22 21:41:28+00	2020-05-23 18:14:56+00	andrin53@bruxxel.org
1682	61	Alvaro Gonzalez	Bruxelles	Conseiller juridique	Région Iles Canaries	9a4f1bb62bc9eea8b3dae78ffb1ec983	t	2020-05-23 08:14:21+00	2020-05-23 19:30:01+00	\N
1619	61	Margareta Andersen	Brussels	Theater technician	KVS	1bdcbe290968ce5a38f97a3d720eceed	t	2020-05-23 06:40:49+00	2020-05-23 08:06:02+00	\N
1552	62	Evie	Schaarbeek 	\N	Inwoner 	419334400c32233ec80c40fe159cee72	t	2020-05-22 21:24:45+00	2020-05-22 21:38:15+00	miss_e_point@yahoo.fr
1563	61	Lola mompo	Bruxelles	Fonctionnaire	Commission Européenne	08c65be3bebcb5a37b9c77c05e0a5fcb	f	2020-05-22 21:44:04+00	2020-05-22 21:44:04+00	lolamompo@yahoo.es
1568	62	An Goovaerts	Schaarbeek 	\N	\N	0fbcde791d5608a1bbd6048f528aab17	t	2020-05-22 21:48:16+00	2020-05-23 08:08:53+00	\N
1617	62	Ann De Cannière	Brussel	\N	\N	1b8f4be228bb505051cfc80db758f2a3	t	2020-05-23 06:36:00+00	2020-05-23 10:21:50+00	\N
1566	61	Kevin Roeland	1090	\N	\N	c73a5e346e0de5057efe2c0cef7083ee	f	2020-05-22 21:46:50+00	2020-05-22 21:46:50+00	kevinroeland@gmail.con
1567	62	An Goovaerts	Schaarbeek 	\N	\N	94a9a95a9d7656b40254d36021e3f05c	f	2020-05-22 21:47:17+00	2020-05-22 21:47:17+00	\N
2913	62	Tinne Baelemans	Schaarbeek	\N	\N	090d3c6206239b46338b2a8f8be95fe1	t	2020-05-25 08:22:51+00	2020-05-25 08:24:08+00	\N
1613	60	Olivier Berckmans 	Bruxelles 	Retraité	\N	8fc003e64879af135bd9b031e7f9febd	t	2020-05-23 06:23:24+00	2020-05-23 10:48:08+00	olivierberckmans@hotmail.com
1565	60	Thomas Wilhelm	Bruxelles	\N	père d'une cycliste en herbe	67a0c2d41386ec2c2b332b001a7cad52	t	2020-05-22 21:45:54+00	2020-05-22 21:48:43+00	tomexpat@gmail.com
1570	60	Julie Foulon 	Bruxelles 	Indépendante	GIRLEEK	399da9909d0904045a2cc65ca1fa7d29	f	2020-05-22 21:51:03+00	2020-05-22 21:51:03+00	ulie@girleek.net
1593	60	Mucyo Kouame	Ixelles	Infirmier 	\N	d3d5cd53dddf2fc10fb3411d8d2389b6	t	2020-05-23 03:46:27+00	2020-05-23 11:14:36+00	joe.moise@hotmail.be
1589	60	Antoinette Brouyaux	Bruxelles	Employée 	antoinettebrouyaux@gmail.com	9a335222bb10b1142378eacae4b71068	t	2020-05-22 23:19:01+00	2020-05-23 12:11:19+00	\N
1572	60	Jean-Philippe Theyskens	Bruxelles	\N	\N	dc23ba17ce8542b5faa493c9bbfe80c2	t	2020-05-22 21:55:03+00	2020-05-22 21:55:22+00	jptheyskens@gmail.com
1595	61	Alexia Kalourkoti 	Nicosia 	Sustainable Development 	G.R.O.W	ea1fb60063ddca0006a2928e21239db9	t	2020-05-23 04:36:52+00	2020-05-23 16:17:16+00	\N
1573	62	Kristin Smolders	Evere	\N	\N	0877f388b6fa63eb0ba9e187df670b87	t	2020-05-22 21:55:48+00	2020-05-22 21:56:10+00	kristin.smolders@gmail.com
1592	60	Guillaume Lys 	Bruxelles 	Avocat	\N	e6466a466230e5268c262c2add06696e	t	2020-05-23 02:10:59+00	2020-05-23 17:15:21+00	g.lys@outlook.com
1574	60	Catherine Joie	Schaerbeek	\N	\N	738be58853a09b4d74f6ab4c643535f6	t	2020-05-22 21:58:11+00	2020-05-22 21:58:26+00	\N
3841	62	Luna Goossens 	Etterbeek	\N	\N	f117ac43d66998fbbc749365e5552835	t	2020-05-25 18:06:36+00	2020-05-25 18:07:26+00	\N
1577	61	Sílvia Mera	Brussels 	\N	\N	201d5a06a3e366e6c5b2cdcab52fca51	f	2020-05-22 22:00:22+00	2020-05-22 22:00:22+00	era@telenet.be
1576	62	Pieter De Buysser	Brussel	1000 	\N	798f1a33fe9853f8cb81a179f5b2cbf5	t	2020-05-22 22:00:02+00	2020-05-22 22:00:51+00	post@pieterdebuysser.com
1575	61	Simon Marcelis	Brussels	Engineer	\N	57b17702fe0e7dc1a4bd524044388f09	t	2020-05-22 21:59:31+00	2020-05-22 22:01:53+00	\N
1578	61	Aneta Kozyra	Brussels 	Student 	Vub 	942b9eed2d20d08da9259676ba63a6f1	f	2020-05-22 22:03:01+00	2020-05-22 22:03:01+00	\N
1598	61	Arnaud Biebuyck	Brussels	\N	\N	90ce5a1f76f423ded7effcfb68672f57	t	2020-05-23 05:20:58+00	2020-05-31 05:34:46+00	\N
1579	61	Jesse Verstraete 	Vorst	\N	\N	be9e2d1957494cfb9e60cc708a49e8e5	t	2020-05-22 22:04:41+00	2020-05-22 22:05:18+00	jesseverstraete@outlook.com
1571	60	Olivier VELLUT 	Ixelles 	pompier ambulancier 	\N	a0c0902ce8db1d9c79fb956c0001e458	t	2020-05-22 21:54:05+00	2020-05-22 22:05:33+00	\N
1581	61	Aneta Kozyra	Brussels	\N	\N	0b5f0b474965f4ec4e1a7df73f323216	t	2020-05-22 22:06:00+00	2020-05-22 22:08:00+00	\N
1582	60	Sébastien Wautelet	Bruxelles	\N	28/08/1980	836a951487ddbf54e0137a96cf7f085a	t	2020-05-22 22:19:13+00	2020-05-22 22:19:28+00	sebwautelet@gmail.com
1584	61	Yves Sanchez	Evere	1140	\N	46631c52f8d918830cfe3837ccb25dc7	t	2020-05-22 22:24:22+00	2020-05-22 22:24:54+00	\N
1585	60	François 	Bruxelles	Vendeur 	\N	49fe8d9d34d27df27caa162ca5e5e1cc	f	2020-05-22 22:33:48+00	2020-05-22 22:33:48+00	\N
1586	63	willy vandenplassche	AUDERGHEM	\N	\N	8dbae80d3ce4adfc0de69852e19ce8d6	t	2020-05-22 22:39:46+00	2020-05-22 22:40:17+00	\N
1587	61	Taija Toratti	Woluwe Saint Lambert 	\N	taija.toratti@skynet.be	6810fdad8a7b8670b51047f49bb494ac	t	2020-05-22 22:45:19+00	2020-05-22 22:46:28+00	\N
1590	61	Gloria ghequiere 	Elsene	\N	\N	b46a6a3c90a1b3ef9db5f4004ed5e685	t	2020-05-22 23:43:17+00	2020-05-22 23:43:31+00	\N
1588	61	Louisa Vermoere	Brussel 	Spatial Designer	\N	1866e7663cdb1f0b2b66b7f22c2e9d41	t	2020-05-22 23:15:33+00	2020-05-22 23:46:33+00	\N
1594	62	Marieke Van Damme	Brussel	1020	\N	4dc773cfbbed8e23544a2798d2785e9f	t	2020-05-23 04:30:15+00	2020-05-23 04:31:26+00	marieke_vandamme@yahoo.com
1596	60	Del Molino Talavera Ivan 	Bruxelles 	Kiné Ixelles 	\N	ad8bff79c8c8f74313e510f303fd68ae	t	2020-05-23 04:43:33+00	2020-05-23 04:50:50+00	del.molino.ivan@gmail.com
1597	60	Thibaut Hofman 	Bruxelles	Indépendant 	\N	f013fbbc12a88de9cf220a39135509e0	t	2020-05-23 05:14:45+00	2020-05-23 05:27:19+00	thibaut.hofman@gmail.com
1599	60	Samuel Desguin	Bruxelles 	Chercheur 	Université Saint-Louis 	e8c6e11a5c24b079f4fca7e985687a7b	t	2020-05-23 05:29:34+00	2020-05-23 05:30:41+00	\N
1601	60	Ronald Elskens	Woluwe-Saint-Pierre 	\N	\N	790172541a4b258f3b5d65bf1c5acebe	t	2020-05-23 05:41:24+00	2020-05-23 05:42:06+00	ronald.elskens@gmail.com
1604	61	Lavinia Teodorescu	Elsene	\N	\N	e406c3849d891d4a281fa466787ec98c	t	2020-05-23 05:45:12+00	2020-05-23 05:45:44+00	\N
1605	61	Kevin Roeland	1090	\N	\N	7af5bee6886721fcfbf5756aeb89c3dc	t	2020-05-23 05:54:45+00	2020-05-23 05:55:06+00	kevinroeland@gmail.com
1606	62	julie van haver	1030	\N	\N	380b104d58e63174cd93db4e1ed345c1	t	2020-05-23 05:54:57+00	2020-05-23 05:55:28+00	julievanhaver@gmail.com
1603	61	Sam Peeters	Brussels	\N	\N	5c4fc6c45978bde3193b2a199a0c4f01	t	2020-05-23 05:43:15+00	2020-05-23 05:56:17+00	\N
1602	61	Neofytos 	Limassol 	\N	nextbike cy 	288973b318d9552d2649253dc16301a9	t	2020-05-23 05:42:03+00	2020-05-23 06:03:49+00	ioannou@nextbike.com.cy
1609	60	Linda verbeken	Woluwe st pierre	Retraitée 	\N	6ed653aede6f1dbc21402bb148c57ec4	t	2020-05-23 06:09:06+00	2020-05-23 06:09:51+00	lindaverbeken@hotmail.com
1610	60	Coralie Pevenage 	Gottignies	Employee	Stib	a465b07539380618cd83ed3121670f39	f	2020-05-23 06:15:00+00	2020-05-23 06:15:00+00	\N
1611	61	Bogdan Palie	Schaerbeek	Metteur en scène	\N	3da9cfa4927e1c118a9322165487be2d	t	2020-05-23 06:17:49+00	2020-05-23 06:18:46+00	\N
1608	62	Isabel Naesens	Brussel	\N	\N	7bd91d59442ded4f89b506829450eef5	t	2020-05-23 06:07:57+00	2020-05-23 06:21:22+00	\N
1612	62	Wim De Graeve	1030	\N	\N	272b32aa86274842c3ba6f13d25df698	t	2020-05-23 06:21:11+00	2020-05-23 06:21:57+00	\N
1607	62	Dujardin Louise	ELSENE	\N	\N	6500666fb9e0f95f5b5bb5bc94553335	t	2020-05-23 06:04:08+00	2020-05-23 06:27:14+00	\N
1614	60	Scaux patricia 	1081 Bxl 	\N	\N	3690717a47da6700db9159cbf18aafcc	t	2020-05-23 06:26:42+00	2020-05-23 06:27:38+00	patricia.scaux@gmail.com
1616	60	Juliette Bosse 	Bruxelles 	Musicienne 	\N	73d1d415a38d2ffffb39f4c9db8e3be1	f	2020-05-23 06:35:00+00	2020-05-23 06:35:00+00	juliette.bosse@gmail.com
1620	62	LAETITIA PEETERS	\N	\N	\N	e2ecde1cf27768965fc6c772af0d61ce	f	2020-05-23 06:44:04+00	2020-05-23 06:44:04+00	\N
1621	62	Britt	\N	\N	\N	add4b832eba4062c81440bd1f5708916	t	2020-05-23 06:45:00+00	2020-05-23 06:46:24+00	\N
1618	62	Hanne van reusel	1040 Brussel	\N	\N	38ea74af248f4c09611732c64f108f60	t	2020-05-23 06:40:08+00	2020-05-23 07:08:59+00	\N
1705	61	Kitty Chapman 	Brussels 	Project manager	\N	cb68a62f5e3654d1801af83175e204c2	f	2020-05-23 08:35:09+00	2020-05-23 08:35:09+00	sibbst@hotmail.com
1622	62	Thomas Defranc	Brussel	\N	\N	2f35a3dc636a54cf7d165218612cc524	t	2020-05-23 06:45:17+00	2020-05-23 06:46:43+00	thomas.defranc@gmail.com
1623	62	Pieter flamand	BRUSSEL	\N	\N	41d37961cd3f58b12cb526ba133e2e5b	f	2020-05-23 06:47:07+00	2020-05-23 06:47:07+00	pieterflamand@hotmail.com
1624	60	André  Petre	Bruxelles	Pensionné 	\N	72d7a0812d0db65c602d25cd148af532	f	2020-05-23 06:48:34+00	2020-05-23 06:48:34+00	andre_petre@hotmaii.com
2915	61	Simon	Brussels	Ambtenaar	\N	6b6183a600662a0b8d46618c88a95031	t	2020-05-25 08:23:21+00	2020-05-25 08:24:11+00	\N
1706	62	Jan Mussche	Brussel	\N	janmussche72@gmail.com	6b1fc518ff88cbf670154a4310a76f5c	t	2020-05-23 08:35:58+00	2020-05-23 08:36:26+00	\N
1625	60	van der Hofstadt	Bruxelles	Historien de l’art	-	5698975a65000e3dcd1a64a52b5eb7d9	t	2020-05-23 06:49:58+00	2020-05-23 06:50:30+00	\N
1626	60	Marion Bettega	Bruxelles	\N	\N	8344f4ddf4345fe1ae0b5d7f8dad5835	t	2020-05-23 06:49:59+00	2020-05-23 06:50:42+00	mbettegabadin@gmail.com
1630	62	Inge Floré	Antwerpen 	\N	KVS	b80399b4b4dab414e3ebfa0030488817	f	2020-05-23 06:55:49+00	2020-05-23 06:55:49+00	inge.flore@kvs.be
1875	60	Philippe de Lophem 	Watermael-Boitsfort 	Cycliste	/	99ec420fcf2df983a37e0df2b5f269e7	t	2020-05-23 12:22:30+00	2020-05-24 07:41:47+00	deschietere@hotmail.com
1631	61	Federico Gobbato	Saint Gilles	Architect	ULB	32cf6d78bd5629f306807512d8a78633	t	2020-05-23 06:59:13+00	2020-05-23 06:59:25+00	\N
3842	60	Valéry ANDRÉ 	Etterbeek	Employé 	Ecolo Etterbeek 	74afe3f3cc241553396e87523ff05e0f	t	2020-05-25 18:06:41+00	2020-05-25 18:08:03+00	\N
1633	61	Fred Bonus	\N	Tree surgeon	\N	5f3aac9b609ec7d8b1b0458cdd50cf63	f	2020-05-23 07:00:51+00	2020-05-23 07:00:51+00	fredilou@hotmail.com
1707	62	Miguel Van Steenbrugge	Jette	\N	\N	f0ec227b2786a3b63b23b0947dd729f4	t	2020-05-23 08:36:37+00	2020-05-23 08:37:07+00	miguel.vansteenbrugge@gmail.com
1636	60	Nicolas Godelaine 	Bruxelles	\N	\N	96e566eb3ed774894705a87443ccd1b1	f	2020-05-23 07:01:29+00	2020-05-23 07:01:29+00	\N
1632	61	Mady Decrick 	\N	\N	\N	663e8895bc6ab8d91734bef8b71dd332	t	2020-05-23 06:59:30+00	2020-05-23 07:01:34+00	\N
1637	61	Emilie Caspar	Bruxelles	chercheuse	ULB	452a1078f7b9056d995af3f5ba51ac4c	t	2020-05-23 07:05:57+00	2020-05-23 07:06:46+00	\N
1638	60	De la kethulle	Bruxelles	Artiste	\N	92d06cbc5f8e10af326b6e7f1914fa38	f	2020-05-23 07:06:58+00	2020-05-23 07:06:58+00	\N
1708	62	Herlinde Hiele	Jette	\N	\N	1d89f451c71dc30f0a7c164c268b520b	t	2020-05-23 08:37:06+00	2020-05-23 08:37:32+00	herlinde.hiele@gmail.com
1709	60	Harold 	1190	Cadre	1190/0	e883033a1eea0b669a2c89a0b967f519	t	2020-05-23 08:37:23+00	2020-05-23 08:37:39+00	hhabousha@gmail.com
1640	61	Marta Finotello	Bruxelles 	\N	\N	f98e606b4ebba8022eaadb54ad7feed5	t	2020-05-23 07:07:30+00	2020-05-23 07:07:56+00	\N
1710	61	Axel De Clerck	Woluwe saint lambert	Consultant	\N	69dde4e1d20f5494eff4c61816b90fc4	f	2020-05-23 08:37:46+00	2020-05-23 08:37:46+00	\N
1641	61	Ariadna	BRUSSELS	Researcher 	Ulb	75989198f2b32b26c5a19aabbde7e83a	t	2020-05-23 07:08:40+00	2020-05-23 07:09:15+00	\N
1526	60	Dadre	Woluwe-Saint-Pierre 	\N	\N	42c45e7b49f6f535ab715fc5c4b2cb5f	t	2020-05-22 20:36:12+00	2020-05-23 07:09:57+00	berengere.dadre@gmail.com
1714	60	Felicien 	Bruxelles	Etudiant	\N	f3c77bbc0a7bdf0b9ae626b45ff839c7	t	2020-05-23 08:40:02+00	2020-05-23 08:40:24+00	\N
1719	61	Ali k	\N	\N	\N	7b2e28adb2bcf232cc2e9cf6d63aeee2	t	2020-05-23 08:45:21+00	2020-05-23 08:45:59+00	\N
1711	60	Alice Marchandise Fallon 	WOLUWE-SAINT-LAMBERT	Étudiante 	\N	89c74ae551437ee02cd0dc5eb445aeee	t	2020-05-23 08:38:39+00	2020-05-23 08:49:19+00	\N
1713	60	Alain Devaux	Ixelles	\N	+32	9e61ada4168c34bc1f7ea36441776075	t	2020-05-23 08:40:02+00	2020-05-23 08:52:34+00	dr_alain_devaux@yahoo.fr
1729	62	Bregt Hoppenbrouwers	St Jans molenbeek	\N	\N	f2189332b9b31c77b73521b9a13a1f64	t	2020-05-23 08:56:29+00	2020-05-23 08:57:06+00	\N
1635	61	Julie Van Soest	1030	Translator	\N	9f01f8ce4b778ec4e7ddb68710acdb42	t	2020-05-23 07:01:15+00	2020-05-23 09:21:53+00	julie.vansoest@gmail.com
1804	61	Sydney Daniels	Saint Gilles	Teacher	\N	c8ad2110310c366b26ca028ca3ea0196	t	2020-05-23 10:42:18+00	2020-05-23 10:43:05+00	\N
1819	60	Verstraete 	Bruxelles	Professeur	\N	9d286cd07067063d2cf7b3d80e9595be	t	2020-05-23 10:59:24+00	2020-05-23 11:00:07+00	\N
1826	62	Laurens Coessens	Jette	\N	\N	5c42f31206c86fe175638704536fb3e8	t	2020-05-23 11:15:21+00	2020-05-23 11:15:55+00	\N
1839	62	christina	Brussel	\N	Aarde 	cc24a7b4c8dd3ded9f13cc6938eea4b2	t	2020-05-23 11:36:11+00	2020-05-23 11:36:44+00	chrgens@gmail.com
1840	60	Charlotte Debruyère 	Ixelles 	\N	\N	9cbea9b4f3d13adbade0735681d7f967	t	2020-05-23 11:36:30+00	2020-05-23 11:36:51+00	charlotte.debruyere@gmail.com
1850	62	Werner Van Campenhout	Etterbeek	Sint-Pieterssteenweg	Mezelf	651e9a445f201a5555d105d0f06e8125	t	2020-05-23 11:45:27+00	2020-05-23 11:45:44+00	wernervancampenhout@gmail.com
1851	61	Annakarin Hedin	Brussels	Emloyee	European Commission	0c396cd596e7c0c8820314d82006f0c6	f	2020-05-23 11:46:34+00	2020-05-23 11:46:34+00	\N
1853	61	Gosia	Ixelles	\N	\N	a5d3c44de72a7283efe35e65d8581806	t	2020-05-23 11:48:16+00	2020-05-23 11:48:53+00	\N
1855	61	Flo Flamme	Forest	Filmmaker	\N	351003825e4ea270767979a3752a27ef	t	2020-05-23 11:50:04+00	2020-05-23 11:50:20+00	floflamme@gmail.com
1852	61	Bruno Mola	Foret	\N	\N	f26fa49523badd1fb8e5a41e0a477694	t	2020-05-23 11:47:50+00	2020-05-23 11:51:27+00	\N
1857	61	Emily S	Brussels	photographer	\N	989f84219005be74f6e2564f78ebd449	t	2020-05-23 11:51:25+00	2020-05-23 11:51:50+00	\N
1858	61	Beata	Brussels	Product Manager	\N	8ccd6dee5e7fe158f7e6b246084381c7	f	2020-05-23 11:53:37+00	2020-05-23 11:53:37+00	\N
1849	60	Fallon	Wavre	Retraité 	1949	31d54562f0dd5122ee5b11343c543365	t	2020-05-23 11:45:07+00	2020-05-23 11:56:21+00	domfallon@yahoo.com
1859	60	Rossetti	Bruxelles	Enseignante 	Institut de la Vierge Fidèle 	9a5f97db9fe3af59bdf329d90f6c5794	t	2020-05-23 11:55:21+00	2020-05-23 11:56:23+00	benerossetti@gmail.com
1860	60	Heureux Cécile 	Wavre	Enseignante	\N	b8835a7de1abef2c8f3e80b14164cfee	f	2020-05-23 11:57:40+00	2020-05-23 11:57:40+00	eureuxcecile@hotmail.com
1861	61	Tijs De Geyndt	Sint Gillis	Connector-in-Chief	Gulf Length	9b1d25dfc7b962fddf9b255514206c2e	f	2020-05-23 11:58:27+00	2020-05-23 11:58:27+00	\N
1862	61	Veerle De Witte	Wemmel	Consultant	\N	4adf1d8d61c4be3a67a59481d0d1f3a9	t	2020-05-23 12:05:32+00	2020-05-23 12:05:48+00	\N
1864	61	Ernesto Diez	Brussels	\N	\N	8058b261dfe370528bd637891c9ad4fc	t	2020-05-23 12:10:46+00	2020-05-23 12:11:01+00	\N
1863	61	Anna Poryadynska	Bruxelles	Financial engineering	1981	807134c1cd8bbd61ad553969937702ba	t	2020-05-23 12:10:19+00	2020-05-23 12:11:17+00	\N
1870	60	Nassira	Ixelles	employée archives	\N	a3a0f876ff70a2a9538b033fb8e9c1d4	t	2020-05-23 12:17:18+00	2020-05-23 12:17:36+00	\N
1873	61	Hannes, 10	Schaarbeek 	Kind zijn	Vanheertum-Schelfhout-Damman familie	24af35e66ff568f6d4780bd44e8ae44f	f	2020-05-23 12:21:12+00	2020-05-23 12:21:12+00	\N
1874	61	Giuseppe 	Brussels	European Parliament	The Jump	71e26932ac7309f167b6aa4769e7da04	t	2020-05-23 12:22:24+00	2020-05-23 12:23:00+00	\N
1876	61	Ekaterina 	Brussels	\N	\N	78a04c9e3ee8d13e5575cecdc9182bca	t	2020-05-23 12:24:01+00	2020-05-23 12:24:15+00	\N
1877	62	Koen Heymans	Jette	regisseur	\N	1e0769147eef12e972eb3338253d9494	f	2020-05-23 12:27:07+00	2020-05-23 12:27:07+00	\N
1848	62	Thainy Macêdo de Andrade	Schaerbeek 	\N	\N	4620e991e5a04fb483e00a7d4982f551	t	2020-05-23 11:44:06+00	2020-05-23 21:52:43+00	thainyxavier@hotmail.fr
1732	61	Sarah Wouters	Halle	Graphic designer	\N	3d87102750b637d012820c35d3a278e1	f	2020-05-23 08:59:42+00	2020-05-23 08:59:42+00	\N
1627	60	Juliane Farthouat 	Ixelles	\N	\N	10ed1d244b239224143e87fbfcff1769	t	2020-05-23 06:51:37+00	2020-05-23 06:52:50+00	juliane.farthouat@gmail.com
1380	60	Cloots	1050	Rue Malibran 81	\N	763c3dcbb3c88573f134194858e8b6e6	t	2020-05-22 16:35:26+00	2020-05-23 09:01:32+00	\N
1733	62	Jana van Agtmaal	Brussel	\N	\N	6bd81338b1b306f6e92566e41bff3a29	f	2020-05-23 09:02:08+00	2020-05-23 09:02:08+00	\N
2162	60	Kwinten Lambrecht	1190	Habitanr	\N	d56abc0a926cf066ab62afb9ec7040c5	t	2020-05-23 23:19:20+00	2020-05-23 23:19:32+00	\N
2161	62	Vredewinde BOEYKENS	Anderlecht 	Biker	KWB Start To Bike voorzitster	490cce5476c570c64750330cfbbb56e7	t	2020-05-23 23:16:18+00	2020-05-23 23:20:17+00	vreeboe@gmail.com
1740	61	Jan Ramboer	Brussel	\N	\N	3d8c14894867e0800e5fe4b119edee2e	f	2020-05-23 09:15:12+00	2020-05-23 09:15:12+00	\N
1758	61	Keren-Peta Lorier	St Joost	\N	\N	7082fde64c9e32c2954144a59b7b4d97	t	2020-05-23 09:55:45+00	2020-05-24 05:36:27+00	kerenpeta@gmail.com
2196	60	François Dvorak	Bruxelles	Reporter-photo	Extinction Rebellion	eed4758eede6db45ea712884d42f0f9b	t	2020-05-24 07:37:04+00	2020-05-24 07:37:34+00	fdv.photoreporter@gmail.com
4812	60	Cesar	Bruxelles 	\N	Greenpeace brussels	bfb0c1a86351f071bcf2b2ee5779c140	t	2020-05-27 16:47:46+00	2020-05-27 16:48:19+00	cesarsansone@outlook.fr
1742	60	Chloé Bernatets	Ixelles	\N	\N	29b6a5fd150d2c8811ba43ef2d7a8aed	t	2020-05-23 09:17:31+00	2020-05-23 09:17:58+00	\N
1741	60	Picrit Marc 	1150	Indépendant	\N	519f38f38205dc8fe0e6965b7dc2bcc9	t	2020-05-23 09:17:17+00	2020-05-23 09:18:03+00	\N
1744	61	Helmi Soosaar	Brussels	Civil servant	EESC	ebbe7cdba8b95afc65de4f5ffd45a600	t	2020-05-23 09:18:28+00	2020-05-23 09:18:40+00	helmisoosaar@gmail.com
1743	61	Juri Soosaar	Brussels	\N	\N	707dd62b5c3316f66e89eb68823c5bcd	t	2020-05-23 09:17:50+00	2020-05-23 09:19:12+00	juri.soosaar@gmail.com
1735	60	Isabelle Bruyninckx	Bruxelles 	\N	\N	3856fbeb862a5e25df80809251d38971	t	2020-05-23 09:04:03+00	2020-05-23 09:21:45+00	isabellembruyninckx@gmail.com
1745	61	Luc	Woluwe	Kine	\N	9ee634948bbc7c43371e6dc055bec290	t	2020-05-23 09:24:25+00	2020-05-23 09:25:07+00	britta@yopmail.com
1746	60	Carton Bénédicte 	Wavre	Sociologue 	\N	31d11f2d34d13999b85f29b3e866b184	t	2020-05-23 09:25:25+00	2020-05-23 09:28:55+00	\N
1751	60	Ysaline 	Schaerbeek	\N	\N	ae0b7f7fc47805ebebe01c3084116f53	t	2020-05-23 09:44:17+00	2020-05-23 09:44:33+00	\N
1753	60	Coralie goffin	Bruxelles	\N	\N	b5b9362a1d83ddea1c36b2282cf35790	t	2020-05-23 09:46:04+00	2020-05-23 09:46:25+00	coralie.goffin25@gmail.com
1754	61	Pasquale Cancellara	Brussels	Project Manager 	Polis network	7064aba0aad5db597d6a776299d3d743	f	2020-05-23 09:47:31+00	2020-05-23 09:47:31+00	ancellara@polisnetwork.eu
1752	60	Laura Falla 	Auderghem	\N	\N	707e46c18f4c00a03fa3543ba22396c6	t	2020-05-23 09:45:14+00	2020-05-23 09:48:31+00	contact@laura-falla.com
1759	61	Marianna Tuokkola	Schaerbeek	citizen	\N	9b7062166e77f48d7fe98b56f652ead9	t	2020-05-23 09:58:34+00	2020-05-23 09:58:59+00	\N
1763	60	DisruptiveCyclo	1070	Cycliste	\N	614c831ccf17f9a9699c81a6d7424359	f	2020-05-23 10:01:21+00	2020-05-23 10:01:21+00	\N
1762	60	Lause Oriane 	\N	\N	\N	da8180009badc7cb282ae6eb6a26ce2e	t	2020-05-23 10:01:20+00	2020-05-23 10:03:23+00	orianelause_10@hotmail.com
1760	62	Stefaan De Leener	Vilvoorde	\N	\N	efac98d4bbd5d85fd6c96af2913be979	t	2020-05-23 10:00:56+00	2020-05-23 10:17:43+00	sdeleener@gmail.com
1810	60	SYLVIA PICQUÉ	Uccle	sage-femme	\N	6052dbd44cba1cc1f2025bbebb785a67	t	2020-05-23 10:44:34+00	2020-05-23 10:44:56+00	dewarichet-picque@skynet.be
1812	60	Pirenne Gisele	Woluwe st .lambert 	Retraitée 	\N	83fa1c0349ad546198f14a4e6a5cda41	t	2020-05-23 10:48:08+00	2020-05-23 10:48:59+00	gisele.pirenne@gmail.com
1813	61	Alexia Falisse	Saint-Gilles	Employee	\N	e6486192200668fd59fe29ea928ed658	t	2020-05-23 10:49:36+00	2020-05-23 10:51:25+00	\N
1815	61	Zita	Etterbeek	civil servant	\N	035fb0d012b1ddd965b9e2cff718caac	t	2020-05-23 10:51:42+00	2020-05-23 10:51:58+00	\N
1817	60	Beaudelot	Ottignies Louvain -la-Neuve	employé	COCOF	11aa5e2bead37b5bc4645fcca958cc67	t	2020-05-23 10:54:53+00	2020-05-23 10:55:08+00	beaudelot.patrick@gmail.com
1814	61	Magdalena Machnikowska 	Woluwe St Pierre 	\N	\N	b6227ed27a0f6603a1a1873200ccd4b6	t	2020-05-23 10:51:35+00	2020-05-23 10:55:55+00	machnikowska@yahoo.com
1818	60	Cathy PLAQUET	Woluwe St Lambert	retraitée	Comité de Quartier	1f694bdc82c873e305745de3ce44f822	t	2020-05-23 10:56:54+00	2020-05-23 10:57:14+00	c.plaquet@gmail.com
1820	60	Joachim	Woluwe Saint Pierre	Ecolier	\N	c0e9883b6050300ee90840bb01018a86	t	2020-05-23 11:02:01+00	2020-05-23 11:05:23+00	\N
1823	62	Chiara Vanhaverbeke	Molenbeek	\N	\N	15f95fa1cbc887388fe89af4d1c19ad4	f	2020-05-23 11:10:04+00	2020-05-23 11:10:04+00	\N
1824	60	Pauline lecourtois	1050	Graphic designer 	\N	e112da88a2d58713a94a25f56493e9f2	t	2020-05-23 11:10:48+00	2020-05-23 11:11:55+00	\N
1825	61	Xose casas	Bruxelles	\N	\N	9345b78ada616552f3b44d3e085ff179	t	2020-05-23 11:12:38+00	2020-05-23 11:13:00+00	xosecasas@gmail.com
1828	62	Pieterjan schraepen	Sint-gillis	\N	\N	7702dffe7e273d72ad084bffed08a928	f	2020-05-23 11:16:42+00	2020-05-23 11:16:42+00	\N
1830	61	Caterina	Brussels	Citizen	\N	4f21de0fafaa7e21fab4bcb95589d381	f	2020-05-23 11:17:52+00	2020-05-23 11:17:52+00	\N
1831	61	Helen James	Brussels	Retired	\N	8a8392444853651815acae1d5b803db2	t	2020-05-23 11:23:58+00	2020-05-23 11:24:09+00	daveandhelen16@gmail.com
1834	60	Noelke	WOLUWE Saint Pierre	\N	\N	ddb32ed2007ad08c9512a092ba361df6	t	2020-05-23 11:24:24+00	2020-05-23 11:25:16+00	noulle@skynet.be
1835	62	Lut De Wilde	Binheuden	\N	\N	739d286a1f6360f33bcfd54ba698a050	f	2020-05-23 11:25:20+00	2020-05-23 11:25:20+00	lut.dewilde@outlook.be
1833	60	Minet	Bruxelles	\N	\N	413ce3b1ac98ed1cdef7655e651246f2	t	2020-05-23 11:24:16+00	2020-05-23 11:25:44+00	minet_margriet@yahoo.fr
1832	61	Manon Flausch	1190	\N	\N	7e7cb31fbab61cedba5b76e8d46d294d	t	2020-05-23 11:24:10+00	2020-05-23 11:28:53+00	\N
1836	61	Yann	Brussels 	Enseignant 	\N	ebd363bc1efc97123944cbbca86f6e0c	f	2020-05-23 11:30:52+00	2020-05-23 11:30:52+00	ann.mcdowell@gmail.com
1837	61	Béatrice Donnet	Woluwe St. Lambert	Retired	\N	adfdc69ab589ccc8bc5febc58d83b82c	t	2020-05-23 11:31:05+00	2020-05-23 11:32:33+00	donnet.bea@gmail.com
1829	61	Tom Kenis	Brussels	writer	\N	e5c121a010ab6265de97c7516fb595a0	t	2020-05-23 11:17:17+00	2020-05-23 12:08:09+00	\N
1816	61	Valerio	Bruxelles	\N	\N	11e61cb82c585860eb1043a335f3dd02	t	2020-05-23 10:52:21+00	2020-05-23 12:16:57+00	valsilver@protonmail.com
1879	60	Frederic	Alsemberg	Mobility Mgr	\N	d2942493785a03799ec2f4ce719509a4	t	2020-05-23 12:38:18+00	2020-05-23 12:38:36+00	lebinome@skynet.be
1880	61	Giacomo Dozzo	Schaarbeek 	EU specialist	NGO 	6d3268f19090689805fd38699d5ad9de	t	2020-05-23 12:38:25+00	2020-05-23 12:38:47+00	\N
1894	60	Szynal	Bruxelles 	Sophrologie 	\N	6ac1d99ae0a7f8fe2eeab742bf978b50	t	2020-05-23 13:14:37+00	2020-05-23 13:16:24+00	\N
1896	60	Arthur Dehem	Woluwe-Saint-Pierre	\N	\N	efcb233aa594ba544dcf52bb857ab927	t	2020-05-23 13:28:45+00	2020-05-23 13:29:09+00	arthurdehem@hotmail.com
1897	60	Lina Giansante	Morlanwelz 	Retraitée 	\N	aea487497dcabb438380c5147d2c3e26	t	2020-05-23 13:29:31+00	2020-05-23 13:47:45+00	lina.giansante@hotmail.com
1750	60	Romain	Schaerbeek	Researcher	\N	f22918e1e7030071b58338f7a08159a8	t	2020-05-23 09:41:43+00	2020-05-23 14:10:17+00	romainlandmeters@gmail.com
1734	61	Elina Viilup	Forest	EU civil servant	EP	7e5ea8e2e3ccc338aa7058fd051e12d7	t	2020-05-23 09:03:08+00	2020-05-23 14:21:43+00	elina.viilup@gmail.com
1761	61	Tim	Brussels	\N	\N	84a9a08e3c3af8d89dab7f6493150e54	t	2020-05-23 10:01:12+00	2020-05-23 17:27:43+00	\N
1899	60	Françoise Picqué	Ixelles	retraitée	\N	df448dda459c9fc017b872c701c4b303	t	2020-05-23 13:31:31+00	2020-05-23 13:32:19+00	f.picque@hotmail.com
1900	60	Brassart	Bruxelles	Cycliste 	Citoyenne	19f18c70b0af36272b8bb01654fc0734	t	2020-05-23 13:32:01+00	2020-05-23 13:32:47+00	vbrassart@hotmail.fr
1972	62	Berry De Greve 	Oudergem 	\N	\N	c64c48800f3aa7ce791c14f37947a545	t	2020-05-23 15:55:13+00	2020-05-23 23:37:07+00	ann.berry@skynet.be
1901	60	Villechaize Henri	Etterbeek	Vélociste	\N	7be9386de451f2d04a0d4e671b45621c	t	2020-05-23 13:33:37+00	2020-05-23 13:34:05+00	luileptitecossais@gmail.com
2918	60	Lise Ef	1000 Bruxelles 	\N	\N	d0bb00800b6abe584555c883c98e8afc	f	2020-05-25 08:24:52+00	2020-05-25 08:24:52+00	\N
2166	61	Charline	Auderghem	Student	\N	cfc9c9660c0f3cd52d72621dea99851b	t	2020-05-24 01:39:43+00	2020-05-24 01:40:03+00	charlineblock@gmail.com
1903	60	Marchandise valentine	1200	Citoyen	\N	adc62931f83f6584d54359d4fe875168	t	2020-05-23 13:35:00+00	2020-05-23 13:35:43+00	valmarchandise@hotmail.com
1905	60	Antoine Gilard	Bruxelles	\N	\N	ba9c81cec304b5e9cfa4ff035bd5f7da	t	2020-05-23 13:37:15+00	2020-05-23 13:38:57+00	\N
1934	60	Harchies Lisa	Forest	Confinée 	\N	e233b029bd789911fd652a6e1f4973db	t	2020-05-23 15:01:37+00	2020-05-24 08:11:00+00	\N
1906	62	Romain Biard	Ixelles	Enseignant	\N	187424e92dde6874e36d2afb69c6f9a5	t	2020-05-23 13:42:00+00	2020-05-23 13:42:43+00	romain.biard3@gmail.com
2167	60	Élisabeth Kervyn 	Uccle 	Retraitée 	\N	4698a869c51d03cf8098df7b6ea2aabe	t	2020-05-24 02:45:17+00	2020-05-24 13:54:43+00	\N
1907	60	aya tanaka	bruxelles	aide soignante	mmi	00e873bde273cb5d343dc5c62f6f20ce	t	2020-05-23 13:44:43+00	2020-05-23 13:45:30+00	\N
1908	61	Eugenia Mansutti	Saint-Gilles	\N	\N	dd7c4b07864d32bb45774e33af870f09	t	2020-05-23 13:48:31+00	2020-05-23 13:48:49+00	eugenia.mansutti@gmail.com
1909	60	Sasac S	1932	\N	\N	3c3153fd78257601dae1cb9fee44551f	f	2020-05-23 13:48:56+00	2020-05-23 13:48:56+00	\N
1910	62	Katrien Colenbie 	Vilvoorde 	1800	\N	f2ff1ce3fbb9d909c4521217da992a22	f	2020-05-23 13:54:37+00	2020-05-23 13:54:37+00	katrien.colenbie@gmail.com
1911	60	Sasa S	1932	\N	\N	338f2ea75e3ccc2b5f2b41a293470c07	t	2020-05-23 13:55:40+00	2020-05-23 13:56:19+00	\N
1912	60	Isabelle Wedner	BRUXELLES	\N	\N	fc63fb8ad8c99f3b9dc642352c41a592	t	2020-05-23 14:01:17+00	2020-05-23 14:03:10+00	\N
1914	61	Jana Zurkova	Brussels 1050	Citizen	\N	240621c1e6680338305fb2a9ac09c77e	t	2020-05-23 14:04:33+00	2020-05-23 14:07:23+00	zurkovaj@gmail.com
1917	60	Stéphanie Bouteille	Molenbeek-Saint-Jean	\N	\N	e992da33a5ae93361ae567d41862293e	t	2020-05-23 14:17:26+00	2020-05-23 14:17:54+00	\N
1918	61	Suzanne Walker	1000 Brussels	\N	\N	39910bfce323ed42e715ea6a4018b9f5	t	2020-05-23 14:17:58+00	2020-05-23 14:18:26+00	\N
1919	61	Ines Magalhaes	Brussels	Auditor	\N	1646f6282c7320dc5e6fbcaee637e1f1	f	2020-05-23 14:19:01+00	2020-05-23 14:19:01+00	\N
1920	60	Aurore Poncin	Forest	\N	poncin.aurore@gmail.com	c139170a1e7b9f7962f027dccd9ee068	t	2020-05-23 14:25:54+00	2020-05-23 14:26:08+00	poncin.aurore@gmail.com
1922	61	Stephan Z	Ixelles	Functionnaire	\N	78048142def69396e8c8c7b2240ca71e	t	2020-05-23 14:32:30+00	2020-05-23 14:33:14+00	zimmermann2@live.at
1924	60	Willocx daniel	Bruxelles	Médecin 	\N	c9025ab8ee2c5a33736b82efd159903d	t	2020-05-23 14:36:45+00	2020-05-23 14:37:09+00	danwil2009@hotmail.com
1921	60	Lowie 	BRUXELLES 	Cycliste	\N	70c52587a966172bcc51f5c8fd4d7716	t	2020-05-23 14:26:56+00	2020-05-23 14:38:24+00	leilowe@gmail.com
1925	61	Annabel Meuleman	Brussel	\N	\N	9dcb6d1a84eba76451637bb268b6215c	t	2020-05-23 14:40:42+00	2020-05-23 14:41:03+00	\N
1926	60	Élodie Cornez	Saint-josse-te-noode	\N	\N	280f4f0a08e09358f4e97c02b8187682	t	2020-05-23 14:43:40+00	2020-05-23 14:44:10+00	\N
1927	60	Nadège	Woluwé-Saint-Lambert	Employee	\N	b5db871b1ddfd86975e7f12ac9238da5	t	2020-05-23 14:46:52+00	2020-05-23 14:47:18+00	\N
1928	61	Caroline Pottier	Auderghem	Official	\N	24e9f30ddc61fadac6d5db7ff12c77a4	f	2020-05-23 14:47:34+00	2020-05-23 14:47:34+00	caroline.pottier@yahoo.fr
1929	60	Julie Paternostre 	1200	Indépendant 	\N	2d7acc0ffe46206e899b7a7b7662733c	t	2020-05-23 14:48:54+00	2020-05-23 14:49:30+00	\N
1930	60	Van Roy	Uccle	\N	\N	45d7804bea4087e9837e1ed6d78eff18	t	2020-05-23 14:52:11+00	2020-05-23 14:52:25+00	vanroy.etienne@gmail.com
1931	60	Claire Hugon	Ixelles	\N	\N	67e2306e05dd258977f4806ed42b6f19	t	2020-05-23 14:53:13+00	2020-05-23 14:53:23+00	clairehugon@gmail.com
1933	62	Nadia Verbeeck	Molenbeek	\N	 Brussel-freak * mom * cycliste * likes breathing in and out	e862c6fd7d6b0412e8702a86ebc66703	t	2020-05-23 14:59:50+00	2020-05-23 15:00:49+00	nadiaverbeeck@fastmail.fm
1938	61	Candice	Brussels	Coordinator	Alma Sana	25dbcecbd98a3cad24e5aed5088ae869	f	2020-05-23 15:03:17+00	2020-05-23 15:03:17+00	\N
1902	60	Louis D	Etterbeek	\N	\N	2bd07dc24578c61fe54c988adfe653d8	t	2020-05-23 13:34:56+00	2020-05-23 15:06:15+00	loudewa@hotmail.com
1932	60	Bouchez virginie	Havré	Employee	\N	c57aecba88f9cb408d867bcf9568b190	t	2020-05-23 14:57:56+00	2020-05-23 15:06:28+00	virginie222@hotmail.com
1939	62	Lieselot	1090	\N	\N	749b9df77cc55c17208a63b7024914b9	t	2020-05-23 15:06:35+00	2020-05-23 15:06:49+00	\N
1940	62	DE VLEESCHOUWER 	OUDERGEM	\N	Patrick	d75dff9d1c67546dde6f856ba8f8276a	t	2020-05-23 15:07:15+00	2020-05-23 15:09:03+00	\N
1942	62	Karolien	\N	\N	\N	a8096233692732dbfb068225c9ecc824	t	2020-05-23 15:10:20+00	2020-05-23 15:11:07+00	\N
1943	62	Michel	Vilvoorde 	\N	Grootvader 	bcf9ecec6060e6a49e2fea26630a3f58	t	2020-05-23 15:11:48+00	2020-05-23 15:12:29+00	michel.vanderauwera@gmail.com
1948	62	Anna  Willems	Brussel   Oudergem	\N	\N	b3497e1433dbfe3c2d320917ac701924	t	2020-05-23 15:13:57+00	2020-05-23 15:14:13+00	anna.de.vleeschouwer@gmail.com
1947	61	Alberto Doce	Schaerbeek	\N	\N	14f6d1f925594e7eafa89cf08187ed04	t	2020-05-23 15:13:01+00	2020-05-23 15:14:14+00	\N
1949	60	Max Reimer	Saint Gilles	Employé	The Barn	472d74e7f4da6d7d6f1a1ed17353e769	t	2020-05-23 15:14:02+00	2020-05-23 15:14:24+00	reimermax.93@posteo.net
1941	60	Raymonde Debras	Schaerbeek	Citoyenne	\N	ab1af5a639bcb741569b691e9495e64b	t	2020-05-23 15:08:41+00	2020-05-23 15:16:21+00	boulemonde@gmail.com
1950	62	Annemie Pijcke	Oudergem	\N	\N	a7b8b5bb7b66840ba596637acc27aff5	t	2020-05-23 15:17:45+00	2020-05-23 15:18:35+00	annemie.pijcke@skynet.be
1952	62	David De Vleeschouwer	Bremen	\N	\N	036c7637159c9a4227f3ca52ac6df9cd	t	2020-05-23 15:23:57+00	2020-05-23 15:24:20+00	\N
1953	60	PARDOU Anne	Bruxelles	Pensionnée 	\N	d1356e6cdf3486921cb829030df98ef9	t	2020-05-23 15:24:55+00	2020-05-23 15:25:12+00	\N
1954	61	Michiel Reynaert	1190	bediende	\N	a2a1bc39d486a2ea30a78bd0b3d0a6a4	t	2020-05-23 15:25:25+00	2020-05-23 15:25:54+00	\N
1937	60	Quentin Schoonvaere	Bruxelles	Cycliste 	Organisation de Santé 	39278747a0b3d67b221378a50c100bae	t	2020-05-23 15:03:00+00	2020-05-23 15:31:35+00	\N
1955	60	Jacques Wilmart	Ixelles	\N	\N	35840e5b96c1e8d0d2815f46fa7ced4d	t	2020-05-23 15:27:35+00	2020-05-23 15:31:46+00	j.wilmart@hotmail.com
1970	62	Koen Berghman	Molenbeek	\N	\N	0bb9d9d810a6db59507824aee555c307	f	2020-05-23 15:53:34+00	2020-05-23 15:53:34+00	nfo.berghman@gmail.com
1971	62	Ann De Vos 	Oudergem 	\N	\N	e884987da334d3de7ed5ecf056c1009f	t	2020-05-23 15:53:47+00	2020-05-23 15:54:23+00	ann.de.vos@skynet.be
1923	62	Lieve Everaert	1160	\N	\N	3d11a238fec718e50a43a9c36f6f1d97	t	2020-05-23 14:33:09+00	2020-05-23 16:38:28+00	lieve.ever@gmail.com
1935	62	Katrien Everaert	Schaarbeek 	\N	\N	9b3629273abc390f6f0623a687be0a1e	t	2020-05-23 15:02:11+00	2020-05-23 17:55:59+00	katrien.everaert@telenet.be
1915	60	 Béatrice	Bruxelles	pensionnée	\N	0a9b730b190d214a8b5101d887e25885	t	2020-05-23 14:06:27+00	2020-05-23 20:37:16+00	beverhaegen@yahoo.fr
1951	62	Sanne Bevernage	Elsene	\N	\N	4c2d5060507e8f534c3584bd1ec447c6	t	2020-05-23 15:22:59+00	2020-05-23 15:32:37+00	sannebevernage@hotmail.com
1956	60	Amélie Nguyen	Bruxelles	Ir.	Santé	dbba9d7cde87ed48b26a3abfcba9bf48	f	2020-05-23 15:34:49+00	2020-05-23 15:34:49+00	\N
1898	60	Dhoir	Anderlecht 	Employé	\N	f9270b35978802682e5951f6af33cac5	t	2020-05-23 13:29:43+00	2020-05-24 04:04:35+00	marianne.dhoir@gmail.com
1957	60	Vekemans Nicolas	Etterbeek	Roi de la pédale	\N	de4118ca96e812789f61e7f34e7dc49d	t	2020-05-23 15:35:28+00	2020-05-23 15:35:47+00	vekemansn@gmail.com
1958	62	Lex Buddingh	Sterrebeek	1933	\N	3a91402e4df302b00cd838847e1593d0	f	2020-05-23 15:36:00+00	2020-05-23 15:36:00+00	\N
1959	60	Emilie Damit	Rhisnes	\N	\N	84ffe144b5062552e214d2809ac89487	f	2020-05-23 15:37:57+00	2020-05-23 15:37:57+00	\N
1960	62	Koen Berghman	Molenbeek	\N	\N	42cb92c644f8d4e697cfc924eca84806	f	2020-05-23 15:40:01+00	2020-05-23 15:40:01+00	oen.berghman@gmail.com
1961	60	Genevieve Nols	Bruxelles	Fonctionnaire	\N	e7591ac89514d854f4f0aad8909a9f74	t	2020-05-23 15:40:46+00	2020-05-23 15:41:07+00	\N
2919	61	Boryana Spasova	Etterbeek	policy officer	Mrs	0501804ebd1eda5c3b27a64918a126c5	t	2020-05-25 08:25:28+00	2020-05-25 08:25:49+00	\N
2173	61	Pierre Hanoune 	Etterbeek	Gérant de Societe	Derailleur	06124568b80d45e6aa921b76bc26d432	t	2020-05-24 05:51:06+00	2020-05-24 05:51:22+00	daleglobito@gmail.com
1964	60	Laurent Rappe	Woluwe-Saint-Pierre	Maître pâtissier 	\N	22b9811f420aa68cf0851e169812790a	t	2020-05-23 15:43:12+00	2020-05-23 15:43:30+00	laurent.rappe@gmail.com
1963	61	Janthe De Nil	1000	Consultant	\N	d82ef7a08f2994536516d5f6eefa9b2c	t	2020-05-23 15:43:04+00	2020-05-23 15:43:52+00	\N
2175	60	Antonella	\N	\N	\N	3545f718a3698c99395ab507839f372f	t	2020-05-24 06:02:05+00	2020-05-24 06:04:38+00	\N
1965	62	Rit Goetschalckx	Oudergem	\N	Persoonlijk	c1428fff52062f5aa3abe0ce00f94e46	t	2020-05-23 15:45:53+00	2020-05-23 15:46:50+00	rit.goetschalckx@skynet.be
1966	62	Wim Barbier	Laken	\N	L'Echappée	a95c9a21a5f7bd202a34bbcbb2f8e0d4	t	2020-05-23 15:46:06+00	2020-05-23 15:46:57+00	\N
1968	60	Amélie Nguyen	Woluwé	Ir.	Santé	f541312dae35d4e87ec5cc737faa2f8e	f	2020-05-23 15:48:28+00	2020-05-23 15:48:28+00	melie.nguyen@yopmail.com
2176	60	 Guy Grandjean 	Wezembeek 	\N	\N	0c442e85db3afeb66de799210a86ff5c	t	2020-05-24 06:18:13+00	2020-05-24 06:18:38+00	guy.grandjean@gmail.com
1969	61	Julia Eckhardt	BRUSSEL	cultural worker	Q-O2 lab	97591762b3727529506b91f501e2fac6	t	2020-05-23 15:50:41+00	2020-05-23 15:52:19+00	jjjeckhardt@gmail.com
1975	61	Sona Vodicka 	Etterbeek 	EU civil servant 	\N	3c658934e956a62e84d2ff61387afcca	t	2020-05-23 15:58:06+00	2020-05-23 15:58:19+00	sona.vodicka@gmail.com
1974	61	Katja dreyer	Brussels	Artist/mother 	Freelance	1a589553b8caa9edb81a1966e08e6b17	t	2020-05-23 15:57:34+00	2020-05-23 16:07:57+00	katja84@hotmail.com
2178	62	Greet Stijfhals	Elsene	\N	\N	eea6de4ca741e6f6e1d5677505e92546	t	2020-05-24 06:30:41+00	2020-05-24 06:31:31+00	greet.stijfhals@gmail.com
2179	60	Réka Barat 	Bruxelles	\N	\N	08784e8dc959f0769d551f83d44d2077	t	2020-05-24 06:33:35+00	2020-05-24 06:33:57+00	\N
2181	60	Elena Matvejeva	Brussels	\N	\N	7ae09808d3900376711a505b496b6ccf	t	2020-05-24 06:48:51+00	2020-05-24 06:49:16+00	\N
2174	61	Jennifer pagand	forest	ingenieur	\N	4447f5c105c66cc0b70762db6fc5c3af	t	2020-05-24 05:55:14+00	2020-05-24 06:54:54+00	\N
2182	60	Emily kluyskens	1160	employé	\N	025f1321c136babb9b3530224bb1cb9e	f	2020-05-24 06:55:53+00	2020-05-24 06:55:53+00	ekluyskens@hotmail.com
2180	60	Arnaud Dubois	Ixelles	Ingénieur	\N	75436e4ca289e57743bac9b687cd6b1a	t	2020-05-24 06:40:39+00	2020-05-24 07:36:09+00	\N
2197	61	Malherbe	Namur	secretaire	\N	aff20cc66df642b7e20a8a6a1e994d7b	t	2020-05-24 07:41:56+00	2020-05-24 07:42:40+00	\N
2198	61	Camille Coletta 	Brussels	Humanitarian worker	\N	8f348fa4803a94888150ea16955c15f4	f	2020-05-24 07:45:17+00	2020-05-24 07:45:17+00	\N
2200	61	Desiree Ketabchi	Ixelles	employée	\N	46369c8b26a654d9a9c81dff8baf5b70	t	2020-05-24 07:47:41+00	2020-05-24 07:48:05+00	dketabchi@gmail.com
2201	61	Jessika Devlieghere	Kessel-Lo	\N	\N	ac5cb448742f7edc02c7a25d2fc13339	t	2020-05-24 07:54:19+00	2020-05-24 07:54:49+00	\N
2202	61	Julie Marchand 	Brussels	\N	\N	324955a25ef2f579e1f52d7c5ebe88f5	t	2020-05-24 07:55:21+00	2020-05-24 07:56:16+00	\N
2204	62	Glaesener 	Schaerbeek 	Psychologue 	\N	2060a8f483fa59a745cf8073f813f32f	f	2020-05-24 07:57:42+00	2020-05-24 07:57:42+00	\N
2203	60	alvarez	bruxelles	enseignante 	\N	3942760c9669445a701a3d8f718478ca	t	2020-05-24 07:55:58+00	2020-05-24 07:58:40+00	alvarez_sarah@hotmail.com
2205	60	Roux Clemence	Saint Gilles	Employée	\N	e6d063140f11783cf60d7f5c297143a2	t	2020-05-24 07:58:30+00	2020-05-24 07:58:54+00	\N
2209	62	Steven Desair	Laken	Adviseur/ondernemer	Eatmosphere	092e8933e5d5a0d73de0bd5f918d2e18	t	2020-05-24 08:05:36+00	2020-05-24 08:07:15+00	\N
2208	61	Ann Depoorter	\N	\N	\N	ef9b2748551f6818e9bfafcca2aa2b67	t	2020-05-24 08:04:58+00	2020-05-24 08:12:06+00	\N
2211	60	Jonathan Peuch	Schaerbeek	\N	\N	830cf7642c7ec1f3bffc83f28691fe8f	f	2020-05-24 08:12:16+00	2020-05-24 08:12:16+00	\N
2212	60	Pilar Ocon	Saint Gilles	\N	\N	adb05e4630ba6b4b373aa5646ad92fd4	t	2020-05-24 08:12:55+00	2020-05-24 08:13:12+00	\N
2222	60	Evrard Francoise	Etterbeek	\N	\N	b1312e190ebee11856e6e972954c6fa5	t	2020-05-24 08:26:44+00	2020-05-24 08:27:04+00	francoise.evrard@yahoo.fr
2192	60	Mostafa Pakdaman - L	Kraainem 	Kinésithérapeute 	\N	9e9a88b3a82f85f4a66489854f59004b	t	2020-05-24 07:23:40+00	2020-05-24 08:27:36+00	mostafapakd@gmail.com
2221	60	Squilbin Marianne	Bruxelles	\N	\N	c7ef8c04b8371b295d16d0333d19f117	t	2020-05-24 08:25:54+00	2020-05-24 08:27:58+00	picassoy.ninja@gmail.com
2230	60	arzu sENGUN	Laeken 	Employée	\N	367cd29de4950b9fa9ea61a50af2c364	t	2020-05-24 08:46:19+00	2020-05-24 08:46:50+00	sengunarzu@gmail.com
2231	62	Julie Ghesquière 	Bruxelles	Chargée de projets et d'animation	CEF	5be830fe254169d402f445454beae742	t	2020-05-24 08:47:56+00	2020-05-24 08:49:12+00	julie-gh@hotmail.com
2219	60	Marina JUAN OLIVA	Brussels	employée	Saint-Gilles	cc5959291f8d9e403721f04081d3a1ed	t	2020-05-24 08:24:40+00	2020-05-24 08:49:34+00	marinajuanoliva@gmail.com
2234	60	Marie De Leener	\N	\N	\N	34866f4f408db1a015d5ddb3884481c1	f	2020-05-24 08:52:00+00	2020-05-24 08:52:00+00	marie.de.leener@outlook.com
2235	60	Paul Kreutzkamp	Brussels	CEO	Next Kraftwerke Belgium BVBA	7a1cb100a2d0109a4456326adc6021fd	f	2020-05-24 08:52:26+00	2020-05-24 08:52:26+00	aul.kreutzkamp@gmail.com
2233	61	Sarah Steppe	Bruxelles	\N	\N	1e6419f91d99f20a6d4cb6fd9d170b8f	t	2020-05-24 08:51:52+00	2020-05-24 08:52:32+00	\N
2237	62	Serge Eggen	Brussel	Employe	Rtl	3508feecbabdebcaf6bf92409643cc54	f	2020-05-24 08:55:06+00	2020-05-24 08:55:06+00	serge.eggen@gmail.com
2236	61	Alejandro Hernandez	Brussels	Contract Agent 	European Commission	d55bdbb64d40ee679ae239c09881e3cd	t	2020-05-24 08:53:48+00	2020-05-24 08:55:44+00	\N
2239	60	Augustin Habra	Ixelles	\N	\N	eda1428dc5f9537ed1abffe20d62a618	t	2020-05-24 09:00:01+00	2020-05-24 09:00:41+00	\N
2238	61	GRUDZIELSKI 	Brussels	\N	\N	d2623978e03551b954869142b09e0f3b	t	2020-05-24 08:56:35+00	2020-05-24 09:17:59+00	\N
2232	62	Martina Schwab	Bruxelles	Consultant	\N	327f1433f665714c254b0479e628f1b3	t	2020-05-24 08:50:00+00	2020-05-24 09:49:09+00	\N
2199	60	Benedicte S 	Anderlecht 	\N	\N	aa5cdeeb4c3a0e50eeedab246e28fd65	t	2020-05-24 07:45:21+00	2020-05-24 13:17:54+00	\N
2210	61	Lindsey Mancini	Augerghem	\N	\N	1f0f27b10252394e5c5fa6f5a4167546	t	2020-05-24 08:10:46+00	2020-05-24 19:07:52+00	barrcini@gmail.com
2177	60	Aleksandra Terzieva	Etterbeek	\N	\N	938bf1061d291f1d83f8e985a82e4cba	t	2020-05-24 06:24:12+00	2020-05-25 06:59:06+00	\N
2920	62	Marsel Stoopen	1000 Brussel	\N	\N	d4ecdfe60f8ab1359b04078cabdf8674	t	2020-05-25 08:26:02+00	2020-05-25 08:26:14+00	marsel.stoopen@gmail.com
2009	62	Ellen	Schaarbeek	\N	\N	1fdea8981b5c73bd8590afd506493183	t	2020-05-23 17:01:53+00	2020-05-24 20:19:13+00	\N
1977	61	Bastiaan Deknudt	\N	\N	\N	8ee6cfd6705a2cf773ef682ca50e6dee	t	2020-05-23 15:59:00+00	2020-05-23 15:59:15+00	deknudtb@gmail.com
2016	60	Clémence Petre	Bruxelles	Institutrice	\N	3d4dd28ca5561a30ad0a2f5f37b8d2d5	t	2020-05-23 17:21:50+00	2020-05-24 20:57:40+00	clemskiss@hotmail.com
1979	60	Marie Gilard	Bruxelles	Bioingenieur/enseignante	\N	28e8bbc0bb2c122ce8912d4a75224b06	f	2020-05-23 16:01:38+00	2020-05-23 16:01:38+00	\N
1872	61	Jens Mester	Brussels	Citizen	Woluwe-Saint-Lambert 	fe3a140cf4c5da91741287ee092831f5	t	2020-05-23 12:20:44+00	2020-05-23 16:02:16+00	jens.mester@gmail.com
1973	61	Carrie Hawson	1050	Consultant	\N	62061a080b161b13b8b034d00fd338b2	t	2020-05-23 15:55:36+00	2020-05-25 05:38:36+00	crsutton@gmail.com
1981	61	Marie-Noëlle Randaxhe	Woluwe-Saint-Pierre	\N	\N	6240e1387198ab40690824c0b5ffbc2e	f	2020-05-23 16:04:00+00	2020-05-23 16:04:00+00	\N
1980	61	Delphine Levi Alvares	Ixelles	NGO 	\N	fa997f74ae2eb3581b87d34ff231a8cf	t	2020-05-23 16:02:47+00	2020-05-23 16:04:19+00	\N
1978	60	Badjoko wa Lileko Khadidja 	Bruxelles 	\N	\N	2cd991b913bf15c813cd5a168fc28a96	t	2020-05-23 16:01:06+00	2020-05-23 16:04:22+00	badjoko.khadidja@gmail.com
1982	60	Dekeuleneer	Auderghem	\N	\N	981120e387df68a6afc3d29cc12f5eb3	t	2020-05-23 16:04:08+00	2020-05-23 16:05:20+00	\N
1983	62	Tijs De Vos 	Oudergem 	\N	\N	ee52e645602086412674a51c3beb5ac1	t	2020-05-23 16:05:23+00	2020-05-23 16:05:55+00	tijs.de.vos.160@gmail.com
1984	62	Steven Soete	1060	\N	\N	b2da4b8b14af67d242bdb086dc0941b0	t	2020-05-23 16:07:59+00	2020-05-23 16:08:36+00	\N
1985	60	Yannick Renaux	Jette	Employé RH	\N	1acf9530a38ae9b8771cb84edc02e8bc	t	2020-05-23 16:10:07+00	2020-05-23 16:10:30+00	yrenaux@hotmail.com
1986	60	Ramaekers	Bruxelles	Artiste 	\N	b30cd3f9a250c0f68b61039f3f680253	t	2020-05-23 16:10:28+00	2020-05-23 16:11:17+00	theodora.zut@gmail.com
1987	61	Rafaelle swynghedauw	Brussels	Unemployed 	\N	322490d0f1ac0ab8bc22f759f870a714	t	2020-05-23 16:11:08+00	2020-05-23 16:11:44+00	rafswyng@hotmail.com
1989	61	Randi Rabin Karotkin 	Kraainem	Mother 	\N	ca0b81dff6a5d1cbde88ad6e0aacd856	t	2020-05-23 16:20:06+00	2020-05-23 16:20:26+00	randirabin@yahoo.com
1988	60	Benoit Gérard	Bruxelles	Citizen	Secteur du handicap	377447b54dc27671bbe31d81605e0333	t	2020-05-23 16:19:46+00	2020-05-23 16:20:46+00	\N
1990	61	Pierre Dornier	\N	Bruxellois	\N	a18e02a0e3bed64201e5464746013526	t	2020-05-23 16:20:45+00	2020-05-23 16:21:15+00	dornierpi@gmail.com
1992	61	Eleonora Zudich	Bruxelles 	Architecture 	\N	54fa42ba499edd2086b63d73ca5a3de5	t	2020-05-23 16:22:59+00	2020-05-23 16:23:26+00	\N
1994	60	Penelope Vlandas	Bruxelles	\N	\N	ad0f9e75da50ee0faf22b2d662a359d4	t	2020-05-23 16:26:36+00	2020-05-23 16:27:27+00	\N
1995	61	Fiona BUCKLEY	1170	\N	\N	80dcb24567a3047320c8af8c4f36a2da	t	2020-05-23 16:28:12+00	2020-05-23 16:29:06+00	buckley_fiona@yahoo.com
1998	61	Julie Anne Gilleland	Elsene	Designer 	\N	bb8d49b9909e0acdb455b6aff76408a7	f	2020-05-23 16:32:22+00	2020-05-23 16:32:22+00	julesgilleland@gmail.com
1997	61	David Acosta Valois	\N	\N	masamorri@yahoo.com	8cddb24f7793f1364b19e19c065656cc	t	2020-05-23 16:28:42+00	2020-05-23 16:32:28+00	\N
1999	61	Jean Paul lecomte	Auderghem	Employee	Gracq	3ccd524b0447f0e084e2ef0ed280fa6c	t	2020-05-23 16:34:14+00	2020-05-23 16:34:43+00	\N
2000	62	Stefan Uytterhoeven	\N	\N	\N	f7577edf69c3629470140750f38bd164	t	2020-05-23 16:40:32+00	2020-05-23 16:43:36+00	\N
2001	60	Karin STEICHEN 	Bruxelles (Uccle)	Citoyenne	\N	339b06d22b1d063aad9733c0548191fd	t	2020-05-23 16:46:52+00	2020-05-23 16:47:43+00	karinsteichen@hotmail.com
2002	60	Éric Mager	Bruxelles	Cadre	Assurances	1a910b3fa45c3ed1bef6021340542181	t	2020-05-23 16:48:15+00	2020-05-23 16:49:10+00	eric.mager@verheyen.be
2003	60	Cédric Raket	Bruxelles	\N	\N	6bdb31e57026692642d2b82a4923e797	t	2020-05-23 16:48:58+00	2020-05-23 16:49:10+00	\N
1996	61	Chris Tanasescu	Louvain-la-Neuve	Digital Humanities	UCL	c666c57c65e450e39f1816ebd8bb850d	t	2020-05-23 16:28:36+00	2020-05-23 16:54:10+00	chris.tanasescu@uclouvain.be
2004	60	Isabelle Lehoucq	Evere	Employée	\N	4fb90a98c4ebe6d8049297d0d6e76608	t	2020-05-23 16:52:13+00	2020-05-23 16:55:04+00	isabellelehoucq@yahoo.fr
2005	62	Sofie Vanden Eynde	Brussel	\N	\N	599a61f6f2eb7f9f0ea77ce0db34a14c	t	2020-05-23 16:52:45+00	2020-05-23 16:55:23+00	\N
2006	61	Simon Clement	Gent	Student	Extinction Rebellion	03d4b7a095bce0548aa907816bad680e	t	2020-05-23 16:56:23+00	2020-05-23 16:56:41+00	\N
2008	60	Delphine Havaux	Schaerbeek	Musicienne	\N	31e0d3d935490fe6930d89f545508c0c	t	2020-05-23 16:58:54+00	2020-05-23 17:00:55+00	\N
2010	60	Dicker 	1160	\N	\N	75b80451743d72963eb2b6d616aec4de	t	2020-05-23 17:05:00+00	2020-05-23 17:05:19+00	dominique.dicker@gmail.com
2011	60	Antonio Da Silva	Schaerbeek	Musicien	\N	5a81813d988bccad29daa4c9e41c2bbd	t	2020-05-23 17:09:23+00	2020-05-23 17:10:18+00	antoniodasilva930@gmail.com
2012	60	Vastrade	Bruxelles	\N	\N	30663197308f308f07ab9d7baf3293db	f	2020-05-23 17:11:15+00	2020-05-23 17:11:15+00	ecile.vastrade@gmail.com
2014	60	Vanysacker 	Molenbeek	Sans emploi	\N	24cf02c6ad4a63c95992c78ced142f1e	f	2020-05-23 17:12:30+00	2020-05-23 17:12:30+00	helgavan72@gmail.com
2013	61	Elias De Keyser	Brussels	Engineer	\N	65b57db4949aab12093646fc8fa43c7e	t	2020-05-23 17:11:54+00	2020-05-23 17:13:41+00	hello@sustainablebrussels.be
1993	60	Philippe Randaxhe	1200	Informaticien	CE	87e058560e8a9e140084c5138bff4117	t	2020-05-23 16:24:05+00	2020-05-23 17:14:23+00	submit.pub@gmail.com
1916	60	Solène Beaudet	Bruxel’es	Musicienne	Mères au Front - Moeders in de Weer	c8038a1b440f82dbba1fd8b05f846d75	t	2020-05-23 14:16:17+00	2020-05-23 17:15:29+00	\N
2017	60	Françoise Tahon	Bruxelles	Encadreuse	+32477433240	366d7a8395686feb44a92a5ccf27bf0b	t	2020-05-23 17:23:44+00	2020-05-23 17:24:31+00	francoise.tahon7@gmail.com
2007	60	Poupette	1030	Retraitée	Monde selon les femmes	377f5dc3e739319f513bee2e3f01ce41	t	2020-05-23 16:58:25+00	2020-05-23 17:26:59+00	poupettechoque@gmail.com
2019	60	Catherine Drouet 	Ixelles 	Sans occupation 	\N	6a3be61e32f43a50d6297a02e999089e	f	2020-05-23 17:27:36+00	2020-05-23 17:27:36+00	\N
2020	62	FAM. DEMEULEMEESTER-MERTENS	SCHAARBEEK	\N	\N	c902dcfed169d79a3931409ed1c8b6d9	f	2020-05-23 17:28:23+00	2020-05-23 17:28:23+00	frankdemeulemeester@hotmail.com
2022	61	Johanna Medvey	Brussels	\N	\N	d5df731f60de0f74645229b6d1e3963b	f	2020-05-23 17:30:23+00	2020-05-23 17:30:23+00	\N
2023	61	Drishti Samaddar	Brussels	Architect 	\N	18d57068b98aab545b918c8c791fd06c	t	2020-05-23 17:31:00+00	2020-05-23 17:31:18+00	\N
2021	61	Pedro Araujo	Brussels	Architect	\N	5d5f46315751c1101c0e0d935b8414ed	t	2020-05-23 17:30:00+00	2020-05-23 17:31:31+00	\N
2024	61	davide sabbadin	Bruxelles	policy officer	EEB	594cef685609d0880e8de446d29258dd	f	2020-05-23 17:32:47+00	2020-05-23 17:32:47+00	dsabbadin@hotmail.com
2025	61	Monica Ford	Bussels	Employee	\N	ff15591f5e518c62b2f9ef52f7e85bf2	t	2020-05-23 17:35:31+00	2020-05-23 17:36:29+00	monica.ford@skynet.be
2026	61	Maxime Schildmeijer	Brussels	Student	\N	c6bb2f6b3035cc4907bd4c126321ca01	t	2020-05-23 17:39:01+00	2020-05-23 17:39:25+00	\N
2027	61	J christie	\N	\N	\N	357306b0923bc9ccf523aceb67490086	t	2020-05-23 17:40:15+00	2020-05-23 17:40:54+00	\N
2028	62	Jenna gailly	Schaarbeek	\N	\N	55ab700ec308eabbb5310f3df4410461	t	2020-05-23 17:42:02+00	2020-05-23 17:42:28+00	\N
2018	62	Koen Berghman	Sint-Jans-Molenbeek	\N	\N	8c89500767131edb679ed27b1ee45be9	t	2020-05-23 17:23:55+00	2020-05-23 17:45:32+00	kberghman@wattmatters.be
2029	61	Etienne Richelle	Brussels	Clean air lover	\N	f9a7b9e5f25f8e4f21a4b063215a4de0	t	2020-05-23 17:43:50+00	2020-05-23 17:44:20+00	\N
2057	62	Wim Menten	Forest	Architecte	Bienvenue sur la Petite Ceinture	8e869c03435c5da6363e1f35155baf46	t	2020-05-23 18:17:24+00	2020-05-23 23:39:15+00	\N
2169	60	clara martinez	Uccle	infirmière 	\N	5dbcd51ba34c13f4f5d2f78d8ef2f920	t	2020-05-24 04:32:08+00	2020-05-24 04:33:04+00	clara_martinez06@yahoo.fr
2031	60	MARIE TEMPESTA	IXELLES	\N	\N	29a79bf7632e9f44c167794f3f7503a7	t	2020-05-23 17:49:15+00	2020-05-23 17:50:06+00	marie.tempesta@laposte.net
2033	60	Thomas Mourey	Ixelles	\N	YFoEE	33d154473fff228693bc5d55b50c5462	f	2020-05-23 17:52:00+00	2020-05-23 17:52:00+00	ourey1@laposte.net
2032	60	Micheline Vervoort 	Auderghem (Bruxelles)	pensionnée	\N	c0301135a7c8434aa9108692b621d88f	t	2020-05-23 17:51:31+00	2020-05-23 17:52:01+00	micheline.vervoort@gmail.com
2058	61	Joannes Vandermeulen	1210	Director	\N	62fe5b2476aa6f27ec80ac665c7f15c0	t	2020-05-23 18:20:06+00	2020-05-24 07:13:41+00	\N
2034	60	Alexis d Hoop	 Bruxelles	Encadrant psychosocial	\N	c2fe5d968e07ac38e09da4ab0e6ba147	t	2020-05-23 17:52:57+00	2020-05-23 17:53:46+00	\N
2035	60	Thomas Mourey	Ixelles	\N	YFoEE	953f18fc53c419aaf32681b133e6dbd6	f	2020-05-23 17:54:04+00	2020-05-23 17:54:04+00	mourey1@laposte.net
2044	61	An-An	Brussels	Employee 	\N	fbe930d819e9bec7522e603288091a6b	t	2020-05-23 18:04:09+00	2020-05-24 12:25:22+00	\N
2036	60	C BOINET	Bruxelles	\N	\N	6633c9fe60f5d1a3d3260d5d916f7d36	t	2020-05-23 17:55:22+00	2020-05-23 17:55:45+00	\N
2040	62	Nico Martens	Brussel	1081	\N	2fee70445e27c2f06577d7ee69f3d4a5	t	2020-05-23 18:01:53+00	2020-05-25 08:11:09+00	martens.nico@hotmail.com
2037	60	Elisabet Brouillard	saint-gilles	enseignante et musicienne	\N	da71929b8f9676ea4b20dc5e8fc8eb69	t	2020-05-23 17:56:36+00	2020-05-23 17:56:57+00	elanfute@gmail.com
3843	62	Natalie	1080	\N	\N	262423809e6649aed9ae3ec74c1a213b	t	2020-05-25 18:08:43+00	2020-05-25 18:26:36+00	\N
2038	62	Karlien TIEBOUT 	Koekelberg	\N	\N	3b125e95afe33792a91349f4707c92b6	t	2020-05-23 17:58:16+00	2020-05-23 17:58:33+00	tiebout.karlien@gmail.com
4154	62	\N	\N	\N	\N	b73958e4f621a62598b5d9c465079ab8	t	2020-05-26 07:00:50+00	2020-05-26 07:34:56+00	\N
2039	62	Veerle Hageman 	Vorst	volwassenenonderwijs	\N	63bcb64e72af148d16404a2e9de06ecb	t	2020-05-23 18:01:35+00	2020-05-23 18:03:47+00	veerle.hageman@gmail.com
2042	60	Fenzar Chaïma	Auderghem 	Étudiante	\N	024644ddd7503178ea4863bce83f0625	t	2020-05-23 18:03:37+00	2020-05-23 18:05:48+00	\N
2045	60	Provoost 	Kraainem 	Pensionné 	\N	37565eb1696277696bde7ba3b8fe4361	t	2020-05-23 18:06:18+00	2020-05-23 18:06:37+00	noeledgard.provoost@gmail.com
2046	61	Matteo Manzonetto	Bruxelles	Parent	Famille	e76ac1af5ce4ed788f57baf66c2c468a	t	2020-05-23 18:07:45+00	2020-05-23 18:08:06+00	manzonetto@gmail.com
2048	61	Brendan Coolsaet	Schaerbeek	\N	Imagine Brabant	23030bdc3709348ea4f35460f00753e8	t	2020-05-23 18:08:17+00	2020-05-23 18:08:53+00	\N
2047	62	Anne Coolbrandt	Schaarbeek	\N	\N	06d27880278796b8f2673537f9bf9ccf	t	2020-05-23 18:08:15+00	2020-05-23 18:09:00+00	anne.coolbrandt@gmail.com
2049	62	Remko Kampert	Mechelen	\N	\N	22fac2bf32610d09e71ae6e9e288a47d	t	2020-05-23 18:08:57+00	2020-05-23 18:09:13+00	remkokampert84@gmail.com
2050	60	Caroline Thienpondt	Koekelberg	Citoyen et responsable communication 	Quartier promenade Besme	14bd02c0e25f4c4e6b108d2352b34636	t	2020-05-23 18:13:06+00	2020-05-23 18:13:32+00	caroline_thienpondt@yahoo.fr
2051	60	Steeve SABATTO	Bruxelles 	Architecte 	\N	36d4e899cadf67f948b485f63b4eda7c	f	2020-05-23 18:13:44+00	2020-05-23 18:13:44+00	steevesabatto@iiiha.c
2054	60	Emilie	Laeken	Employé 	\N	fe4bab04dbd014f7d89cfc17f0a5bb62	f	2020-05-23 18:15:44+00	2020-05-23 18:15:44+00	mil@hotmail.com
2052	61	Harry de Boom	Brussels	pensioned volunteer worker	les Gazelles de Bruxelles/  acv-csc	bcc697a29521ebf8dc451169a49266cd	t	2020-05-23 18:14:07+00	2020-05-23 18:15:57+00	deboomharry@gmail.com
2053	61	Izabela Zajac	Brussels	Employee	\N	2719a3ae9a3e0c124f2e7e6f0aa5a540	t	2020-05-23 18:14:55+00	2020-05-23 18:16:08+00	\N
2055	60	Dominique Kelecom	Bruxelles	retraitée	\N	e590b52d5619ca3df508a6ee6a619103	t	2020-05-23 18:16:38+00	2020-05-23 18:17:59+00	do.kelecom@gmail.com
2056	60	Virginie 	Auderghem 	\N	\N	66c8254cae828a8d3e7e699a534c9939	t	2020-05-23 18:16:59+00	2020-05-23 18:18:20+00	wauters.v.01@outlook.be
2059	60	Hollebeke	1160	Trotinette 	\N	01c20074c5923b7b991cb2e9b4301ce6	t	2020-05-23 18:21:19+00	2020-05-23 18:22:15+00	randy60@live.be
1845	61	Ino	Bruxelles	Biologist	European Commission 	c2110577eb4076cb60c995ac39b5c83d	t	2020-05-23 11:40:26+00	2020-05-23 18:22:41+00	shibbyin@gmail.com
2060	62	Amélie Nguyen	Bruxelles	2e ballai dans l'équipe nationale ivoirienne de curling	Non	4ddd42601b591bcbe47143a62d7b1b9f	f	2020-05-23 18:23:46+00	2020-05-23 18:23:46+00	ng@yopmail.com
2043	60	Amandine Magos	Vorst	\N	\N	220ccd157060ea929f139d4d59691aa0	t	2020-05-23 18:03:53+00	2020-05-23 18:27:17+00	\N
2061	60	Brunet c.	1060	\N	\N	afe7822eac71379f80d245989bacd8fe	t	2020-05-23 18:32:03+00	2020-05-23 18:32:27+00	candiceb7@yahoo.com
2062	60	Pauline D	1620	Couturière	\N	0f0129fff9e40c55a0b7d5f94e51dbda	t	2020-05-23 18:35:22+00	2020-05-23 18:35:46+00	\N
2063	60	Van Houtte Gabriël 	Etterbeek	Chimiste	Brussels Triathlon Club	0ae0577173748d34aabd524300ac1fd6	t	2020-05-23 18:37:13+00	2020-05-23 18:40:54+00	gabriel.vanhoutte@telenet.be
2065	61	Frederic Vereecke	Schaerbeek	-	-	43e2576b61e99b4714b7784b2622b6e8	t	2020-05-23 18:40:54+00	2020-05-23 18:41:12+00	\N
2066	60	Thiange Tommy	Bruxelles	Chargé de projets sociaux/santé 	\N	63a9420f5e3c513bc4bf543473e1a687	t	2020-05-23 18:41:26+00	2020-05-23 18:41:53+00	tommy.thiange@gmail.com
2067	61	Bert De Niel	Molenbeek	\N	\N	87173d16ca64562b42bb375466ea83ff	f	2020-05-23 18:42:26+00	2020-05-23 18:42:26+00	bert_deniel@hotmail.com
2068	60	François Cibot	Ixelles	citoyen	\N	99a201d5df82f521c4a41f85e76b6817	t	2020-05-23 18:44:19+00	2020-05-23 18:44:54+00	fcibot@gmail.com
2069	62	Hannes, 10	Brussel	spelen	familie Vanheertum-Schelfhout-Damman	0296864786deea66e2d4d4c3cdf6c915	t	2020-05-23 18:45:42+00	2020-05-23 18:46:41+00	\N
2071	60	Béatrice Gouyet	Ixelles	Cadre	\N	96d963cc7b8a2eda003264627d662246	t	2020-05-23 18:48:05+00	2020-05-23 18:48:16+00	\N
2070	60	Augustin Godiscal	Bruxelles	\N	\N	2bd28a32254c135850307677c7b745c5	t	2020-05-23 18:47:09+00	2020-05-23 18:48:58+00	augustin@godiscal.com
2072	60	Sandrine	Auderghem	1160	/	609489b4afff74ebc96567bb9eeb5b60	t	2020-05-23 18:49:21+00	2020-05-23 18:49:59+00	sandrine3116@hotmail.com
2073	60	Caroline Jacobs	Schaerbeek	enseignante	\N	8f3418df493f3473fe567e45280cf42c	t	2020-05-23 18:50:13+00	2020-05-23 18:50:57+00	carojacobs@gmail.com
2074	60	Pauline Gillet 	Bruxelles 	Journaliste 	\N	4de99ed4c6640f31b2963f6854bbac86	t	2020-05-23 18:51:57+00	2020-05-23 18:52:17+00	\N
2075	61	Marco Contiero	Brussels	Employe	\N	9f4f0e77bddc3f0db2a0512a03f73149	f	2020-05-23 18:53:44+00	2020-05-23 18:53:44+00	marco_contiero@libero.it
2077	60	Wim Didelez	Brussel	grafisch ontwerper	\N	b13db8115e2b650cbf15dab0158baacd	f	2020-05-23 19:00:36+00	2020-05-23 19:00:36+00	wim@wimdidelez.be
2080	59	PILAR LAMA	Schaerbeek	Casa 	Ste josse	2132298d4b3cc9269920c38509d875da	f	2020-05-23 19:04:07+00	2020-05-23 19:04:07+00	\N
2081	60	Catherine Berghman 	1200 Bruxelles	\N	\N	3b552f435cf4b7f7f2243526e03d0158	t	2020-05-23 19:07:30+00	2020-05-23 19:08:27+00	cathbergh@icloud.com
2030	62	Christine	Neerijse	\N	\N	59171d51020188034a5f9283c782ba0e	t	2020-05-23 17:47:59+00	2020-05-23 19:40:21+00	\N
2082	61	Aulona Fetahaj	Jette	\N	\N	14a84f4351432ce529e0f5ef925c5425	t	2020-05-23 19:07:45+00	2020-05-23 19:08:13+00	aulona_fetahaj@hotmail.com
2145	60	Arnaud Vanderbeck	Bruxelles	Consultant	EcoRes	417b631dcd9893ef6b8692edca33747c	t	2020-05-23 21:42:25+00	2020-05-23 22:40:07+00	\N
2083	61	Maria Monteferrante	Bruxelles	interpreter	EU	f54567790062d20becda695e07f28f66	t	2020-05-23 19:10:23+00	2020-05-23 19:10:47+00	\N
2170	60	de winter	watermael boitsfort	retraitée	\N	4a21297cdbd6c2c422d40788ad8676fa	t	2020-05-24 04:41:39+00	2020-05-24 04:42:19+00	chichanne2@gmail.com
2094	60	Celine Libeer	Bruxelles	Educatrice	\N	bff798f48f5ce6df68f94c55362080a7	t	2020-05-23 19:27:40+00	2020-05-23 19:27:58+00	\N
2100	62	Eva Van Raemdonck	Brussel	Bediende	\N	43362c6b450930897cecc5b9631faf3b	t	2020-05-23 19:44:51+00	2020-05-25 08:23:48+00	\N
2095	61	Anna Kielbowicz	1200 Bruxelles	Employée	N.A.	a4f098b16cfddabe6b2a3757880317a4	t	2020-05-23 19:31:30+00	2020-05-23 19:31:59+00	akielbowicz@yahoo.fr
2096	62	Cath	Dworp	\N	Madame	a0f1c237f9812253c5bc328c8cb4f215	f	2020-05-23 19:37:01+00	2020-05-23 19:37:01+00	\N
2097	61	Claudio Cutarelli 	Brussels	Employee 	\N	ac65f765dd3e1b5133b9c6f8f35a83eb	f	2020-05-23 19:37:07+00	2020-05-23 19:37:07+00	claudiocutarelli@gmail.com
2171	60	Laurence Jacmin	Bruxelles	Indépendant	\N	d02da2689cea4b32ada9e2f62d073458	t	2020-05-24 05:18:25+00	2020-05-24 05:19:12+00	laurence.jacmin@skynet.be
2098	60	Elisabeth Vangansbek	Bruxelles	Enseignante	\N	b2df96a76b16345a28cf16a618182913	t	2020-05-23 19:40:14+00	2020-05-23 19:40:34+00	elisabethvangansbek@gmail.com
2922	62	Carole	brussel	studente	\N	9bd589b059bccf4c64f3e0db60585125	f	2020-05-25 08:26:21+00	2020-05-25 08:26:21+00	\N
2241	60	Gargouri	Ixelles	Employee	Xylem	2e5e2c6886b8d1c74886680566a22b57	t	2020-05-24 09:03:23+00	2020-05-31 10:22:41+00	l.gargouri@hotmail.com
2172	60	DO thi Minh	Ixelles 	Juriste 	\N	2bf6ea66f67e4e682dcd490af3b49acf	t	2020-05-24 05:27:49+00	2020-05-24 05:28:22+00	thiminhgi@gmail.com
2102	60	Kasia Radwan	Schaerbeek	\N	\N	4bdcf3bbe9877c720dadefdb204a5f65	t	2020-05-23 19:48:22+00	2020-05-23 19:48:54+00	\N
2099	60	Cnop Sophie	Ex Bruxelloise	Enseignante 	\N	61d22318b04622a1f5267bea7ddf9669	t	2020-05-23 19:42:21+00	2020-05-24 07:16:21+00	sophiecnop@hotmail.com
2103	61	Sophie Wulk	1050 Brussels	Lecturer	\N	94b0fd7f283973404cead9457b748668	t	2020-05-23 19:50:15+00	2020-05-23 19:50:33+00	sophiewulk@web.de
2101	60	Claire Kupper	Bruxelles	\N	\N	d588cf011bfe408511951cac40b9d0fb	t	2020-05-23 19:47:12+00	2020-05-23 19:55:49+00	kupper.claire@gmail.com
2206	62	Marina Vidal Paris	Brussels	1050	\N	a364680eb28e7c3ac1ed3d212f9b2760	f	2020-05-24 08:03:57+00	2020-05-24 08:03:57+00	\N
2110	61	Rabia Uslu 	Schaarbeek	\N	\N	7c268e0fa4514eb15aa5f64b69db615b	t	2020-05-23 19:58:15+00	2020-05-23 19:59:35+00	uslurabiaa@gmail.com
2921	61	Alexander Verduyn	Vorst	\N	\N	9e67bf4d5bde48502858cd0571e3e962	t	2020-05-25 08:26:19+00	2020-05-25 08:27:00+00	alexander.verduyn@gmail.com
2111	61	Thierry Jiménez	Schaerbeek	Multimobiliste	\N	ca34fe32e0636d626cf7a629be6873b5	t	2020-05-23 20:00:07+00	2020-05-23 20:01:02+00	t.jimberg@gmail.com
2148	61	Donagh Cagney 	Brussels 	N/A	N/A	b5b7994f96ab27d940ffcf1b7ea15f47	t	2020-05-23 22:09:31+00	2020-05-24 08:07:24+00	cagneyd@tcd.ie
2122	60	De Bock Isabelle	Saint-Gilles	\N	\N	f92234491b4ccd4820072f5720e254f7	f	2020-05-23 20:43:02+00	2020-05-23 20:43:02+00	debockisabelle@gmail.com
2121	60	Clarisse Bulpa	Etterbeek	\N	\N	7750ddb435b2a3d637abf29270b8b006	t	2020-05-23 20:42:11+00	2020-05-23 20:43:46+00	\N
2213	60	Ellen de leener	Molenbeek	Travailleur communautaire	\N	ece42060aff5ea61ba02e32b7c554b39	f	2020-05-24 08:14:53+00	2020-05-24 08:14:53+00	\N
2132	60	Alain Van Vynckt 	Uccle 	\N	\N	2fd2804dcdefb72f2db27bc22233cfe5	t	2020-05-23 21:15:11+00	2020-05-23 21:16:02+00	alain.vanvynckt@gmail.com
2214	61	laurens	brussels	researcher	\N	e5ab6b953bf83a0e3dd38d3f0fe4e992	f	2020-05-24 08:15:59+00	2020-05-24 08:15:59+00	\N
2144	61	James Portoraro	Etterbeek 	Student 	VUB	3b559b8b0ddc636316dcdfcc27c2b057	t	2020-05-23 21:32:30+00	2020-05-23 21:33:20+00	jportoraro@outlook.com
2146	60	Dorothée 	Ixelles	\N	\N	53cf2d48d225a7805db81ac15b2a5754	f	2020-05-23 21:43:45+00	2020-05-23 21:43:45+00	\N
1694	62	Veerle Slootmans	brussel	\N	\N	238bc72b5f17bba4696fd8b194a04a3f	t	2020-05-23 08:24:49+00	2020-05-24 08:16:46+00	\N
2149	61	Sebastien Munting	Etterbeek 	Medical doctor 	\N	b99447d934144ef8ef109854671cc1ef	t	2020-05-23 22:10:15+00	2020-05-23 22:10:40+00	\N
2150	61	Natalie Kearney	ETTERBEEK 	Consultant	\N	fa5627c4664682e314fe954476d3936c	t	2020-05-23 22:10:28+00	2020-05-23 22:35:40+00	natalie.kearney@yahoo.com
2216	60	Giovanna Mazzeo Ortolani 	Ixelles	Économiste 	\N	64daf7ea88b049ce96e209b1e03282cd	t	2020-05-24 08:18:25+00	2020-05-24 08:18:47+00	gio.ortolani@gmail.com
2207	60	Vekemans Marcel	Watermael-Boitsfort	Gynécologue e.r;.	Musée instruments musique	093a5a45378665b72abe54dee61bc4e1	t	2020-05-24 08:04:22+00	2020-05-24 08:25:05+00	mpapivek@gmail.com
2217	60	Emily Bowles	Bruxelles Uccle	Employée	\N	dc80368c98ff9983755ae679e2c9b3df	t	2020-05-24 08:19:27+00	2020-05-24 08:26:48+00	emily_bowles@yahoo.co.uk
2224	61	Francesca B.	Bruxelles	Économiste	\N	d7758f274445376da0643d7e8507f77c	f	2020-05-24 08:34:18+00	2020-05-24 08:34:18+00	\N
2225	62	Dries Vriens	Elsene	\N	\N	a97a687a126cda1377f31468f4fc3f36	t	2020-05-24 08:35:11+00	2020-05-24 08:35:51+00	dries_vriens@hotmail.com
2215	61	Angel Guirao Anton	Oudergem	1160	\N	56aa59ac44790300b724efc386fc32df	t	2020-05-24 08:18:10+00	2020-05-24 08:40:32+00	\N
2227	60	de Kerchove Maxime	Bruxelles	\N	\N	45b5e07a4b476b45b3dfde4fb0993e74	t	2020-05-24 08:38:31+00	2020-05-24 08:47:22+00	max.dousselghem@gmail.com
2243	61	Mieke Proost	1780	Teacher	\N	97ed8ca4aab2e84c8983f45436ac2ba2	f	2020-05-24 09:05:48+00	2020-05-24 09:05:48+00	\N
2240	60	Arlette Hayère	Schaarbeek	Retraitée 	Personne	c56299f73c18bb96d9d23143bacf0975	t	2020-05-24 09:02:54+00	2020-05-24 09:10:56+00	arlette.hayere@telenet.be
2245	62	Adriaan S	Vorst	\N	\N	fa2789d04f59dff920d3f35f1d6ba1d9	t	2020-05-24 09:11:41+00	2020-05-24 09:11:53+00	\N
2247	60	Xavier, Ana 	Bruxelles 	\N	\N	9f398b09e31436a27c31ab435b7a95eb	f	2020-05-24 09:17:39+00	2020-05-24 09:17:39+00	xavierana@yahoo.com
2248	60	Peter Kayaert	Ganshoren	Teacher	\N	c97b7392ab795da3de8cbc44a6c9b00c	f	2020-05-24 09:24:16+00	2020-05-24 09:24:16+00	\N
2250	60	Maria Karagianni 	Saint Gilles	Employée	\N	705a44e8e07f36ef695fcf5410085272	t	2020-05-24 09:32:51+00	2020-05-24 09:33:09+00	mari.karagianni@gmail.com
2251	60	Celia Cranfield	1180	\N	\N	a331629f99a69e8cf62717dc34234ba4	t	2020-05-24 09:37:31+00	2020-05-24 09:38:59+00	\N
2253	61	Robby Ruytinx	Schaerbeek	Meeting planner	\N	2c47e81509797f492f41119e5435f9ad	t	2020-05-24 09:39:58+00	2020-05-24 09:41:30+00	\N
2255	60	Karle De Volder	Bruxelles	\N	\N	8cdf6387bf601bc4f7dadd01ae5415f9	t	2020-05-24 09:46:17+00	2020-05-24 09:47:20+00	\N
2242	62	Koen van Aert	Schaarbeek	\N	\N	b8fcf2326ee066c7d04c13efe873f161	t	2020-05-24 09:04:11+00	2020-05-24 10:07:43+00	\N
2252	60	Romain Doucet	Saint-Gilles	\N	\N	d2bc9904069b22cbc32be16539c70aab	t	2020-05-24 09:38:20+00	2020-05-24 10:24:56+00	\N
2226	61	Macarena González Quijano 	Bruxelles 	HR officer	\N	b506183dad56999a902f8d172b5a7d95	t	2020-05-24 08:36:08+00	2020-05-24 11:03:29+00	\N
2246	60	Nelson wright	1180	\N	\N	5b9d3a398d8fa655d283b66035134e58	t	2020-05-24 09:15:24+00	2020-05-24 11:24:25+00	\N
2254	60	Luc D’haegeleer 	Bruxelles	Enseignant	Privé 	87d3e03976fe67f97d871b9c302f1ff4	t	2020-05-24 09:44:41+00	2020-05-24 17:20:51+00	ldhaegeleer@skynet.be
2924	61	Raphaël	1081	Bediende	\N	d9ba4df86de3d03d019f6754a565e69d	f	2020-05-25 08:27:06+00	2020-05-25 08:27:06+00	jdhsiwhdidjdidjd@hotmail.com
2183	61	christophe meierhans	Molenbeek	artist	\N	612fd767508e80aa452d7101df41cd9d	t	2020-05-24 06:59:12+00	2020-05-24 06:59:26+00	tof@contrepied.de
5048	60	Olivier Menalda	1180	\N	\N	e87b42b81928b6126ce9a1fa09df839e	t	2020-05-29 06:50:53+00	2020-05-29 06:51:51+00	\N
2184	61	charlotte kellner	ixelles	\N	\N	4c79260ace3be584ae17bba42f768104	t	2020-05-24 07:01:19+00	2020-05-24 07:03:03+00	\N
2076	60	Sylvie Detaille	forest	Employée 	\N	93d3332637fdf5d86f27ac9c7f15f8a9	t	2020-05-23 18:56:07+00	2020-05-23 19:16:57+00	\N
2218	61	Tomeu mir 	Bruxelles	Adm. Publique	\N	4dd38a5dbcfbd7686b73bc56a10841d1	t	2020-05-24 08:22:17+00	2020-05-25 15:00:18+00	\N
2185	60	Filippo Gagliardi 	Bruxelles 	Fonctionnaire	Research executive agency 	3a5e3c65effb70772fad66d468ee6cda	t	2020-05-24 07:04:35+00	2020-05-24 07:09:46+00	\N
2092	62	Charlotte k	Brussel 	1080	Familie 	fc4bae9e853db75d458cf5d1db5e91ac	f	2020-05-23 19:19:30+00	2020-05-23 19:19:30+00	\N
2220	62	Karin Besançon 	Kraainem 	Funcioneer	\N	eed8ba8a41e88eb2c07c0ba6760edd42	t	2020-05-24 08:25:19+00	2020-05-26 03:31:47+00	\N
2093	60	Jaumaux	Bruxelles 1180	ENSEIGNANTE	\N	e7f30af43d67aea2144e0d3c2f909d0a	t	2020-05-23 19:19:51+00	2020-05-23 19:20:20+00	myriamjaumaux@hotmail.com
2104	60	Michaël Boland	Auderghem	\N	\N	bbd2c6cf8a5a84376d4976dc01a00310	f	2020-05-23 19:51:44+00	2020-05-23 19:51:44+00	michael.bokand@b-all.be
2186	62	Stef Venken	Brussel	\N	\N	fc7428d6244e06921083d371991720b2	t	2020-05-24 07:10:03+00	2020-05-24 07:10:29+00	stefvenken@hotmail.com
2106	61	Paul Kreutzkamp	Brussels	CEO	Next Kraftwerke Belgium BV	63c13a67047e4364cece1288eabc5ba4	f	2020-05-23 19:52:38+00	2020-05-23 19:52:38+00	aul.kreutzkamp@gmail.com
2187	60	Cristina Brailescu	Bruxelles 	Parent	cbrailescu@gmail.com	3fcbfd00e62493d07d1de7fd5e972b33	t	2020-05-24 07:10:33+00	2020-05-24 07:10:44+00	cbrailescu@gmail.com
2108	60	Clémence Dethier	Bruxelles	social	\N	3880b3c2810238b05b3d22534580d986	t	2020-05-23 19:53:41+00	2020-05-23 19:53:58+00	\N
2109	61	Michelle Toft	Bruxelles	Employée	\N	cf8583c81f732e2c3abf88351e10e3c9	t	2020-05-23 19:54:30+00	2020-05-23 19:56:40+00	\N
2112	60	Thomas Rodrigues Pereira	Lasne	Senior Manager	Rbfa	b8a182cb60f3c80c4aa15a2e4c1e3d6f	f	2020-05-23 20:07:14+00	2020-05-23 20:07:14+00	\N
2113	61	Tara Connolly	Ixelles	\N	\N	d5712641b84902790c22997e3146275d	f	2020-05-23 20:07:26+00	2020-05-23 20:07:26+00	taconnol@hotmail.com
2114	60	Chaïma Tahiri	Bruxelles 	\N	\N	98c14353d88f177f319b545cb44c2302	f	2020-05-23 20:08:01+00	2020-05-23 20:08:01+00	\N
2189	60	Luc Vekemans	Uccle	\N	\N	49d993510e85737ad01aea60db542208	f	2020-05-24 07:16:17+00	2020-05-24 07:16:17+00	\N
2115	60	gilles debrun	1190 - Forest	architecte	\N	f731134882222beeeaa3d5a770f18fdb	t	2020-05-23 20:11:44+00	2020-05-23 20:12:56+00	\N
2116	62	Els van Waeg	1150 St.P.Woluwe	\N	\N	7ad175eaacfb20ef7fa83c06aeb10b3e	t	2020-05-23 20:17:03+00	2020-05-23 20:17:39+00	elsvanwaeg@gmail.com
2190	61	Alison ABRAHAMS	Brussels	\N	\N	88b9be940821a0c5b35df2f22186ce18	t	2020-05-24 07:16:20+00	2020-05-24 07:26:20+00	\N
2117	60	Claire Wilmart	Bruxelles 	\N	\N	b0798bfd2fc8350d7b0b702ed2b1fac5	t	2020-05-23 20:25:16+00	2020-05-23 20:26:18+00	clairewilmart@hotmail.com
1904	60	Petit sebastien	1200	Citoyen	\N	b809c368235b5e97dc3f1ec8a9992e9f	t	2020-05-23 13:36:36+00	2020-05-24 07:28:22+00	sebpti@gmail.com
2118	60	Chantal BOYART	Bruxelles	\N	\N	fbaae41f16b65e131ade76e3dbd3f1b8	t	2020-05-23 20:30:49+00	2020-05-23 20:32:04+00	chantal.boyart@hotmail.com
2119	61	Suzanne Pinder	1050	Teacher	European school of Brussels 	3d243b0fab24c5ad4f9673066a8e0504	t	2020-05-23 20:34:14+00	2020-05-23 20:34:38+00	suzanne.pinder@gmail.com
2194	60	sylvie jottrand	woluwe-saint-pierre	employée	\N	51df6f9cf2a914d8ee941d7f70abbc68	t	2020-05-24 07:29:32+00	2020-05-24 07:32:44+00	jottrandsylvie@yahoo.fr
2120	60	Eloïse Dhuy	Auderghem	\N	\N	5b564226dbc788912c4ecc8b53a83cf0	t	2020-05-23 20:34:50+00	2020-05-23 20:35:15+00	\N
2123	60	Audrey Speyer	Ixelles	\N	\N	8a936fe1a5dbd1285b55132723b8668a	t	2020-05-23 20:45:54+00	2020-05-23 20:46:33+00	audreyspeyer@gmail.com
2124	60	Alexandre Vandermeersch	Bruxelles	\N	\N	bc15bfb898b8fd4e88046a3e13eadc05	t	2020-05-23 20:47:23+00	2020-05-23 20:47:37+00	\N
2126	60	Claire Hilgers	Bruxelles	Graphiste	\N	59c8f1fc35415ffca1e3f8ecf54f0786	t	2020-05-23 20:49:57+00	2020-05-23 20:51:13+00	claire.hilgers@gmail.com
2127	61	Philippe Seidel	Etterbeek	volunteer	GRACQ Etterbeek	4069723605acd3307fa1c87f06ce1df8	f	2020-05-23 20:51:33+00	2020-05-23 20:51:33+00	\N
2188	60	Hannes Müller	Bruxelles	\N	\N	84079ad583f4ab51e88454ef810b4b6e	t	2020-05-24 07:14:32+00	2020-05-24 09:52:13+00	\N
2141	60	Dechamps	Watermael-Boitsfort	\N	\N	76699631a2d980a4e3085eecd4b2bd24	t	2020-05-23 21:27:21+00	2020-05-24 12:09:56+00	\N
2129	61	Katrien Debrock	St.P.Woluwe	\N	\N	0d2ee11dcf559cc491f072b914eba83e	t	2020-05-23 20:53:55+00	2020-05-23 20:55:28+00	katrien.debrock2@gmail.com
2105	60	Michaël Boland	Auderghem	\N	\N	b07684f2d8ce77ba7865b09a9e9d838d	t	2020-05-23 19:52:38+00	2020-05-23 20:57:16+00	\N
2143	62	Freia Van Hee 	Schaarbeek 	Citizen 	\N	0f0632858017db85caaad66824e95d34	t	2020-05-23 21:32:10+00	2020-05-24 16:01:23+00	\N
2130	60	la grange	bruxelles	\N	\N	085db85232965a15b3cb3f7861cbd0d9	t	2020-05-23 20:57:40+00	2020-05-23 20:58:07+00	\N
2139	61	jan jongbloet	Brussel	\N	1980	75ecfd8b22201ec23b67cf3cc1a7d874	t	2020-05-23 21:26:58+00	2020-05-24 16:25:56+00	\N
2131	61	Matteo Ordinanovich	Etterbeek	\N	\N	24b091525aaf2afec524b53c258252a6	t	2020-05-23 21:12:43+00	2020-05-23 21:13:14+00	\N
2133	61	Natalia ALONSO 	BRUSSELS	\N	\N	d41c551ce61793d6b3650ece4f233379	t	2020-05-23 21:17:52+00	2020-05-23 21:18:18+00	alonso.natalia@gmail.com
2134	61	Sandra Ramos	1190	Communication	\N	8a7d911704e4b286cf6fa55e34ebdc3c	f	2020-05-23 21:20:16+00	2020-05-23 21:20:16+00	\N
2135	60	Barbara Mester	Woluwe st Lambert	Employé 	Commission Europeenne	f48068c45933a68fd6ffdc2fc6677475	f	2020-05-23 21:21:14+00	2020-05-23 21:21:14+00	arabrab.retsen@gmail.com
2136	60	nathalie schmitz	schaerbeek	employée	\N	2048596cfca53c988877e6c9994d2ff3	t	2020-05-23 21:22:15+00	2020-05-23 21:22:47+00	nathalie.schmitz1@gmail.com
2128	60	johana	Etterbeek	bénévole gracq etterbeek	gracq	665732c281739f08c5058f52d769cf4e	t	2020-05-23 20:53:20+00	2020-05-23 21:23:23+00	\N
2140	61	Miguel Exposito	Brussels	Civil servant	European Commission	e8a5c9b38707de3d45c7bb31d97a9a4b	t	2020-05-23 21:27:09+00	2020-05-23 21:27:26+00	\N
2137	60	Froidbise	Watermael-Boitsfort	\N	\N	129579d5b6204444eec59f91046f3433	t	2020-05-23 21:25:39+00	2020-05-23 21:28:14+00	anka.froidbise@gmail.com
2142	61	Vinciane Biernaux 	Brussels 	\N	\N	0c33c9e4001679b800656c28c4390891	f	2020-05-23 21:29:17+00	2020-05-23 21:29:17+00	vbevy33@gmail.com
2147	60	Barbara Mester	Woluwe st Lambert	Employé 	EU Commission	10db81501a0ad4f2411f051286e439c2	t	2020-05-23 22:02:54+00	2020-05-23 22:03:22+00	arabrab.retsem@gmail.com
2107	61	Mascha Peters	Brussels 	\N	\N	cfa091a58d31cd8885e9104391315ef7	t	2020-05-23 19:53:35+00	2020-05-23 22:12:23+00	\N
2151	59	Bart Fransen	Schaarbeek	\N	\N	0c1d3d10897fd0405f3c0499706ca4d0	f	2020-05-23 22:14:49+00	2020-05-23 22:14:49+00	\N
2152	60	Pierre Olbrechts	Auderghem	retraité	\N	60a721b42eae9cde22b569edf20c6b5b	t	2020-05-23 22:26:39+00	2020-05-23 22:27:22+00	pierre.olbrechts@gmail.com
2153	60	Giulia Carboni	Saint-Gilles	Employée	\N	43f54d458a316fc34d6375f0beda16df	t	2020-05-23 22:29:21+00	2020-05-23 22:29:48+00	\N
2154	61	Sara martelli	Bruxelles	Employee	\N	83dfa53bd30d48205860fddc8d9075b5	t	2020-05-23 22:32:43+00	2020-05-23 22:32:56+00	\N
2923	62	DEBLANDER BENEDICTE 	Forest	Psychologue	\N	992f61c042fd6c7a8bfa8a459697977c	t	2020-05-25 08:26:52+00	2020-05-25 08:27:14+00	benedicte.deblander@gmail.com
4815	60	Lecomte Laura 	Evere 	Éducatrice 	\N	74560999886a679f1a0c094db134ee78	f	2020-05-27 17:09:58+00	2020-05-27 17:09:58+00	aura.lecomte@gmail.com
2256	61	Hilgers Anne 	\N	\N	\N	eb0b3c01f06374b592a3061195eed0a9	t	2020-05-24 09:49:41+00	2020-05-24 09:51:23+00	\N
2271	60	Guillaume Szpirer	lot	place de la petite suisse 6A	\N	3f6ffa973474ceee71aedc37e9292d40	t	2020-05-24 09:55:13+00	2020-05-24 09:55:37+00	\N
2276	61	Ydris Dupin	Bruxelles	Indépendante 	\N	6b3a7c2fa3586d8e66cae775ce8f4a39	f	2020-05-24 10:02:39+00	2020-05-24 10:02:39+00	ydlis@hotmail.com
2275	62	Frodo Daems	Schaarbeek	Tv-maker	\N	752c7b6a4cd2ba6bf9b2c8107e436d39	t	2020-05-24 10:02:34+00	2020-05-24 10:03:39+00	frododaems@gmail.com
2273	60	Elena Dufour	Bruxelles	Sans	\N	d3c8e0fc09ac00874fcbf02ed73ef236	t	2020-05-24 09:57:13+00	2020-05-24 10:07:18+00	edufour2@yahoo.fr
2270	60	Jonas	Brussel	\N	Jonas	0ee1c67cc2ad4a117123a5ace934e324	t	2020-05-24 09:51:04+00	2020-05-24 10:10:38+00	\N
2279	61	Kate Concannon	Brussels	\N	\N	407b5e9826d27cdc7446e784d28d08c6	t	2020-05-24 10:19:43+00	2020-05-24 10:20:09+00	\N
2281	60	Lemaitre	Bxl	\N	\N	489e098aa4dd6f48419ad8aa98526850	t	2020-05-24 10:21:56+00	2020-05-24 10:24:31+00	aglemaitre@skynet.be
2282	62	Elodie Pagaud	Brussel	Freelance	Pomme	f6f5f0ca51c937153e8ee9031c28db0c	t	2020-05-24 10:26:09+00	2020-05-24 10:26:42+00	info@elodiepagaud.com
2284	60	Benjamin Torrini 	Bruxelles 	\N	\N	be16d5f8d49b041a89978a12ab7dcf40	t	2020-05-24 10:26:51+00	2020-05-24 10:27:09+00	\N
2283	60	De Boeck Bénédicte	Ixelles	ergothérapeute	\N	ef53001a1d0793504134e6dbacb99eba	t	2020-05-24 10:26:35+00	2020-05-24 10:27:17+00	b.deboeck@outlook.com
2288	60	Delpech	1050	\N	\N	036e57778e3f4ce692532c5e59847b87	t	2020-05-24 10:33:05+00	2020-05-24 10:33:19+00	\N
2278	62	Aude Goovaerts	Schaarbeek	Burger	\N	855d54cd2b9c715ce62e3c10704b9cfd	t	2020-05-24 10:08:58+00	2020-05-24 10:33:20+00	\N
2289	61	Erika Duarte Ebers	Ixelles	\N	\N	5e0e5c9fa0c2c3541a4a4a2c599d971f	t	2020-05-24 10:34:14+00	2020-05-24 10:34:52+00	\N
2290	60	Isabel nogueras	Bruxelles	Styliste	\N	6399b414baf0f3c2a3b74f56e0db1ccf	f	2020-05-24 10:35:06+00	2020-05-24 10:35:06+00	isatio@hotmail.com
2285	60	Vanden Berghe 	Bruxelles	Ostéopathe 	Sans	5a8a7facc7253dba3325154c7f3b146e	t	2020-05-24 10:30:27+00	2020-05-24 10:35:19+00	marcouille.vdb@gmail.com
2291	61	Olivier Beys	Molenbeek	\N	\N	d46454da906c8f9a9b338eaa53f0a2be	t	2020-05-24 10:40:06+00	2020-05-24 10:40:23+00	\N
2274	60	Romain Poirier	Ixelles	\N	\N	427c8e57492adfb106b503144fd3c454	t	2020-05-24 10:02:25+00	2020-05-24 10:42:07+00	\N
2286	60	Alexis Gautier	Brussel	H	\N	4b39a4f731af767caf898bde3b18aee8	t	2020-05-24 10:30:46+00	2020-05-24 10:43:55+00	\N
2292	62	Katrien Vansteenkiste	Jette	\N	\N	bdb8147d111d31c528696e4981bec524	t	2020-05-24 10:45:01+00	2020-05-24 10:45:53+00	\N
2293	60	Tonie De Waele	1030	instituteur	\N	508ab27a19939171cc2284e269f4aed3	t	2020-05-24 10:47:29+00	2020-05-24 10:48:00+00	\N
2294	61	Katleen Troch	Laken	\N	\N	abb09b54b8d84615bc842873e5629fd5	t	2020-05-24 10:49:05+00	2020-05-24 10:49:39+00	\N
2295	62	Chiara van REMMEN	Elsene	preventie-advisuer	\N	09d1233b8b5587f2219128627260b849	t	2020-05-24 10:54:10+00	2020-05-24 10:54:59+00	chiaravanremmen@gmail.com
2296	62	Lauwens Raphaël	Brussel	Logi	\N	4502ef6b273b31597811db1deda219c5	t	2020-05-24 10:54:31+00	2020-05-24 10:55:36+00	\N
2297	62	Paul Kreutzkamp	Ixelles	\N	\N	594f327f0b407a875c1bcaffc490ee94	t	2020-05-24 10:59:52+00	2020-05-24 11:00:27+00	paul.kreutzkamp@googlemail.com
2299	60	Fairbrother	Ixelles 	Fonctionnaire	Co	baec287eb5c19174ee17ce6c06fce364	t	2020-05-24 11:06:29+00	2020-05-24 11:07:14+00	\N
2300	61	Stéphanie De Smedt	Ganshoren 	\N	\N	1e4fdd04fcd2d0986978a308870eeeac	t	2020-05-24 11:11:49+00	2020-05-24 11:12:17+00	\N
2301	60	Muriel De viron	Koekelberg	Employée	\N	37cf79605cf9f9e7060bb0c0a6fc9a44	f	2020-05-24 11:15:24+00	2020-05-24 11:15:24+00	urieldeviron@gmail.com
2303	62	Anouk Vanherf	Jette	\N	\N	d2f0f3ba08499e372333237ab49ad72b	t	2020-05-24 11:17:38+00	2020-05-24 11:18:11+00	\N
2304	60	Hedwig houben	Schaarbeek	\N	\N	4907add5547118b8335714cda8e694cb	t	2020-05-24 11:21:56+00	2020-05-24 11:23:08+00	hedwighouben@gmail.com
2305	60	Michèle THIAM FONT	MARSEILLE	\N	\N	5244fb60e99caa1908f1173ee9e5bbdc	t	2020-05-24 11:22:50+00	2020-05-24 11:23:34+00	michelebi@laposte.net
2306	62	Barbara Uyttendaele	Jette	Key Account Manager	\N	b003fcc8a4ece50199d94b9183967fb1	t	2020-05-24 11:23:45+00	2020-05-24 11:24:24+00	b_uyttendaele@hotmail.com
2307	60	Agnieszka Jean Villanueva	1030	Employée 	\N	fa727a848a94ec3c02ea23e1b29eb716	t	2020-05-24 11:28:00+00	2020-05-24 11:28:21+00	dr_aga@hotmail.com
2308	62	Maarten Janssens	\N	\N	\N	0ed91a284634a328d7abd666fac31c61	t	2020-05-24 11:28:50+00	2020-05-24 11:29:09+00	\N
2309	61	Joke Cant	Jette	\N	\N	471a5d5374a464e1af086577000c988b	f	2020-05-24 11:31:03+00	2020-05-24 11:31:03+00	jokecant@hotmail.com
2280	60	beatrice Fagnart	bruxelles	pensionnee	\N	0ead4c6292620f3900816911f4d448bf	t	2020-05-24 10:21:13+00	2020-05-24 11:41:54+00	\N
2310	62	Deknudt Mark	Schoerbeik	Pensioen 	Sport voor Allen	4644749408488d14100d043ce18fa5cb	t	2020-05-24 11:40:20+00	2020-05-24 11:44:24+00	mark_deknudt@yahoo.com
2312	62	Cloé Marthe	Hoeilaart	artiste	\N	c700d992a650f19fd46dcd41ff965538	f	2020-05-24 11:46:44+00	2020-05-24 11:46:44+00	clo.matthe@gmail.com
2313	61	diana del olmo	bruxelles	consultant	1982	c439ce6d56a93dc213867a5812b594a5	f	2020-05-24 11:50:11+00	2020-05-24 11:50:11+00	diana.delolmo@gmail.com
2311	61	Laura	Berlin	\N	\N	42192019e5e4d2d411a2871ae2f08d45	t	2020-05-24 11:40:49+00	2020-05-24 11:50:46+00	\N
2315	60	SEGUY	Woluwe-Saint-Pierre	\N	\N	37a03550d65a254586c90a58cd2ca3ec	t	2020-05-24 11:54:07+00	2020-05-24 11:54:29+00	\N
2314	61	Audrey Grandjean	Bruxelles	policy officer	\N	c3e23db186e09a38f57b99ae7903937b	t	2020-05-24 11:53:32+00	2020-05-24 12:00:07+00	grandjean.audrey@gmail.com
2318	62	Seppe Vanheertum	Brussel	Gamen/huiswerk alen	Famillie schelfout/damman	f858159fc83dc89d557659f837b076b7	f	2020-05-24 12:05:37+00	2020-05-24 12:05:37+00	eppe.vanheertum@gmail.com
2319	61	CENDROWICZ Nicholas	Bruxelles	European Official	European Commission	b22b1ba55cfea03e1dfbaddb889413ba	f	2020-05-24 12:09:31+00	2020-05-24 12:09:31+00	era1@me.com
2320	60	Orobello Giuseppe	Schaerbeek 	\N	\N	0ddfbb782abd36e10e9f8b62adb473b3	f	2020-05-24 12:12:45+00	2020-05-24 12:12:45+00	\N
2321	60	Aline Schoentjes 	1170	Sage-femme 	\N	54378032c3426918108bbc1185d00f53	t	2020-05-24 12:15:47+00	2020-05-24 12:16:19+00	\N
2322	60	SANDRA FOL	Schaarbeek / Schaerbeek	\N	\N	146c9830f6b5a157ee37bb613f04f944	t	2020-05-24 12:21:49+00	2020-05-24 12:22:08+00	folsandra@gmail.com
2323	62	Pili Verbinnen	Brussel	student	youth4climate	4b7523f9c7553716f1a3696141492b5b	f	2020-05-24 12:23:20+00	2020-05-24 12:23:20+00	\N
2324	62	Van Damme Myriam 	Bruxelles	\N	\N	9da0f0f288f358512d4049ab5238a0b5	f	2020-05-24 12:23:43+00	2020-05-24 12:23:43+00	\N
2277	60	Didier Ropers	Rhode saint Genèse	\N	\N	174d55bdd74ed66252522d217e74805d	t	2020-05-24 10:08:04+00	2020-05-24 12:59:54+00	dropers@gmail.com
2317	61	Jacob 	Molenbeek	\N	\N	7ed37ee965a6999b8ac76d98a04d7032	t	2020-05-24 12:00:23+00	2020-05-24 13:38:56+00	\N
2272	61	Lara Hotyat	1050	\N	lhotyat@gmail.com	15dca34ff039046cd44c98cabfb089a8	t	2020-05-24 09:56:01+00	2020-05-24 16:08:13+00	\N
2316	61	Gloria	Schaerbeek	\N	\N	42772df792644fa3e3b8b39ca992d4cb	t	2020-05-24 12:00:15+00	2020-05-24 16:54:02+00	gloriabarilari@yahoo.ie
2298	61	Sylvain Courtois	1040	Social assistant	cpas st gilles	04ae560f33eb56ada0a41d9295c65028	t	2020-05-24 11:04:09+00	2020-05-24 19:58:13+00	\N
2325	62	Georges Köller	Uccle	\N	\N	c9ccba1b204c0ec732424680423fc4dc	t	2020-05-24 12:24:26+00	2020-05-24 12:24:45+00	georgesk@satelliteindustries.com
2326	60	Verstraete-Van Damme	\N	\N	\N	72310ee713c0240ed40ceee5f76fbdc9	f	2020-05-24 12:26:12+00	2020-05-24 12:26:12+00	\N
4814	61	Penelope Turner	Brussels	Musician	Self employed	1ea345dbe59af830315fbe59ba6f152c	t	2020-05-27 17:08:55+00	2020-05-27 17:15:45+00	penelope.turner@telenet.be
2328	62	Bas Schevers	Schaarbeek	Leraar	\N	1040504c9a704be5b35c03257be0485b	f	2020-05-24 12:32:15+00	2020-05-24 12:32:15+00	basschevers@gmail.com
2329	60	Martine vanrolleghem	Schaarbeek	Psychologue	martinevanrolleghem@gmail.com	c3d4454a6721dae2273b81a22b836e6c	t	2020-05-24 12:36:03+00	2020-05-24 12:36:53+00	\N
3845	62	Lore	Anderlecht	\N	\N	7ee5ba1ba82e2f1cfcf4ac87e13d8bb6	t	2020-05-25 18:11:38+00	2020-05-25 18:12:17+00	\N
2330	61	Myrthe Dreesen	Schaarbeek	Administratief bediende 	myrthedreesen@hotmail.com	65020cc3a652bd492ddf3194e5961f40	t	2020-05-24 12:46:19+00	2020-05-24 12:47:09+00	myrthedreesen@hotmail.com
2331	61	Remo Moro 	Bruxelles	Software engineer	\N	b1d747f7450faa1ff36c618ba592b630	f	2020-05-24 12:50:58+00	2020-05-24 12:50:58+00	\N
2371	62	Nina de Vroome	Brussels	\N	\N	1e03f6684f129670e4beaef1f7592ce5	t	2020-05-24 16:05:16+00	2020-05-25 09:54:14+00	\N
2332	60	Marie-Gabrielle Gailly	Bruxelles	psychologue	Cliniques universitaires Saint Luc	e3e1952ed49a0de61e208e12a03862bc	t	2020-05-24 12:54:29+00	2020-05-24 12:55:03+00	gaby.gailly@gmail.com
2349	60	Piero	Ixelles	\N	\N	147b0e481535f8830b65679c6347d03c	t	2020-05-24 14:23:27+00	2020-05-25 09:56:00+00	\N
2333	60	Robert Thomas	Woluwe-Saint-Lambert 	\N	\N	fd090f9a2bad2f74e908996ba6898e7b	t	2020-05-24 12:58:50+00	2020-05-24 12:59:22+00	rejthomas@talk21.com
2925	60	Lucie Richard	Saint-Gilles	Sage femme 	\N	5b085dff294dcec4dbe2992d9b05e9f9	t	2020-05-25 08:27:37+00	2020-05-25 10:07:45+00	mademoisellerichard@gmail.com
2334	60	Yves Gaffarel	Schaerbeek	citoyen	\N	106a7c3971a78e9d5b0630edc84ebf4e	t	2020-05-24 13:11:36+00	2020-05-24 13:11:56+00	\N
2372	61	Sophie Feyder	\N	\N	\N	5f5d38695dcfe208998a1d81e4e48f7f	t	2020-05-24 16:06:11+00	2020-05-25 15:37:26+00	sophiefeyder@yahoo.com
2335	60	Dimitrios Bolis	Etterbeek 	Fonctionnaire	Commission Européenne 	ebd6029fc4aa55d44aebd15ceba4f709	t	2020-05-24 13:18:01+00	2020-05-24 13:18:20+00	\N
2336	61	Saskia Sessions-Puplett 	Brussels 	\N	\N	e9dc35c440a19beb1bb946e169835208	t	2020-05-24 13:26:07+00	2020-05-24 13:26:22+00	\N
2339	60	Geneviève Boxus	Schaerbeek 	\N	\N	b615ff75fb1afda3d79c0ca2ddf7f0e8	t	2020-05-24 13:30:45+00	2020-05-24 13:31:39+00	\N
2340	60	Christian Carleer	Bruxelles	\N	Page & Image SPRL	698e9ff0eca3557f4867558e2bd96b54	t	2020-05-24 13:31:40+00	2020-05-24 13:32:36+00	page.image@skynet.be
2338	60	Poncelet	Genval	Citoyen	Personnel	0585fa9ad4040e0c3f89cca7b4489ee6	t	2020-05-24 13:30:42+00	2020-05-24 13:33:06+00	jean.marc.poncelet@gmail.com
2342	60	Catherine 	\N	\N	Barbellions	861fde60bc41179bba1cb6e1ada2d1f0	f	2020-05-24 13:34:46+00	2020-05-24 13:34:46+00	catherine.struman@gmail.com
2345	61	David Loos	Schaerbeek	Security officer	\N	7c1b1410f88beaa586ba8d5c097f6b88	t	2020-05-24 13:42:56+00	2020-05-24 13:43:14+00	\N
2343	60	Myriam De Spiegelaere	Berchem-Ste-Agathe	\N	\N	71290d146906b4cf5b2e016296e99107	t	2020-05-24 13:36:56+00	2020-05-24 13:52:35+00	mdespieg@yahoo.fr
2341	60	Philippe ABEL	Bruxelles	architecte	\N	369cd627799f2ca58805b3e31f9e3564	t	2020-05-24 13:33:39+00	2020-05-24 13:56:11+00	phabel@skynet.be
2347	60	Jean-Claude Van Soest	Schaarbeek	\N	\N	8ab9bb6663461f29c5788d93bb65b1d7	t	2020-05-24 14:06:27+00	2020-05-24 14:14:23+00	jcvansoest@telenet.be
2351	60	Nicodeme Hayois	Ixelles	\N	\N	392f86ee396ad77e3f67be8c130f0ec8	f	2020-05-24 14:35:30+00	2020-05-24 14:35:30+00	\N
2350	60	Tanguy Mezzano	Bruxelles	informaticien	\N	7fa69bbaf1fe15b957fcade59ab8bbb1	t	2020-05-24 14:34:11+00	2020-05-24 14:39:47+00	tanguy.mezzano@gmail.com
2352	62	Ruddy VERBINNEN 	Schaarbeek 	Brusselaar	Planeet aarde 🌍 	8bd62fda14f57b179e1b771b383ba4f1	f	2020-05-24 14:40:12+00	2020-05-24 14:40:12+00	\N
2353	61	Vincent Vasseur	Schaarbeek	Citizen	\N	5885cfffad2d4849b9b441568d16f14e	t	2020-05-24 14:45:46+00	2020-05-24 14:46:54+00	\N
2354	60	du Bois Xavier	1950	Cadre	\N	b26d87b2b1f5bc9c745457ba2e740d98	f	2020-05-24 14:47:27+00	2020-05-24 14:47:27+00	dubois.xavier@gmail.com
2355	62	Aline Muylaert	Schaarbeek	Co-Founder	CitizenLab	98e9d92a099e560b7db10e1516d6b3c1	t	2020-05-24 14:58:20+00	2020-05-24 14:58:43+00	amuylaer@gmail.com
2356	61	Mireille Lamot	Jette	\N	Kinderdagverblijf Windekind	7a04d40a46e0b01b37c2f1ad5d2542fa	t	2020-05-24 15:03:22+00	2020-05-24 15:05:20+00	\N
2357	60	mussche	1190	designer	\N	cd40ff5672ac3b0007f7a1ecd8194bbf	t	2020-05-24 15:05:47+00	2020-05-24 15:06:18+00	\N
2359	59	Martha Vandermeulen	Saint-Josse-ten-Noode	étudiante	\N	55fd0b0eedb58edfc23675a305af21d7	f	2020-05-24 15:25:12+00	2020-05-24 15:25:12+00	\N
2360	60	Tim Cassiers	Schaarbeek	Inhabitant	\N	2bae6c92d107ae8f4583ddaf7f586bd8	t	2020-05-24 15:26:27+00	2020-05-24 15:26:47+00	\N
2361	62	Karolina Grudzien	Bruxelles	architecte	\N	b84ba9090c6995e0ef657b08aa0cde03	t	2020-05-24 15:30:28+00	2020-05-24 15:31:42+00	karolina.grudzien@gmail.com
2363	60	An Leveugle	Oudergem	\N	\N	91480be5a276dfa64a8dbe16af1b6995	t	2020-05-24 15:37:54+00	2020-05-24 15:38:36+00	\N
2364	60	Rute Carneiro	1180	\N	\N	95e3cfe338c2ae9fdfce308032a7860b	t	2020-05-24 15:41:06+00	2020-05-24 15:43:20+00	rutecarneiro@yahoo.com
2358	60	Louisa Pueschel	Bruxelles	citoyenne	\N	bf88357c711adba6fe09314293e92ceb	t	2020-05-24 15:15:45+00	2020-05-24 15:43:24+00	louisa.pueschel@mailbox.org
2365	61	Colette Victor	Koekelberg	Project coördinator	vzw Welzijnszorg	7eb77d43ae02b75889051261c3187346	t	2020-05-24 15:48:33+00	2020-05-24 15:49:56+00	colettevictor@hotmail.com
2337	60	anouk decupere	bruxelles	enseignante	\N	56ad999a7992bff80fd40ce7ee7e0742	t	2020-05-24 13:28:13+00	2020-05-24 15:50:37+00	\N
2366	60	Marianne samray	Court St etienne	Retraitee	\N	7d64b6fc14531821454704382d8bb9b5	t	2020-05-24 15:55:53+00	2020-05-24 15:56:18+00	marianne.samray@belgacom.net
2367	60	Jakob Smets	Jette	Manager	\N	e81ce7c17e7456d5d40c7110a18056bb	t	2020-05-24 15:58:28+00	2020-05-24 15:59:35+00	\N
2370	60	Mazen Al Swakha	1030	Father	\N	c3d6edd4af9dbb0ae41709009a5735f7	f	2020-05-24 16:04:52+00	2020-05-24 16:04:52+00	\N
2369	61	Lotta de Meulenaere	Schaarbeek	Inwoner 	\N	2d71ea57c9e251620df2d0ec903871f3	t	2020-05-24 16:02:06+00	2020-05-24 16:06:47+00	lottademeulenaere@hotmail.com
2375	62	Ilias Al Sawalha	Schaarbeek 	School student	Sint Joost aan zee	9037ee97e593f3fb09029bb6bb76f297	f	2020-05-24 16:07:38+00	2020-05-24 16:07:38+00	\N
2376	61	Michel D	1150	\N	\N	13ffb3228de536d5def7ba79884bc620	t	2020-05-24 16:09:37+00	2020-05-24 16:10:23+00	\N
2377	60	Eric Verheyden 	Ganshoren 	\N	\N	12cb0d1c44a7e27f5b04cea085d2a43b	t	2020-05-24 16:10:08+00	2020-05-24 16:10:30+00	\N
2378	61	Antonia Vorner	St Gilles	ECO SOCIAL DESIGNER	\N	b413e7f407e12b9a7bc50bb787b80978	f	2020-05-24 16:14:04+00	2020-05-24 16:14:04+00	ntonia.vorner@gmail.com
2380	60	Louis Lammertyn	Molenbeek	C	Converde	e0d5be9876be0efba52cf76f0a9d256c	t	2020-05-24 16:17:22+00	2020-05-24 16:18:16+00	lp_lammertyn@hotmail.com
2348	62	Godelieve Everaert	1160	\N	\N	4abcabdade59a2408b6680dff677f3f7	t	2020-05-24 14:11:48+00	2020-05-24 16:44:33+00	lieve_ever@yahoo.com
2362	61	Diego Luna Quintanilla	Vorst	Urbanist	Cakri.org	6cf0bf8ed43601f601f4f7fd439fb211	t	2020-05-24 15:34:50+00	2020-05-24 16:44:37+00	\N
2381	60	Sien Verstraeten	Schaarbeek	Fotograaf	\N	d67f44f06afdcb2646b8169b4929c866	t	2020-05-24 16:20:18+00	2020-05-24 18:54:46+00	\N
2382	60	Arrabito Thomas	Le Roeulx	Vendeur vélo	Décathlon	fe5b90b8803df59c059394bdce83890c	f	2020-05-24 16:21:36+00	2020-05-24 16:21:36+00	thomas.arrabito@outlook.com
2368	62	Jasmijn Van Raemdonck	Schaarbeek	Teacher	\N	e6ef3edd814602f9c64d4696dc020eb6	t	2020-05-24 16:01:24+00	2020-05-24 16:22:44+00	jasmijn.vanraemdonck@hotmail.com
2414	60	Célestine Charlier	Bruxelles	Chômeuse	\N	83b399becc9b3255f48e30744015fcca	t	2020-05-24 16:55:03+00	2020-05-25 08:20:26+00	\N
2383	62	Linh Ngu	Schaerbeek	\N	\N	65c3657304565d99fd7600c8d619900a	t	2020-05-24 16:22:57+00	2020-05-24 16:23:13+00	\N
2384	61	Thomas Huard	Schaerbeek	salarié	SFP	f2877e256f95316ec30628494a64856b	t	2020-05-24 16:26:08+00	2020-05-24 16:26:42+00	thomas.huard@gmail.com
2413	60	Martin	Etterbeek	Architecte	Osmos	53a029ca6ae569c5ca1b98decc40c7e6	t	2020-05-24 16:54:35+00	2020-05-25 09:34:42+00	martin@osmosnetwork.com
2385	61	Mary Stokes	Brussels	 	\N	26f0e51f4ac897a416c882fe4e7380cc	t	2020-05-24 16:27:37+00	2020-05-24 16:28:30+00	\N
2429	60	Bavo	Koekelberg	\N	\N	1d8afdce6614876521fa7ec0cb4231aa	t	2020-05-24 17:28:41+00	2020-05-26 08:40:29+00	\N
2386	61	Gertje Elsocht 	Schaarbeek 	\N	\N	74b734c65aa9ee3676503f169ceee29c	t	2020-05-24 16:28:39+00	2020-05-24 16:28:59+00	\N
2419	61	Margot Ghysels	Vorst	Interiordesigner	\N	5a68e84a8867dc6e8355961b6d9fa2af	t	2020-05-24 17:05:07+00	2020-05-26 09:52:50+00	\N
2387	60	Alain Dierick	Bruxelles	designer	\N	e7d3aeaf1005284a6f17ff11647d92f8	t	2020-05-24 16:29:11+00	2020-05-24 16:30:32+00	\N
2390	62	Delplanche	Brussel 	Bediende	\N	ac6ba6f22716de899256793ff160a4df	t	2020-05-24 16:33:17+00	2020-05-26 14:38:42+00	\N
2437	61	Ludmilla Biebuyck	Brussels	\N	\N	b8db31f8de0ae2ec52b65734e1213f81	t	2020-05-24 17:37:52+00	2020-05-28 04:52:42+00	\N
2389	60	Jérémie Lambin	Bruxelles	Indépendant 	Freddy met curry	4e5bcc3ac8471b4ab680bae25ab47bc5	t	2020-05-24 16:31:32+00	2020-05-24 16:31:52+00	\N
2388	61	Tommaso Emiliani	Ixelles	\N	EIT Food	fdc464de51d6cb6ce987bbc99ae2a6d8	t	2020-05-24 16:31:02+00	2020-05-24 16:31:55+00	\N
2391	61	Tine Vleugels	Brussels	\N	\N	585cc7f0141aad95ce131158f1282131	t	2020-05-24 16:34:40+00	2020-05-24 16:35:03+00	tinevleugels@gmail.com
2392	62	Kevin Smets	Etterbeek	\N	\N	c1e3687813bc2d2b7fa16f93d3a5f290	t	2020-05-24 16:36:33+00	2020-05-24 16:36:50+00	\N
2393	62	Yara De Smet	Brussel	Studente 	\N	a0828124503fd27de128a2b3cba1a9aa	f	2020-05-24 16:37:01+00	2020-05-24 16:37:01+00	yara.desmetrene@hotmail.com
2394	62	Bert Voorjans	\N	\N	\N	4bfab0512af2c20094fedd0f723bfd62	t	2020-05-24 16:37:24+00	2020-05-24 16:37:33+00	\N
2395	61	Mathias Martens	Koekelberg	\N	\N	aa6e644ac523f21a4b2a13128485c374	t	2020-05-24 16:38:16+00	2020-05-24 16:38:47+00	\N
2398	62	Yara De Smet 	Brussel 	Studente 	\N	378b1d7f816630940499ea998a190e58	f	2020-05-24 16:39:42+00	2020-05-24 16:39:42+00	yara.desmet@atheumbrussel.be
2400	62	Karel vandewiele	Elsene	Bediende	\N	04a374c9f41817230bc9255c83752305	f	2020-05-24 16:40:29+00	2020-05-24 16:40:29+00	\N
2399	62	Beatrice Basile 	Brussel 	Kine 	\N	3d4ecfc4c8fd4be7dcdbd5f0a48b8657	t	2020-05-24 16:40:28+00	2020-05-24 16:41:08+00	beatrice.basile@gmail.com
2401	60	Arnaud vancampenhout 	1410	Employé 	Decathlon	134a24c75e2c03426e39ee2c3d5cea9f	f	2020-05-24 16:46:25+00	2020-05-24 16:46:25+00	rnaud.vancampenhout@gmail.com
2402	60	Arthur Charlier	Bruxelles	Chômeur	\N	b0668bcd02c4b93e85391948fdef944f	t	2020-05-24 16:47:23+00	2020-05-24 16:48:12+00	\N
2405	62	Hannah D.	Schaarbeek	\N	\N	1c0f90e621f189e29b1b6a3bcf6660a0	f	2020-05-24 16:48:56+00	2020-05-24 16:48:56+00	\N
2379	61	Kati van de velde	Brussels	\N	\N	1b86aebbcd1c02a68a261aa5fa20d5d4	t	2020-05-24 16:14:04+00	2020-05-24 16:49:32+00	\N
2404	61	Leia Achampong	Brussels	Senior Policy Officer	\N	4728bfb0f4f1ee1b693cff2486a5fd08	t	2020-05-24 16:48:18+00	2020-05-24 16:49:42+00	leianoituke@gmail.com
2406	60	Ariane Dewandre 	Jette	\N	Employée 	5c18d00e5d90f04211ef0d156e8e6cc4	f	2020-05-24 16:50:03+00	2020-05-24 16:50:03+00	\N
2407	60	Maria Helene Louwrier	Schaarbeek	Inwoner	\N	a38e65df5707b8471c00d849a2eae678	t	2020-05-24 16:50:57+00	2020-05-24 16:51:09+00	\N
2409	60	Lou Gonda	Bruxelles	Chômeuse	\N	ab76fa62e1ca6f0f365999ef25298e92	t	2020-05-24 16:51:19+00	2020-05-24 16:52:22+00	\N
2410	62	Pieter Thibaut	Schaarbeek	\N	\N	4e3f44eba5abfe5523631ba2a7b30f35	t	2020-05-24 16:51:45+00	2020-05-24 16:52:26+00	\N
2412	60	Célestine Charlier	Bruxelles	Chômeuse	\N	89a0cde63d37be2a3c49a32115285b2c	f	2020-05-24 16:54:00+00	2020-05-24 16:54:00+00	\N
2411	62	Lydia Merckx 	Brussel	\N	\N	089284725fb525b866c19f82f59ddbc9	t	2020-05-24 16:53:47+00	2020-05-24 16:54:26+00	lydieishere@gmail.com
2416	62	Tobe Baeyens	Brussel	\N	tobebaeyens@gmail.com	573606671f223ff96e72acd59c7d4af2	t	2020-05-24 16:57:55+00	2020-05-24 16:58:28+00	\N
2417	62	wim boussemaere	brussel	manager	\N	3e1072f770aeca5fd11f8594ea30c737	t	2020-05-24 16:58:50+00	2020-05-24 16:59:04+00	\N
2415	62	Nele Willems 	Brussel	Zorgsector 	\N	1d4ca816fefd3b9f44d309bbd64be419	t	2020-05-24 16:55:41+00	2020-05-24 17:02:34+00	\N
2418	60	lardinois	bruxelles	mecanicien vélo	\N	5604395157aeb8e0d8dd638907dcba3d	t	2020-05-24 17:04:37+00	2020-05-24 17:04:54+00	romain22lardinois@gmail.com
2420	61	Gavino Murgia	Schaerbeek	\N	\N	d43ea81a6736bc314fa9f4ed184ff03c	t	2020-05-24 17:05:39+00	2020-05-24 17:06:26+00	\N
2421	61	\N	\N	\N	\N	1a8b272d3dc7e7f96ac68adfc110df75	t	2020-05-24 17:08:46+00	2020-05-24 17:09:12+00	bettina.appel@proximus.be
2422	61	Camille Venturini	Ixelles	\N	\N	789eff69b29a8009795e00c22595d3fa	t	2020-05-24 17:09:39+00	2020-05-24 17:10:41+00	camille.venturini@hotmail.fr
2424	62	Damien	Schaerbeek	None	None	37302aded2e564eb0d968ca7a0d1773f	t	2020-05-24 17:14:05+00	2020-05-24 17:14:36+00	damien.paternotte@gmail.com
2425	60	Carmen Vandermolen	Brussel	\N	\N	44bbe9aedfacef58135b33e9bf602a7d	t	2020-05-24 17:18:37+00	2020-05-24 17:19:13+00	carmenvandermolen@msn.com
2426	60	Mia	Bruxelles 	Écolière 	École 	f3a788367a536a5279e5fc9ac7ed238d	t	2020-05-24 17:19:12+00	2020-05-24 17:19:46+00	\N
2427	61	Leveugle Erik	Oudergem	\N	\N	0f7aae24ee471d245ae40c8e78b2e5d2	f	2020-05-24 17:21:45+00	2020-05-24 17:21:45+00	\N
2428	60	Steven Declerck	Sint-Pieters-Woluwe	\N	\N	b9f54e86f1f2c86eeafeee24f785fb58	t	2020-05-24 17:21:57+00	2020-05-24 17:24:00+00	\N
2430	60	Camille Testard	Ixelles	Coordinatrice de lieu	Communa	0464c657b5e80443cfa7628004053dd5	t	2020-05-24 17:30:10+00	2020-05-24 17:30:25+00	\N
2431	60	Seppe Vanheertum	Brussel	Gamen en huiswerk maken	Famillie Schelfhout/Damman	bc74f6f4643afa5fc301133332662cd3	f	2020-05-24 17:32:13+00	2020-05-24 17:32:13+00	eppe.vanheertu@gmail.com
2432	61	Barbara De Laet	Schaarbeek	Consultant 	\N	1c1f11fa275f0552c8b72919609b7ebc	t	2020-05-24 17:32:47+00	2020-05-24 17:33:00+00	\N
2434	60	Niels	Brussels	Gaming	Famillie vanheertumschelfhout	40b0bc0f0171a92c81dae47e34a37a72	t	2020-05-24 17:35:01+00	2020-05-24 17:35:56+00	\N
2439	59	Jan Demuynck	brussel	schade expert	1967	f47ea12126f66d1faa6b9fa0e8472bc2	t	2020-05-24 17:39:46+00	2020-05-24 17:40:31+00	\N
2441	60	carlos courtois	etterbeek	\N	\N	7eb9c5d82e75bd4db5ad26ec711b4dfc	f	2020-05-24 17:43:56+00	2020-05-24 17:43:56+00	\N
2440	62	Broekaert Pieter	1081	Bouw	\N	597f0726537acd74f477fc3ce2df9b68	t	2020-05-24 17:40:41+00	2020-05-24 18:05:53+00	pieterbroekaert@gmail.com
2397	61	Ellen Mauritzen	Woluwe-Saint-Pierre	\N	\N	bfbee124869a1711471c554755001f0a	t	2020-05-24 16:39:11+00	2020-05-24 19:07:01+00	\N
2433	60	chivan shoani	etterbeek	\N	\N	ca38943c445a1c96a8487648a2cfb703	t	2020-05-24 17:33:34+00	2020-05-24 19:30:07+00	\N
2403	60	Stéphanie Perrini	Etterbeek	Architecte	\N	388ad59564ba4541b5f473ed266f1201	t	2020-05-24 16:48:11+00	2020-05-24 21:51:05+00	\N
2438	62	Seppe Vanheertum	Brussel	Gamen en huiswerk maken	Famillie Schelfhout en Damman 	59ead1f9418666266cc2433a9dc1af67	t	2020-05-24 17:39:10+00	2020-05-24 17:44:49+00	\N
2929	61	Albert	Brussels	\N	\N	54211381461b5740e3c5a8eaea71410c	f	2020-05-25 08:28:39+00	2020-05-25 08:28:39+00	\N
2927	62	Véronique Swerts	Brussel	\N	\N	af9dd2a7f246968dea58162d7748eb5a	t	2020-05-25 08:28:24+00	2020-05-25 08:28:51+00	veronique.swerts@gmail.com
2443	61	Nele Carlier	Koekelberg	\N	\N	3fcae9b86eca78fef068a86f616a6710	t	2020-05-24 17:46:07+00	2020-05-24 17:47:32+00	carliernele@gmail.com
2444	60	Jordens Kilian 	BRUXELLES	Vendeur Sportif	\N	74bc1fa2d0ffc930d01f9ac47159c8f6	t	2020-05-24 17:47:25+00	2020-05-24 17:53:37+00	kilian.jordens@gmail.com
2928	61	Sophie Ahlswede	Brussels	EC official	European Commission	53dfa32432372f8626de3717868d4a2f	t	2020-05-25 08:28:27+00	2020-05-25 08:29:00+00	ahlswede@protonmail.com
2453	62	Jan Smeets	Jette	\N	\N	61568b922c778ccdf7bb73d374e004b9	t	2020-05-24 18:10:33+00	2020-05-24 18:10:55+00	jan-smeets@skynet.be
3847	62	Martje	Schaarbeek	\N	\N	d25680d385960295865d3fbef9ad699c	f	2020-05-25 18:12:15+00	2020-05-25 18:12:15+00	\N
2930	61	Marian Lodewijckx 	1030	\N	\N	0726a761332fd2ebcb0b3de5490ee153	t	2020-05-25 08:29:02+00	2020-05-25 08:29:56+00	marian.lodewijckx@hotmail.com
2932	62	Arne winderickx	Koekelberg	\N	\N	b771a065fab6bb04579a8e26b40249e9	f	2020-05-25 08:30:25+00	2020-05-25 08:30:25+00	\N
2937	61	Dorothy 	Schaerbeek	coach & poet	Oger & Partners	71ab93c798d31df1795c05d256c97592	f	2020-05-25 08:32:21+00	2020-05-25 08:32:21+00	dorothy.oger@gmail.com
2939	61	Sven Dammann	Brussels	\N	\N	68f07862538a47fc62376aa7474ae8bb	f	2020-05-25 08:34:05+00	2020-05-25 08:34:05+00	sven.dammann@gmail.com
2940	59	Stefan Jille	Etterbeek	Bewoner	\N	1313d2ea773a77b1c2ea7612c9392063	t	2020-05-25 08:34:30+00	2020-05-25 08:35:00+00	\N
2933	60	Angelo Giuseppe De Michele	Bruxelles	\N	\N	70cf1ff17447aa6ea1c3eea86d2bf138	t	2020-05-25 08:30:30+00	2020-05-25 08:35:27+00	cerebro84@gmail.com
2941	62	Arne Smeets	Ganshoren	\N	\N	fa6a7f7e6fa1ead11f68a4003c7c3552	t	2020-05-25 08:36:23+00	2020-05-25 08:36:40+00	\N
2943	62	Noemie Craven	Ixelles	\N	\N	3bf3c442f6634842b66b61855bd9b886	t	2020-05-25 08:37:58+00	2020-05-25 08:38:23+00	noemie.craven@gmail.com
2942	62	Emma op de Beke	Anderlecht	Huisarts	\N	02460a046092fd057023bb75de3b5654	t	2020-05-25 08:37:26+00	2020-05-25 08:41:27+00	\N
2953	62	Joren Vuylsteke	Brussel	\N	Joren Vuylsteke 	8a6cb1c1ac045efeabcd3e1552d4e3e3	t	2020-05-25 08:44:26+00	2020-05-25 08:44:43+00	\N
2954	62	Ben De Raes	Brussel	\N	\N	a782df0dfedd5ca253810ccd6159d114	f	2020-05-25 08:44:44+00	2020-05-25 08:44:44+00	\N
2955	61	Inês Prates	Uccle	\N	\N	1e7d16a9577a2f68364f39b5291839e6	t	2020-05-25 08:44:50+00	2020-05-25 08:45:11+00	\N
2957	61	Evan Green	1050 Brussels	Acoustics Consultatn	\N	0e674f6a258586352462f29444f2a5c5	t	2020-05-25 08:45:49+00	2020-05-25 08:46:59+00	e.b.r.green@gmail.com
2938	62	Maarten	Bxl	\N	\N	49406391b31ee4cff72fe7e26528d452	t	2020-05-25 08:32:29+00	2020-05-25 08:49:45+00	\N
2992	62	marieke lagrou	sint-gillis	Opbouwwerker	\N	23f9dfdc659f38b6873a1f4455958801	t	2020-05-25 09:12:28+00	2020-05-25 09:16:46+00	\N
2982	60	Wauter Temmerman	Brussel	Werkend	\N	df1a19a9984edd204aeb7c57937350d2	t	2020-05-25 09:09:49+00	2020-05-25 09:16:50+00	\N
3002	62	Rose-May Liebaert	St. Jans Molenbeek	gepensioneerde maatschappelijk werkster	Hart boven Hard 	4af0826dde0f46aad66da4fad8052501	t	2020-05-25 09:17:12+00	2020-05-25 09:17:37+00	rosemay.liebaert@gmail.com
3004	62	Laura De Keyzer	\N	\N	\N	dda24607d082b4c09290e900965b0fa0	t	2020-05-25 09:19:19+00	2020-05-25 09:19:49+00	laura.de.keyzer2@gmail.com
3003	62	François Cooremans 	Chaussée Charleroi 112	Consultant 	World of digits	2bc564e4cc0bbe349db711b0fc91f9df	t	2020-05-25 09:18:33+00	2020-05-25 09:21:41+00	fra.cooremans@gmail.com
3015	62	Mart Gronheid	Brussel	\N	\N	4ef7c31633c3c46de9302346b3553e02	t	2020-05-25 09:23:52+00	2020-05-25 09:24:24+00	\N
3026	60	Nguyen	Bruxelles	Secrétaire	\N	88da6f87742c0122331442e4162a60c9	t	2020-05-25 09:28:53+00	2020-05-25 10:02:27+00	duynguyen@laposte.net
3094	60	Lizette Nagy	St Gilles	\N	\N	67d5d1ccece06cb5520cc8ccd568c192	t	2020-05-25 10:08:22+00	2020-05-25 10:09:00+00	\N
3095	60	Caroline Gevers	Wezembeek	\N	\N	be74090c98a8011a65b03ec5c2f1a9fd	t	2020-05-25 10:08:41+00	2020-05-25 10:09:01+00	\N
3093	61	John Hyland	Schaerbeek	\N	\N	413ace378b253e21bc4cf6d7e0e61003	t	2020-05-25 10:08:01+00	2020-05-25 10:12:16+00	johnaidanhyland@gmail.com
3126	62	Charlotte Vermeyen	Brussel	Leerkracht	\N	c392fb7be1fd221547c0ff5f4855ed71	t	2020-05-25 10:25:50+00	2020-05-25 10:26:13+00	charlottevermeyen@hotmail.com
3127	61	Lennert Broekaert	brussels	developer	\N	56f425d0d9edb7beec4805d38d229f2d	f	2020-05-25 10:26:41+00	2020-05-25 10:26:41+00	lennert.broekaert@gmail.com
3128	62	Beatriz Pérez 	Sint Jans Molenbeek 	Architect stedenbouwkundige	\N	95380e14cffab6288f4f02b9bda3b2c8	f	2020-05-25 10:27:14+00	2020-05-25 10:27:14+00	\N
3129	61	Hannah Vanbelle	Sint-Joost	\N	\N	d2baca20df721ee743d074b5994313df	t	2020-05-25 10:27:42+00	2020-05-25 10:27:56+00	\N
3125	60	Marie-Christine Mahieu	Watermael-Boitsfort	Formatrice	Année	cf4d6ab8f50bc5fb8bf6347932fcf5b1	t	2020-05-25 10:25:46+00	2020-05-25 10:30:12+00	mahieuchristine@hotmail.com
3137	61	Jasper Vleugels	\N	\N	\N	ba6a8dd9ffd0ca59f72c02987e8f7e2c	t	2020-05-25 10:30:37+00	2020-05-25 10:31:17+00	\N
3136	62	Bert Jacobs	Sint Gillis	Bediende	\N	35e47791984d3e5f9711277bcddc59a6	t	2020-05-25 10:30:36+00	2020-05-25 10:31:29+00	bert.jacobs@gmail.com
3138	61	Nuria	1000	\N	\N	b9eb2e61acfcf0cbb09e9cd38f231e33	t	2020-05-25 10:31:08+00	2020-05-25 10:32:28+00	\N
2971	62	Vanden eynde 	\N	\N	\N	5260db58d8b84dde1abbf241d54f5568	t	2020-05-25 08:57:46+00	2020-05-25 10:32:39+00	oli4vde@gmail.com
3141	62	Dieter Vandebroeck	SCHAARBEEK	\N	\N	71395235d355a404ca6785f513c1b1c2	f	2020-05-25 10:33:56+00	2020-05-25 10:33:56+00	dieter.vandebroeck@vub.be
3140	60	Baillien Carole	Bruxelles	Comédienne	\N	7ad7a6579ef8d7e1e38c761fff68f5ae	t	2020-05-25 10:33:43+00	2020-05-25 10:34:00+00	carolebaillien@yahoo.fr
3142	62	Ciska Langmans	Schaarbeek	arts	\N	65b91034adc82e60c30eb88d3a6829cd	t	2020-05-25 10:34:19+00	2020-05-25 10:34:45+00	\N
3143	62	Lawrence Foley	Brussel	\N	\N	8c5ce5397dcc16e8d37a526c479bf3da	t	2020-05-25 10:34:31+00	2020-05-25 10:35:22+00	lawrence_foley@hotmail.com
3144	62	Francis	1000	\N	\N	61f7d5fb9d3a3da91ba731571cec6ddf	f	2020-05-25 10:35:24+00	2020-05-25 10:35:24+00	\N
3181	60	Lauriane Milis	Etterbeek	\N	\N	1e3929a83b5a711c0e99b08061c40bd3	f	2020-05-25 10:57:56+00	2020-05-25 10:57:56+00	\N
3179	61	Gert Van Der Plas	Anderlecht	\N	\N	a1ed351c9c9cb91e4c4dab2d64318207	t	2020-05-25 10:57:27+00	2020-05-25 10:58:14+00	gert_vdp@hotmail.com
3183	60	Noorbergen 	1310	\N	\N	f5993349a3285b7901583f5685288a03	t	2020-05-25 10:58:30+00	2020-05-25 10:58:59+00	\N
3184	61	Alexis Valenzuela Espinoza 	Sint-Gillis 	\N	\N	317a0d9b2c9e72d160247dfa6f76b4d1	f	2020-05-25 10:59:06+00	2020-05-25 10:59:06+00	avalenzu1050@gmail.com
3145	61	Minna Manninen	St Gilles	\N	\N	05af32fb1bbafc9a7e8383f34b19ebbb	t	2020-05-25 10:35:45+00	2020-05-25 11:35:12+00	\N
3273	61	Allen Jones	Ixelles	professor	\N	e423da3e47aa07bba078bb5707e72678	t	2020-05-25 11:45:06+00	2020-05-25 11:46:51+00	\N
3135	60	Malcolm Diricq	Bruxelles	Fonctionnaire	État Belge	9d12e36984092767c5db671d9d20717d	t	2020-05-25 10:30:12+00	2020-05-25 12:22:23+00	diricqmalcolm@mail.be
3180	62	Stefanie Schmidt 	Elsene	\N	\N	4a4a78d7db1e4d2f78204c86001ee22f	t	2020-05-25 10:57:49+00	2020-05-25 13:56:12+00	\N
2442	61	Gillis Veldeman	Brussels	Musician	\N	5e10615f97930ad23f83545d55dd3616	t	2020-05-24 17:45:54+00	2020-05-25 17:45:33+00	\N
2445	60	Martin Hellicnx	Bruxelles	Etudiant	\N	a33f39adf27c2c877c2964a4d81bfa1b	t	2020-05-24 17:48:45+00	2020-05-24 17:48:56+00	\N
4816	60	Andras Schwarcz	Woluwe-St-Pierre	\N	\N	fe22d7059d04208ecbe5a0c056792499	t	2020-05-27 17:17:11+00	2020-05-27 17:18:07+00	\N
2447	60	Nguyen	1210	MBD Assistant	N/A	86c8f05bbe7deee55a347d1d84f8840b	f	2020-05-24 17:52:00+00	2020-05-24 17:52:00+00	\N
2931	59	Tobe Baeyens	Brussel	\N	\N	3d32a9769ab1bc27bd1663308f4e1253	t	2020-05-25 08:29:51+00	2020-05-25 08:30:12+00	\N
2448	60	Luc Fache	Bruxelles	étudiant	\N	0485ead6d46e10f6caf2730eef4949d8	t	2020-05-24 17:53:17+00	2020-05-24 17:53:35+00	lucfache@gmail.com
2934	62	Koen Weverbergh	Overijse 	Engineer	\N	1865bd6c8cc4c6b65dc1be5f5fa95906	f	2020-05-25 08:31:07+00	2020-05-25 08:31:07+00	\N
2449	60	Florian	Ixelles	Fonctionnaire	\N	6a36893b45eca7ab30615223522efe9b	t	2020-05-24 17:55:52+00	2020-05-24 17:56:06+00	\N
2450	62	Elisabeth De Raeymaecker	Brussel	Bediende 	\N	55c2493dcca47f40321c5ab332fadc9c	f	2020-05-24 18:05:10+00	2020-05-24 18:05:10+00	\N
2491	60	Andries Robijns	Laken	\N	\N	d17ac44f8e161f8e88eed4aa351ec1e3	t	2020-05-24 19:09:24+00	2020-05-31 11:25:46+00	\N
2451	61	Door Smits	koekelberg	Architect	\N	24b85919cd624ed8e01421137ae6209b	t	2020-05-24 18:05:17+00	2020-05-24 18:05:36+00	doorsmits@gmail.com
2452	62	Marc Vandermolen 	Anderlecht 	\N	\N	d753f36985b3d2a6ef965ed0251890d4	t	2020-05-24 18:08:20+00	2020-05-24 18:08:41+00	vandermolen_7@icloud.com
2454	62	Ellen Vandevenne	Laken	\N	\N	413fcd3be3da9c7fa810cef303360a7a	f	2020-05-24 18:17:22+00	2020-05-24 18:17:22+00	\N
2455	62	Francoise Bolle	Laherie	11 Motechet	\N	4c3b88aac70f8d5ebddc7c70c3a44355	t	2020-05-24 18:19:48+00	2020-05-24 18:25:03+00	\N
2456	61	astrid galliot	BRUXELLES	\N	\N	7fcec918b544bc13957df85989e89e79	t	2020-05-24 18:22:36+00	2020-05-24 18:25:25+00	astrid.galliot@gmail.com
2459	60	Elise Vermuyten	Anderlecht	Leerkracht 	\N	902fe9e802804fe58a49679a99033676	f	2020-05-24 18:26:01+00	2020-05-24 18:26:01+00	\N
2460	60	Isabella LANG	1060	\N	\N	f7834b4148bcd73c5c407e31e21d02ba	f	2020-05-24 18:26:07+00	2020-05-24 18:26:07+00	\N
2461	61	Anne rombaut	Anderlecht 	\N	\N	72f7a9537a96c4cba4214fbfeb0bb64d	f	2020-05-24 18:27:09+00	2020-05-24 18:27:09+00	anne.rombaut@outlook.be
2457	62	Elise Vermuyten	Anderlecht	Leerkracht	\N	35962ee3b2bc8546fd3ff6e38c1df75f	t	2020-05-24 18:24:51+00	2020-05-24 18:27:15+00	\N
2168	62	Thomas Arnold	Bruxelles	Civil servant	European Commission	a90f714c1e0bbabf993aa1b6e83180d5	t	2020-05-24 04:25:04+00	2020-05-24 18:33:30+00	thomas.arnold70@gmail.com
2463	62	Anne Rombaut	Brussels 	\N	\N	0d83e2405d66b89a84a2fb12ee7b1a4b	t	2020-05-24 18:32:15+00	2020-05-24 18:33:55+00	anne.rombaut@outlook.com
2464	61	Benjamin Steegen	Sint-Jans-Molenbeek	Researcher	\N	c6ec3fb57b18dbd60105b091dd5087a4	f	2020-05-24 18:34:28+00	2020-05-24 18:34:28+00	\N
2465	61	Annika Lenz	Brussels	\N	\N	b47a0706550725815ef1503dcbb55626	t	2020-05-24 18:36:15+00	2020-05-24 18:36:40+00	\N
2467	60	Poncin André 	6840	Retraité	\N	162813b22d015711fae852a310684f9f	f	2020-05-24 18:41:30+00	2020-05-24 18:41:30+00	\N
2468	62	Bart Palmaers	Brussel	\N	\N	feb1809fbdc5f49d255665ab1239ef4c	t	2020-05-24 18:41:57+00	2020-05-24 18:42:16+00	palmaers.bart@gmail.com
2466	60	Mathilde Henkinbrant 	\N	Juriste	\N	fe80c6ac6523370bad3b9a2b59411170	t	2020-05-24 18:41:20+00	2020-05-24 18:42:57+00	\N
2470	60	Brigitte Marchal	Ixelles	retraitée	\N	d2cd7ad1dabaa49f21d6858563ebeb53	t	2020-05-24 18:45:04+00	2020-05-24 18:47:40+00	\N
2472	60	karel Houdmont	9630	maraicher bio marchand a St gilles	Ourobouros cv	a16b9d20a8416fb3e4a2b15b2247fbf1	t	2020-05-24 18:48:30+00	2020-05-24 18:49:05+00	karel.houdmont@ourobouros.be
2469	62	Julie Debusschere	Brussel	\N	\N	0572c9bf3f6758e92e24ded1e014fbc9	t	2020-05-24 18:43:06+00	2020-05-24 18:49:31+00	juliedebusschere@yahoo.co.uk
2473	62	Gunther Slagmeulder	Brussel	\N	guntherslag@gmail.com	e6a07beb9812306eb1d755abb4c0e9ee	t	2020-05-24 18:50:14+00	2020-05-24 18:50:38+00	\N
2475	61	Lore De Vroede	Koekelberg	\N	\N	9eefba5795d9d82daea2706bce9d01d5	t	2020-05-24 18:50:45+00	2020-05-24 18:51:22+00	\N
2476	62	Garance Melin	Auderghem	leerar	Sainte Ursule 	aa2f06a24c3f6e82a9afc88403fbcad9	f	2020-05-24 18:52:33+00	2020-05-24 18:52:33+00	\N
2477	61	Jeroen	Jette	\N	\N	dc7e4dad937c4e413663a9713d34a5cc	f	2020-05-24 18:52:59+00	2020-05-24 18:52:59+00	jeroenplatteau@me.com
2478	61	Giuditta Formichi	\N	\N	\N	fc7099c6c789ba7968f1fe289ec7ac49	t	2020-05-24 18:53:10+00	2020-05-24 18:53:28+00	giuditta26@gmail.com
2479	60	Annelies De Coninck	Oudergem	O	\N	e6b79bc544c49146a007fa523faf7ae1	f	2020-05-24 18:53:55+00	2020-05-24 18:53:55+00	\N
2480	61	Ed Stow	Brussels	\N	\N	4e68c92b5092869cb3d9315889735e21	f	2020-05-24 18:54:31+00	2020-05-24 18:54:31+00	\N
2481	62	katerina daem	Sint-jans-molenbeek	Leerkracht	\N	db8544dba4a8797f791f895f1f92217b	t	2020-05-24 18:55:46+00	2020-05-24 18:56:16+00	katerinadaem@gmail.com
2482	60	Françoise Habousha	\N	\N	\N	0f78900e173c22b1b53d0a847ec9d6a2	f	2020-05-24 18:56:55+00	2020-05-24 18:56:55+00	fanfanhabousha@hotmail.com
2485	62	De Ryck	\N	\N	\N	7da7cc61cf95971c58dd6e4f784e9903	f	2020-05-24 18:57:17+00	2020-05-24 18:57:17+00	mahautderyck@yahoo.fr
2474	60	GRASSER	BRUXELLES	EMPLOYE	GROUPE ONE 	597b55f89af7f2e1ca18930e24cbd70a	t	2020-05-24 18:50:28+00	2020-05-24 18:58:57+00	\N
2446	60	Romain Weikmans	Ixelles	\N	\N	0c92153fd1ab5a840c217c4485bcabbb	t	2020-05-24 17:50:07+00	2020-05-24 18:59:31+00	\N
2458	61	Elodie Debaise	BRUSSEL	\N	\N	cb6c534b9924db42962ebadd66a7fbfe	t	2020-05-24 18:25:48+00	2020-05-24 19:01:51+00	\N
2484	60	Frederik Duym	Woluwe	Retired	\N	7e02d55012bf3fca22df18977a86710b	t	2020-05-24 18:57:16+00	2020-05-24 19:03:04+00	fduym-action@yahoo.com
2488	60	Chantal Desnos	\N	\N	\N	7167cdc95398b5bae49932d510aaad9a	t	2020-05-24 19:04:23+00	2020-05-24 19:05:10+00	chantaldesnos@hotmail.com
2490	62	Gautier Poncin	Libramont 	Employé	\N	7022d4230dc05e6b4b0eb7eb8f557b85	t	2020-05-24 19:04:59+00	2020-05-24 19:05:43+00	\N
2492	61	Anders Brunlid	Brussels	Teacher	\N	2b52ae657e70ca9ad8987765c4505ab6	t	2020-05-24 19:11:23+00	2020-05-24 19:11:41+00	\N
2494	62	Geert Vancauwenbergs	Brussel	Verpleegkundige	\N	7ddff2a937ae1d1454a7fadee6a19467	t	2020-05-24 19:14:12+00	2020-05-24 19:14:36+00	\N
2495	60	bertrand cavalier	bruxelles	photographe	\N	0106f225253b2eea421942a2ad242f60	t	2020-05-24 19:14:22+00	2020-05-24 19:14:55+00	\N
2497	61	Nathalie 	Brussel 	Psycholoog 	\N	df937da1f4d1e75fa8de5770c4f61863	t	2020-05-24 19:15:14+00	2020-05-24 19:16:23+00	nathaliebuysens@hotmail.com
2498	61	Anna Ulfsdotter Netus	Ixelles	\N	\N	8c51ce39fef0893ff0dd0ce96be8292e	t	2020-05-24 19:16:15+00	2020-05-24 19:16:40+00	\N
2486	60	Svetoslav Dimitriev	Schaerbeek	musicien	\N	e55fe028cdc2c6efa458a192231a996e	t	2020-05-24 19:00:22+00	2020-05-24 19:20:05+00	\N
1749	60	Peltier Marie	Bruxelles	Enseignante	Haute École Galilée 	fd36204a764b624e7140db6d3847a7b3	t	2020-05-23 09:39:19+00	2020-05-24 19:21:05+00	\N
2500	60	Cécilia Gondard	Etterbeek	ONGiste	\N	3c5affdaa9cdf843fa9de640fa8e1349	t	2020-05-24 19:22:01+00	2020-05-24 19:24:22+00	smilycecilia@yahoo.fr
2496	61	ALBERT BIEBUYCK	BRUXELLES	\N	\N	580f29e70769e8d13b9346cc3ba91d82	t	2020-05-24 19:14:26+00	2020-05-24 19:31:49+00	\N
2503	60	Astrid	Bruxelles	Etudiant	\N	bcf8ca3f67bbf1d572e55eca331fb681	f	2020-05-24 19:35:54+00	2020-05-24 19:35:54+00	\N
2499	62	Eddie Marcelis	Brussel	\N	\N	82f77db7df6f308361fad3c4ee78a912	t	2020-05-24 19:16:53+00	2020-05-24 19:40:35+00	\N
2462	62	Vicky Deschuttere	Vorst	\N	\N	6dab4be00a4c2fac2168381f26502511	t	2020-05-24 18:27:25+00	2020-05-24 21:40:36+00	vicky.deschuttere@gmail.com
2504	61	Louise Baduel	Ixelles 	\N	\N	e0887e6caac7486bbcad17d075242c2f	f	2020-05-24 19:36:53+00	2020-05-24 19:36:53+00	\N
2936	62	Ian Komac	Etterbeek	\N	\N	1e0af16e74b1e4d61094a764204752b8	f	2020-05-25 08:31:30+00	2020-05-25 08:31:30+00	\N
2507	62	Mattijs Van Bruwaene	Jette	\N	\N	d73a5646ba71a22be244d1e58513d960	f	2020-05-24 19:38:58+00	2020-05-24 19:38:58+00	ttijs.vanbruwaene@gmail.com
2501	60	Donatien de le Court 	Ixelles	Maître d'ouvrage logement 	\N	d9861c77d8ca5d16aa7267f2042f0c3b	t	2020-05-24 19:31:46+00	2020-05-24 19:39:02+00	donatiendelecourt@gmail.com
2505	62	Gino Herreman	Brussel	\N	\N	f5ca695992dd6fab8b89333220f8b48b	t	2020-05-24 19:38:20+00	2020-05-24 19:39:03+00	\N
2506	60	rener	bruxelles	artiste	\N	99d2ec94337c4fe92c1fb33a376d7f8f	t	2020-05-24 19:38:46+00	2020-05-24 19:39:55+00	julierener@yahoo.fr
2508	62	Birgit De Baere	\N	Kinesitherapie	\N	fd47f4e98f6a3a887ae41b34cc32aaf8	t	2020-05-24 19:39:35+00	2020-05-24 19:40:06+00	\N
2509	62	Joris Vandecruys	\N	\N	\N	b13fb6618b1910f9b67d663925866108	f	2020-05-24 19:42:33+00	2020-05-24 19:42:33+00	\N
2935	61	Luc Kuipers	Sint-Pieters-Leeuw	\N	\N	5988930411036c2563ba3e0da7f14082	t	2020-05-25 08:31:09+00	2020-05-25 08:35:04+00	luc.kuipers@skynet.be
2510	61	Maria Grazia Montella	Brussels	Project Manager	\N	8083d581b0b623c6f498bee0673e742a	t	2020-05-24 19:46:34+00	2020-05-24 19:47:03+00	\N
2511	61	Lynn	Brussels	Student	\N	87844aee605bdbd682082e28cbc6b1b5	f	2020-05-24 19:49:45+00	2020-05-24 19:49:45+00	\N
3848	62	sofie benoot	Brussel	\N	\N	1ce438f71af46d37e3fea2c13b5acf9d	t	2020-05-25 18:12:25+00	2020-05-25 20:46:14+00	\N
2513	61	Pierre Sibille 	Bruxelles 	Employed	\N	27584739fc8e96fe77c2075d5ba19085	f	2020-05-24 19:52:57+00	2020-05-24 19:52:57+00	\N
2512	61	Paeleman Elke	Vorst	\N	\N	ce2aa65206b9c82aabee6f925c8b9390	t	2020-05-24 19:52:54+00	2020-05-24 19:59:22+00	\N
2944	61	Laura De Mey	Schaarbeek	\N	\N	fdf151fc4243ec03d7333a8e161f32ae	t	2020-05-25 08:39:26+00	2020-05-25 08:39:55+00	\N
2535	60	Marc Vanooloon	Bruxelles	Professeur	/	e3f167f33eef4af7748555d8e7974495	t	2020-05-24 20:25:26+00	2020-05-28 12:00:17+00	\N
2522	61	Andrea Weber	\N	\N	\N	192a76042721662f47b2009e70b56517	f	2020-05-24 20:13:53+00	2020-05-24 20:13:53+00	andreazoeiweber@gmail.com
2945	62	Luna Cochez	Overijse	Student	\N	3dc1e9757a89c9b3179139deacf391e2	t	2020-05-25 08:40:43+00	2020-05-25 08:41:01+00	\N
2523	60	LESIEUR Jean-François	Tournai	\N	\N	fc0094449b0651e2b1f60f7cd33ce584	t	2020-05-24 20:14:07+00	2020-05-24 20:14:24+00	\N
2521	61	Rémy Zentar	Uccle	Dad of 3 children	Mr	9f101d28e9929aff282e3208fde4bdd6	t	2020-05-24 20:13:50+00	2020-05-24 20:15:00+00	remy@lepicerie56.com
2525	60	Maarten Depypere	Schaarbeek	\N	\N	82cef0a8be79a3b1cfeac71543a56cce	f	2020-05-24 20:18:51+00	2020-05-24 20:18:51+00	\N
2947	62	Claudia Schonborn	Forest	1190	\N	ae7f42d6c7b901d5a5d246f45a80ac3c	f	2020-05-25 08:41:25+00	2020-05-25 08:41:25+00	\N
2527	60	Fourneau Valerie	Bruxelles	Employee	Hub.brussels	ce3c9a58e54f2d34eec9a76d77d496e9	t	2020-05-24 20:19:12+00	2020-05-24 20:19:43+00	\N
2946	60	Marchant Valérie 	Bruxelles 	\N	\N	84412c9d337a31b8189ae662c6333b8c	t	2020-05-25 08:41:12+00	2020-05-25 08:41:37+00	\N
2528	60	Myriam Hilgers	Koekelberg	employée	\N	7262318406545644051a38ad0aa46535	t	2020-05-24 20:19:44+00	2020-05-24 20:20:20+00	myriamhilgers@hotmail.com
2526	60	De Visscher astrid	Wezembeek-Oppem 	Employee	\N	078b3f8c726e58d5962952d2513ae357	t	2020-05-24 20:19:04+00	2020-05-24 20:20:26+00	\N
2529	62	Anne-Charlotte Verduyn	brussel	arts	Umc Sint-Pieter 	2e6f9fcbbf6248924313a0279725a550	f	2020-05-24 20:20:42+00	2020-05-24 20:20:42+00	\N
2948	61	stijn roovers	Schaarbeek	\N	\N	06d9348bd09b6fe2af0caa1a0944ec77	t	2020-05-25 08:41:39+00	2020-05-25 08:41:52+00	stijnroovers@gmail.com
2534	60	Brigitte Brisbois	Schaerbeek	\N	\N	f8eb3945c17c2dd17644c5e90f3cb093	t	2020-05-24 20:25:20+00	2020-05-24 20:25:44+00	brigitte.brisbois@telenet.be
2949	62	Ellen De Vrieze	\N	\N	\N	f226f5464e04949ad4c69420db81332b	f	2020-05-25 08:42:28+00	2020-05-25 08:42:28+00	\N
2538	60	Cesar Seigneurgens	saint gilles	\N	\N	0d9aacccc04bd29c8526be4cc3d07584	t	2020-05-24 20:30:56+00	2020-05-24 20:31:14+00	\N
2533	60	Vanhecke Nicolas	Woluwé St Lambert	Employé	\N	1a7a5efa80f1eac8e4dd5af47d56fda8	t	2020-05-24 20:25:19+00	2020-05-25 04:50:45+00	nicolas.vanhecke@gmail.com
2950	60	Claudia Schonborn	Forest	medecin santé publique	ULB	da368f820e82a50b2f9274ddee9124d1	t	2020-05-25 08:42:43+00	2020-05-25 08:43:11+00	claudia.schoenborn@gmail.com
2916	61	Ansgar Wansing	1030 Schaarbeek 	Ingenieur	\N	efa8a53b69697adb0da1759ac53e7ca3	t	2020-05-25 08:23:48+00	2020-05-25 08:45:30+00	ansgar@wansing.eu
2951	62	Ellen De Vrieze	\N	\N	\N	aceb49ac93c2541a1df408b086412825	t	2020-05-25 08:43:07+00	2020-05-25 08:46:24+00	\N
2952	61	Josy Vandenbrul	\N	\N	josyvandenbrul@gmail.com	714bd247cb34d960321500e3cb8cfa12	t	2020-05-25 08:44:00+00	2020-05-25 09:14:04+00	\N
3017	61	Lisa 	Brussel	\N	\N	10a9f031d918463721512f2035d5e721	f	2020-05-25 09:25:58+00	2020-05-25 09:25:58+00	\N
3016	61	Hugo	Brussels	Economist	European Commission	9c19584661765db3910637cf729ee787	t	2020-05-25 09:25:53+00	2020-05-25 09:26:12+00	\N
3018	60	Neda Abiven	Brx	\N	\N	548e93a685ad8019d49df50713317561	f	2020-05-25 09:26:44+00	2020-05-25 09:26:44+00	\N
3020	62	Ellen thorisaen	Etterbeek	Student	\N	5a8a84d1b7f529ee6edac7165488e788	t	2020-05-25 09:27:44+00	2020-05-25 09:28:13+00	\N
3021	60	Louis Torres	Bruxelles	Project Manager	World of Digits	b15bf90cf582c58b9d95df59a7f62945	t	2020-05-25 09:28:05+00	2020-05-25 09:28:19+00	bxlouis@icloud.com
3022	62	Lisa Verschingel	Brussel	\N	\N	e911b45dfb9ffc6a849dd3f17d378699	t	2020-05-25 09:28:11+00	2020-05-25 09:28:37+00	\N
3023	60	\N	\N	\N	\N	c9b902b67997c9b3ec5b4bf7dd9f00b3	t	2020-05-25 09:28:12+00	2020-05-25 09:28:39+00	\N
3024	62	Karen De Buck	Schaarbeek	administratief bediende	Odisee	286c02ea17fc2df6cc608a491aad76c9	t	2020-05-25 09:28:14+00	2020-05-25 09:29:29+00	karensdocumenten@hotmail.com
3025	62	Jasmijn Helsen	Brussel	\N	\N	1b7cd5fd26177ef4322ec4a751849141	t	2020-05-25 09:28:24+00	2020-05-25 09:30:06+00	\N
3019	62	Denisa Moga	Brussels	Assistant	\N	abae34b90cddc2f38006abc7235d8ccf	t	2020-05-25 09:27:21+00	2020-05-25 09:30:16+00	\N
3028	62	Janne Ruszkowski	Schaarbeek	\N	\N	dff82ecdc61942b762ae51f38f87e87c	f	2020-05-25 09:31:47+00	2020-05-25 09:31:47+00	\N
3029	59	Erik Hulsbosch	Brussel	\N	\N	20c8f96c198eceac7169adbbe2ea59b1	t	2020-05-25 09:32:09+00	2020-05-25 09:32:28+00	\N
3031	62	Erik Hulsbosch	Brussel	\N	\N	f6b68fa5a04ff913166890be261e5679	t	2020-05-25 09:33:37+00	2020-05-25 09:33:57+00	\N
3034	62	Nathalie Vernimme 	Koekelberg 	Ambtenaar	\N	d92d709c052edecd5685aea2c6de6d75	f	2020-05-25 09:34:52+00	2020-05-25 09:34:52+00	\N
3033	62	Liesbeth Cromphout	Jette	Huisarts	\N	757d86d90812f2314db0abcda7aa6c4a	t	2020-05-25 09:34:10+00	2020-05-25 09:36:09+00	\N
3030	62	Sven	1070	Mens	\N	26a20a1b21fa98f0e8dfb7978ca2d65f	t	2020-05-25 09:33:33+00	2020-05-25 09:36:43+00	sven027@hotmail.com
3039	61	Willy Van Soest	Herent	\N	\N	37d1432bbca3a508fa05fa5d1fa63111	t	2020-05-25 09:39:54+00	2020-05-25 09:40:16+00	\N
3040	61	\N	N’djamena, Chad	Humanitarian worker	WFP	b2e5068aaed84e3b2f173cb262e7c88a	t	2020-05-25 09:40:37+00	2020-05-25 09:41:41+00	\N
3027	61	Wout Vincent	Molenbeek	Vessel supervisor 	JDN	e0426dce8577e6c43a2e8d6002f38f6a	t	2020-05-25 09:31:04+00	2020-05-25 10:02:35+00	wout.vincent@gmail.com
3097	60	lemaire julien	Schaerbeek	HR advisor	\N	c1f0c06bd3a8fc80d391434c0602be11	f	2020-05-25 10:09:17+00	2020-05-25 10:09:17+00	\N
3098	60	Claire Bourdet	Bruxelles 	Arriste	\N	2bd18de56535821130a4c3ce36c6f7d8	f	2020-05-25 10:09:31+00	2020-05-25 10:09:31+00	\N
3099	60	Xavier Gascuel	Bruxelles	\N	\N	92aef88149625a48943efcb470507698	t	2020-05-25 10:09:42+00	2020-05-25 10:10:20+00	\N
2515	61	Julien Vandichel 	Brussel	\N	\N	8617952ede0d5c6a725efec4722da663	f	2020-05-24 19:59:49+00	2020-05-24 19:59:49+00	julinvandichel@gmail.com
2516	62	Jan Vrijens	Brussel	\N	\N	061cf66abed2624475f45df575fd47e3	t	2020-05-24 20:04:11+00	2020-05-24 20:05:06+00	\N
2958	62	Nadia Naji	Molenbeek 	\N	\N	e7b2b182d3028a78fce1a99762d677d7	t	2020-05-25 08:46:34+00	2020-05-25 08:53:07+00	njinadia@gmail.com
2576	60	Elanor Gordenne	Schaerbeek 	\N	\N	379da4c51a8a7b9632bfd6cb95c05375	t	2020-05-24 21:05:21+00	2020-05-25 10:48:55+00	elanor.gordenne@gmail.com
2517	60	Arnaud Thysen	Bruxelles 	\N	\N	00841eb3b065dfa7f83d7f80d6619e23	t	2020-05-24 20:07:19+00	2020-05-24 20:09:21+00	arnaudthysen@yahoo.fr
2577	62	Guillaume Van Parys	Brussel	Stedenbouwkundige	\N	2bb2437b9aca2f9c2205225de6da8ac6	t	2020-05-24 21:06:50+00	2020-05-25 10:52:28+00	guillaume_vp@hotmail.com
2519	61	jaime  alsina	Brussels	\N	Mr	e633f1c28256f28660509ca981847e5f	t	2020-05-24 20:12:46+00	2020-05-24 20:13:26+00	jaime_alsina@hotmail.com
2558	60	Antoinette Lefevre Stevens	Uccle	consultante	\N	977c552cd5190d69732687da35d50c67	t	2020-05-24 20:48:08+00	2020-05-28 08:48:08+00	\N
2524	60	duthoit julien	Lille	web dev	\N	4d8fc1b0332d9d41a41e677588035df0	t	2020-05-24 20:17:18+00	2020-05-24 20:17:40+00	\N
2530	60	Lucia Aboutaoufik	Bruxelles	\N	\N	f4014754797f0fe8d52df706be96b8b4	f	2020-05-24 20:21:02+00	2020-05-24 20:21:02+00	\N
2531	60	Luana Bidasca	Ixelles	concerned citizen	\N	1ab7058dc9c4330c952905816b39b55d	f	2020-05-24 20:22:48+00	2020-05-24 20:22:48+00	luana.bidasca@yahoo.com
2532	62	Raf Deckers	Brussel	\N	\N	52209c6878298dcc12f161ffd72aaecd	t	2020-05-24 20:24:40+00	2020-05-24 20:24:53+00	deckersraf@gmail.com
2537	62	Jakke Meysmans	Vilvoorde	Student	VUB	bd014b7663500c89b70e2020df129f68	f	2020-05-24 20:27:12+00	2020-05-24 20:27:12+00	\N
2536	62	Erik Indesteege	Jette	\N	\N	7cf5d2bbe478e6f43e905bc2e52d9683	t	2020-05-24 20:27:08+00	2020-05-24 20:27:23+00	erik.indesteege@telenet.be
2539	61	circe lethem	1000	Actrice	\N	def03864fc06c4e759580683fd4cd9b0	t	2020-05-24 20:31:59+00	2020-05-24 20:32:20+00	circelethem@gmail.com
2542	60	Roland Jacobs	Zellik	Retraité	\N	2b4852c2f118f8d086d271fef7a458e3	f	2020-05-24 20:33:10+00	2020-05-24 20:33:10+00	\N
2540	62	Bruno Hardt	Jette	\N	\N	cc4d4b2d38a5e45ec7cbaa9f0a668769	t	2020-05-24 20:32:16+00	2020-05-24 20:33:25+00	bruno.hardt@icloud.com
2541	60	Claire schmitz 	Asse	\N	\N	07bbb1e6fea95b3f31f8310508821885	t	2020-05-24 20:32:58+00	2020-05-24 20:34:02+00	\N
2543	62	Martje Calliauw	Sint-Jans-Molenbeek	\N	\N	015357caa6273348a982f53c904727dc	t	2020-05-24 20:33:33+00	2020-05-24 20:34:20+00	tari_nariel_elendil@hotmail.com
2544	60	Isabelle Mestdagh	Brussels	\N	Wallonie-Bruxelles International	b9623ea91b31fca4587b6fc5da6a2b93	t	2020-05-24 20:34:59+00	2020-05-24 20:35:21+00	sainteisabelle@hotmail.com
2545	62	Tine Vermeiren	Molenbeek	\N	\N	5fc94208c45f101eeba6754ebf64e883	t	2020-05-24 20:36:52+00	2020-05-24 20:39:53+00	\N
2518	60	Nadia Lamhandaz 	Uccle	Ingénieur 	\N	667bbaff283c7281ba0bb83db8a44081	t	2020-05-24 20:08:17+00	2020-05-24 20:40:44+00	nadia.lamhandaz@gmail.com
2546	60	Yorik desmyttere	\N	\N	\N	d41c53ce740c7780a92cc8508a0caeeb	t	2020-05-24 20:40:38+00	2020-05-24 20:41:01+00	\N
2547	60	Hubert yves	Schaerbeek 	Paysagiste Urbaniste 	Atelier Caneva-s 	3caae09ff14fd9288707fddfe242a92b	t	2020-05-24 20:41:02+00	2020-05-24 20:41:58+00	hubert.yves@skynet.be
2548	60	CHANTRAIN, JEAN-HENRI	schaerbeeck	\N	Indépendant	f2c1c19acfde508367a126372904665e	t	2020-05-24 20:42:09+00	2020-05-24 20:42:42+00	jchkoala@gmail.com
2549	60	Verdier	Bruxelles	\N	\N	9a567a613201e601839f321e579cf13e	t	2020-05-24 20:42:17+00	2020-05-24 20:43:02+00	\N
2551	61	Torsten Mainz	Brussels	biologist	\N	81574aeefd7b410a52b1ce499ae6d487	t	2020-05-24 20:42:55+00	2020-05-24 20:44:03+00	torstenmainz@hotmail.com
2550	61	Olivia Lally	Brussels	Policy	\N	5afaf5245e554881dcba158016d111a2	t	2020-05-24 20:42:31+00	2020-05-24 20:44:05+00	olivia.lally@gmail.com
2553	62	Thomas Tetaert	Elsene	\N	Nmbs	782c0d0e9fd48d4578d98547fe1ad1d6	f	2020-05-24 20:45:11+00	2020-05-24 20:45:11+00	\N
2554	62	anny.van.lierde2@telenet.be	Etterbeek	\N	\N	099877b7ae952566f72a2af727875d5a	f	2020-05-24 20:45:53+00	2020-05-24 20:45:53+00	anny.van.lierde2@telenet.be
2555	60	Matthieu Virot	schaerbeek 	citoyen	\N	31e85602de28f1dd6715eef15e003577	t	2020-05-24 20:46:13+00	2020-05-24 20:46:28+00	\N
2556	62	Arnout Van Bruwaene	Vorst	Consultant	\N	32c4d11af25f98df2a21efc6afaf89bf	t	2020-05-24 20:46:47+00	2020-05-24 20:47:22+00	arnout.vanbruwaene@gmail.com
2560	62	Tim Vanderlinden	Koekelberg	\N	\N	1ba016232117beb653b06737dd45ebfb	f	2020-05-24 20:50:16+00	2020-05-24 20:50:16+00	\N
2502	62	Marilyn Smets	Brussel	\N	\N	074c0563f413be81808dbde463ab3647	t	2020-05-24 19:33:03+00	2020-05-24 20:52:53+00	marilyn_smets@hotmail.com
2563	62	Thim Vandecauter	Ganshoren	\N	1978	6d6cf52a9538e7a60fc6f4574d02053c	t	2020-05-24 20:55:04+00	2020-05-24 20:55:53+00	\N
2561	60	Sara Hoet	Watermael boistfort	\N	\N	5c98e03d645cec317986fe78723d82c4	t	2020-05-24 20:52:11+00	2020-05-24 20:56:00+00	hoetsara@yahoo.fr
2564	60	Thierry Jimenez	Schaerbeek	multimobiliste	\N	0e563b250138945205ff99e313e068c0	t	2020-05-24 20:57:54+00	2020-05-24 20:58:10+00	t.jimberg@gmail.com
2566	60	Julie Bollue	Hoeilaart	\N	\N	e1e88515c919ccca882a43cbff092bb7	f	2020-05-24 20:58:22+00	2020-05-24 20:58:22+00	julie_bollue@hotmail.com
2565	60	Verstuyf Yves 	Bruxelles 	\N	\N	f83d992d682a0b013d42418c4cea47e5	t	2020-05-24 20:57:56+00	2020-05-24 20:58:43+00	yves1000bxl@gmail.com
2567	62	Stijn Michielsen	Vorst	Jurist	Cultuurloket	6a7651c9fa596f070f77bf962b0b9512	t	2020-05-24 21:00:14+00	2020-05-24 21:01:30+00	stijn_michielsen@hotmail.com
2570	62	Bjorn Van Velthoven 	Elsene	Student	Ulb	91d9e7f7ec548dfa698d3b76fe50c610	t	2020-05-24 21:01:41+00	2020-05-24 21:02:43+00	vanvelthovenbjorn@gmail.com
2562	62	Hugo Vandenplas 	Molenbeek	/	/	788a77f34821311e65741c226a6c202c	t	2020-05-24 20:53:07+00	2020-05-24 21:02:57+00	\N
2573	62	Johan Limbourg	Elsene	\N	\N	6de894364625439f6cd158993c877a0c	t	2020-05-24 21:04:00+00	2020-05-24 21:04:40+00	johan.limbourg61@gmail.com
2571	62	Laurence Eggerickx	Schaarbeek	Legal adviser	\N	9d0d6ec8912c4190eb4fd17c808ad406	t	2020-05-24 21:03:16+00	2020-05-24 21:05:02+00	\N
2574	62	Els Dehantschutter 	Vorst 	HR 	/	320b70a9a0f9104d38405f1635abd767	f	2020-05-24 21:05:07+00	2020-05-24 21:05:07+00	\N
2569	61	Emma Ernsth	Ixelles	\N	\N	2488264c4ad462844970b88985ecde26	t	2020-05-24 21:01:01+00	2020-05-24 21:05:33+00	\N
2575	62	Ellen Jacobs	Molenbeek 	\N	\N	19c9fb91f7656a5d316c57df01287292	t	2020-05-24 21:05:08+00	2020-05-24 21:05:41+00	\N
2578	60	Julie Martineau	BRUXELLES	\N	\N	e824059791f5844cae6952da2909e5cc	f	2020-05-24 21:08:19+00	2020-05-24 21:08:19+00	julie.martineau@ulb.ac.be
2579	60	Olivier Jenard	Uccle	Secteur social	Croix rouge	eb89c4022f569bb5521086259020a734	f	2020-05-24 21:10:05+00	2020-05-24 21:10:05+00	ojenard@hotmail.com
2580	61	Steffen Elgersma	Schaarbeek	Ambtenaar	\N	15b2dbeebc39c69bfe1c9915bc8d432f	t	2020-05-24 21:10:07+00	2020-05-24 21:11:18+00	\N
2581	62	Nina Neumann	Uccle	\N	\N	edbeaa96a8c5f2104acd231c18198b80	t	2020-05-24 21:12:29+00	2020-05-24 21:13:01+00	ninaneumann@yahoo.de
2582	62	Bram Michielsen	1000	\N	\N	b1cd9cb2b9e050e3afbca75e40fb446c	f	2020-05-24 21:13:12+00	2020-05-24 21:13:12+00	\N
2585	61	Ilse Balis 	Diegem 	\N	\N	6e807eef63bb09d36ed18ffb1e8370a5	t	2020-05-24 21:18:46+00	2020-05-24 21:39:09+00	ilse.balis73@gmail.com
2552	60	Van  Lierde Anny	Etterbeek	\N	\N	80d44a9154ec618373f0c6b4d27247f8	t	2020-05-24 20:43:57+00	2020-05-25 05:40:28+00	\N
4817	60	Valentina	Forest	\N	\N	e87e5998d77453d172f87301cba7a312	t	2020-05-27 17:24:12+00	2020-05-27 17:24:29+00	\N
2583	62	Erika Sprey	Brussel	Curator, educator	Kaaitheater	d86b7523938962e21c7cfc0a6beb76fa	t	2020-05-24 21:17:18+00	2020-05-24 21:17:34+00	erika.sprey@kaaitheater.be
2584	62	Jorden V.	Brussel	\N	\N	16e3a1ebae8e2028a9b12546f605db99	t	2020-05-24 21:17:18+00	2020-05-24 21:17:42+00	jorden.vandeweyer@gmail.com
2959	61	Alice Bernard	Bruxelles 	Juriste	\N	c8a7b5cc0f55be6009737a125e4a2fa1	t	2020-05-25 08:47:10+00	2020-05-25 08:47:39+00	alicebernard2@gmail.com
2963	61	Reinout Vander Hulst	Elsene 	Historicus	\N	07096d8788b579d8dd76ca64aa8a796a	f	2020-05-25 08:50:22+00	2020-05-25 08:50:22+00	\N
2961	60	Irene Ingardi	Bruxelles	Chercheuse	Université Libre de Bruxelles	eb739d772bdbed91975c4e900dcbe568	t	2020-05-25 08:50:14+00	2020-05-25 08:50:52+00	ireinga@gmail.com
2964	61	Steven Sneiders	Laken	Insurance Underwriter	\N	193d6e1bcf338865a45227a5df8b78bc	t	2020-05-25 08:50:32+00	2020-05-25 08:50:54+00	\N
2962	62	Guy van den Heule	Brussel	leraar	\N	2959e2a5d143732ee142603c750b05b8	t	2020-05-25 08:50:18+00	2020-05-25 08:58:45+00	gvandenheule@gmail.com
3036	62	Raïssa Dhodnt	Sint-Jan-Molenbeek	educatief medewerker	Goodplanet	4b31799fc9d044697ae7e7dbf574df92	t	2020-05-25 09:38:19+00	2020-05-25 09:38:36+00	r.dhondt@goodplanet.be
3035	62	Veerle Lemaire	Jette	Leraar	\N	1ca44e6b51624b5f3f6f228a19aba85f	t	2020-05-25 09:38:12+00	2020-05-25 09:39:03+00	\N
3038	62	Charlotte lahousse	Koekelberg	Psycholoog	\N	3ee40e5bcebb9ecceac0c70c0ce2c2f0	t	2020-05-25 09:38:47+00	2020-05-25 09:39:06+00	\N
3037	62	Steven Vanhoren	Sint-Lambrecht-Woluwe	werkzoekende	\N	82eb3921912dfeb7bfc18c06f200449c	t	2020-05-25 09:38:26+00	2020-05-25 09:40:13+00	steven_vanhoren@hotmail.com
3100	60	Pit Klein	Ixelles	doctorant	ULB	24ed41e5d42a6b49783bb7e9bf2ecda9	t	2020-05-25 10:09:44+00	2020-05-25 10:10:09+00	\N
3096	60	Franz Dupont	ETTERBEEK	\N	\N	0d4b479195d8291c9ad4e35742fdcac0	t	2020-05-25 10:09:15+00	2020-05-25 10:10:12+00	\N
3101	61	Stephan Vandermolen	Etterbeek	Consultant	OLIVER JAMES ASSOCIATES	d786e04eac432f7939fa0a19509014c2	t	2020-05-25 10:11:01+00	2020-05-25 10:11:25+00	stephan.vandermolen.sv@gmail.com
3102	60	Francois Defourny	Bruxelles	Programmes Director	Plan International Belgium	89229b2ba6b50a2b1173db5b2f0221c5	t	2020-05-25 10:11:07+00	2020-05-25 10:11:41+00	defournyfrancois@yahoo.fr
3103	60	Giraud Hélène 	Bruxelles	Médecin. 	\N	d9cff73cb385c54c25146fd1d8accd46	t	2020-05-25 10:11:42+00	2020-05-25 10:12:54+00	\N
3157	60	Valentine DONCK	1970	\N	\N	3ebebb549faaee7c5c535f07c55cb0b9	t	2020-05-25 10:43:03+00	2020-05-25 10:43:35+00	valdonck@gmail.com
3158	60	Raoul Vandevelde	Roosdaal	\N	\N	7bdaf6a19b43cd4ae74be6b2958cfeb1	t	2020-05-25 10:43:20+00	2020-05-25 10:43:48+00	raoul.vandevelde@gmail.com
3159	60	Michel Balsat	Ixelles	Retraité	\N	296c1be9764705591825dbf655686409	t	2020-05-25 10:43:59+00	2020-05-25 10:44:49+00	michelbalsat@yahoo.fr
3185	62	Maartje Soetaers	\N	\N	\N	a0b4263c5915fb6a82648f3b5a247120	f	2020-05-25 10:59:10+00	2020-05-25 10:59:10+00	maartjesoetaers@hotmail.com
3182	62	Lucia Fernandez Macia 	Brussel	\N	\N	af50264433e61e6a8765f87fe4231eba	t	2020-05-25 10:58:12+00	2020-05-25 10:59:12+00	luciafmacia@gmail.com
3186	62	Carolien	1000 	Brusseles	\N	3940781132bee02cf07f3a4c6267302c	f	2020-05-25 10:59:14+00	2020-05-25 10:59:14+00	\N
3187	62	Frieda Catteeuw	Melsbroek	\N	Sheraton Brussels Airport Hotel	e3302ccb6d59ab12881e689dbfb8e748	f	2020-05-25 11:00:18+00	2020-05-25 11:00:18+00	\N
3188	61	Ben Francois	Brussels	Chef d'entreprise	\N	fcc2944f2a06b8e47f8236e7f216f5d7	f	2020-05-25 11:00:40+00	2020-05-25 11:00:40+00	\N
3189	62	Els Dedeurwaerder	\N	\N	\N	1a02dcd1b479fae37377c3628f65a343	f	2020-05-25 11:00:46+00	2020-05-25 11:00:46+00	\N
3191	60	Marie Caroline Coppieters	Woluwé	juriste	privée	1a74d6916cae55e176afa4943847d025	f	2020-05-25 11:02:15+00	2020-05-25 11:02:15+00	\N
3220	60	Gaelle Birenbaum	Forest	\N	\N	a28483a9722f47dccad736904c5ebe5c	t	2020-05-25 11:16:34+00	2020-05-25 11:16:45+00	gaelle.birenbaum@gmail.com
3221	60	Audrey	Ixelles	\N	RTBF	aa562d96ce4dc8d6a8112f0e1ee7a0ce	t	2020-05-25 11:17:17+00	2020-05-25 11:17:32+00	\N
3223	61	Marie Boutsen	Brussels	employee	Flanders DC	c7cf7d3bdf659c7c584fd200074c56b2	f	2020-05-25 11:18:18+00	2020-05-25 11:18:18+00	\N
3224	62	Vincent Claes	Schaarbeek	Arts	\N	dc33e72246ac6b8dff16fab431e85057	t	2020-05-25 11:18:26+00	2020-05-25 11:18:45+00	vincent.claes123@gmail.com
3225	60	Arnaud Duynstee	Brussels	communication	\N	a8fac5003164b9ddab982de516c455c8	t	2020-05-25 11:18:38+00	2020-05-25 11:18:57+00	\N
1889	61	Ermal Kapedani	Brussels	Researcher	UHasselt	a5af42a850898a17b55305ab8d327810	t	2020-05-23 12:55:12+00	2020-05-25 11:19:05+00	\N
3227	61	Klaas Dhaene	Brussel	architect	\N	093de8df33710e90f0e989f6058d70f9	t	2020-05-25 11:19:13+00	2020-05-25 11:21:01+00	\N
3226	62	Denis Wouters	Vorst	\N	\N	ef835bcebb06bccf166d90d840f53778	t	2020-05-25 11:18:38+00	2020-05-25 11:22:04+00	denis.hideout@gmail.com
3240	62	Mattijs Van Bruwaene	Jette	\N	\N	e1d063bbcfd27b9129e80451b60932fc	f	2020-05-25 11:25:45+00	2020-05-25 11:25:45+00	attijs.vanbruwaene@gmail.com
3242	61	Nathan Stewart	Saint-Gilles	Politics	Starling Campaigns	167c6949100a12c60994a9fdc18fa071	t	2020-05-25 11:27:20+00	2020-05-25 11:27:41+00	nathanstewart42@gmail.com
3241	61	ilse almar	Bruxelles	\N	\N	6af9186eb152d195f92860acf42206b0	t	2020-05-25 11:27:06+00	2020-05-25 11:29:20+00	\N
3222	61	Anna Szynkiewicz	Brussels	translator	Committee of the Regions	3ed01eb420923b1fd0bbf28aa0473b0b	t	2020-05-25 11:17:25+00	2020-05-25 11:31:35+00	anna.szynkiewicz@cor.europa.eu
3274	60	Carole Roussel	1060	\N	\N	67e1c14e3b04cce09ce6bfd96e278a09	t	2020-05-25 11:47:27+00	2020-05-25 11:47:44+00	carole_roussel@orange.fr
3275	62	Leila Myar	Brussel	Web dev	\N	a90002c1f80f7c416ac9f8a0498d416c	t	2020-05-25 11:47:40+00	2020-05-25 11:48:07+00	leilamyar.dev@gmail.com
3276	60	Fanny Lavisse	Saint Gilles 	Enseignante	\N	974e291e245c4c18b4dbc5e6050eecf9	t	2020-05-25 11:47:44+00	2020-05-25 11:48:26+00	\N
3284	62	Lisanne Wiedemann	Etterbeek	Arts	\N	0c95e9dc3c03bfba00fbcfd21f26b9e2	t	2020-05-25 11:53:29+00	2020-05-25 11:53:54+00	lisannewiedemann@icloud.com
3285	60	Marie Lebrun	Bruxelles	\N	\N	4f0d627e586eb592688a88453bbb56b3	t	2020-05-25 11:54:58+00	2020-05-25 11:55:14+00	\N
3286	62	Fabien Genart	Brussels	Cartographe	Bruxelles Environnement	211eb3517ca4a2f528d1fe37507f3f3a	f	2020-05-25 11:55:31+00	2020-05-25 11:55:31+00	\N
3287	62	stein falk	Schaarbeek	\N	\N	e44a96f9a7676d7cbfef0ec5fbb8d26f	t	2020-05-25 11:55:44+00	2020-05-25 11:56:02+00	\N
3289	62	Matthew Wilmot	Brussel	Student Bioingenieur	VUB 	2da67cc55ad2fa9dc969fe803e104416	f	2020-05-25 11:56:45+00	2020-05-25 11:56:45+00	\N
3290	60	Simon	Bruxelles 	Guide	Bravo	ed62194127daf943c15d6c8da14aca7a	f	2020-05-25 11:56:51+00	2020-05-25 11:56:51+00	\N
2956	62	Ilona Lo	Schaarbeek	Vastgoedontwikkelaar	\N	b9b578c8c4e908cb716509643b7bc2dd	t	2020-05-25 08:45:39+00	2020-05-25 11:56:55+00	lo.ilona.lo@gmail.com
3288	61	Sindi Imeri	1970	\N	\N	d699e840f06b816416a97713e164d530	t	2020-05-25 11:56:43+00	2020-05-25 11:57:34+00	\N
3291	60	Swann Vallée	1060	Architecte	\N	f47ffbe721b9e5d40a14bbeb7145428b	t	2020-05-25 11:57:21+00	2020-05-25 12:26:32+00	\N
2960	61	Aynel Gül	Brussels	Software engineer	\N	da3128bf76ca5326ac5a8b5400821c93	t	2020-05-25 08:47:11+00	2020-05-25 12:29:57+00	aynell__@hotmail.com
3160	61	Saida Van der Auweraert	Brussels	Intern	Cycling Industries Europe	424fc89c8dbf7c3c8aa95a849a142816	t	2020-05-25 10:44:17+00	2020-05-25 14:12:43+00	\N
2965	61	Jean Pierre Hollevoet	Brussels	Director	Fluvius	f33a32a1bbac9ef41e215bb428097aa8	f	2020-05-25 08:52:23+00	2020-05-25 08:52:23+00	hollevoetsenior@hotmail.com
2587	62	Thomas Moffat	Brussel	Jeugdhuisondersteuner 	Jhob	a26a96c96dd789eace5c1e82f9400349	f	2020-05-24 21:21:51+00	2020-05-24 21:21:51+00	\N
2568	62	Carlo	Brussel	Student	Geen	5cec8eb2f00dd728718ceecb1f7403bd	t	2020-05-24 21:00:35+00	2020-05-24 21:25:51+00	\N
2588	61	Sascha Brose	Uccle	Consultant 	\N	ee70378e59e8ca7ba2ec5be9bdb2e6ee	t	2020-05-24 21:26:05+00	2020-05-24 21:26:17+00	sascha.brose@gmail.com
2589	62	Gertjan De Boeck	Anderlecht	\N	\N	f65c10d38b78ee60b7f03e2d61c50e0a	f	2020-05-24 21:27:23+00	2020-05-24 21:27:23+00	\N
2592	61	MC	Forest	Artist	\N	46e2891dba8cb50fd37a0422d15338c2	f	2020-05-24 21:33:30+00	2020-05-24 21:33:30+00	\N
2593	60	Pottiez	Blaton	Étudiant	evragon@hotmail.com	7d15834f9733af0d8a8e5ff9b15a975d	f	2020-05-24 21:33:49+00	2020-05-24 21:33:49+00	evragon@hotmail.com
2594	62	Danielle Van Riet	Schaarbeek	Monteur	\N	0f001d84d7ef32d311994cf39eab30e7	f	2020-05-24 21:33:54+00	2020-05-24 21:33:54+00	\N
2591	60	marine pottiez	Thimougies	\N	Miss	9da67ffb046509be5642438ee072e445	t	2020-05-24 21:32:09+00	2020-05-24 21:34:56+00	\N
2595	60	Van Nimmen	Houdeng-Aimeries	étudiant	\N	95b05dde3bc6dff61ba177020c39ded9	f	2020-05-24 21:38:24+00	2020-05-24 21:38:24+00	\N
2596	62	Helene Jacobs	Etterbeek	illustrator	\N	ad8b35f0f06932a22c9f99432d5233dd	t	2020-05-24 21:41:52+00	2020-05-24 21:42:35+00	\N
2597	61	Karen Sas	Schaarbeek	\N	\N	0992f98e92ee1f20d7001fb6a0e3111f	t	2020-05-24 21:42:34+00	2020-05-24 21:42:48+00	karen.sas@gmail.com
2599	62	Pieter Van Maele	Brussel	\N	1986	ca8bc0dbf66cabab77b02515220af7ee	t	2020-05-24 21:48:13+00	2020-05-24 21:48:37+00	\N
2598	62	David Knapen	Elsene	leraar	\N	a49cfdc99688428093fe1c168bf6b8b9	t	2020-05-24 21:47:31+00	2020-05-24 21:49:10+00	\N
2600	62	Joris Moonen	Schaarbeek	\N	\N	09357bf729800fe2e994ac8b60ed1215	t	2020-05-24 21:48:51+00	2020-05-24 21:50:32+00	\N
2601	61	Ludwig baert	Brussel	Teacher	\N	41aa46b480ea77bb415d8385d0768a85	t	2020-05-24 21:49:37+00	2020-05-24 21:53:13+00	\N
2602	62	Lizzy Byloos	Sint-jans-molenbeek	\N	Lizzy Byloos	4c944105ac7fc72c221532026f62b539	t	2020-05-24 21:55:35+00	2020-05-24 21:56:07+00	lizzybxl@gmail.com
2603	60	Jose Rios	Brussels	\N	Consulado Panama	4b943ce4dea4a1075495ee921566aef5	t	2020-05-24 21:55:37+00	2020-05-24 21:57:17+00	joseriosbxl@gmail.com
2604	60	Kathleen Deckmyn	Bruxelles	\N	FONDACIO	66ed3bc5b1cd7a157cb9f65b49f6bba9	t	2020-05-24 21:57:42+00	2020-05-24 21:58:22+00	deckmynkathleen@gmail.com
2606	61	Ali Khangholi	sint-jans-molenbeek	\N	\N	6a40c338da3bbc4959dc84b32e3b919f	f	2020-05-24 22:01:33+00	2020-05-24 22:01:33+00	\N
2605	62	Anneleen Ophoff	Schaarbeek	Journaliste	\N	e76374e4710c318191bd7ece2b8067af	t	2020-05-24 22:01:11+00	2020-05-24 22:03:54+00	\N
2609	60	Laura Bazen	Ixelles	Affaires européennes	Rise for Climate Belgium	c05d444869e20047c068d943b0f11b5b	t	2020-05-24 22:07:45+00	2020-05-24 22:08:18+00	laurabazen@yahoo.fr
2610	62	Johan Bossers	Schaarbeek	muzikant	\N	0d3baef425d49151a32141b5f9fca47d	t	2020-05-24 22:12:30+00	2020-05-24 22:12:52+00	bossersjohan@gmail.com
2611	60	WOUTERS Fabienne	Anderlecht	\N	\N	ecd03c8b794a8faa6c33ee3d577c9379	t	2020-05-24 22:16:23+00	2020-05-24 22:16:44+00	fabi1070@hotmail.com
2612	61	Michiel Gevers	Elsene	\N	\N	5d4d97166d2ab77cb98d9f5ed910aad3	f	2020-05-24 22:19:54+00	2020-05-24 22:19:54+00	michiel.gevers@hotmail.com
2607	59	Jotte Vandenabeele	schaarbeek	\N	\N	c50e462fe554434f86f2d0abea8fb059	t	2020-05-24 22:03:00+00	2020-05-24 22:21:34+00	\N
2613	62	justin	brussel	student	\N	e4f48fd7cce743f2d21a1bc46906fdcf	t	2020-05-24 22:22:04+00	2020-05-24 22:23:27+00	\N
2614	62	Arnaud nourisson	Brussel	\N	\N	e6578a22fd4d593338fb74f6e32c6e43	f	2020-05-24 22:24:22+00	2020-05-24 22:24:22+00	\N
2616	61	Bert Destoop	Grimbergen	Student	\N	923a57ca0babff43b81ff6e3f6350ccf	f	2020-05-24 22:29:51+00	2020-05-24 22:29:51+00	funnyman2803@gmail.com
2617	62	Dries Smets	Molenbeek 	Bediende	\N	d80d9d8ae962ddd1281040a5f400e418	t	2020-05-24 22:33:01+00	2020-05-24 22:33:14+00	dentevve@gmail.com
2618	61	Piotr Barczak	Brussels	policy officer	European Environmental Bureau	c91d18a7d50b43b077cbaaf45e83f342	f	2020-05-24 22:34:53+00	2020-05-24 22:34:53+00	piotr.barczak@hotmail.com
2619	62	Joy Macilray	Sint-Jans-Molenbeek	Leerkracht	\N	f65c4c03c2516d408218cc0a1c76ce5a	t	2020-05-24 22:38:24+00	2020-05-24 22:38:52+00	\N
2620	60	sellenet Marion	schaerbeek	artiste	\N	2cba3919aeeae01f9b0cb0a30779e504	t	2020-05-24 22:39:00+00	2020-05-24 22:39:14+00	msellenet@orange.fr
2622	60	Francesca bernabei	\N	\N	\N	6a622e8686fbd9707749fee8b3241a0a	f	2020-05-24 22:41:59+00	2020-05-24 22:41:59+00	\N
2621	62	Leen Vermeire	1150	\N	Greenpeace Brussel	6f0f81b44a25dc42686e03aa1c071a35	t	2020-05-24 22:41:44+00	2020-05-24 22:42:09+00	leenvermeire@hotmail.com
2623	61	Piotr Barczak	Brussels	policy officer	zero waste	ffae5d1c18979779256d381f68ec753f	t	2020-05-24 22:42:37+00	2020-05-24 22:43:01+00	piotr.barczak@zero-waste.pl
2624	60	Van Damme Marie-Anne 	ANDERLECHT	Bénévole dans le milieu social 	\N	8d1cf486d1d94eaff8a1399c08c10967	t	2020-05-24 22:43:21+00	2020-05-24 22:44:10+00	vandammemarieanne@yahoo.fr
2626	62	Mo	Gent 	\N	\N	ab0f70a0871b33bdf0fefcaf656f55a1	t	2020-05-24 22:49:28+00	2020-05-24 22:58:47+00	monikavanraemdonck@hotmail.com
2628	60	Saif Eddin	Bruxelles 	\N	\N	c2104aba54ff0cf794072231a99d61ce	f	2020-05-24 23:16:13+00	2020-05-24 23:16:13+00	\N
2627	61	Andrea	Brussels	Admin officer	\N	800904dfacf2a498d5aea5f97eecbc0b	t	2020-05-24 23:14:48+00	2020-05-24 23:18:46+00	\N
2629	61	Kiersnowski Konrad	Etterbeek	Student	\N	d0432a2684c583526cc9e61c1337175e	t	2020-05-24 23:22:19+00	2020-05-24 23:22:36+00	\N
2630	61	Jonas De Keukeleire	Elsene	Student	VUB	4db276ff7cda22ccac31d6b71881f69b	f	2020-05-24 23:27:05+00	2020-05-24 23:27:05+00	jonas2222@live.be
2631	60	Christel Buelens 	1180	\N	\N	200d90e02d5d3b567ff561fbbaefbb07	f	2020-05-24 23:29:46+00	2020-05-24 23:29:46+00	christel.buelens@gmail.com
2632	60	Guillaume Van Parys	\N	\N	\N	c1448acb3add2529111bd2867cfddeed	t	2020-05-24 23:45:55+00	2020-05-24 23:46:13+00	\N
2633	60	  Caroline Englebert	Sint-Joost-ten-Node	\N	\N	8329fbe9124517617cdfd11c844896ce	t	2020-05-24 23:53:47+00	2020-05-24 23:54:09+00	caro_englebert@hotmail.com
2634	61	Valériane Buslot	1100	Contractor	CBD	46bb39d907b609e405895cd498be904b	t	2020-05-24 23:55:24+00	2020-05-24 23:56:51+00	\N
2635	62	Lucas Verschragen	Brussel	\N	\N	36fd823dddf33b6ee1c10fe5b523f6e5	t	2020-05-25 00:06:21+00	2020-05-25 00:06:33+00	lucas.verschragen@coleurope.eu
2636	59	Olivier DAHON	Ixelles	Project officer	REA	d2a8a34bc55e42734471c9933c6bc6ed	t	2020-05-25 02:27:27+00	2020-05-25 02:27:53+00	\N
2637	61	Pascale Vanrillaer	Wemmel	Employe	Silva medical	fe429a5a489c3c3ac260b7c7fa3fc493	t	2020-05-25 03:56:02+00	2020-05-25 03:56:47+00	pascale.vanrillaer@hotmail.com
2638	60	FATAL Léa	Ixelles	\N	Aucun	a350fd124859a133ed208746efb2b207	t	2020-05-25 04:00:34+00	2020-05-25 04:01:09+00	fatallea@yahoo.fr
2639	61	Béatrice MERTENS	BRUXELLES	\N	\N	92f8081cec3d3549c78fe1b2ced36cd2	f	2020-05-25 04:03:22+00	2020-05-25 04:03:22+00	\N
2640	60	Béatrice MERTENS	Wemmel	Bibliothécaire 	\N	ce49085dc1bf6402b5f6c3e267cae0f2	t	2020-05-25 04:05:03+00	2020-05-25 04:05:52+00	\N
2641	60	Eelco	Uccle	Entrepreneur	\N	d2d3aba8b14ea5754a2b092c33bef43d	t	2020-05-25 04:06:58+00	2020-05-25 04:25:34+00	\N
2590	61	KAREL burssens	Vorst	Artist	\N	9cd8cfee20e26716ab242c7e2879a206	t	2020-05-24 21:30:53+00	2020-05-25 07:18:05+00	\N
2642	60	Duvellier Martine	Bruxelles	Pensionnée	\N	0fa0f3f1ba2cd343eb8edc8c621b592f	f	2020-05-25 04:10:24+00	2020-05-25 04:10:24+00	martine.duvellier@gmail.com
2586	62	Claire Whittaker 	Ixelles - Elsene	ambtenaar	\N	141973073c5ffbcba1cf82b6d9df00aa	t	2020-05-24 21:19:13+00	2020-05-25 04:14:41+00	\N
4818	60	maud salembier	Saint Gilles	Professeure	\N	0c41822b53935b70af421df94e8dbe19	t	2020-05-27 17:33:15+00	2020-05-27 17:35:32+00	maudsalembier@yahoo.fr
2645	61	Steven Schittecatte	Oudenaarde 	\N	\N	3f5c10df1fd64d0c9e7d7ccef04bb458	t	2020-05-25 04:46:22+00	2020-05-25 08:24:01+00	steven-schittecatte@telenet.be
2661	62	Thomas Hendrickx	Schaarbeek	Self employed	Bolt energie 	bf8b6431265b9123f10857c7fb2890c5	t	2020-05-25 05:31:35+00	2020-05-25 05:32:15+00	thomas.hendrickx89@gmail.com
2572	62	Julien Gordenne	Schaerbeek 	\N	Citoyen	4564799a9ce2d2ea036b8d77806c5d49	t	2020-05-24 21:03:51+00	2020-05-25 08:52:49+00	julien.gordenne@gmail.com
2662	62	Brecht	Brussels	\N	\N	e753422c9af4d5fde9e24f65847da50b	t	2020-05-25 05:33:47+00	2020-05-25 05:34:20+00	brecht.vaes@gmail.com
2664	62	Ruth Hommelen	Brussel	Docent	\N	b501ce8c013f1aa180f90bfd186eb2b7	f	2020-05-25 05:35:48+00	2020-05-25 05:35:48+00	\N
3041	60	Azizieh Céline	Saint-Gilles	actuaire	\N	dc1465ac6b71b922a606484b93daa7e9	t	2020-05-25 09:41:59+00	2020-05-25 09:42:13+00	\N
3042	61	Lauha Fried	Brussels	Policy Director	Cycling Industries Europe	e3b846569584468b94eb5557d969dbab	f	2020-05-25 09:42:56+00	2020-05-25 09:42:56+00	ried@cyclingindustries.com
2665	61	Tomasz Barczak	Koszalin, Poland	teacher	education	788082c76fbb5b2f3c58d3d0cb05fbf7	t	2020-05-25 05:36:20+00	2020-05-25 05:37:53+00	tomas.barczak@gmail.com
3117	60	Irene Fici	Bruxelles	\N	\N	e19756898a70ab3e4e4d9677580f9fe4	t	2020-05-25 10:21:14+00	2020-05-26 12:31:31+00	irenefici@yahoo.co.uk
2667	60	Boulgakoff	Uccle	\N	\N	347abe03adf020916a7d6a36a0910f3c	t	2020-05-25 05:38:39+00	2020-05-25 05:39:18+00	kooltcha@gmail.com
2668	59	Sandra Van Waeyenberge 	Schaarbeek	Ambtenaar 	\N	98b67131006dc9103e63824ad28373ca	t	2020-05-25 05:39:00+00	2020-05-25 05:39:27+00	\N
2669	61	Fanny Marechal	Sint-agatha-berchem	Teacher	\N	93b2e71aab212e659349801e3e331b5e	f	2020-05-25 05:39:40+00	2020-05-25 05:39:40+00	\N
2666	62	U. Dehaes	Brussel	\N	\N	d611e4068e5294f67ecaec8021689b34	t	2020-05-25 05:37:19+00	2020-05-25 05:39:41+00	\N
2671	62	Cédric Devos	1000	Vuilnisman	\N	a789a91199ff2ce6362d0312def5e262	f	2020-05-25 05:39:56+00	2020-05-25 05:39:56+00	\N
2663	61	Gianni	Brussels	Social worker	\N	33aa201100da6c1b22cff275d458ca26	t	2020-05-25 05:35:28+00	2020-05-25 06:42:08+00	\N
3049	61	Caroline Binon 	Schaarbeek 	Business Analist 	\N	107e91c83b01b766a8a68faeb7bcd0c9	t	2020-05-25 09:46:02+00	2020-05-25 09:46:29+00	\N
3062	60	Van Durme	1200	Rh	\N	5b0e5b12e7910c913435841b01e9b220	t	2020-05-25 09:54:59+00	2020-05-25 09:55:21+00	\N
3061	60	Aurélie Dulière	Schaerbeek	\N	\N	cf907c7167e0a2ff794aa48b60dafe5f	t	2020-05-25 09:54:58+00	2020-05-25 09:56:16+00	aduliere@outlook.com
3064	61	Pedro Homem de Gouveia	Bruxelles	\N	\N	5ce0b2880252e2b83c3159674e022bbd	t	2020-05-25 09:55:59+00	2020-05-25 09:56:41+00	pedrohomemgouveia@gmail.com
3066	61	Florine Wöhler	1000	Student	\N	c3cb6a9081de13d93222a1751f5f52ba	t	2020-05-25 09:57:27+00	2020-05-25 09:57:46+00	\N
3068	62	emi catteeuw	Schaarbeek	\N	\N	6a32965351833d3a94b90387ba7232a2	f	2020-05-25 09:57:47+00	2020-05-25 09:57:47+00	emi.catteeuw@gmail.com
3067	61	Roosmarijn N	Brussel	Humanitarian worker 	AZG	3db541efd7e4c3bc5ec8479e4412c814	t	2020-05-25 09:57:45+00	2020-05-25 09:57:54+00	\N
3069	60	Carlo!	\N	\N	\N	7bd675f0454885eab368a259823d1fd6	f	2020-05-25 09:58:38+00	2020-05-25 09:58:38+00	\N
3073	62	Bru No S	1210	\N	\N	0ddafcc9b1d0bba825ffc0dcd6914025	t	2020-05-25 09:58:59+00	2020-05-25 09:59:46+00	\N
3074	61	Claudia Ribeiro	Etterbeek	\N	\N	a6425e1498aa919599a46d52f5826ade	t	2020-05-25 09:59:02+00	2020-05-25 09:59:56+00	\N
3047	61	Aleksandra Lun	Bruxelles	\N	\N	259bbc90c8e0213e8d6e98d6d4d41fcd	t	2020-05-25 09:45:35+00	2020-05-25 10:00:35+00	\N
3078	62	Laura Verhaeghe	Laken	\N	\N	19ef35faf83009a5145762ce8d5a94f5	t	2020-05-25 10:02:16+00	2020-05-25 10:03:04+00	laura.verhaeghe@vrt.be
3080	62	Arno Vervaet	Sint-Jans-Molenbeek	Ingenieur	\N	aa930102fd42b4b4b7e587f9bbcd3f22	t	2020-05-25 10:02:25+00	2020-05-25 10:03:11+00	vervaet.arno@gmail.com
3076	62	max temmerman	Brussel	student	\N	9118dc4a67ead8c70e19d2f16e505e0c	t	2020-05-25 10:01:28+00	2020-05-25 10:04:30+00	max.temmerman@gmail.com
3065	62	Sarah Vanhemelrijck	Brussel	\N	\N	29a0eebac91a0296f31c63419c94e764	t	2020-05-25 09:57:07+00	2020-05-25 10:05:44+00	sarah_vanhemelrijck@hotmail.com
3106	62	Myrna Baks	Schaarbeek	landschapsarchitect/stedenbouwkundige	Atelier Caneva-s	7a6aacd5de8998d3b1686a5c5ee78b44	t	2020-05-25 10:13:25+00	2020-05-25 10:14:07+00	m.baks@caneva-s.be
3105	60	Derache Claire	St Josse	\N	\N	6d18794e382f84f5367790e2945a5fd9	t	2020-05-25 10:13:24+00	2020-05-25 10:14:13+00	claire.derache@gmail.com
3107	62	Colm mac Aoidh	Brussel	Architect	\N	7c58efad232c9734c46ba37b5f829ff0	t	2020-05-25 10:15:08+00	2020-05-25 10:15:20+00	\N
3108	60	Jean-Baptiste DE BORMAN	Auderghem	Indépendant	Herr	74ef87e81c782175fa70504c1a9c920e	t	2020-05-25 10:16:03+00	2020-05-25 10:16:24+00	\N
3110	62	Ine M	1020	\N	\N	f70652a7e41bb72fa6b2309975641a7b	t	2020-05-25 10:17:44+00	2020-05-25 10:18:11+00	\N
3077	62	Elise Vanlangenaeker	Schaarbeek	Gezinsbegeleider	Huis van het Kind - Noord 	75ea8c7a274a3921f60725532092c43d	t	2020-05-25 10:01:31+00	2020-05-25 10:19:57+00	elise@ketinbrussel.be
1615	60	Florent Schollaert	Court saint etienne	\N	\N	ceb504dd582c539b1db0b9dbd273a3ff	t	2020-05-23 06:30:44+00	2020-05-25 10:21:05+00	\N
3116	62	gerd de wilde	1080	projectmanager	Makettt	5d1f36d90dc1fdcecd1d68f0fc7c6caf	t	2020-05-25 10:21:11+00	2020-05-25 10:22:33+00	\N
3162	62	Arian Schelstraete	Sint Jans Molenbeek	\N	\N	8616cbfa9b1784fdf2d3bf7ee5f62fb9	f	2020-05-25 10:45:25+00	2020-05-25 10:45:25+00	\N
3163	62	Lien Ravesloot	Brussel	\N	\N	be2fa7d7585317cba84cc9aa16de2bb5	t	2020-05-25 10:45:49+00	2020-05-25 10:46:09+00	\N
3164	60	Alexandre Falk	1190	Maintenance Planner	\N	5a479ab61b6cdc28e412cba390191476	t	2020-05-25 10:45:50+00	2020-05-25 10:46:17+00	\N
3165	62	Alexandra Sansen	Schaarbeek	\N	\N	885e743bb51c5a8712bd6ddfd16c9d1a	t	2020-05-25 10:46:55+00	2020-05-25 10:47:21+00	\N
3167	62	Benoit Loffet	Brussels	IT	\N	e68c65dd510b74298080834985f5a31d	t	2020-05-25 10:47:55+00	2020-05-25 10:48:19+00	bloffet@gmail.com
3192	61	Paul Musiol	Forest	Photographer	\N	258291b4006f9429f595e1495605261e	f	2020-05-25 11:02:23+00	2020-05-25 11:02:23+00	paulmusiol@gmail.com
3198	60	Martin denis	Bruxelles	Musicien	\N	d98271fd01ac843da2956ee427825816	f	2020-05-25 11:07:21+00	2020-05-25 11:07:21+00	martin.denis@skynet.be
3199	62	Ine Leen 	Schaarbeek 	Ontwikkelaar	\N	9ad1f25af518e69b248e2090b713cbed	f	2020-05-25 11:07:40+00	2020-05-25 11:07:40+00	ineleensorgeloos@gmail.com
3200	60	Camille Caze	Bruxelles	Troll, ingénieur son	\N	019f0dc5bd8343fa5c0809a23b878a07	f	2020-05-25 11:08:05+00	2020-05-25 11:08:05+00	\N
3232	62	Katrien Quirijnen	1020	Bediende	\N	65e05e64609da2e32a565c5bab27c2b0	t	2020-05-25 11:21:52+00	2020-05-25 11:22:33+00	katrienquirijnen@yahoo.com
3075	61	Mari Saarteinen	Brussels	Communications consultant	Aamu associates	b3a919fca5c4f94e055b46014ca11399	t	2020-05-25 09:59:12+00	2020-05-25 13:06:22+00	marisaarteinen@hotmail.com
3063	62	Pasquale Cancellara	Brussels	project manager	Polis network	884077390e7e8e829bf60bf653867364	t	2020-05-25 09:55:38+00	2020-05-25 15:55:29+00	pcancellara@polisnetwork.eu
2711	60	Lemaire	Bruxelles 	Enseigante	\N	c9abbb006adcc942c3e7f9f7c50b2dd3	t	2020-05-25 06:30:03+00	2020-05-25 08:38:00+00	welvaert.lemaire@skynet.be
2647	62	Adrien Blavier	Etterbeek	Softwareontwikkelaar	\N	82d27e7bd062228f1024f9be67035fdf	t	2020-05-25 04:51:50+00	2020-05-25 04:52:06+00	adblavier@gmail.com
2648	60	\N	\N	\N	\N	023f1a7c4bfd349a9bcb041ae0d342ab	t	2020-05-25 04:52:36+00	2020-05-25 04:53:00+00	\N
2967	61	Andrea Pavarotti	Forest	\N	\N	82f8c606457830e29c8881713324a430	t	2020-05-25 08:53:26+00	2020-05-25 09:07:19+00	\N
2650	61	Rasa Sceponaviciute	Brussels	\N	EC	88fbf7635503ab3289d0e813318d7665	f	2020-05-25 05:03:15+00	2020-05-25 05:03:15+00	\N
2651	60	Ribo/Sous Les Platanes	Schaerbeek	Fabricant d'instruments à vent	Sous Les Platanes sprl	0ee0da755020c1d67020b71d0f34ce11	t	2020-05-25 05:06:39+00	2020-05-25 05:07:06+00	pierre.ribo@souslesplatanes.be
2652	60	Sonia de Clerck	Bruxelles	Chargée de projet 	Maison Biloba Huis	34a7df9d8768e509f83f77e7d928ae0e	f	2020-05-25 05:13:18+00	2020-05-25 05:13:18+00	soniadeclerck@outlook.com
2653	61	Maroussia collette	Brussels	Employee	\N	788b1e3549694aa9d30a9b6823ea93f9	f	2020-05-25 05:17:55+00	2020-05-25 05:17:55+00	\N
2654	62	Luc michielsen	Dilberk	Manzger	\N	46fbaf60efa1576e6c3f5f446b24cc7d	f	2020-05-25 05:20:14+00	2020-05-25 05:20:14+00	michielsenluc@hotmail.com
2656	62	Yannik Escoto Van Dam	Sint gillis 1060	Ambtenaar	Escoto Van Dam, Yannik	33f42531f21ef7639d953090d9768b60	f	2020-05-25 05:22:28+00	2020-05-25 05:22:28+00	eyannik@hotmail.com
2659	62	Korneel Boon	Sint-Gillis	\N	\N	d6be2fecb609ca772b7f3752f9d0881f	f	2020-05-25 05:28:04+00	2020-05-25 05:28:04+00	\N
2658	60	Pierre Apraxine	Bruxelles	Juriste	1966	2e601b12a4297c580ff1826e0417ea3b	t	2020-05-25 05:28:01+00	2020-05-25 05:28:29+00	\N
2660	62	Ward Geerts	Brussel	Filmmonteur	Scissorhands	8c02288bc2324eb18648e2746faad521	t	2020-05-25 05:28:25+00	2020-05-25 05:28:46+00	\N
2657	62	Philip Meersman	Jette	Kunstenaar	\N	0ec1b15df7af3509cc2a47acc6fae3a2	t	2020-05-25 05:25:46+00	2020-05-25 05:33:34+00	philip.meersman@gmail.com
2673	61	  Christophe Mercier	Forest	Architecte	Suede36 	0248964d8e33b1df70c8300f0df4b1f6	f	2020-05-25 05:43:56+00	2020-05-25 05:43:56+00	christoohe@suede36.be
2672	60	Nadia Echadi	\N	Ixelles 	Enseignante	fcfeb9129c5139998159a99dad408e73	t	2020-05-25 05:43:54+00	2020-05-25 05:44:15+00	\N
2674	62	Adriaan Vankeerbergen	Laken	\N	\N	2b9393013ddfb46b49b51da047bf633b	t	2020-05-25 05:44:26+00	2020-05-25 05:44:59+00	\N
2675	60	Pierre Sommereyns	Schaerbeek	Cycliste	\N	1d066e08c358dd56c2567df018403f10	f	2020-05-25 05:45:03+00	2020-05-25 05:45:03+00	pierresommereyns@skynet.be
2676	60	Mathieu Simonson	1030	Autre	\N	52554d57be62c9588894cef1b108a731	f	2020-05-25 05:50:20+00	2020-05-25 05:50:20+00	\N
2644	61	Brecht Vercruysse	Schaarbeek	\N	\N	c6cb49686b3d441ce79a71cca0b25298	t	2020-05-25 04:26:39+00	2020-05-25 05:52:10+00	\N
2677	61	Bert Gellynck	Sint-Jans-Molenbeek	\N	\N	a42b163dfadd212919fdfbd42289a118	t	2020-05-25 05:51:57+00	2020-05-25 05:52:22+00	\N
2679	59	Joost D'Hellem	Anderlecht Brussel	\N	\N	11765ed5bde1e31716f8a573a87c9307	t	2020-05-25 05:54:11+00	2020-05-25 05:54:38+00	\N
2678	61	Joost D'Hellem	Anderlecht Brussel	\N	\N	76d55dc0b1d8ed9e7263406818d4943a	t	2020-05-25 05:52:01+00	2020-05-25 05:54:50+00	\N
2649	60	Quentin	Woluwe	\N	\N	cedbcde3188cbd23b94415e85b249bb2	t	2020-05-25 05:02:09+00	2020-05-25 05:54:54+00	\N
2646	60	Capiaux	Ixelles	Enseignante	\N	f751847cbd9c83d4ffbc229dbf13e9ad	t	2020-05-25 04:48:46+00	2020-05-25 05:55:00+00	soph.capiaux@gmail.com
2680	62	Ellen Db	Strombeek-Bever	\N	\N	ab93a213be759dc9df13b947830d1dac	t	2020-05-25 05:54:32+00	2020-05-25 05:56:35+00	\N
2682	62	Hendrik Galle	Brussel	\N	\N	b69c2043e5f4ca50b977b3eea65a0180	t	2020-05-25 05:56:15+00	2020-05-25 05:56:36+00	\N
2683	60	Biebuyck Francesca	Bruxelles 	Avocat	\N	ff7a3aa96e8a00d4738abc4e7dedd0fd	t	2020-05-25 05:56:45+00	2020-05-25 05:56:57+00	\N
2681	60	Daniel de Buck	Bruxelles	\N	\N	ff9ddd831be832f25bb3e653375de295	t	2020-05-25 05:55:41+00	2020-05-25 05:58:18+00	\N
2684	61	Patrick ten Brink 	Brussels	NGO	European Environmental Bureau 	99aff1bf16804d9322f5161cdb3eeb91	f	2020-05-25 05:58:30+00	2020-05-25 05:58:30+00	\N
2685	62	Bart	\N	\N	\N	f24d55c11814dadc4040a881ab51ac28	t	2020-05-25 06:01:02+00	2020-05-25 06:02:18+00	\N
2686	62	Renaat Jespers	Brussel	soc werker	\N	79d879b070fd00f8b20bd9947cb6934f	t	2020-05-25 06:04:49+00	2020-05-25 06:05:48+00	renaatjespers@gmail.com
2689	60	May DEWAET 	Uccle	Retraitee	\N	4ec7a11a269cc6f44e7dc7710b249d44	f	2020-05-25 06:07:49+00	2020-05-25 06:07:49+00	may.dewaet@gmail.com
2688	62	Guillaume Muller	Bruxelles	\N	\N	08be4672963cf6fd360c7b700c76d8c9	t	2020-05-25 06:07:12+00	2020-05-25 06:09:12+00	\N
2690	62	Nicky	Sint joost ten noode	Student	\N	68cd5621e46dd3e7c4bb27ceb6694281	f	2020-05-25 06:09:19+00	2020-05-25 06:09:19+00	nicky.vk@hotmail.com
2691	62	Jan Nachtergaele	Schaarbeek	Inwoner	\N	fe105a21101bb945a60bb43a2d835bba	t	2020-05-25 06:10:08+00	2020-05-25 06:10:27+00	\N
2693	60	Marie Huguet 	Uccle	\N	\N	68a3a7923d2c709381d315da8ccf7c64	f	2020-05-25 06:11:32+00	2020-05-25 06:11:32+00	marie.huguetb@gmail.com
2692	62	Samuel Puttemans	Sint-Agatha-Berchem	Ambtenaar	\N	d6bb65caaf8f157ce3951817c11c8bf4	t	2020-05-25 06:11:10+00	2020-05-25 06:12:56+00	puttemanssamuel@hotmail.com
2695	61	Jeroen Lammens	Brussels	\N	\N	d1a45a7993b9eff1bc9caa981f1ad29c	f	2020-05-25 06:14:02+00	2020-05-25 06:14:02+00	\N
2697	60	Véronique Haquenne 	9280	\N	Greenpeace 	564e1e4d7c3cbc27b9ac3a071db6fb1b	f	2020-05-25 06:20:10+00	2020-05-25 06:20:10+00	veronique.haquenne@hotmail.fr
2699	60	Jonathan Derio	Ixelles	Fonctionnaire international	\N	5d64695a29315d321ded069c520b4971	t	2020-05-25 06:22:40+00	2020-05-25 06:23:19+00	\N
2700	62	Beatrice Jacquemyn 	Sint-Joost-ten-Node 	Bibliothecaris	\N	52641bd5ff7239d00a3f382750247eca	f	2020-05-25 06:23:20+00	2020-05-25 06:23:20+00	bea.jacquemynm@gmail.com
2698	62	Daan Ory	Sint-Gillis 	Bediende	\N	8253db45b63f3554faa86b249559ee86	t	2020-05-25 06:21:11+00	2020-05-25 06:23:25+00	daan.ory1@gmail.com
2701	62	Cherida Tai A Pin	Brussel	leerkracht	\N	9980a65ebd7eeb7ed586a89a36a5ea58	t	2020-05-25 06:23:23+00	2020-05-25 06:23:46+00	cherida.taiapin@gmail.com
2702	62	Sara Tori	Brussel	PhD studente	\N	055f63244c82f3664edb530912ba35d2	t	2020-05-25 06:23:42+00	2020-05-25 06:24:19+00	sara.tori@hotmail.com
2705	60	Karel Petermans	Sint-Jans-Molenbeek	\N	Karel Petermans	0648983bf7c89345d380d5da8ff847c9	f	2020-05-25 06:26:06+00	2020-05-25 06:26:06+00	karelpetermans@hotmail.com
2706	60	Olivier Dewit	1030	\N	\N	3fcfcb88d7d3dc9457d1a13a5df88953	t	2020-05-25 06:27:04+00	2020-05-25 06:27:38+00	\N
2707	62	David	Brussel	Bediende	\N	08b8c04f872b0976ca48f2c30bef91f5	t	2020-05-25 06:27:59+00	2020-05-25 06:28:24+00	david_dobbelaere@hotmail.com
2708	61	Muriel Van averbeke	Bruxelles	Employee	\N	019c9a8ff1dc3b2e7bce3d51b70c2097	f	2020-05-25 06:28:31+00	2020-05-25 06:28:31+00	mvabrus@outlook.com
2709	60	Pierre Burniat	1030	Citoyen	\N	21c57efaeaa5ac9afb33c2e3c9417aea	f	2020-05-25 06:28:41+00	2020-05-25 06:28:41+00	\N
2713	60	Eva	1210	\N	\N	1893db6bd89901b96914e7a524bff708	f	2020-05-25 06:30:33+00	2020-05-25 06:30:33+00	\N
2710	61	\N	Vorst	Carpenter 	maartenvandenbulcke@yahoo.com	3c139d24541cf1728278fe53ae1a1a98	t	2020-05-25 06:28:46+00	2020-05-25 06:38:27+00	maartenvandenbulcke@yahoo.com
2714	61	Martin Rossignol 	Etterbeek	\N	\N	1096254aa99894b4a0995288aa9e6065	t	2020-05-25 06:31:41+00	2020-05-25 06:54:01+00	\N
2696	60	Elisabeth Brassel	Bruxelles	Logopede	\N	1e8b4d03187ae8032b12d973363e1658	t	2020-05-25 06:16:56+00	2020-05-25 07:45:42+00	elisabethbrassel@hotmail.com
2966	61	Timon de boeck	Grimbergen	Service engineer	\N	4f6c3cd4e52f0176c9ca88aee97947ad	t	2020-05-25 08:53:22+00	2020-05-25 08:53:47+00	\N
2715	62	De Sutter	1080	Ondersteuner	\N	7472ce5155be17b0e3bf2eb997695d64	t	2020-05-25 06:34:00+00	2020-05-25 06:35:15+00	\N
2716	60	Colombe Courtier	Schaerbeek	\N	\N	7bc0dc0f273eb0ba862e5f87e9057069	t	2020-05-25 06:35:00+00	2020-05-25 06:35:25+00	\N
4819	62	Adriaan Verdonckt	Sint-Jans Molenbeek	Student	\N	9b815332b3492d46e851620c139d6403	f	2020-05-27 18:17:43+00	2020-05-27 18:17:43+00	\N
2722	60	Andras Toth	Bruxelles	fonctionnaire international	\N	80496bb672a9ef130265e84f3bb58863	t	2020-05-25 06:36:54+00	2020-05-25 06:37:14+00	picibici@gmail.com
3852	61	Jonathas De Mello	Ixelles	Journalist	\N	32c8bb459bfae737b2cd42c7984ff494	t	2020-05-25 18:13:56+00	2020-05-25 18:14:43+00	\N
2969	61	Cis	1060 Sint-Gillis	\N	\N	d1829e6066293fc6bf23fcf5aa7d37ed	t	2020-05-25 08:54:06+00	2020-05-25 08:54:27+00	cis.vangoidsenhoven@gmail.com
2968	60	LAMBERT  Edmée 	Etterbeek 	pr of. pensionnée	\N	1e7c62ad441f52e643e5767f6ef69671	t	2020-05-25 08:53:55+00	2020-05-25 08:54:39+00	deblander.lambert@gmail.com
2926	62	D'Haenens Betty 	Brussel	Activiste 	Bewoonster	8820bee70b891cc8a81b885e9abd4863	t	2020-05-25 08:28:15+00	2020-05-25 08:57:19+00	\N
2721	61	Yolaine Nemery de Bellevaux	Brussels	Account Executive	Hitachi Vantara	e8fc430363ffecfeafdf2b7846fafc77	t	2020-05-25 06:36:40+00	2020-05-25 09:29:29+00	nemery.yolaine@gmail.com
3050	61	Lucrecia Bellido	Ndjamena, Chad	Humanitarian worker	WFP	65481f843794c59d8641316c4f6092ad	t	2020-05-25 09:46:41+00	2020-05-26 09:41:41+00	\N
3043	62	Quentin Blondiau	\N	Bediende	\N	9f504c313d54b4b636223c8078a5fa53	t	2020-05-25 09:43:40+00	2020-05-25 09:43:55+00	quentin.blondiau@gmail.com
3283	60	Remi	Rhode st genese	Medecin	Ulb	347524f9b9bfea93528f72178cecbeb5	t	2020-05-25 11:52:37+00	2020-05-26 11:01:06+00	\N
3045	61	Djoeni Gielis	Schaarbeek	\N	\N	f202780f07c4e6fbc3c11eb8cfd9ce17	f	2020-05-25 09:44:24+00	2020-05-25 09:44:24+00	djoeni_gielis@hotmail.com
3044	62	Laura	1030	\N	\N	5ea70e8bea4f66f5435dea6769aa2cd6	t	2020-05-25 09:44:07+00	2020-05-25 09:45:16+00	\N
3051	62	Kaat Depoorter	Schaarbeek	\N	\N	d9018c79fea593ea0728de891307ce50	t	2020-05-25 09:47:30+00	2020-05-25 09:47:44+00	\N
3052	62	Mariet Eyckmans	Brussel	Leerkracht	\N	6e8373fe651e121afd6bec4c3a427d83	t	2020-05-25 09:49:07+00	2020-05-25 09:49:40+00	\N
3055	62	Miek L.	Ganshoren	\N	\N	4ce41c71accd08979960d6897f111934	t	2020-05-25 09:49:39+00	2020-05-25 09:50:13+00	mieklamaire@gmail.com
3057	61	Kelly	Jette	\N	\N	ba4c318c6be9aadbda62e93decf9b39d	t	2020-05-25 09:50:35+00	2020-05-25 09:51:19+00	\N
3058	61	Els Scholiers	Laken	\N	\N	3b6b8f5541d09d46378343de7d0ff4bf	t	2020-05-25 09:50:56+00	2020-05-25 09:51:26+00	\N
3056	62	Ellis Vandorpe	Brussel	\N	\N	8da6f78bb502f3a9f101863694114d7c	t	2020-05-25 09:49:56+00	2020-05-25 09:52:41+00	\N
3060	60	Despina Zervoudakis	ANDERLECHT	\N	\N	a3d6f34524f9153878f3036ddca09bda	t	2020-05-25 09:52:41+00	2020-05-25 09:53:08+00	despina.zervoudakis@gmail.com
3059	62	Noëmi Degrauwe	Schaarbeek	\N	\N	7e561250536f912967d5099bc1aa5349	t	2020-05-25 09:52:22+00	2020-05-25 09:55:13+00	noemidegrauwe@gmail.com
3112	62	Sevenants	Mechelen	\N	\N	3a6698ff2af818ef4451d242e4caea56	f	2020-05-25 10:19:08+00	2020-05-25 10:19:08+00	\N
3113	61	Jill McArdle	Brussels	\N	\N	1413aa1c1f08a03b034c0e6cf5702572	t	2020-05-25 10:19:22+00	2020-05-25 10:19:35+00	jilldervla.mc@gmail.com
3114	60	João Moreira	Saint-Josse-ten-Noode	ingénieur en environnement	\N	1daca15af01118691500db5eb7c4813a	t	2020-05-25 10:19:27+00	2020-05-25 10:19:41+00	joao.tmm@gmail.com
3115	62	nele dehantschutter	st joost ten node	\N	\N	65474f182543ae372380f8e17ea00e9e	t	2020-05-25 10:20:19+00	2020-05-25 10:20:50+00	\N
3169	60	Damien Delanoe	Uccle	\N	\N	bd1effc894faa7932fdd60907dcd95c3	t	2020-05-25 10:50:10+00	2020-05-25 10:50:32+00	\N
3193	61	Olivier Potié	Bruxelles	Employee	\N	2fbfe6d018db39b95ebe7ae4b3a305fe	f	2020-05-25 11:03:05+00	2020-05-25 11:03:05+00	\N
3195	61	Liesbeth De Bruyne	Vorst	Education	D'Broej youth organisation	a8b8a6c021623bebaa3043caca2fa901	f	2020-05-25 11:04:01+00	2020-05-25 11:04:01+00	\N
3196	61	paul hallows	brussels	comms officer	friends of the earth europe 	6cd9bb4f3e09a6c60a67240f3e9b0b74	f	2020-05-25 11:04:48+00	2020-05-25 11:04:48+00	\N
3197	61	Josef Adler	Etterbeek	\N	VUB	41e187e6f491c1dce25efec21bd68a59	f	2020-05-25 11:06:19+00	2020-05-25 11:06:19+00	\N
3231	62	Evelyne Fraikin	Anderlecht	\N	\N	ef5f4b408b41948c7180e723dfa11d10	t	2020-05-25 11:21:11+00	2020-05-25 11:22:19+00	\N
3234	60	Johanne	Bruxelles	cycliste	/	1aa535fe6fe82c92164400f814e785d7	t	2020-05-25 11:22:12+00	2020-05-25 11:22:50+00	\N
3233	60	Inès Vandermeersch	Bruxelles	Cycliste	\N	126f50bed59557ee5d35edfb4070f279	t	2020-05-25 11:21:58+00	2020-05-25 11:26:02+00	ines.vdm@gmail.com
3249	62	Michiel Van Meervenne	Brussel	Zelfstandige	\N	fc4de96236532b029735321f9242518d	t	2020-05-25 11:30:08+00	2020-05-25 11:30:47+00	\N
3251	62	Birgit D'hont	Brussel	\N	\N	cc63ee98d2b95bd2d4a9d550b34f3b27	t	2020-05-25 11:30:36+00	2020-05-25 11:31:07+00	birgitdhont@gmail.com
3250	60	Marguerite	Saint-Gilles	Employée	\N	faba8d7d97a6b78cbd5ce939e6f1fe37	t	2020-05-25 11:30:24+00	2020-05-25 11:35:09+00	marguerite.legalloudec@gmail.com
3255	60	Sylla 	Bruxelles 	\N	\N	6c8a29ba28f1406dea6358459b28a4c6	f	2020-05-25 11:35:14+00	2020-05-25 11:35:14+00	ada_4@hotmail.com
3256	62	Lisa van der heiden	Elsene	Marketeer	\N	33b92c45aa7103a49b50bc9e579a7979	t	2020-05-25 11:35:50+00	2020-05-25 11:36:45+00	vanderheiden.lisa@gmail.com
3258	62	Mirna  Everhard	Schaarbeek	student	DocNomads	102b9a0398b2e650a02c88b3206f239e	t	2020-05-25 11:36:41+00	2020-05-25 11:37:16+00	mirna.everhard@gmail.com
3265	62	Hannah De Cauter	Laken (Brussel)	Student	\N	00dcf913497d09aab3d6a97f1973ac08	f	2020-05-25 11:39:43+00	2020-05-25 11:39:43+00	\N
3264	62	Celine Willmore	BRUSSEL	\N	\N	1b2cc57065f5e53e6ec673cb089731e9	t	2020-05-25 11:39:38+00	2020-05-25 11:39:58+00	\N
3278	61	Thomas De Clerck	Sint-Lambrechts-Woluwe	Co-Founder	Cumul.io	33ca8171cab9c8528bfdca3839d31823	t	2020-05-25 11:49:11+00	2020-05-25 11:49:32+00	thodeclerck@gmail.com
3281	61	ellen vanmaele	Jette	\N	\N	d787511b97752e13eadc8a2a7422aea4	t	2020-05-25 11:50:11+00	2020-05-25 11:50:22+00	\N
3280	62	Sabine Jakiela	Jette	\N	\N	b5bc2b8aa69f780f77ea8edf366235ff	t	2020-05-25 11:50:05+00	2020-05-25 11:50:29+00	\N
3279	61	Joke Blockx	1080	bediende	\N	5811bcb28b84ba3ab4f2486b2c4adec3	t	2020-05-25 11:49:29+00	2020-05-25 11:51:21+00	joke.blockx@gmail.com
3282	62	Harriët slager	Brussel	Government Affairs EU	Damen Shipyards	3101aa67364b7527316c9f1744f0e7c4	t	2020-05-25 11:51:37+00	2020-05-25 11:52:13+00	harslager@gmail.com
3252	60	Bert suykens	1080	Professor	Universiteit Gent	e9b771385c651fc3cceb6f4490de770f	t	2020-05-25 11:31:06+00	2020-05-25 12:05:20+00	\N
3257	62	Esmeralda Van den Bosch 	Vorst	\N	\N	a36950281b2c51cd2ebfa36b34f78867	t	2020-05-25 11:36:38+00	2020-05-25 12:09:16+00	\N
3053	60	Lefebvre eleonoee	Wezembeek-Oppem	\N	\N	e39ddcd15f8dd56543dbf810a47bf1b3	t	2020-05-25 09:49:30+00	2020-05-25 12:40:27+00	\N
3277	60	Hobbs	1050	\N	\N	8da4973886e0f790b03e0204dc5bf493	t	2020-05-25 11:48:43+00	2020-05-25 12:44:11+00	marian.hobbs@hotmail.co.uk
3298	62	Helena Desiron	Anderlecht 	\N	\N	e3a963ff9678ca5b6627a500ab97347b	t	2020-05-25 12:00:24+00	2020-05-25 15:52:16+00	\N
3046	62	Eewoud Lievens 	Brussel 	Onderzoeker	KU Leuven 	65ba64013dd12b60863c0a63b0dfa094	t	2020-05-25 09:44:39+00	2020-05-25 16:34:35+00	\N
2742	62	Jozefien	1030	\N	Schaarbeek	2880791ef4d2828e585a1c31a80ae87d	t	2020-05-25 06:47:57+00	2020-05-25 08:47:47+00	diddenjozefien@hotmail.com
2767	62	marijke noppe	Etterbeek	\N	\N	ad9b9fec3907a003521d2917d89294a0	t	2020-05-25 06:59:26+00	2020-05-27 17:13:58+00	\N
2719	61	Sarah Deboosere	Brussel	Artist	\N	faa83dd2e13dc8daa0c4c06b0c8e6439	t	2020-05-25 06:36:14+00	2020-05-25 06:36:29+00	\N
2720	60	Chantal Levie	Bruxelles	Musicienne	\N	592ccb016c1deab0388d50b312c1424b	f	2020-05-25 06:36:36+00	2020-05-25 06:36:36+00	\N
2712	60	Katrien Schuermans	St Gilles	\N	\N	eac7713cf4e37c75393e179656dc8ad4	t	2020-05-25 06:30:09+00	2020-05-25 06:36:37+00	\N
2718	61	Valentin Fontaine	Saint-Josse	Consultant	\N	b1dec926e40df24ead1c7a88d3a02b50	t	2020-05-25 06:36:05+00	2020-05-25 06:36:38+00	\N
3853	62	Mieke Simoen 	Anderlecht	\N	\N	a0084a706c08197aa16ac221114a8c5a	t	2020-05-25 18:14:11+00	2020-05-25 18:14:36+00	\N
2730	61	Tea Tönnov	Brussel	\N	\N	54306ad9a718702f54a76d641f9de731	t	2020-05-25 06:40:49+00	2020-05-26 09:31:10+00	tea.tonnov@iki.fi
2973	61	Gwennie DV	Brussel	\N	\N	0dc0ec3a27983f127e69a783c81dd15d	t	2020-05-25 08:58:11+00	2020-05-25 08:58:28+00	gwennie.dv@gmail.com
2725	61	Nick Haaker	1030	Advisor	\N	9cb9aa2c50b0922f37c134d29095a009	t	2020-05-25 06:37:56+00	2020-05-25 06:38:10+00	nick.haaker@gmail.com
5049	62	Koen Meeus	Sint-Joost-Ten-Node	\N	\N	a6b9a099dbe5c9898a41fe5e9ac9fe8d	f	2020-05-29 06:53:20+00	2020-05-29 06:53:20+00	\N
5056	61	Emilie 	Schaerbeek  	\N	\N	8a422e80d5fe2b556f4ed31c3e045952	f	2020-05-29 08:01:28+00	2020-05-29 08:01:28+00	emilieno@hotmail.com
2979	62	Katrien Duquet 	Schaarbeek	Huisarts	\N	d2ea4de6dfa39dce99159e68647e8c21	t	2020-05-25 09:07:28+00	2020-05-25 09:07:50+00	\N
2980	61	CHARLIER CHANTAL	ITTRE	PENSIONNE	\N	972a9d8685b2aa09eb7314155353b9b9	t	2020-05-25 09:07:33+00	2020-05-25 09:08:21+00	chantalcharlier2015@gmail.com
2726	61	Akiko	Brussels 	\N	\N	6cca234df32974f24fe688799815d5e7	t	2020-05-25 06:39:20+00	2020-05-25 06:40:12+00	\N
2727	61	Merel Dekleermaeker	Brussel	\N	\N	851990ecadd5dcb7115034ac004b8aca	t	2020-05-25 06:39:38+00	2020-05-25 06:40:28+00	\N
2728	62	Noel Salazar	Sint-Jans-Molenbeek	Professor	KU Leuven	2ccffcefa0e63d750cf5477779f4e3d0	t	2020-05-25 06:39:44+00	2020-05-25 06:41:32+00	\N
2732	62	Lieven Brouwers	Elsene	\N	\N	6267413853592ab25e3fdb72bce4bc41	f	2020-05-25 06:43:16+00	2020-05-25 06:43:16+00	velouria@gmail.com
2972	60	Elvira Raimo	\N	\N	\N	f5c92886c14acc944c362a810cc7bfd2	t	2020-05-25 08:57:58+00	2020-05-25 09:21:44+00	eraimo@gmx.net
2981	59	Joris Moonen	Schaarbeek	\N	\N	4c9bea53d3d2ffc5fa06821c85d2ab24	t	2020-05-25 09:09:13+00	2020-05-25 09:26:19+00	\N
2724	62	Willem Van Besien	Anderlecht	\N	\N	ec3ec0c2f88fcd53d430a0d6360a98f7	t	2020-05-25 06:37:51+00	2020-05-25 10:01:27+00	\N
2769	62	Lies Ryckeboer	Brussel	\N	\N	9e9347d1ec2ec04167915aadb69b52f6	t	2020-05-25 07:00:56+00	2020-05-25 12:24:33+00	\N
2771	61	Rob D'hondt	Brussels	\N	\N	a172374ada7c3978cb5e1ae95c204315	t	2020-05-25 07:02:17+00	2020-05-25 15:04:22+00	\N
2738	60	Monique Munting	Bruxelles	Indépendante	AIBF	279530c507a9287e697afa2d9ed6c833	f	2020-05-25 06:44:33+00	2020-05-25 06:44:33+00	monique.munting@gmail.com
2739	62	Francis Godawski	Laken	\N	\N	990f4357b44264ec0b5a0ccec515f31e	t	2020-05-25 06:44:44+00	2020-05-25 06:47:07+00	francis.godawski@gmail.com
2740	62	Yelena Schmitz	Laken	\N	\N	83eff6063540c937727e34f4e74fe185	t	2020-05-25 06:45:34+00	2020-05-25 06:47:11+00	\N
2741	61	Hannah Debyser	Schaarbeek	\N	\N	73ee76cb475801170ad0fe349445e241	t	2020-05-25 06:46:43+00	2020-05-25 06:47:54+00	\N
2737	61	Isadora Callens	Anderlecht	\N	\N	08e2150b79baa8f8aad9d48a804619f5	t	2020-05-25 06:44:28+00	2020-05-25 06:49:30+00	isadora.callens@gmail.com
2733	62	Cillian O'Neill	Molenbeek	\N	\N	0e50b21292feb0de12d066888dc97541	t	2020-05-25 06:43:34+00	2020-05-25 06:50:53+00	\N
2745	62	Arno Boey	Ganshoren	\N	1996	b97d74236077276975bd528c5dc80d3b	t	2020-05-25 06:50:38+00	2020-05-25 06:51:04+00	\N
2747	59	Mark Gutschoven	1030	Bewoner	\N	8f55e755764247b29461945a442a4644	t	2020-05-25 06:51:37+00	2020-05-25 06:51:50+00	\N
2723	61	Nathalie Dufays	Jette	\N	\N	45f34bf61844439dd1fe675e5b07ea0b	t	2020-05-25 06:37:12+00	2020-05-25 06:53:00+00	\N
2744	60	Liénard Charlotte	Bruxelles	\N	cha.lienard@hotmail.fr	4d25a8239618ad5091aa106fad53e95d	t	2020-05-25 06:50:05+00	2020-05-25 06:53:03+00	\N
2751	62	Emma George	Jette	cultuurbeleidscoördinator	\N	a2a923a9e74900206a90f7ab1f125e42	t	2020-05-25 06:53:49+00	2020-05-25 06:54:10+00	\N
2750	62	Mattias Van doninck	Sint-Joost-ten-Node	\N	\N	b1a70c0c7f2033d113e2e1c7fb0a0c83	t	2020-05-25 06:53:25+00	2020-05-25 06:55:46+00	openletter.carfreesundays@mattias.eu
2752	59	Mattias Van doninck	Sint-Joost-ten-Node	\N	\N	b5a567b2b57d2c70848b97bfc1fecdd9	t	2020-05-25 06:54:48+00	2020-05-25 06:56:20+00	\N
2754	61	Dafne Oosten	Schaarbeek	\N	\N	f49733409198a6a2ace22b85831d05e3	t	2020-05-25 06:56:03+00	2020-05-25 06:56:21+00	prassede_@hotmail.com
2753	60	Dhana	Bruxelles	Employee	\N	93d7e580fd5133c3e77e6f83562ce4f5	t	2020-05-25 06:55:56+00	2020-05-25 06:56:30+00	dhanaong@gmail.com
2759	60	Sam Kestens	Bruxelles	\N	\N	b45f69056c40d46933ba185c3018174a	t	2020-05-25 06:56:44+00	2020-05-25 06:57:00+00	sam.kestens@gmail.com
2756	62	Jonathan Saelen	Sint-Jans-Molenbeek	\N	\N	b2736a3240900a580857816ca3751b83	t	2020-05-25 06:56:20+00	2020-05-25 06:57:04+00	jonathansaelen@hotmail.com
2761	60	Boigelot Charlotte	Bruxelles	Professeur	\N	02c2ed8086f39b511ad52d92c2e2cb62	t	2020-05-25 06:56:49+00	2020-05-25 06:57:10+00	\N
2758	61	Isabel Janssen	Ixelles	\N	\N	7e92d8983ba4b6af7f707441a27a496a	t	2020-05-25 06:56:34+00	2020-05-25 06:57:54+00	\N
2763	60	Dirix anne	Bruxelles 	\N	La  Ferme du Chant des Cailles 	00034fd3449408ca8c5824bdf8e82f56	f	2020-05-25 06:58:27+00	2020-05-25 06:58:27+00	dirix.anne@live.be
2764	62	Zoë Cassady	 Molenbeek 	Student	cassadyzoe@gmail.com	3c89a827a0ba1260e4de0a58afaca94f	f	2020-05-25 06:58:40+00	2020-05-25 06:58:40+00	\N
2762	61	Dries Callens	Sint-Jans-Molenbeek	\N	FOD BOSA	546cec39b9e84009677b14ec4f14c849	t	2020-05-25 06:57:19+00	2020-05-25 06:58:40+00	\N
2766	60	Olivier B.	Evere	Indépendant	\N	847271ef6d7435c2b56eac95ec1d3747	f	2020-05-25 06:59:12+00	2020-05-25 06:59:12+00	raibant@gmail.com
2765	62	Alexander N	Jette	\N	\N	28b432c98ead2ccbf9ea06617f35d335	t	2020-05-25 06:58:55+00	2020-05-25 06:59:14+00	\N
2768	61	Peter Verhauwen	Brussels	Marketing & communication	\N	c192bf52bd1e7d85fe12fbb2416ee991	f	2020-05-25 07:00:40+00	2020-05-25 07:00:40+00	peter@faqts.be
2743	61	Siemon	Schaarbeek	\N	\N	6b08dcf50be57bba02715f7fca7b7896	t	2020-05-25 06:50:04+00	2020-05-25 07:01:55+00	speeler@gmail.com
2774	60	Gaspard Van Parys	Walhain	Architecte	\N	dfc9ee860c842bd5dfaa9b473df2cdc3	t	2020-05-25 07:03:56+00	2020-05-25 07:04:12+00	vanparysgaspard@gmail.com
2773	61	Cornelius Claeys	Elsene	Citizen	Citizen	7378073b34fe837ab960a87085efe2c5	t	2020-05-25 07:03:03+00	2020-05-25 07:05:55+00	\N
2755	62	Leahy Thomas	1040	\N	\N	09cd9d0e43a6f48c6c57d2dac5297ae1	t	2020-05-25 06:56:17+00	2020-05-25 07:11:22+00	\N
2735	60	Chantal Levie	1030	Pianiste	\N	6626f64e80b5cb03dad90ae87d6ba87c	t	2020-05-25 06:44:07+00	2020-05-25 07:12:44+00	chantallevie@scarlet.be
2748	62	Pieter David	Etterbeek	\N	\N	12012b3f9bb100d583251f8fcd3548a0	t	2020-05-25 06:52:20+00	2020-05-25 07:23:12+00	\N
2775	60	Bart	Brussel 	Civil servant	\N	4136dd81023c64d02bb144d03794935d	t	2020-05-25 07:04:02+00	2020-05-25 07:30:12+00	\N
2736	61	Céline Frank	Brussels	public worker	\N	5a395f7b4d0fff43e46a1d65078e1023	t	2020-05-25 06:44:23+00	2020-05-25 07:43:55+00	\N
2746	59	Yelena Schmitz	Laken	\N	\N	201277666a63098322a94bea151776cf	t	2020-05-25 06:50:54+00	2020-05-25 07:51:23+00	\N
2760	61	Christophe Jonet 	Brussels 	Employee 	\N	98eacd433f0d18cae4303e2c056d9129	t	2020-05-25 06:56:46+00	2020-05-25 07:52:57+00	christophe.jonet@gmail.com
2777	62	Inne Vanderkelen	Sint-Gillis	\N	\N	52957a3735ea28d44096e0ab9b07fb9d	f	2020-05-25 07:06:58+00	2020-05-25 07:06:58+00	\N
2778	60	Mieke Bleyen	1020	Leerkracht	\N	7ac8eade0d838fcd48f25f5c08fedad3	f	2020-05-25 07:07:07+00	2020-05-25 07:07:07+00	miekebleyen@hotmail.com
2974	61	Jasper Vleugels	\N	\N	\N	4658b6e83ab9e4ae5b79a76f26b14c74	f	2020-05-25 08:58:47+00	2020-05-25 08:58:47+00	\N
5177	60	Alexandra	Bruxelles	\N	\N	d16543aec3c75127ee916e3879123384	f	2020-05-30 19:58:12+00	2020-05-30 19:58:12+00	\N
2780	60	Silvia Caneschi	Schaerbeek	employee	\N	bf5569d05e0271f966042816f7b3ac6b	t	2020-05-25 07:08:10+00	2020-05-25 07:08:28+00	\N
3850	61	Tonya aelbrecht	Brussels	Lawyer	\N	7c86978c6f9aa5c9564eea446e39abc4	t	2020-05-25 18:13:48+00	2020-05-25 18:14:33+00	\N
2976	60	Louise	Auderghem	Maman	\N	75fabf7d4c0f5bb78288cab86f7c78e1	f	2020-05-25 09:02:23+00	2020-05-25 09:02:23+00	\N
2779	62	jaak de cock	Brussel	Bediende	Fietsersbond	9a2e1ad3543cfb91367ec276fa03633a	t	2020-05-25 07:08:05+00	2020-05-25 07:12:52+00	veganarchist@hotmail.be
2977	62	Sofie 	Brussel	Architect	\N	6a5581653f74a03e7f4f24413d204f5d	f	2020-05-25 09:03:51+00	2020-05-25 09:03:51+00	\N
2790	62	Lien Willaert	Sint-Gillis	\N	\N	6072864967d2342e8e19fb231e49abc3	t	2020-05-25 07:12:58+00	2020-05-25 07:13:26+00	\N
3854	61	Tess Van den Brande	Herentals	\N	\N	e934490a36c514859c252139e1a38402	t	2020-05-25 18:14:13+00	2020-05-25 18:14:45+00	\N
2978	61	Karolien Nédée	Vorst	leerkracht	Joker	907a004fb975639f96d3682c7f91fe69	t	2020-05-25 09:06:06+00	2020-05-25 09:06:42+00	\N
3082	61	Antoine Geyr	Brussels 	\N	\N	fb520634097f35db5d72c5d4fce997b9	f	2020-05-25 10:04:50+00	2020-05-25 10:04:50+00	\N
3086	62	Erika Vandeplas	SCHAARBEEK 	Bredeschoolcoordinator	\N	b94802227183e69974628062d5fa10a7	f	2020-05-25 10:05:15+00	2020-05-25 10:05:15+00	redeschool@gemeenteschooldekriek.be
3085	61	Carmine Conte	1000	legal analyst 	Migration Policy Group	42f69c092ecb650ac7dcfdb30fb283fe	t	2020-05-25 10:05:13+00	2020-05-25 10:05:26+00	\N
3084	62	Laura Babío	St Joose Ten Node	Project officer	POLIS	ba6d562d2e2cfcdbae6028136d40b250	t	2020-05-25 10:05:03+00	2020-05-25 10:05:33+00	\N
3083	61	Arina Babjuka	Brussels	\N	\N	02f8f03bf6aa9be3c1cc206c88dc5ab7	t	2020-05-25 10:05:01+00	2020-05-25 10:05:35+00	\N
3118	60	Laurent Hachouche	Bruxelles	\N	\N	dcb3c8a9cd26cb97f618e8d8c34f4f48	f	2020-05-25 10:22:13+00	2020-05-25 10:22:13+00	lhachouche@gmail.com
3119	62	Rina Govers	ANDERLECHT	\N	\N	dcd00da852a2a58381cb1f4884fcabd9	f	2020-05-25 10:22:20+00	2020-05-25 10:22:20+00	\N
3120	62	Steven Devarwaere	Laken	Bediende	particulier	8c4908df9a4fadc6fd09465de961331e	t	2020-05-25 10:22:25+00	2020-05-25 10:22:53+00	\N
3081	62	Honey Kohan	Brussels	\N	\N	6ff92624dabb3af1cc4f956c4834a7e6	t	2020-05-25 10:03:09+00	2020-05-25 10:48:53+00	\N
3172	61	Mara Bica 	Brussels 	Babysitter 	\N	69b1ed9501bac1a46b27d4feaec0899d	f	2020-05-25 10:50:53+00	2020-05-25 10:50:53+00	\N
3176	60	Renaud St	Ixelles	\N	\N	c85fe5070185f83c5f82c3485adca519	t	2020-05-25 10:53:22+00	2020-05-25 10:53:50+00	\N
3177	62	Davy Grosemans	Schaarbeek	ontwerper	das ding	c4485861af35cec808f52c282ac0f2a3	t	2020-05-25 10:53:34+00	2020-05-25 10:54:48+00	info@dasding.be
3175	61	Jan Vynckier	Brussel	Arts	\N	eb5ec4c2c37033c24a3ceebbe03a556b	t	2020-05-25 10:52:50+00	2020-05-25 10:55:30+00	\N
3178	60	Pedro Correa	Bruxelles	indépendant	Glow sprl	c0a2d6be5af54e76b498a1f7a833f191	t	2020-05-25 10:56:39+00	2020-05-25 10:56:57+00	pedro.correa@gmail.com
3201	62	Nele De Raedt	Sint Jans Molenbeek	Universitair onderzoeker 	Universiteit Gent 	7a1c23a3682392372c0c08fb0973861a	f	2020-05-25 11:08:33+00	2020-05-25 11:08:33+00	\N
3202	61	Bethany Staunton 	Brussels 	Editor	ETUI	4e752a63f4b3ee07c836ba239ad79a0b	f	2020-05-25 11:08:55+00	2020-05-25 11:08:55+00	\N
3203	60	Sacha Bruylant	Ixelles	Consultant IT / Product Owner / RPA developer	Adneom SA	76bce60f702fe8eb22ef551f66f58009	f	2020-05-25 11:10:03+00	2020-05-25 11:10:03+00	sacha.bruylant@hotmail.com
3204	59	Maureen Vanhoren	Schaerbeek	\N	\N	7057c35fae74536cdf873890f24821be	f	2020-05-25 11:10:14+00	2020-05-25 11:10:14+00	\N
3205	60	Heide Büker	Anderlecht	\N	\N	ef2547a51f1983f960ac74b3b1902e50	f	2020-05-25 11:10:14+00	2020-05-25 11:10:14+00	heide.buker@skynet.be
3206	60	matthieu donc	bruxelles	\N	1981	85edd573285c715969557bc721255121	t	2020-05-25 11:10:16+00	2020-05-25 11:10:29+00	\N
3207	61	Jelle Debrye	Sint-Gillis	Teacher	\N	cb42aae3b91a7cc5e7f3b98dc1f9b0fc	t	2020-05-25 11:10:35+00	2020-05-25 11:23:36+00	jelledebrye@hotmail.com
3238	60	Calvin Duncan	Bruxelles-ville	/	\N	eabc9b413f0660aa77929904a6846fed	t	2020-05-25 11:24:49+00	2020-05-25 11:25:27+00	\N
3253	60	Céline Gautier 	St Gilles 	Journaliste 	\N	461dcbb79d7e4730631e7dcf8fd2af51	f	2020-05-25 11:34:41+00	2020-05-25 11:34:41+00	eline_gautier@hotmail.com
3254	60	DEUX Sara	Bruxelles	\N	\N	5f3fe0cc9c12a97f5e27d6dc7483ed15	t	2020-05-25 11:34:55+00	2020-05-25 11:36:38+00	sdeux@hotmail.com
3259	60	Méline Lemaire	Bruxelles	\N	\N	4448a881f9980a54d093b54a5d4949ff	t	2020-05-25 11:36:52+00	2020-05-25 11:37:27+00	lemaire.meline@gmail.com
3260	61	Stéphane Lagasse	1030-Bruxelles	pensionné	\N	7aeda764a8bf0e99ed27004500e905aa	t	2020-05-25 11:37:11+00	2020-05-25 11:37:48+00	stephanelagasse@yahoo.fr
3261	61	\N	\N	\N	\N	b9b4360729841b3bb7a01c86be5b796c	t	2020-05-25 11:37:40+00	2020-05-25 11:38:10+00	\N
2781	60	Els Cranshof	Brussel Anderlecht	\N	\N	61ec994d9078d4a1a4a0c79412b5951d	t	2020-05-25 07:08:56+00	2020-05-25 11:46:08+00	elscranshof@gmail.com
3235	60	Estelle	Saint Gilles	\N	\N	510bef40038567e176e7aadfbf47edba	t	2020-05-25 11:23:12+00	2020-05-25 11:49:32+00	\N
3293	62	Odile	Vorst 1190	Studente	\N	27fe203a1b8dcb4801454d0bdb02464e	t	2020-05-25 11:58:05+00	2020-05-25 11:58:30+00	\N
3294	62	Linde W.	Brussel	\N	1060	dfcc2bef531000043c3b53a0ef71eb94	t	2020-05-25 11:58:27+00	2020-05-25 11:58:42+00	\N
3296	62	Van Crombruggen tim	Brussel	Zelfstandige handelaar	\N	603ab4d3aac4e092d82f9dd03dd82bfa	t	2020-05-25 11:59:17+00	2020-05-25 11:59:35+00	timvancrombruggen@gmail.com
3295	59	Tanguy Ollinger	Schaerbeek	\N	\N	f5de3cfa689927d94b2e0a43d1c86220	t	2020-05-25 11:58:56+00	2020-05-25 12:00:16+00	\N
3299	62	Frederiekje De Cauter	Laken	\N	\N	bef69d11a59a079563412c77a2af7cda	f	2020-05-25 12:00:40+00	2020-05-25 12:00:40+00	\N
3300	59	Rik Schrauwen	\N	\N	\N	560d89395e18e64dffed4af0e9502c72	f	2020-05-25 12:01:26+00	2020-05-25 12:01:26+00	\N
3303	62	Frédéric meseeuw	Brusssel	\N	\N	7c3623607b01f1cfc763516c886d8ae9	t	2020-05-25 12:02:08+00	2020-05-25 12:04:17+00	\N
3310	62	Romuald De Gryse	Etterbeek	Student	\N	58c35a59707271401b3529d8f8850a17	t	2020-05-25 12:05:23+00	2020-05-25 12:05:58+00	\N
3315	60	Xavier Gillard	1180	Enseignant	ULB	6f41c99b031d768c0421095f0fa21ceb	f	2020-05-25 12:08:22+00	2020-05-25 12:08:22+00	\N
3316	60	Agathe Voisin	Bruxelles	architecte	\N	766402ae3a9f3ae589b89ea597dbecf0	f	2020-05-25 12:08:35+00	2020-05-25 12:08:35+00	\N
3318	61	Laura 	Brussel 	Verpleegkundige 	Clb 	cfb437a2b7c8bb9f5574824f420d3899	f	2020-05-25 12:08:44+00	2020-05-25 12:08:44+00	\N
3297	60	Philippe Boland	Auderghem	\N	\N	ad9d27d1a82d28435103992abf937aea	t	2020-05-25 11:59:41+00	2020-05-25 12:11:36+00	philippe.boland@hotmail.com
3302	62	Rik Schrauwen	\N	\N	\N	707d3483263954fc7d99b5cd562744a6	t	2020-05-25 12:01:57+00	2020-05-25 12:26:07+00	\N
3174	61	Savina Princen	1150	\N	\N	dbea7fdab35760afa97a9f310ca3465f	t	2020-05-25 10:52:48+00	2020-05-25 12:39:43+00	\N
2989	61	Peter Van den Broek	Anderlecht	teacher	CVO Lethas	acfb0a20628debf65af8c7639542a63f	t	2020-05-25 09:12:00+00	2020-05-25 12:47:48+00	peetmagneet@hotmail.com
3301	60	Anne-Sophie CLOSE	Forest	chargée de projet 	Administration communale ixelles 	5dfe1649cc0269c298aafb0edeb7562d	t	2020-05-25 12:01:32+00	2020-05-25 13:35:03+00	\N
3312	60	Simon Elst	Bruxelles	Infirmier	\N	92a93924b3b15645fdea3555880f66da	t	2020-05-25 12:07:13+00	2020-05-25 15:21:39+00	s@nedra.be
2787	62	Mattijs Deraedt	Brussel	Communicatiemedewerker	\N	cec32cd971c6d466070b63547856a827	t	2020-05-25 07:10:50+00	2020-05-25 08:33:04+00	\N
2782	61	Jimmy naessens	Anderlecht	\N	\N	b3f4374ba0d1913f19f0e57b0ec398b5	t	2020-05-25 07:09:22+00	2020-05-25 07:09:44+00	jimmy.naessens@gmail.com
2784	62	Laure	Schaarbeek 	Illustrator 	\N	f15a1800f09030066e58a5d56a080cad	f	2020-05-25 07:10:23+00	2020-05-25 07:10:23+00	\N
2835	61	Olivier thomas	Bruxelles	Comedien	\N	d0ffc31f240fe7e92d1dfcd00406595d	t	2020-05-25 07:42:06+00	2020-05-25 09:40:06+00	\N
2795	62	Jonas Eylenbosch	Sint-Gillis	\N	\N	737945c3a06fd55e355e38bba2ff7683	t	2020-05-25 07:17:22+00	2020-05-25 12:27:41+00	jonaseylenbosch@gmail.com
2785	60	Denis Bosse	Bruxelles	Compositeur	\N	35840252207f635e443f67eb8afd4812	t	2020-05-25 07:10:25+00	2020-05-25 07:10:45+00	denis.bosse@gmail.com
2786	60	Verheylewegen 	Anderlecht 	Etudiant	\N	aa24be444b29c65b650fd93374c33dfb	t	2020-05-25 07:10:37+00	2020-05-25 07:11:05+00	\N
2788	61	Lise Kamers	1090	Bediende	\N	d82086ce9362d6d015440885ecd1d91a	t	2020-05-25 07:11:04+00	2020-05-25 07:11:28+00	\N
2776	61	bardos	bruxelles	actrice	\N	3197a8246bfdf27d72c859c35ee87303	t	2020-05-25 07:06:21+00	2020-05-25 07:13:06+00	\N
1406	61	Rosyidah Nada Nadiah	Woluwe St Pierre	PhD Student	\N	49bc8927344bb1d2a4be35dfc7b32582	t	2020-05-22 17:34:59+00	2020-05-25 07:13:13+00	rnadanadia@gmail.com
2791	60	Anton Pereira Rodriguez	1060	\N	\N	1a072603a5a5439aadfd0ef3dddd30b7	t	2020-05-25 07:13:45+00	2020-05-25 07:13:58+00	\N
2770	60	Amexander Bowles	Etterbeek	Employé	\N	68a645710304c2180d71ede8d41bb57e	t	2020-05-25 07:01:18+00	2020-05-25 07:14:22+00	bowlesalex@yahoo.co.uk
2792	61	Thomas S.	Brussela	Employed	\N	66c7e58d9e8ede9cb32b94fbd427f7c7	t	2020-05-25 07:13:55+00	2020-05-25 07:14:30+00	\N
2757	62	Manuela Bucher	Forest	muzikante 	\N	823d51cc262cda2c2d361838777e1a9e	t	2020-05-25 06:56:21+00	2020-05-25 07:14:55+00	manuelabucher@hotmail.com
2717	61	Arnout Wouters	Brugge	Bediende	EhB	19e1f8987e972877bce489677d9968cb	t	2020-05-25 06:35:33+00	2020-05-25 07:16:49+00	\N
2793	61	elva bova	\N	\N	\N	a8659552bc85efea8ee09650612cbfa3	t	2020-05-25 07:16:59+00	2020-05-25 07:17:27+00	elvabova@gmail.com
2796	61	An Van der Spiegel	Brussels	\N	\N	27dd5f196bed61b405f617a4edbff245	f	2020-05-25 07:17:35+00	2020-05-25 07:17:35+00	\N
2794	60	Peter Verhauwen	Brussel	Marketing	\N	9ab393aaff9410e8a366f5f2626a7d7a	t	2020-05-25 07:17:17+00	2020-05-25 07:18:02+00	peter@faqts.be
2798	61	Nadia	Saint gilles	It	\N	39ba00d6f23583495ba69087fdc193bd	t	2020-05-25 07:18:30+00	2020-05-25 07:18:53+00	\N
2797	60	cecile broche	Bruxelles	Musicienne	\N	69e3cbcd37c842cb039e39b2e0b2517b	t	2020-05-25 07:18:18+00	2020-05-25 07:19:06+00	\N
2799	62	Gilles Michiels	Schaarbeek	journalist	\N	13aea019a9758e0dce2824657277bd19	f	2020-05-25 07:19:10+00	2020-05-25 07:19:10+00	gilles.michiels@outlook.be
2800	60	PAUL FONTAINE	BRUXELLES	\N	\N	a8c52feab17968f3ac22d3afbdf99e6f	t	2020-05-25 07:19:40+00	2020-05-25 07:20:20+00	\N
2803	60	Sylvie Aerts 	Bruxelles 	Fonctionnaire	\N	3b158db6f4d2dbec67352ef050f367af	f	2020-05-25 07:21:52+00	2020-05-25 07:21:52+00	\N
2802	60	Véronique Chantraine	Schaerbeek	Retraitée	\N	ad23a3c623f461e3b00714168f970434	t	2020-05-25 07:21:46+00	2020-05-25 07:22:23+00	vchantraine@gmail.com
2804	62	Jan Schaerlaekens	Elsene	ambtenaar	\N	91e43fd14c2c22f91153779c37b03188	t	2020-05-25 07:22:27+00	2020-05-25 07:22:41+00	\N
2806	62	Hilde Cole	Brussel	Zelfstandig	\N	c2dc248b4d070f0e561b683b11ab0bc4	t	2020-05-25 07:23:11+00	2020-05-25 07:23:28+00	hilde.cole@skynet.be
2783	60	Nic D.E. POTTER	\N	\N	potter.nicde@gmail.com	8f04ab4809f256de7356838e2f7b0007	t	2020-05-25 07:09:22+00	2020-05-25 07:23:44+00	potter.nicde@gmail.com
2807	61	Nel de Mûelenaere	Brussel	Docent	\N	638313229f8c91e51e07f0d13887c286	f	2020-05-25 07:24:40+00	2020-05-25 07:24:40+00	\N
2808	60	Gobert Sylvaine	Bruxelles	\N	\N	e94c0a12bf8c0aba204a54b9b5296745	f	2020-05-25 07:25:16+00	2020-05-25 07:25:16+00	\N
2813	62	Jasper	Leuven	Bediende	\N	08a4bddfd365c64b42ea047c9de9c9f5	f	2020-05-25 07:26:56+00	2020-05-25 07:26:56+00	\N
2814	61	Idir	1000	Citoyen	Bruxelles	41190eccfedee5c95adbe824975d0b41	f	2020-05-25 07:27:24+00	2020-05-25 07:27:24+00	edy30@hotmail.com
2812	60	Pierre Vanderstraeten	Bruxelles	urbaniste	UCLouvain	eb7d0165bb145a358ed1f54b4baae2df	t	2020-05-25 07:26:21+00	2020-05-25 07:27:35+00	pierre.vanderstraeten@uclouvain.be
2810	61	Marilyn Hanssens	\N	\N	\N	227d1299ba983bc8ef7156dc52681966	t	2020-05-25 07:25:58+00	2020-05-25 07:27:52+00	\N
2815	60	Philippe K.	Bruxelles	\N	\N	3483f0eebd0a9d2ce2f8a4ef303ad3ff	t	2020-05-25 07:27:42+00	2020-05-25 07:28:25+00	\N
2809	60	Tim Neels	Sint-Gillis	\N	\N	ddd3a90930842f87c346f21e33ccd5e5	t	2020-05-25 07:25:28+00	2020-05-25 07:28:45+00	timneels@gmail.com
2811	61	Renaud Poels	Elsene	\N	\N	1755ecb3f56d6cdd51fbe5ce6c629370	t	2020-05-25 07:26:03+00	2020-05-25 07:28:47+00	poelsrenaud@gmail.com
2817	60	Vanderstraeten Paul	Bruxelles	sans emploi	\N	39b8eadaeb82a3f49c2068aa79bce5a0	t	2020-05-25 07:29:54+00	2020-05-25 07:30:08+00	\N
2816	62	Lukas Malfait	Brussel	student	\N	235e8b259d253fc80b2ba47d9be72415	t	2020-05-25 07:29:25+00	2020-05-25 07:30:09+00	lukas.malfait@student.ehb.be
2818	62	Dries Gilles	Brussel (Vorst)	Vertaler	All Cars Are Bastards	9e6221700972e8b6f567deeab7642ae0	t	2020-05-25 07:30:50+00	2020-05-25 07:31:39+00	\N
2625	61	Lien De Tavernier	Schaarbeek	\N	\N	c75117ba1b2fcc347f1dde741cd1b6b6	t	2020-05-24 22:44:36+00	2020-05-25 07:32:22+00	liendetavernier@hotmail.com
2819	61	Nicole DE RIDDER	Brussel	gepensioneerde	\N	26eed8d7d7eebfd10ce3f47873eea38f	t	2020-05-25 07:31:43+00	2020-05-25 07:33:21+00	\N
2820	61	Floriano	1000	Student	\N	e0d9917c12adc269f8e615d311234722	t	2020-05-25 07:33:19+00	2020-05-25 07:34:02+00	\N
2805	60	Sandrine cammermans	Bruxelles	\N	\N	3e6ce38a1c40648f133f937854c9d9a7	t	2020-05-25 07:22:37+00	2020-05-25 07:35:00+00	sandrine_charlier@yahoo.fr
2821	61	Michael Schmitt	Brussels	policy advisor	European Parliament	9dc386aed604f287118e7bc04b9b583a	f	2020-05-25 07:35:45+00	2020-05-25 07:35:45+00	\N
2823	61	Gijs ramboer	Sint-Gillis	\N	\N	d5b9a540b64db51e25fa1f2cf5c1191c	t	2020-05-25 07:36:54+00	2020-05-25 07:37:12+00	\N
2824	61	Inge Goossenaerts	Brussels	\N	\N	31237114dfa7a2d14153bb0b2ba9b2af	t	2020-05-25 07:36:58+00	2020-05-25 07:37:29+00	inge.goossenaerts@gmail.com
2822	62	De Wit	1060 Brussel	Regisseur	\N	fd153721d79461d9d7296b51331773d4	t	2020-05-25 07:35:55+00	2020-05-25 07:37:35+00	\N
2828	60	Stanislav	Bruxelles	Indépendant	Budavec Construct	ea6dc1f99be122d5752268385bb920bd	f	2020-05-25 07:38:04+00	2020-05-25 07:38:04+00	\N
2826	62	Wesley S	1000	catering	Het Facilitair Bedrijf	c1a45782d77d2a670858c4d3079e40e8	t	2020-05-25 07:37:36+00	2020-05-25 07:38:26+00	wesleysannen@gmail.com
2831	62	Van Overschelde Josiane	Saint Gilles	koorleider	\N	659c6fac7cfa2851d4f4c750a03d051f	f	2020-05-25 07:38:31+00	2020-05-25 07:38:31+00	jolesco@scarlet.be
2829	61	Rocio Rodriguez Valles	1080	Regulatory 	\N	9c402f54883be3ba73e1440e224d7877	t	2020-05-25 07:38:07+00	2020-05-25 07:38:32+00	\N
2801	61	Valentin Hillen	1160	\N	\N	99a3ba5f71d39b73f18d5d44a20fc8ab	t	2020-05-25 07:19:44+00	2020-05-25 07:39:56+00	\N
2833	60	Thibaut Sârbu-Lefavrais	Schaerbeek	\N	\N	9f79864eaac8abeff709baa6962ba6a8	t	2020-05-25 07:41:11+00	2020-05-25 07:41:55+00	\N
2834	61	Johanna Stoffels	Laken	\N	family of 5 cyclists	17ee18827ec2539a9009f34fcf29a859	t	2020-05-25 07:42:03+00	2020-05-25 07:42:15+00	jwrede@gmail.com
2830	62	Graziella JOST	Bruxelles	\N	\N	166b379f38aea76bb7a545f7ece3e1b4	t	2020-05-25 07:38:23+00	2020-05-25 07:55:00+00	zazou_jost@yahoo.fr
2827	60	Kim Van den Brempt	1030	pianist	\N	cd1dfb568b3d90d9780f30b60c088c63	t	2020-05-25 07:38:01+00	2020-05-25 07:38:51+00	kimvandenbrempt@hotmail.com
2825	60	KarenNaessens	Brussels	\N	Greenpeace	52fb3844743967c5f34664adb0104c4f	t	2020-05-25 07:37:05+00	2020-05-25 07:39:02+00	karen.naessens@greenpeace.org
2832	62	Moreau 	Brussels	Geograaf	\N	116353ce0027408d6ec1a14dda56fcdf	t	2020-05-25 07:39:01+00	2020-05-25 07:39:51+00	\N
2844	61	Marcia Cardoso	Brussels	Marketing Manager	Terumo BCT	ab454490e22df30d17b3df6109254663	t	2020-05-25 07:44:48+00	2020-05-25 07:45:07+00	marcia.cardoso@terumobct.com
2836	60	Marine Declève	Bruxelles	urbaniste	\N	45d0e269e6080001da3ff0746b303b58	t	2020-05-25 07:42:37+00	2020-05-25 07:45:12+00	marine.decleve@uclouvain.be
2985	59	Jan Nachtergaele	Schaarbeek	\N	\N	ba8825225bb354c080be874909f519f6	t	2020-05-25 09:11:07+00	2020-05-25 09:11:37+00	\N
2986	62	Sean V	Brussel	\N	\N	6dc77d9543492e8618de41275061a716	f	2020-05-25 09:11:47+00	2020-05-25 09:11:47+00	\N
2983	62	Kai Tullius	Woluwe St Lambert	\N	\N	4a31bcb3e976e7ffb4726cef6dfa05d3	t	2020-05-25 09:10:05+00	2020-05-25 09:12:35+00	\N
2987	62	Coralie Legrand	Brussel	\N	\N	40c34e8eed3c1f6e3309336d8b3cb423	t	2020-05-25 09:11:50+00	2020-05-25 09:13:20+00	\N
3087	60	ZIMMER, CHLOÉ	UCCLE	\N	\N	03085cea9f8babb66d3a4aabbabda417	t	2020-05-25 10:05:28+00	2020-05-25 10:05:42+00	\N
3121	61	Hanne Lahousse	Laken	\N	\N	19053749089c2170b934e1f711641178	t	2020-05-25 10:22:44+00	2020-05-25 10:23:25+00	\N
3173	60	Sonia Kontogianni	Bruxelles	\N	\N	2ea4482e567aa1ee1a2d6e27d46fa93b	t	2020-05-25 10:51:37+00	2020-05-25 10:51:52+00	\N
3208	60	Debauve Robert	Uccle	Pensionné	\N	5fac18ce661c876d59cd1ea58e3307b4	f	2020-05-25 11:11:40+00	2020-05-25 11:11:40+00	rdebauve@skynet.be
3211	62	Maureen Vanhoren	Schaarbeek	\N	\N	a5864fef2932a2d21f76ff2cdb638fa4	f	2020-05-25 11:11:59+00	2020-05-25 11:11:59+00	maureenvanhoren@gmail.com
3210	60	Brigitte De Clercq	Brussels	\N	\N	eb09ffce65a9d6e5fa6e108e482fa497	t	2020-05-25 11:11:44+00	2020-05-25 11:13:00+00	brideclercq@hotmail.com
3209	60	camillecaze@gmail.com	Ixelles	Troll, ingénieur son	Ex rtbf	96601738225b215d2ecfcd2a06f5a113	t	2020-05-25 11:11:44+00	2020-05-25 11:13:31+00	flpws@yahoo.fr
3213	62	Sandra Naessens	Molenbeek	bewoonster	\N	7aff8ff9131b053858041cbfc5478fc1	t	2020-05-25 11:13:31+00	2020-05-25 11:14:31+00	\N
3214	61	Yves Govaerts	Bruxelles	\N	\N	b4d9db9e990f372da1f0ced359f11b4f	t	2020-05-25 11:13:52+00	2020-05-25 11:14:39+00	\N
3212	62	İrem metin	Brussel	Project manager	Safege	d9aa4fcf295e8a7b14e1bfbf3d9178ce	t	2020-05-25 11:13:16+00	2020-05-25 11:14:46+00	\N
3217	60	Laurence Philippe	Schaerbeek	Citoyenne	\N	3d52784d5f0c2f16a8132bccb9f2f856	t	2020-05-25 11:15:57+00	2020-05-25 11:16:21+00	philippelaurencef@gmail.com
3218	62	Evert van deun	102”	Huisarts	\N	5e6bf9e8e1023a956853245745ea9035	t	2020-05-25 11:16:01+00	2020-05-25 11:16:23+00	\N
3219	60	Elisabeth Horth	Bruxelles	patrimoine	\N	159262269c44b9321172dd411ba2c582	t	2020-05-25 11:16:09+00	2020-05-25 11:16:31+00	elisabeth.horth@gmail.com
3228	61	\N	\N	\N	\N	1531bf1e97515a1951f355e65319976a	f	2020-05-25 11:19:26+00	2020-05-25 11:19:26+00	\N
3229	60	Vincent 	Saint Gilles	Cadre	Banque	9cba11514ea873ae6601e0941ee0dbe6	t	2020-05-25 11:19:59+00	2020-05-25 11:20:22+00	\N
3230	62	Milan Vranckx	Schaarbeek 	\N	\N	5d6c7959f5f28dc82bbc7890b305830a	t	2020-05-25 11:20:20+00	2020-05-25 11:23:11+00	milan.vranckx@gmail.com
3236	62	Hanne Creemers	St Lambrechts Woluwe	\N	\N	5745c505ba6b4da4f1fb72425e9850de	t	2020-05-25 11:24:10+00	2020-05-25 11:24:42+00	creemershanne@gmail.com
3237	62	Charlotte Noël 	Brussel 	Onderzoeker 	VUB	214b423962c024892332b259c6a36570	t	2020-05-25 11:24:29+00	2020-05-25 11:24:49+00	charlotte.noel@vub.be
3244	62	Ingrid Liedorp	Schaarbeek	\N	\N	5c8ca77d1966f10e6c317476d3f44c85	f	2020-05-25 11:27:56+00	2020-05-25 11:27:56+00	\N
3243	62	Nele Van Doninck	Sint-Jans-molenbeek	Onderzoeker 	KU Leuven	38575b8e25cab5a2a2f8bbe3c4c6b566	t	2020-05-25 11:27:49+00	2020-05-25 11:28:29+00	\N
3245	61	Amelie plateau	\N	\N	\N	56ed8e9176dabd01d925e5afb4e87cf0	t	2020-05-25 11:28:12+00	2020-05-25 11:28:37+00	\N
3247	62	Dorien Vanden Boer	Schaarbeek	\N	\N	d46ed8cbe26d3a01a6acd89928051f2a	f	2020-05-25 11:29:20+00	2020-05-25 11:29:20+00	\N
3248	62	Leene	Molenbeek	Educatief medewerker	\N	994c4222a74ecd852c8d252bf683d0ad	f	2020-05-25 11:29:39+00	2020-05-25 11:29:39+00	\N
3266	62	Elisabeth	Bruxelles	1120	\N	472e2b8b911a4ff9315189e698bc5be1	t	2020-05-25 11:40:19+00	2020-05-25 11:40:45+00	\N
3216	60	Dalle 	1030	\N	\N	f199d8a67d7c36fcee80617f5f354dd0	t	2020-05-25 11:14:14+00	2020-05-25 11:40:49+00	mariejuliedalle@yahoo.fr
3269	61	Karel Thys	Brussels	\N	\N	516cc915626d06fc3b47bbcb1c06ef35	t	2020-05-25 11:41:03+00	2020-05-25 11:41:39+00	\N
3270	62	Annelies De Coninck	\N	\N	\N	ad6c811ce533a114cb1565c61805f010	t	2020-05-25 11:41:16+00	2020-05-25 11:41:50+00	\N
3268	60	Ansay	Bruxelles 	Bibliothécaire 	\N	c77524cd02ba2cc019ae372ddf8b1e5f	t	2020-05-25 11:41:01+00	2020-05-25 11:41:51+00	genevieve_ansay@yahoo.fr
3267	60	Thibaut	Forest	\N	\N	3d7ffd0772b577d8fcef0a1bcb1d7d2d	t	2020-05-25 11:40:56+00	2020-05-25 11:45:29+00	\N
3246	60	Debroe Philippe	1030	Fonctionnaire communal	\N	f6681e9a19533bde782d2f4de695b434	t	2020-05-25 11:29:05+00	2020-05-25 11:58:02+00	philippedebroe@skynet.be
3305	62	Bechet Emilie	Bruxelles	Architecte	\N	0cffb58febe88405485f4ad705137c58	f	2020-05-25 12:03:54+00	2020-05-25 12:03:54+00	\N
3304	62	Domien Agten	Brussel	Senior Consultant	BrightWolves	0ef3c4e09d10178e998d76da9bfdc030	t	2020-05-25 12:03:45+00	2020-05-25 12:04:01+00	domienagten@gmail.com
3306	62	Baptiste Argouarch 	Bruxelles	Werknemer	\N	9e3fea72c0e88025fd4f1736b4bde2fd	t	2020-05-25 12:04:10+00	2020-05-25 12:04:32+00	\N
3308	60	Veys Bertrand	Bruxelles	Arboriste	Citoyen	558edb00185c96109d2c685d11690fcf	t	2020-05-25 12:04:39+00	2020-05-25 12:05:08+00	\N
3307	60	Anne 	Bruxelles	Coach	\N	5530001426b35c9e7c5d8ee987346a1c	t	2020-05-25 12:04:33+00	2020-05-25 12:05:29+00	annebuxant@yahoo.fr
3311	62	Lisa Bonduelle 	St-Gillis 	Psychologe	\N	0df31f2db6c2c654575120fffd4decd3	t	2020-05-25 12:06:53+00	2020-05-25 12:07:42+00	lisabonduelle@hotmail.com
3317	60	\N	\N	\N	\N	4d85942fdd9ef98f444dbff685199880	t	2020-05-25 12:08:39+00	2020-05-25 12:08:48+00	\N
3313	61	Agathe Voisin	Bruxelles	architecte	\N	40346dded69701b2ee059b25a55f2d9c	t	2020-05-25 12:07:49+00	2020-05-25 12:08:50+00	\N
3319	60	Margot Wolfs	Ixelles	\N	\N	908addaa02f593892897a70e2830b1ca	t	2020-05-25 12:08:53+00	2020-05-25 12:09:20+00	\N
3320	62	Jan Holderbeke	Sint-Lambrechts-Woluwe	Journalist	\N	660b6c15bd018f3d875b58754f1e3137	t	2020-05-25 12:11:21+00	2020-05-25 12:11:51+00	\N
3321	61	Evangelia Anevlavi	1000	Employee	\N	c7883a83a16311e90a683b25fd2518a4	t	2020-05-25 12:11:49+00	2020-05-25 12:12:10+00	\N
3323	62	Max lootens	Brussel	Student	\N	f59a69b540e5e4c9974c9bbea0517f6d	t	2020-05-25 12:12:16+00	2020-05-25 12:12:38+00	\N
3324	62	Dominik Scholz	Brussel	\N	\N	fab74bf8b0872331588b60e2edcaae09	t	2020-05-25 12:12:43+00	2020-05-25 12:13:59+00	\N
3326	62	Felix Bambust	Brussel	Student	VUB	0573017c1a4cca45879906091a04b8d5	f	2020-05-25 12:14:47+00	2020-05-25 12:14:47+00	\N
3325	60	antoine kervyn	bruxelles	\N	\N	0e24da2ede1ec497b4092977215de45a	t	2020-05-25 12:13:42+00	2020-05-25 12:21:13+00	\N
3309	62	De Rick Lieve	Schaarbeek	Zaakvoerder	\N	1ef9ac89f06ab8cff21f0cbc87462d3a	t	2020-05-25 12:04:55+00	2020-05-25 12:55:32+00	\N
2984	60	Piotr Rapacz	Ixelles	administration	\N	102b920e89aebcfd884f41294c749f09	t	2020-05-25 09:10:56+00	2020-05-25 13:34:05+00	\N
3215	62	Familie Claes - Cassan	Jette	\N	\N	2e575b96a735629349df1fae567f2342	t	2020-05-25 11:14:04+00	2020-05-25 13:49:03+00	catjecassan@hotmail.com
2846	61	Martine van dooren	Brussels	Retreated	\N	8e0fe69b0ddfb92d894200f6455c3a07	t	2020-05-25 07:45:33+00	2020-05-25 08:28:39+00	martine_vandooren@skynet.be
4821	60	Sophie da Rocha 	Uccle	\N	darocha.sophie@gmail.com	8cfd7be08483d96a2f9f3e78c9df3921	t	2020-05-27 18:19:26+00	2020-05-27 18:20:31+00	\N
2843	61	Bernadette D'haeye	Auderghem	Historienne d'art	\N	e19f6c827ef10f93595d01bfb625401f	t	2020-05-25 07:44:15+00	2020-05-25 08:35:17+00	bernadettedevisscher@gmail.com
3855	62	floris rossaert	vilvoorde	scholier	\N	79b1e15de737a2a4f07c1afe7e4f912d	t	2020-05-25 18:15:48+00	2020-05-25 18:16:22+00	\N
2851	61	Therese Kubli	Bruxelles 	Nutrithérapeute 	therese.kubli@b-all.be	c0054351b49706ca953dbb3cf8e1024b	t	2020-05-25 07:47:53+00	2020-05-25 20:09:53+00	\N
2867	60	Pauline soupa	Forest	\N	\N	5740b2e45813f2c0e0578342c15d1f98	t	2020-05-25 07:59:10+00	2020-05-25 08:49:02+00	\N
2839	59	Pieter-Jan Broos	Schaarbeek	Journalist	\N	e5d6bf6a891291392e5464e9a8ba399a	t	2020-05-25 07:43:21+00	2020-05-25 07:43:57+00	\N
2842	60	Lola Smets	Ixelles	\N	\N	47ecaf11a200ae8587797e313b67d132	t	2020-05-25 07:43:57+00	2020-05-25 07:44:13+00	\N
2882	62	Eva De Haes	Brussel centrum	leerkracht	\N	928cb7f87b3f5db740f66ff92e693cbd	t	2020-05-25 08:05:11+00	2020-05-26 20:20:31+00	\N
2848	61	Carolien	1000 	Brusseles	\N	67dcf736904563fcada4528731994018	f	2020-05-25 07:45:51+00	2020-05-25 07:45:51+00	\N
2845	61	Pieter-Jan Broos	Schaarbeek	Journalist	\N	58c9e55e0d363515a6829604e61f3edd	t	2020-05-25 07:45:27+00	2020-05-25 07:46:01+00	\N
2994	62	Tine Van Eyken	Brussel	Stadslandbouwer	Atelier Groot Eiland	bc4c7262abbe766fd3b98a977db52b5c	f	2020-05-25 09:12:40+00	2020-05-25 09:12:40+00	tine@ateliergrooteiland.be
2849	60	Fanchon Deligne	Schaerbeek	\N	\N	dbca2ef600bf841be06e5e29fcdf59e9	t	2020-05-25 07:46:21+00	2020-05-25 07:48:12+00	\N
2850	60	Vandergoten Veronique 	Bruxelles	\N	\N	d1ac61ecb0d9129f69e6858a22e1c381	t	2020-05-25 07:47:40+00	2020-05-25 07:48:52+00	vandergoten.veronique@gmail.com
3001	62	Ine	Sint Jans molenbeek	Cultureel medewerker	\N	17f8f40238c01d84b29dacd7de5ba446	f	2020-05-25 09:16:17+00	2020-05-25 09:16:17+00	\N
2853	60	Nelson BRIOU	Ixelles	avocat	\N	d81db2d4ceb8a4033710b8d98e6e809b	t	2020-05-25 07:48:52+00	2020-05-25 07:49:06+00	\N
2852	61	Calvy Louis-Antoine	Ixelles	Consultant	Bartle	edd8989df23edb37b0f02beaf3599aa4	t	2020-05-25 07:48:45+00	2020-05-25 07:49:10+00	\N
3000	62	Geert Van Maerrem	harelbeke	\N	\N	a276b4370a149ae5989a6cc9736cfe9f	t	2020-05-25 09:15:41+00	2020-05-25 09:17:12+00	geertvma@gmail.com
2999	62	Els Colemont 	Sint-Lambrechts-Woluwe 	Gepensioneerde leerkracht 	\N	0b5e5689123d519d50006591bbd0dd2c	t	2020-05-25 09:15:29+00	2020-05-25 09:18:40+00	elscolemont3@gmail.com
2854	60	Cartuyvels Godefroid	Schaerbeek	enseignement	\N	de8023add17ea3a224b0cbf7fdbd274a	t	2020-05-25 07:49:31+00	2020-05-25 07:50:04+00	godefroid.cartuyvels@segec.be
2993	62	Laura De Baudringhien	Anderlecht	Studente	\N	5ae7f3a9bb677dc268e3cc62c3e419aa	t	2020-05-25 09:12:36+00	2020-05-25 09:20:36+00	\N
2857	62	Hanne Geuens	1090	\N	\N	8f2d47831d37ce4a43877dc0184d9af5	f	2020-05-25 07:50:27+00	2020-05-25 07:50:27+00	hanne.geuens@outlook.be
2840	60	Magali Verdonck	\N	\N	\N	522027126f15cb7e1899cf700e0a4ffd	t	2020-05-25 07:43:23+00	2020-05-25 09:42:04+00	\N
3122	62	Luc Cochez	Overijse	Bediende	\N	a8e04f92d1bb318dec59dfb3cc689485	f	2020-05-25 10:23:25+00	2020-05-25 10:23:25+00	\N
2856	62	Giel Vanhoutte	Sch	Urban planning	1991	de82e5dedfb09576df65a5bebf05c936	t	2020-05-25 07:50:08+00	2020-05-25 07:50:57+00	\N
2858	61	Corentin Dandrimont	Etterbeek	\N	\N	62b11fcb14a3f8a0c125379dac8c2f26	t	2020-05-25 07:50:30+00	2020-05-25 07:51:09+00	\N
2859	60	Ruggero Fornoni	Bruxelles	\N	\N	540d1af1fa1ee1b1a990fa8c7cefdc72	t	2020-05-25 07:50:50+00	2020-05-25 07:52:18+00	\N
3272	60	Julie 	Bruxelles 	Employée 	\N	29d96232e728cefad7350488878b3bcf	f	2020-05-25 11:43:55+00	2020-05-25 11:43:55+00	\N
2860	61	Paolo Nouvion	Brussels	Communications Officer	\N	09721a0616c81538060ff0b7bdc39df2	t	2020-05-25 07:53:38+00	2020-05-25 07:53:54+00	paolo.nouvion@gmail.com
2861	61	Maarten Schmidt	Vorst	\N	\N	e9ba8bf906fa8f2510ce61add6e7d096	f	2020-05-25 07:54:26+00	2020-05-25 07:54:26+00	\N
2855	60	Nicole Serwier	Bruxelles	\N	\N	73e534815b720367188e40fc074db26c	t	2020-05-25 07:49:52+00	2020-05-25 07:54:35+00	nicole.serwier@skynet.be
2862	60	Clotilde Fargeix 	St Gilles 	Sage-femme 	\N	a616842a552ac44323e17467128386f1	f	2020-05-25 07:54:46+00	2020-05-25 07:54:46+00	clotildefargeix@yahoo.fr
2863	60	\N	1080	\N	\N	adc0fe6b495fb4c78753a7de3497d6d7	t	2020-05-25 07:56:17+00	2020-05-25 07:56:38+00	valentina.corbucci@gmail.com
2864	61	Timothy Eden	1060	\N	\N	b3534583a464efc979615b25155644a5	t	2020-05-25 07:56:32+00	2020-05-25 07:56:55+00	timjeden@gmail.com
2865	61	Ursula Kubli	\N	\N	\N	93b0424dc45e3e9025f19e00b4e0b476	t	2020-05-25 07:56:50+00	2020-05-25 07:57:59+00	ursula@kubli.info
2866	61	Katharina Roithner	Ixelles	\N	\N	14b3d86c45e9836da5c6ee7ffd7a7468	t	2020-05-25 07:58:29+00	2020-05-25 07:59:27+00	\N
2871	60	Manon Beauvarlet	Bruxelles	\N	\N	1961427a15f3b078b30c26f9d974aeac	t	2020-05-25 07:59:45+00	2020-05-25 08:00:13+00	manon.bdm@free.fr
2868	61	Joke Detemmerman	Sint-Lambrechts-Woluwe	\N	\N	913f40dac8bccb851765319500f86bf8	t	2020-05-25 07:59:22+00	2020-05-25 08:00:37+00	\N
2875	60	Florent Masson	Schaerbeek	\N	\N	87d5ff9e7ae634cdf4c32ef79cc073f8	t	2020-05-25 08:02:23+00	2020-05-25 08:03:25+00	\N
2874	61	Esther Tack	Sint-Gillis	\N	\N	2872d6dd675869088cb52f2b129e2232	t	2020-05-25 08:02:17+00	2020-05-25 08:04:03+00	\N
2877	60	Christophe	Anderlecht	\N	\N	59eda2fcd5ab3696be3d468a0db84f56	f	2020-05-25 08:04:12+00	2020-05-25 08:04:12+00	\N
2876	60	Eleonore Meeus	Ixelles	\N	\N	95df0cc278fda88ab0c2417273fad315	t	2020-05-25 08:02:59+00	2020-05-25 08:04:19+00	leomeeus77@gmail.com
2872	62	Marianne Swerts	1000 	\N	Brussel 	92140675b1982b577bd55eb679982053	t	2020-05-25 08:01:30+00	2020-05-25 08:04:27+00	marianneswerts@gmail.com
2873	60	Thomas Peuvrel	Schaerbeek	Engineer	\N	b1ecc8940918b89522fad4bbb8deaea1	t	2020-05-25 08:01:59+00	2020-05-25 08:04:41+00	\N
2881	62	Fran Michiels	1040	\N	\N	79af62dd3ea86cc6027ddc0e626fa5c7	t	2020-05-25 08:04:57+00	2020-05-25 08:05:32+00	franmichiels@hotmail.com
2886	61	Jasmijn Post	Brussels	journalist	BRUZZ	696af5a3e170ff7714b9673ecec81fa7	t	2020-05-25 08:07:01+00	2020-05-25 08:07:17+00	jasmijn.post@gmail.com
2887	60	Caroline Kremer	Ixelles	Sage femme	\N	74c0b28ee7d022245fb8f6bf405fc4e4	t	2020-05-25 08:07:28+00	2020-05-25 08:07:45+00	\N
2888	61	Melchior Monnet	1060	Salarié	\N	e0f22a78b1ab5d63a092091ac20a9b09	t	2020-05-25 08:07:37+00	2020-05-25 08:07:54+00	\N
2889	62	Valentine Smeyers 	Schaerbeek 	\N	\N	58e5c32163b5d471cd1755332f2bac85	t	2020-05-25 08:07:49+00	2020-05-25 08:08:13+00	val.smeyers@gmail.com
2885	60	Rob De Lobel	Elsene	\N	\N	312fb001b62be1667dd192909659ba5f	t	2020-05-25 08:06:10+00	2020-05-25 08:08:25+00	robdelobel@hotmail.com
2884	61	Marjory van den Broeke	Elsene	\N	\N	f5267c33a343aa230284a9f5c8630c82	t	2020-05-25 08:06:03+00	2020-05-25 08:08:52+00	jory.van.den.broeke@skynet.be
2890	61	Frank Louwrier	Schaarbeek	\N	\N	8af0ac710ad15ad91cef49aa92c73e87	f	2020-05-25 08:09:54+00	2020-05-25 08:09:54+00	\N
2891	62	Mathias Hungerbühler	Brussel	\N	\N	8d102bece7c6c8b9ec682c431a942423	f	2020-05-25 08:09:57+00	2020-05-25 08:09:57+00	\N
2880	61	Chantal Clement	Brussels 	\N	\N	541cd6b4a7edd08934ee147262279f91	t	2020-05-25 08:04:55+00	2020-05-25 08:10:08+00	\N
2892	61	Delphine Cugnon	Molenbeek 	\N	\N	898868492bb5e0f27b7e7ae261f34ee4	t	2020-05-25 08:10:03+00	2020-05-25 08:10:20+00	\N
2893	62	Sander Goossens	1040	\N	\N	93fd388e81eb487d86249e3472c8af2d	t	2020-05-25 08:10:32+00	2020-05-25 08:10:47+00	\N
2879	62	Fabrice DE PATOUL	Saint-Gilles	\N	\N	8ee652640f39cb7d295d76f082599656	t	2020-05-25 08:04:31+00	2020-05-25 08:11:26+00	fdepatoul@gmail.com
2906	60	Judith	Brussel	Striptekenaar	\N	ca8cd4bb32a43eabb73e0aadc5871126	t	2020-05-25 08:17:08+00	2020-05-25 08:26:28+00	\N
2894	60	Nathalie Conrad	Uccle	Ingénieure	\N	ae007e24d00bd7ec7fa6261ccfb87f86	t	2020-05-25 08:11:06+00	2020-05-25 08:11:48+00	nath_chemineau@yahoo.fr
2895	62	Alice Dehennin	Ukkel	Student	\N	5b4084cc02130621925c37f96d0ced28	t	2020-05-25 08:11:30+00	2020-05-25 08:12:05+00	\N
2883	62	Marc Godts	Brussel	vrij architect	MARC GODTS	bafc1244f50df86c6e6b4dbc83c477d6	t	2020-05-25 08:05:31+00	2020-05-25 08:12:10+00	\N
2897	62	Mathilda	Ukkel	\N	\N	84c3fa9667d9d35745bec5ec40f2a4d7	f	2020-05-25 08:12:50+00	2020-05-25 08:12:50+00	mathildamushiete@hotmail.com
2898	61	Lidewij Nuitten	1030	Tv maker	\N	efe4e8f8ea649914b6a6656ea7905927	f	2020-05-25 08:12:54+00	2020-05-25 08:12:54+00	\N
3132	60	\N	\N	\N	\N	804c856fcda9bf5e256578e93fc6865d	t	2020-05-25 10:29:12+00	2020-06-02 11:31:36+00	\N
2899	61	Pascale Swinnen	1000 Brussels	\N	\N	108ce9350754e0c9ca3a98c963e99b9e	t	2020-05-25 08:13:12+00	2020-05-25 08:46:14+00	\N
2901	61	Philippe Martin	Bruxelles	\N	\N	d3a2a48a15d42a47128bdc5f32fd7812	f	2020-05-25 08:13:48+00	2020-05-25 08:13:48+00	\N
2900	62	Timo	Brussel	Student	/	30762167d79ed04a2921ad57d14641e1	t	2020-05-25 08:13:18+00	2020-05-25 08:13:49+00	\N
2996	62	Laura Verhaeghe	Laken	\N	\N	e042f38c53061ee7c2ccdc57f728a71a	f	2020-05-25 09:14:34+00	2020-05-25 09:14:34+00	\N
2997	62	Mihaly Darida	\N	\N	MVM Zrt	135cd5dce9031d86e5e8205be0b9fa28	f	2020-05-25 09:14:35+00	2020-05-25 09:14:35+00	\N
2904	62	catherine ferrant	Bruxelles	consultante	\N	19d31cb5e7dd9c5a9e9ba464cd47d906	t	2020-05-25 08:16:08+00	2020-05-25 08:16:28+00	catherine.m.ferrant@gmail.com
2905	62	Freddy Rossie	Boekhoute	gepensioeneerd	\N	75cf267930fb98755d721df4b217525c	t	2020-05-25 08:16:22+00	2020-05-25 08:16:43+00	\N
2903	60	Victoire Champenois	Ixelles	\N	\N	f946a3fb67252e7fdcace1e176d7a769	t	2020-05-25 08:14:54+00	2020-05-25 08:16:55+00	victoirechamp@gmail.com
2995	62	Jef Vandenbergen	Jette	Leerkracht	\N	521a377e04d82a7a1397364b211ccf5f	t	2020-05-25 09:14:17+00	2020-05-25 09:15:15+00	\N
2902	62	Alexia Vandenbroucke	Schaarbeek	huisarts	\N	f322abaae3b9de0875238280c3b84591	t	2020-05-25 08:13:58+00	2020-05-25 08:17:17+00	alexiavdb@hotmail.com
3005	61	Nick Jacobs 	Brussels 	Researcher	IPES-food 	40207cf76456dedf623dab34cccd4d05	f	2020-05-25 09:19:57+00	2020-05-25 09:19:57+00	fj85@hotmail.com
2908	60	Deblander	Etterbeek 	Enseignant pensionné 	Quartier durable Broebel’air	24e966822c7180a13158e5ade43428a7	t	2020-05-25 08:18:26+00	2020-05-25 08:19:38+00	jcldeblander@skynet.be
2909	62	Lies engelen	1020 laken	\N	\N	db8cba26c10f4478da42fa9b7fd566ec	t	2020-05-25 08:19:06+00	2020-05-25 08:19:50+00	\N
3010	60	François 	Uccle	Conseil	Positive Thinking Company	3ebca9feb8374e1dacd5aa28b3e8b0e3	f	2020-05-25 09:20:56+00	2020-05-25 09:20:56+00	\N
3007	62	Jade Lefevere	1040	Studente	VUB	4be2bf83a6f547577ab3d8a9d38b06f9	t	2020-05-25 09:20:35+00	2020-05-25 09:21:09+00	jade.lefevere@mac.com
3006	61	Margo Vanderplacke	Brussel	Consultant	1994	22aa2f3853328efe61275ea2c1ef27dc	t	2020-05-25 09:20:33+00	2020-05-25 09:21:15+00	\N
3008	60	Deschamps Garance	Forest	Sage-femme	\N	2ecd037fd43ab00ea668f447e942077f	t	2020-05-25 09:20:35+00	2020-05-25 09:21:16+00	garance_desch@hotmail.com
3009	60	Alison Boutsen	ANDERLECHT	Administratief medewerker	Home-info	cd610ded3fd0c793457b6cfd969548d6	t	2020-05-25 09:20:40+00	2020-05-25 09:21:47+00	alisonneke@gmail.com
3011	62	Hannah vanrintel	Brussel	Eventmanager	Au bassin	8ae800838f409f16b44163825dc002cb	t	2020-05-25 09:21:29+00	2020-05-25 09:22:06+00	hannah@aubassin.be
3012	60	ROSSI MARISE	BRUXELLES 	FONCTIONNAIRE	ONSS-RSZ-LSS	b9da512ed910da5608fd59fc39810936	t	2020-05-25 09:21:53+00	2020-05-25 09:22:19+00	marise.rossi@onss.fgov.be
3014	61	Alberto Cottica	1190	Entrepreneur	\N	ea1a23f255464877eec9885e6b946c29	t	2020-05-25 09:23:03+00	2020-05-25 09:23:18+00	alberto@cottica.net
3013	62	monique gilis	1070	Gepensioneerd	monique.gilis@hotmail.com	d12ca69e8d1f7875f4c7f7855a63456b	t	2020-05-25 09:22:30+00	2020-05-25 09:25:22+00	\N
2998	60	Maria-Luz Vázquez	Ixelles	\N	\N	7cf63b1e57c339608c03e805c24c43fe	t	2020-05-25 09:15:03+00	2020-05-25 09:39:57+00	marialuz.vazquez@scarlet.be
3091	60	Marie-Claude de Patoul	ETTERBEEK	\N	\N	eba46bbfb47031193ac73f5a57801857	t	2020-05-25 10:07:15+00	2020-05-25 10:07:46+00	mcdepatoul@gmail.com
3092	60	Alice delvaux	Bruxelles 	Employée 	\N	3ae4d7961fb104b9da3aed0f7a9961d7	t	2020-05-25 10:07:37+00	2020-05-25 10:07:54+00	delvaux.al@gmail.com
3088	60	François Huntzinger	1210	\N	\N	0776cbd9b32298ab8cf1f8a195fdf369	t	2020-05-25 10:06:27+00	2020-05-25 10:17:48+00	fugawwws@gmail.com
3109	60	Eimear Sparks	1000	\N	\N	bfbd6e1be147513a769c6ffd26b1b2bb	t	2020-05-25 10:17:38+00	2020-05-25 10:18:07+00	\N
3124	61	Sylvia Obregon 	Bruxelles 	Advocacy - NGO	\N	21bd0ce36845ac674a138e7a40c26c71	f	2020-05-25 10:24:12+00	2020-05-25 10:24:12+00	\N
3123	62	Milagros Batista 	Anderlecht 	Nanny 	\N	ca585611e6dbe908d8de29db6f357890	t	2020-05-25 10:23:55+00	2020-05-25 10:24:27+00	milabatista115@gmail.com
3104	62	Merel Selleslach	Brussel	\N	\N	6ba3dac745f777c7aea1d5c92e920aa3	t	2020-05-25 10:11:46+00	2020-05-25 10:26:05+00	merelselleslach@gmail.com
3089	62	Tinne	Zaventem	Bewakingsagent 	\N	911523e389cacf4a624caa15a231ea2a	t	2020-05-25 10:06:37+00	2020-05-25 10:29:09+00	martineheroes@gmail.com
3134	61	Maarten Vanermen	Schaarbeek	Curator	VUB	d27fd6b8223d8cdea2ff63bd6bfd2317	f	2020-05-25 10:29:36+00	2020-05-25 10:29:36+00	\N
3131	61	Ines W	1060	\N	\N	ea10c1a95acb36202a51bd5fc7345be0	t	2020-05-25 10:28:44+00	2020-05-25 10:29:50+00	\N
3146	60	Antonio Parodi 	Uccle	Indépendant 	Myself	924dfb27612169a508540a1f55136155	f	2020-05-25 10:38:20+00	2020-05-25 10:38:20+00	antonio@parodi.be
3147	61	Hans Boey 	Bruxelles 	\N	\N	f2484692586f6debff3f023c80121bf0	t	2020-05-25 10:38:37+00	2020-05-25 10:39:08+00	\N
3148	60	Brabant Morgane 	Saint Gilles	Éducatrice spécialisée 	\N	f9a26f61db8e462f4eb26edfda26957d	t	2020-05-25 10:38:42+00	2020-05-25 10:39:16+00	brabant.m7@gmail.com
3149	60	Apraxine Barbara	Schaerbeek	Enseignement supérieur	\N	26678068c21f8e76a6557026c684bbbe	t	2020-05-25 10:38:57+00	2020-05-25 10:39:21+00	barbara.apraxine@usaintlouis.be
3150	62	Renée Dekker	Schaarbeek	Opbouwwerker	\N	95ca1114f27c0c18ac84045c153f2d20	t	2020-05-25 10:39:38+00	2020-05-25 10:40:15+00	\N
3152	61	Silvia Pastorelli	Bruxelles	\N	\N	23d236992b71fb15d6e9a91857df17e1	t	2020-05-25 10:40:20+00	2020-05-25 10:40:39+00	\N
3151	62	Sarah Uyttersprot	Brussel	\N	\N	79c098032ceb6827cdb25f4558ca2ab1	t	2020-05-25 10:40:00+00	2020-05-25 10:41:01+00	\N
3153	61	Sarine Bar	Etterbeek	\N	\N	e168bf8d2257b56216e70dc34d789173	t	2020-05-25 10:41:42+00	2020-05-25 10:41:58+00	sarineb@gmail.com
3154	60	Christophe Nahon	Ixelles	IT	\N	2f53e81d4c986430dc90c34746ca4e10	t	2020-05-25 10:41:57+00	2020-05-25 10:42:24+00	ch.nahon@gmail.com
3156	60	Debauve	Bruxelles 	Employée 	Loterie Nationale	a8d36b93d3306f873e235a1b15e4e3ad	t	2020-05-25 10:42:37+00	2020-05-25 10:42:58+00	nath.debauve@gmail.com
3155	62	Gideon Boie	Schaarbeek	\N	\N	1484f632a567b4e01f2924149920ae56	t	2020-05-25 10:42:10+00	2020-05-25 10:48:17+00	gideon.boie@kuleuven.be
3130	62	Kris Vanslambrouck 	Brussel	Sociaal werk	\N	767773417e1e83c298ec5c2c8e6944b6	t	2020-05-25 10:28:37+00	2020-05-25 10:51:36+00	\N
3090	60	Gaëtan Herinckx	Bruxelles	Sustainable Future	private	21e95ce64b0bed551ab53ef76c60273b	t	2020-05-25 10:07:05+00	2020-05-25 11:16:26+00	gaetanherinckx@yahoo.fr
2896	60	Angelika Hild	Saint-Gilles	Employée	\N	baeadb9bf574c777cb3ef6da3aa2d875	t	2020-05-25 08:12:12+00	2020-05-25 13:10:44+00	angelika.hild@gmx.net
3327	62	Willeke	Jette	Onderwijs	Privé persoon	644f607862ca8fea1f747865616e3acc	f	2020-05-25 12:14:50+00	2020-05-25 12:14:50+00	willekev@hotmail.com
4822	60	Melier Sofia Cortés	Bruxelles	\N	\N	d2c62a5e7de2e9f264b7f32ec39d4610	f	2020-05-27 18:22:57+00	2020-05-27 18:22:57+00	\N
3328	62	Sofie	Schaarbeek 	Employee 	\N	2e86a9f66cc62dd38fd36d62a8a385f5	t	2020-05-25 12:15:03+00	2020-05-25 12:15:24+00	\N
3373	62	Jan Roebben	Forest	\N	\N	08b0423c1a58567611b2670e6b6db154	t	2020-05-25 12:36:53+00	2020-05-25 19:36:44+00	janroebben@hotmail.com
3330	61	Alpha Vuylsteke 	Elsene	\N	\N	f9d416053b07cd722d7936acd94e4b13	t	2020-05-25 12:16:11+00	2020-05-25 12:16:24+00	vuylstekealpha@gmail.com
3376	60	Emilie CASTEIGNAU	Bruxelles 	Eu affairs 	European communities 	c897f3a609ba041816a75b823aa6159a	t	2020-05-25 12:38:39+00	2020-05-26 07:27:46+00	\N
3366	62	Lisa Decrick	Laken	bediende	geen	9ee0fb8a5c6d3b9d5261dc6fcce877b3	t	2020-05-25 12:33:35+00	2020-05-26 07:42:26+00	\N
3383	61	Brecht Van der Schueren 	Brussels 	Student	\N	152db061298695c0d15e24c8c38bd598	t	2020-05-25 12:41:45+00	2020-05-26 12:12:43+00	\N
3332	61	Francesca Bushell	Brussels	Student	\N	588510ff2fdd464dc32b64a6a5e1bdbc	t	2020-05-25 12:17:23+00	2020-05-25 12:17:58+00	fransu1@icloud.com
3334	61	Daniel Sigurdsson	Brussel	\N	\N	7db30cfb837ef4cb9212cb855e12f08a	t	2020-05-25 12:18:00+00	2020-05-25 12:18:21+00	\N
3331	62	Lieselot Vanhoof	1000	\N	\N	0dc530da3a2297ca97191c93d1b96aad	t	2020-05-25 12:16:58+00	2020-05-25 12:18:32+00	lieselotvanhoof@gmail.com
3329	60	Nicolas Dubuisson	1020	employé	\N	d82517d3949cb531dc9187bbe8e61a76	t	2020-05-25 12:15:19+00	2020-05-25 12:18:33+00	\N
3336	60	Julien T	Brussels	civil servant	EP	e3f64deee0576c0db55cbf10a975434c	t	2020-05-25 12:18:30+00	2020-05-25 12:18:55+00	\N
3322	60	Hans De Corte	\N	\N	\N	bf020015d00048383c4f85928987a387	t	2020-05-25 12:11:57+00	2020-05-25 12:19:56+00	\N
3333	62	Géraldine Clément 	Brussel	Musicus 	\N	2f2d0fb18eb47bc3726089a9a3cf9cc1	t	2020-05-25 12:17:38+00	2020-05-25 12:20:09+00	\N
3338	61	Raphael 	Bruxelles 	\N	\N	cf0e55a788f9e1d8e99a368d6a275501	f	2020-05-25 12:20:11+00	2020-05-25 12:20:11+00	raphaeloberman.bxl@gmail.com
3335	61	Jean Moulart	Brussels	\N	\N	926ccbf8af2ff3376684fef5e10789a0	t	2020-05-25 12:18:24+00	2020-05-25 12:20:14+00	\N
3340	62	Thomas Gits	Gent	Europese Jeugdwerker	Jint vzw	37666a241677e596e426d292922b2913	t	2020-05-25 12:20:29+00	2020-05-25 12:20:49+00	thomas.gits@jint.be
3342	62	jourik	brussel	werfleider	leefmilieu brussel	af2e82dd4bbc1dea126b804f1cbf8f32	f	2020-05-25 12:21:07+00	2020-05-25 12:21:07+00	\N
3339	61	Hyacinthe 	Bruxelles	\N	\N	6378af8501a4f6dc1123203858d85857	t	2020-05-25 12:20:26+00	2020-05-25 12:21:28+00	hyacinthehr.henry@gmail.com
3344	62	Tine Cooreman	Sint-Jans-Molenbeek	\N	\N	682966306d7e1b85150b110c821a163a	t	2020-05-25 12:22:12+00	2020-05-25 12:23:01+00	\N
3346	60	Emilie Holemans	Ronquières	Paysagiste	Bruxelles Environnement	0b12c944c09fe4150306122d98ac534a	t	2020-05-25 12:22:51+00	2020-05-25 12:23:05+00	eholemans@environnement.brussels
3345	62	Oscar Dumoulin	Elsene	Student	\N	0104d6c6cf8978d0d54fd65c8b073541	t	2020-05-25 12:22:44+00	2020-05-25 12:23:09+00	\N
3349	62	Tine Mertens	Sint-Lambrechts-Woluwe	producer	\N	9bfbf2f13c7199c79d045c9dc26f0a58	t	2020-05-25 12:23:32+00	2020-05-25 12:23:50+00	tine.mertens@vrt.be
3351	62	Birgit Cauwelier	1000	\N	\N	4044c397d7a3f31ead965619dad61731	t	2020-05-25 12:23:47+00	2020-05-25 12:24:12+00	bcauwelier@gmail.com
3350	61	Natalia Palacios	Bruxelles	\N	\N	62e230c437d11b52c5492dbe462ca857	t	2020-05-25 12:23:45+00	2020-05-25 12:24:49+00	\N
3352	60	Christian Chatel	Laken	\N	\N	6a379ca53d5cd690aa09257d27bf6cdf	t	2020-05-25 12:24:01+00	2020-05-25 12:24:54+00	chatel.ch@gmail.com
3355	62	Lisa w.	Brussel	\N	\N	91b0d9111bd450b0e027a24aa7ff1071	t	2020-05-25 12:24:46+00	2020-05-25 12:25:28+00	lisawouters@gmail.com
3356	61	Kaatje Roelant	1070	Fonctionnaire	\N	74987a57ee34968d008fa1b811e60151	t	2020-05-25 12:27:23+00	2020-05-25 12:27:48+00	\N
3353	62	Hanna Moens	Sint-Gillis	\N	\N	7afd45195f0254ab524b4052d9567ad2	t	2020-05-25 12:24:32+00	2020-05-25 12:28:24+00	\N
3358	62	Yannic Sels	Schaarbeek	\N	\N	ca205baea5571403e5ab1b86601473c0	t	2020-05-25 12:29:02+00	2020-05-25 12:29:18+00	\N
3357	60	theo	bruxelles	student	/	683c84f244d753a1c81d873a79646a1d	t	2020-05-25 12:29:00+00	2020-05-25 12:29:43+00	\N
3359	60	Lucas T.	Ixelles	\N	\N	1dba3c3845245b9f30999b65d30b6ff0	f	2020-05-25 12:30:40+00	2020-05-25 12:30:40+00	\N
3360	62	Dave Volkaerts	Anderlecht	\N	\N	9c556a76898f291e1520f5cb60e6b448	t	2020-05-25 12:31:53+00	2020-05-25 12:32:05+00	\N
3362	61	Kathelijne Houben 	Brussels	\N	\N	c046ee2ce93fc808e4d7b30fdef8d8af	f	2020-05-25 12:32:34+00	2020-05-25 12:32:34+00	kathelijnehouben@gmail.com
3361	60	Daisy T.	Ixelles 	Étudiante 	\N	33145a6a058868253c7eac45cfef72c8	t	2020-05-25 12:32:05+00	2020-05-25 12:32:37+00	takoum14@gmail.com
3367	62	Gunther De Wit	Brussel	\N	\N	c288a3986bff36c490b9a2750261fa07	t	2020-05-25 12:33:41+00	2020-05-25 12:34:03+00	\N
3368	61	Ariel	Bruxelles	Student	\N	4f44e3eac423805a679986d16c9ab187	t	2020-05-25 12:34:20+00	2020-05-25 12:34:42+00	\N
3369	60	diane 	\N	\N	\N	98abf0dff91c3dffb6c8429a8ace9836	t	2020-05-25 12:34:24+00	2020-05-25 12:34:47+00	\N
3262	62	Julia Weisbrich 	Schaarbeek	Leerkracht	\N	fd0c404df614c2ebae4a04ac8621310c	t	2020-05-25 11:38:12+00	2020-05-25 12:35:23+00	julia_weisbrich@web.de
3371	60	Aude Labaste	Saint Gilles	assistante Parlementaire	Parlement européen	095fd7053534be939dbc375e494b0d6a	t	2020-05-25 12:36:01+00	2020-05-25 12:36:18+00	\N
3372	62	Jo Esmat Theunis 	Brussel 	\N	\N	50d58a22d6626283c57a4d154adf4d1d	t	2020-05-25 12:36:34+00	2020-05-25 12:36:54+00	\N
3374	61	Marjan Verhaegen	Ixelles	\N	\N	c39c7502d26431cded0879dcbef87c93	t	2020-05-25 12:36:58+00	2020-05-25 12:37:28+00	\N
3375	60	Gonzalez	Bruxelles	Psy	\N	3ce0b9eac1797c05ee03a4cb4dc8eda1	f	2020-05-25 12:37:29+00	2020-05-25 12:37:29+00	\N
3364	61	Paulina Banas	Brussels	project leader	\N	ad0180dc019df4cf25c5910f6a98ea50	t	2020-05-25 12:32:43+00	2020-05-25 12:38:36+00	\N
3380	62	Alexis Cayphas	Bruxelles 	Indépendant 	\N	7cc1c058f5a7492b3e6ad6e7834ce274	f	2020-05-25 12:39:49+00	2020-05-25 12:39:49+00	\N
3377	62	Lisa Dreessen	Jette	\N	\N	de6d993dc3ff1a345a0cb75f2de95e30	t	2020-05-25 12:38:56+00	2020-05-25 12:41:36+00	\N
3370	61	Kathrin	Schaarbeek	\N	\N	87518e79d75dcf57c7f9cef8f942b06c	t	2020-05-25 12:34:57+00	2020-05-25 12:41:50+00	kspyck@gmail.com
3381	62	Augustin Meurmans 	Brussel	Student 	\N	1b2918c4874f2b84c7f086ab7b50f3cc	t	2020-05-25 12:41:29+00	2020-05-25 12:42:04+00	\N
3384	61	Livia Spezzani	Uccle	\N	\N	1a04036b838cf266b57265e2ceb0bffb	t	2020-05-25 12:42:01+00	2020-05-25 12:43:35+00	\N
3379	62	Wouter Goossens	Laken	bediende	\N	483a70c16d0955b5cfcd35d17cd39ccb	t	2020-05-25 12:39:27+00	2020-05-25 12:44:42+00	\N
3387	62	Willem	Schaarbeek	\N	\N	203c546b2c9a955460cfc673a4ef8486	t	2020-05-25 12:46:26+00	2020-05-25 12:46:41+00	willemwinnock@gmail.com
3365	62	HR Petersen	Molenbeek	\N	\N	f4cb9505603ab2745c43220d98b932b0	t	2020-05-25 12:32:59+00	2020-05-25 13:02:34+00	\N
3343	62	Wim Baeck	Sint joost ten node	...	1210	b1c8c630bc08946ce431ed55081bb5fc	t	2020-05-25 12:21:52+00	2020-05-25 15:19:35+00	\N
3347	60	Portier	Wezembeek Oppem	\N	\N	90da327e14cdbdb04ea9947f3f9c5058	t	2020-05-25 12:23:02+00	2020-05-25 15:45:10+00	annemarieportier@gmail.com
3378	62	katrien vantomme	brussel	\N	\N	bc86eadc3383ea5286e19144b97c81e8	t	2020-05-25 12:39:13+00	2020-05-25 16:36:08+00	katrienvantomme@hotmail.com
3363	62	Sil Van Geel	Anderlecht	Teacher	\N	80dcb7617975525b3022759f01cf99f0	t	2020-05-25 12:32:43+00	2020-05-25 17:11:22+00	\N
3857	61	Laura 	Saint Gilles	\N	\N	77e0c8fe8e2087ebf1c927399e6717e7	f	2020-05-25 18:16:30+00	2020-05-25 18:16:30+00	\N
3856	62	Annemie	Schaarbeek 	Ecologische bloemenkweekster	\N	fc63e60c4e0d473feb13acda21b7d2ee	t	2020-05-25 18:16:27+00	2020-05-25 18:17:17+00	\N
3385	60	Stefaniutyn	Saint gilles	\N	\N	c72f89c33cdcc48ef7bdf379bd8fdc44	t	2020-05-25 12:42:27+00	2020-05-25 12:42:42+00	alexis.stefaniutyn@gmail.com
3139	60	Chris Reckinger	Woluwe Saint Pierre	\N	\N	4d892d659574bda73203f629b2b5ff88	t	2020-05-25 10:33:11+00	2020-05-25 12:43:18+00	mcringer_2708@hotmail.com
3382	62	Tom Itterbeek 	Bruxelles 	Architecte 	Independant	c5e1241a8457cc69074b24d4cca3ad75	t	2020-05-25 12:41:33+00	2020-05-25 12:43:32+00	itt.tom@hotmail.com
3390	62	els depoortere	Wemmel	bediende	\N	b5e94a21159ab67c9f877516f76d0689	t	2020-05-25 12:46:59+00	2020-05-25 12:47:42+00	depoortere.els@gmail.com
3386	60	Cécile Houpert	Saint Gilles	\N	\N	7fb3619ebc20349a978f54aa17df35f2	t	2020-05-25 12:42:37+00	2020-05-25 12:50:23+00	\N
4823	62	Sjur Bie	Brussel	Leraar	\N	519933c61afc8f0faa4d66f4eb6d1e92	t	2020-05-27 18:23:49+00	2020-05-27 18:24:16+00	\N
3858	62	Hanne Knaepen	Brussels	\N	ECDPM	82c40d00f2463bb1387ebdbc5b52593e	t	2020-05-25 18:18:16+00	2020-05-25 18:18:31+00	\N
4072	60	Elena	Ganshoren	Employée	\N	46252ebfca3e55d9ffb06f105af922c4	t	2020-05-26 02:07:48+00	2020-05-28 11:36:37+00	\N
3863	62	Jan Meeremans	Sint-Jans-Molenbeek	\N	\N	fa4a5ad420e804554a1ee1b172a6b05c	t	2020-05-25 18:22:19+00	2020-05-25 18:23:22+00	\N
4073	60	Julie WAUTERS 	Uccle	\N	\N	b8a6f62465b899e13628c79f2b391cdf	t	2020-05-26 02:43:45+00	2020-05-28 12:54:23+00	\N
3864	61	Pieter Van Bael	Molenbeek	Bediende	\N	bdee61e95f483a4c42fee391787bd53a	t	2020-05-25 18:26:52+00	2020-05-25 18:27:05+00	\N
3866	60	Arnaud Hancisse	1030	Fonctionnaire	arnaud.hancisse@gmail.com	8d5e694f36858b2bfb7e1265b762fda9	t	2020-05-25 18:27:59+00	2020-05-25 18:29:10+00	\N
3868	62	Sofie Van Geit	Leuven	Ambtenaar	Clb	626ade7f52d81c99d2d2a4444a92c867	f	2020-05-25 18:32:18+00	2020-05-25 18:32:19+00	\N
3955	62	Liesbet Vastenavondt 	Sint-Jans-Molenbeek 	\N	\N	3f17fc3921a75b1a171aa203e5d6f13a	t	2020-05-25 20:12:26+00	2020-05-25 20:14:01+00	\N
3879	62	Maartje Houbrechts 	1190 Brussel 	\N	\N	cea32ff74ea7f5702a5f41b44da14138	t	2020-05-25 18:44:55+00	2020-05-25 18:45:18+00	\N
3958	60	Lipińska Anna Barbara 	Bruxelles 	1050 Ixelles 	\N	737e4d8974b13e0bd4bbd2ddcaab6c8c	f	2020-05-25 20:15:34+00	2020-05-25 20:15:34+00	\N
3881	60	Magali Tilmant	Schaerbeek	\N	\N	4ee0aa61dcd350072d475ccdf1520a48	t	2020-05-25 18:46:33+00	2020-05-25 18:47:04+00	\N
3948	61	Jan Szulczyk	Brussels	\N	\N	01727f45d4ae783c9224515208ef49aa	t	2020-05-25 20:00:48+00	2020-05-25 20:17:42+00	\N
3880	62	Hidde-Jan Postma	Overijse	Food Technologist	\N	11b99fb8f5d28bfcaca60f9cd5954539	t	2020-05-25 18:46:32+00	2020-05-25 18:49:04+00	\N
3951	60	Turan	Ixelles	Independent 	TO Consulting	26b2cd6feb63952df7254d4b8153623f	t	2020-05-25 20:07:15+00	2020-05-25 20:18:57+00	\N
3883	60	Robbe Verschueren	Vorst	-	- 	e46a36ee760501b85ec8cf69b2f048ac	t	2020-05-25 18:49:28+00	2020-05-25 18:49:49+00	\N
3882	60	Mathieu Waterkeyn	Ixelles	Urbaniste	\N	3c251127fd5dd14d7e9840991529f5e3	t	2020-05-25 18:48:45+00	2020-05-25 18:59:45+00	\N
4118	62	Geertje De Waegeneer	Brussel	Leerkracht	\N	058dbcaf9df91ea49a0ea6b064e4325f	t	2020-05-26 06:08:08+00	2020-05-26 12:11:30+00	\N
2970	61	Valentina Pavarotti	1190 Bruxelles 	Communications Officer 	\N	03ae69dcdaf8c57c22b7902e49f24612	t	2020-05-25 08:56:18+00	2020-05-25 21:23:04+00	valentina.pavarotti@gmail.com
3940	60	Marie-Paule Stokart	Bruxelles	\N	\N	4000284f805360bec2113ceb698c4bf3	t	2020-05-25 19:54:08+00	2020-05-25 19:56:57+00	\N
3945	61	Mathilde Lingrand	Brussels	\N	\N	943b0350051b5051e93e631df4c3f664	f	2020-05-25 19:57:11+00	2020-05-25 19:57:11+00	\N
3946	62	Wouter Derijck	brussel	\N	\N	620274ba310b49fd52567f927c605fef	t	2020-05-25 19:57:13+00	2020-05-25 19:57:30+00	\N
4066	60	Céline Cattin	Saint-Gilles	Assistante 	CICR	49e2c874c9aa6a9d54af8e5661423c26	f	2020-05-26 00:09:35+00	2020-05-26 00:09:35+00	\N
3947	60	Mathilde lingrand	Bruxelles	\N	\N	2929eaadd8fa691c495601d5dcc5eb2f	t	2020-05-25 19:57:54+00	2020-05-25 19:58:07+00	\N
3939	62	Billiouw Flora	Schaarbeek 	Vroedvrouw 	Wheel of care 	98a05b7aea44ea3020f1a0da9eac825a	t	2020-05-25 19:53:47+00	2020-05-26 11:48:29+00	\N
4022	62	Theo	Forest	\N	\N	81fd7f78b6af94804e9057d3402620fa	t	2020-05-25 21:23:20+00	2020-05-25 21:23:47+00	\N
4067	60	Ria Moeyens	1030 	\N	\N	f4802c01f02ae7f3658d8712d41e89cd	f	2020-05-26 00:38:24+00	2020-05-26 00:38:24+00	\N
4023	61	Torsten Hubsch	Anderlecht	\N	\N	d980e186c34a940cac8a41d709c46e42	t	2020-05-25 21:24:39+00	2020-05-25 21:24:58+00	\N
4027	61	Véronique Donnadille	Woluwe St Pierre	Kiné	libéral 	58a42046d12476e98abbeef87455d6e0	f	2020-05-25 21:30:56+00	2020-05-25 21:30:57+00	\N
4028	60	Christine Mostert	Ixelles	\N	\N	512729b0007f38fcb7f7352052407104	t	2020-05-25 21:32:13+00	2020-05-25 21:41:38+00	\N
4062	60	Edward Kanterian	Bruxelles	\N	\N	6e0a1f6075b49d637a9dd9ebf56fe8f0	t	2020-05-25 23:57:37+00	2020-05-25 23:58:34+00	\N
4063	60	David	1160	\N	Parent de jeunes enfants qui doivent respirer	71173d06ea86331550f8b2b904c6a3aa	t	2020-05-25 23:59:08+00	2020-05-25 23:59:38+00	\N
4064	60	Cédric P.	Bruxelles	Citoyen	ccpki.7@gmail.com	884bc9929fbf44497220a8fc458512da	t	2020-05-26 00:00:01+00	2020-05-26 00:00:39+00	\N
4069	62	Dirk Jacobs	Brussel	Professor	\N	ce512f974f3be1598bc52d0a4cf81aa7	t	2020-05-26 00:48:33+00	2020-05-26 00:49:00+00	\N
4068	60	ellini contses	Bruxelle	\N	\N	60245326d3156f6fba98011856c7c66b	t	2020-05-26 00:46:57+00	2020-05-26 00:49:46+00	\N
4078	62	philip van malderen	Brussel (Vorst)	\N	\N	351847186871c0fbf862b700780ffd72	t	2020-05-26 04:00:45+00	2020-05-26 04:01:01+00	\N
4070	61	Raphaël fisera	Ixelles	EU	\N	e3e5c6056079768565a6a6c0d6a45e1c	t	2020-05-26 01:10:49+00	2020-05-26 01:11:19+00	\N
4071	60	Wannes Demarcke	Molenbeek	\N	\N	6fe0bc05e5d4a1fa999ad3b8136fa1f2	f	2020-05-26 02:01:08+00	2020-05-26 02:01:09+00	\N
4074	61	Anneleen Sterck	Brussel	Ing. Architect	\N	8daa896f6441720f41b5417366657e06	t	2020-05-26 02:56:18+00	2020-05-26 02:56:51+00	\N
4077	61	Willem Jansen	Brussels 	Designer 	\N	9418ce425fdcafd76e848ba917323702	t	2020-05-26 03:29:09+00	2020-05-26 03:30:34+00	\N
4081	61	Anna	Ixelles	\N	EU	0c87351e18f95f551641d526a21f1157	t	2020-05-26 04:31:12+00	2020-05-26 05:01:57+00	\N
3949	61	Sara Ott	Schaerbeek 	\N	\N	c4febe60fe814e8b4ffeeb8fb4859212	t	2020-05-25 20:01:05+00	2020-05-26 09:13:33+00	\N
4079	61	Saskia Hoermann	Bruxelles	UE	\N	d682538cc3e25beaa8f6965151a58166	t	2020-05-26 04:18:39+00	2020-05-26 05:24:48+00	\N
4080	60	catherine mainguet	  Bruxelles	psychologue	\N	cfd1f91e77dc85d82efba7099f5323d0	t	2020-05-26 04:26:15+00	2020-05-26 05:56:32+00	\N
4112	62	Wies Callens	Brussel	beleidsmedewerker	Fietsersbond	d026d088d1b10ae95a80d876e8f71454	t	2020-05-26 05:59:46+00	2020-05-26 05:59:58+00	\N
4114	62	Lize Vaes	1000	Huisarts	\N	8dc8be00686f6e00d9c8ab43fe0930a9	t	2020-05-26 06:04:25+00	2020-05-26 06:04:39+00	\N
4116	60	Luigi	Bruxelles	Étudiant	\N	b04d006e9d80ea5247fc7d2d62ed4842	t	2020-05-26 06:06:57+00	2020-05-26 06:07:57+00	\N
4117	60	Emmanuelle Bribosia	Bruxelles	Professeure	ULB	af7bc3004603839a7bde2e5263910dc7	t	2020-05-26 06:07:14+00	2020-05-26 06:07:33+00	\N
4119	62	Toon Maenhout	Schaarbeek	\N	\N	78ff83bc7b734801521553a480868d31	t	2020-05-26 06:08:27+00	2020-05-26 06:09:07+00	\N
4121	62	Frederik Coppens	Schaarbeek	Bediende	TUI Airlines Belgium	532710ef469a00191bfd277f2affa568	f	2020-05-26 06:10:29+00	2020-05-26 06:10:29+00	\N
4120	60	Duplouy 	SCHAERBEEK	Ingénieur 	\N	9554dd0ffae454b4f3af1b2d61f00c21	t	2020-05-26 06:10:06+00	2020-05-26 06:11:17+00	\N
3859	61	Jan	Antwerpen	Onderzoeker	Ugent	8f318cc634e3f7e3cd22e8056d03188f	f	2020-05-25 18:18:56+00	2020-05-25 18:18:57+00	\N
3389	60	Ekaterine Naos	Bruxelles	fonctionnaire	EC	7b8e0444f466fcb26367e5fdb34619ab	f	2020-05-25 12:46:49+00	2020-05-25 12:46:49+00	\N
1394	61	Priscilla Milis	\N	Facilitator	\N	e85ad8ef9d81987f35aabc8179a30fc1	t	2020-05-22 17:02:21+00	2020-05-25 12:47:24+00	\N
4824	60	Laura Calabrese	Bruxelles	prof	\N	b7b9a0814cb094c7e5824eecb957437f	f	2020-05-27 18:24:48+00	2020-05-27 18:24:48+00	\N
3392	60	Elisabeth van der Haert	Etterbeek 	Avocate	1991	e0f349f463051afee37d19d3294ffbc0	t	2020-05-25 12:48:01+00	2020-05-25 12:48:19+00	\N
3388	60	Stéphane Damsin	Ixelles	\N	\N	1d3203b1dbafef13ac50e5fbfa0e306c	t	2020-05-25 12:46:45+00	2020-05-25 12:48:20+00	stephanedamsin@gmail.com
3393	61	Michaël Stas	Brussel	urbanist	\N	a2535465afa8b7b460bf6de3532c6999	t	2020-05-25 12:48:09+00	2020-05-25 12:48:33+00	\N
3394	62	Xandra	Sint-Lambrechts-Woluwe	\N	\N	6b68a2bb8b7f5869181696b1f32b5324	f	2020-05-25 12:49:00+00	2020-05-25 12:49:00+00	\N
3861	60	Fanny de Smet	Schaerbeek	Citizen	\N	8830c105d978b4d472a354eb8af53be7	t	2020-05-25 18:19:15+00	2020-05-25 18:19:56+00	\N
3395	60	Joseph	1190	\N	\N	dac6710ade7f135c4ff16a1bb99a1588	t	2020-05-25 12:49:18+00	2020-05-25 12:49:32+00	benjamin.joseph.n7@gmail.com
3862	62	Anke	Koekelberg 	Vroedvrouw	Kind en gezin	947caeed833c1681aa3879f577defc5c	f	2020-05-25 18:20:40+00	2020-05-25 18:20:40+00	\N
3396	62	Nicolas Marinus	brussel	\N	\N	825b7ca7f2cb891074f26728d7898b69	t	2020-05-25 12:49:38+00	2020-05-25 12:50:19+00	nicolasmarinus@gmail.com
3399	60	Diane Bernard	bruxelles	Professeure	Université Saint-Louis	9a18f703882c47cae70e5f49dbf21c69	f	2020-05-25 12:50:43+00	2020-05-25 12:50:43+00	\N
3398	60	\N	1180 Uccle	\N	\N	dcc65e203795edce3f720c140f87f94e	t	2020-05-25 12:50:34+00	2020-05-25 12:51:13+00	\N
3401	62	Maxime Czvek	Brussel	\N	\N	812eac9c0b6a23266fb0e6cda180bc7b	t	2020-05-25 12:52:20+00	2020-05-25 12:52:39+00	maxime.czvek@gmail.com
3402	61	Natacha van Haneghem	Ganshoren 	\N	\N	9db74c9a17bfb5083e6ed76e384ab76b	t	2020-05-25 12:52:27+00	2020-05-25 12:52:42+00	natacha.van.haneghem@telenet.be
3400	62	Lucas Roefmans	Molenbeek	student	\N	12f17af00dc022bc8f2403ddd164935c	t	2020-05-25 12:51:53+00	2020-05-25 12:54:01+00	\N
3404	61	Aude Van den Bussche	1000 	Consultant	1990	cc3dfa6defc2c63bd753f93ef27e5121	f	2020-05-25 12:54:15+00	2020-05-25 12:54:15+00	\N
3405	62	Itamar Shachar	1060 Saint Gilles	Researcher, Ghent University	\N	605eacf46c853b68177d4ede2b53f05f	f	2020-05-25 12:55:42+00	2020-05-25 12:55:42+00	itajab@gmail.com
3406	61	catherine fierens	anderlecht	\N	\N	2beff0e10aad45463d7b60d154d1dd91	f	2020-05-25 12:55:44+00	2020-05-25 12:55:44+00	\N
3407	62	Lisa Verhelst	Jette	leraar	\N	dc03a52deb762d68058cc39058f3ff3d	f	2020-05-25 12:56:11+00	2020-05-25 12:56:11+00	lisa.verhelst@gmail.com
3408	62	Louise Young	Brussel	Student	Ugent	8ed5a284db7df0179f6d5283eb19ba60	f	2020-05-25 12:56:19+00	2020-05-25 12:56:19+00	\N
3409	62	Paulina hernandez	Bruxelles	Travailleuse sociale	\N	08ed2c534d457b3ee8e048c36ba13fe6	f	2020-05-25 12:58:06+00	2020-05-25 12:58:06+00	\N
3410	61	George Niland	Brussels	Unemployed	\N	200793b83aaddbefc951072b7107c74d	f	2020-05-25 12:59:27+00	2020-05-25 12:59:27+00	\N
3412	62	L. Flussie 	1080	\N	\N	8109a3104ff6a9a92ec9b3b2ec6f5810	f	2020-05-25 13:00:35+00	2020-05-25 13:00:35+00	\N
3414	62	Nathalie Czerwonogora	Bruxelles	jurist	leefmilieu Brussel	01b993de5a0260a76de8fa87d21d2124	f	2020-05-25 13:01:56+00	2020-05-25 13:01:56+00	\N
3415	60	Gianluca Monte	Saint Gilles	\N	\N	6444c7da100f47781a8c2f8544fb3de2	f	2020-05-25 13:03:20+00	2020-05-25 13:03:20+00	gianluca.monte@outlook.com
3416	60	Catherine Blin	1170 Bruxelles	\N	\N	52e4a38c637957dc9e79e07aac3a52e1	f	2020-05-25 13:04:09+00	2020-05-25 13:04:09+00	\N
3417	62	Elisabeth Verniers	Schaarbeek	\N	\N	6956de4da435fbf1245648b3ccc55197	f	2020-05-25 13:07:06+00	2020-05-25 13:07:06+00	lisabeth.verniers@gmail.com
3419	62	Eline	Laken	\N	\N	23a2e412176e2faecc730785d3aa3866	f	2020-05-25 13:08:29+00	2020-05-25 13:08:29+00	\N
3420	62	Marie Palmers	1210 Sint-Joost-Ten-Node	Student	\N	455daf63a1664ed9350bf50d53f2b178	t	2020-05-25 13:08:33+00	2020-05-25 13:08:47+00	\N
3421	60	COLIN SELS	bruxelles	etudiant	\N	b647ce552062f82caab68539073fd74d	f	2020-05-25 13:08:48+00	2020-05-25 13:08:48+00	\N
3423	62	Jasper Rooselaer	Jette	student	\N	4614e9d5ce2b1572be74442c89147e7b	f	2020-05-25 13:10:18+00	2020-05-25 13:10:18+00	jasperrooselaer@gmail.com
3427	62	Veerle de vos	Molenbeek	Journalist	\N	bf0b948aa5d35b8eae8a3a32994ac53d	f	2020-05-25 13:10:56+00	2020-05-25 13:10:56+00	devosve@hotmail.com
3425	61	Dimitri	brussel	\N	\N	461165d909ffdff10bff9e91d1d55bb5	t	2020-05-25 13:10:45+00	2020-05-25 13:11:01+00	thyssensd@gmail.com
3424	61	Arnaud Van Blommen	1140	\N	\N	a6c2a53eb7e12c5c54f09d8fe9a691fd	t	2020-05-25 13:10:23+00	2020-05-25 13:11:12+00	\N
3428	62	Stefan Jille	Etterbeek	\N	\N	9737caf7641d4901ed90c9316aabc8f3	t	2020-05-25 13:11:21+00	2020-05-25 13:11:53+00	\N
3430	60	Desmaele	Bruxelles	Enseignante	\N	84f228066563d443dbd84e41322db3e6	t	2020-05-25 13:11:47+00	2020-05-25 13:12:43+00	\N
3426	61	Karen Hoehn	Watermael-Boitsfort	Consultant	Bonstar SRL	fc8e84bb22f0e2101640652e158fe347	t	2020-05-25 13:10:53+00	2020-05-25 13:13:02+00	\N
3431	61	Eloise	Sint-Gillis	student	\N	46b2a42ee9a574d47efc81e992c64f2c	t	2020-05-25 13:12:39+00	2020-05-25 13:13:05+00	\N
3432	62	anoniem	Brussel	\N	\N	9b876360685db48c957d623faa008592	f	2020-05-25 13:13:38+00	2020-05-25 13:13:38+00	\N
3435	62	Cathy Calonne	Sint-Jans-Molenbeek	\N	\N	a914cc3e5f32df6c8ca77d90e87afb8b	t	2020-05-25 13:14:08+00	2020-05-25 13:14:23+00	\N
3434	62	Paul Vandemeerssche	Sint-Genesius-Rode	-	\N	85365500175399cc34d7151e029c344a	t	2020-05-25 13:13:53+00	2020-05-25 13:14:50+00	paul.vandemeerssche@telenet.be
3436	61	Busseniers Laurence	Molenbeek-Saint-Jean	\N	\N	8bdfbf6e919124434a1736efbc9ceaf5	t	2020-05-25 13:14:20+00	2020-05-25 13:14:55+00	laurence.busseniers@gmail.com
3433	60	Menier Denis	Schaerbeek	Musicien	\N	6d89496697a8849d6fc059889f7c1e72	t	2020-05-25 13:13:42+00	2020-05-25 13:14:57+00	\N
3437	60	Hannah Roderick	Brussel	\N	\N	2f75031e6beb46b4c60d84eab688b8e9	t	2020-05-25 13:16:20+00	2020-05-25 13:16:36+00	\N
3440	60	Raphaël FENAUX	Bruxelles	\N	\N	16131f87b0e0c820e1fd391166cc3b09	t	2020-05-25 13:17:36+00	2020-05-25 13:18:05+00	\N
3439	61	Eline VA	\N	\N	\N	9c110590ddd66405f558aa55532d5663	t	2020-05-25 13:17:33+00	2020-05-25 13:18:06+00	\N
3441	62	Flavius Moga	Laeken	lerar	Ados Pilifs	6fa84e3dbc71a10c1e267e699766b223	t	2020-05-25 13:18:03+00	2020-05-25 13:18:27+00	moga.flavius@yahoo.ro
3438	62	Géraldine Delavignette	Brussel	\N	\N	1cd9aa9655d74e8b3db24763b44b0d5e	t	2020-05-25 13:16:40+00	2020-05-25 13:18:32+00	\N
3442	62	Michael Dilissen	1030	Student	\N	21967fca3faaa1fbf64314a280043a11	t	2020-05-25 13:18:14+00	2020-05-25 13:18:41+00	\N
3444	62	Line	Brussel	Bediende	\N	39c671317fa172e3fbc451ae7809a634	f	2020-05-25 13:18:55+00	2020-05-25 13:18:55+00	\N
3422	60	Simon Deleruelle	Brussels	\N	12/03/1984	df5559326fe6171ebf846acf394e9fc5	t	2020-05-25 13:10:06+00	2020-05-25 13:20:17+00	simon.deleruelle@gmail.com
3445	60	Camille	Forest	Employée	\N	4af415486d91aeac612d999cc1934304	f	2020-05-25 13:21:02+00	2020-05-25 13:21:02+00	\N
3446	61	Bart Maes	Halle	\N	\N	08dac1fb267bf3c0ab0757708edc7c56	f	2020-05-25 13:21:09+00	2020-05-25 13:21:09+00	\N
3391	61	Johannes Hock	Woluwé-Saint-Lambert	Analyst	Amdocs	ee5d80062cb5de22bbb32e344d26b99e	t	2020-05-25 12:47:50+00	2020-05-25 13:21:11+00	jozilla@gmx.net
3397	60	Laurent Wilms	Bruxelles	\N	\N	a600505276ab7ae2699039367effdbd7	t	2020-05-25 12:50:34+00	2020-05-25 13:32:00+00	\N
3447	61	Barbara Sandra	1050	Urban Designer	\N	70adeb1f46f7ca4deb69a61fb96f3a53	f	2020-05-25 13:21:41+00	2020-05-25 13:21:41+00	barbara_sandra@hotmail.com
4825	62	Jasmine De Bruycker	Jette	\N	\N	9ac130ce9e4396db228822cba0dc3da1	f	2020-05-27 18:36:02+00	2020-05-27 18:36:02+00	jasminedb@gmail.com
3449	60	HALLET	SCHAERBEEK	AVOCAT	\N	6be41c1128fb338a9189e88533453179	f	2020-05-25 13:21:56+00	2020-05-25 13:21:56+00	\N
3448	60	Pierre Demoulin	Bruxelles	libraire	Librairie Novembre	9c44ddce4362fc2a8325e61bdbed086f	t	2020-05-25 13:21:44+00	2020-05-25 13:22:14+00	\N
3450	61	Lutgard Van Gerven 	Antwerpen 	\N	\N	912f4e27b50dfa65955666b151296208	f	2020-05-25 13:22:31+00	2020-05-25 13:22:31+00	zusvangerven@gmail.com
3451	62	Hannah Broucke	Brussel	Ingenieur	\N	ecbe50f3fe7c12d8f00928ec95b2bbc9	f	2020-05-25 13:24:04+00	2020-05-25 13:24:04+00	\N
3454	62	Naomi van Binsbergen	Neder-Over-Heembeek	student	\N	e2ae5d2236631d9a7a7ce7ec370891b8	f	2020-05-25 13:24:46+00	2020-05-25 13:24:46+00	\N
3867	61	Anke	Koekelberg 	Vroedvrouw	\N	3deb3168475574541a2a2395c1bf4836	t	2020-05-25 18:29:26+00	2020-05-25 20:39:10+00	\N
3869	61	Liesbet Allegaert	Laken	\N	\N	6fa786ad9378b4551fca7fe312254cbc	t	2020-05-25 18:35:08+00	2020-05-25 18:36:08+00	\N
3872	62	Annelies Lantsoght	Sint-Gillis	Leerkracht	\N	be8897ba048318196787f23ddc81cc38	t	2020-05-25 18:37:25+00	2020-05-25 18:38:10+00	\N
3460	60	serge onnen	Sint Gillis, Bxl	charcutier	\N	d2af45a2a1c3e6cca30966b90d4fd0e5	t	2020-05-25 13:26:35+00	2020-05-25 13:26:53+00	\N
3443	62	Grietkin De Mulder	Brussel	Sociaal cultureel werker	\N	a721260bde42378d541089dde58cb101	t	2020-05-25 13:18:22+00	2020-05-25 13:27:09+00	\N
3457	62	Korneel De Clercq	Sint-Jans-Molenbeek	radiopresentator	\N	d58f1cde5c6ba0d182fe0a713d300873	t	2020-05-25 13:25:37+00	2020-05-25 13:27:30+00	\N
3871	62	Maartje Soetaers	1030	\N	\N	a81fd1b847e0e00516958ee28b32aa67	t	2020-05-25 18:37:12+00	2020-05-25 18:37:32+00	\N
3462	60	Evelyne Wetz	1000	Employée	\N	3dd13aaff637988585ac4f158b0a5437	t	2020-05-25 13:27:26+00	2020-05-25 13:28:30+00	evelynewetz@gmail.com
3463	61	Laurence Anciaux	Ixelles 	\N	\N	f1c271e81fef7a3a8a234e24f30a67f2	t	2020-05-25 13:27:59+00	2020-05-25 13:29:37+00	\N
3870	62	Sybille De Plu	Ixelles	\N	\N	44ae424278fcd8d60825b44e7ec9fcdf	t	2020-05-25 18:35:42+00	2020-05-25 20:07:07+00	\N
3455	61	Jan Potters	Saint-Gilles	Chercheur	\N	35703ac860ad5d36021aac5551231377	t	2020-05-25 13:24:50+00	2020-05-25 13:30:54+00	\N
3873	60	Muller Hervé	Etterbeek	Employé	Aucune	61e3a6c96095a878b6a82228a5ea361b	t	2020-05-25 18:38:15+00	2020-05-25 18:43:20+00	\N
3467	61	Mira Bat-Ochir	Laken	\N	\N	3531fd5241cdfbaea0155df123d9942e	t	2020-05-25 13:33:16+00	2020-05-25 13:33:31+00	\N
3469	60	Aude P	Bruxelles	\N	\N	a1138f86dfebd54b3b2fd2ffb3ab24b7	f	2020-05-25 13:34:31+00	2020-05-25 13:34:31+00	\N
3468	61	DEUSSEN Olaf	Brussels	\N	\N	ee9d694d7fa91b309d78887f9cb2bd7d	t	2020-05-25 13:34:22+00	2020-05-25 13:34:47+00	olaf.deussen@googlemail.com
3466	60	Katleen Brokken	Sint-Gillis	\N	\N	bbf16843ac33c19bdd8f7e8e45128f13	t	2020-05-25 13:33:05+00	2020-05-25 13:35:18+00	\N
3459	60	Nathalie Janne d'Othée	Bruxelles	\N	\N	31bbafa6dfbf25f174e93a00f4d2e87b	t	2020-05-25 13:26:23+00	2020-05-25 13:37:42+00	natjanne@hotmail.com
3470	62	Loïc Gillerot	Beersel	Onderzoeker	UGent	c25c971e9cef78477d9c9e9fcf84d6eb	t	2020-05-25 13:37:17+00	2020-05-25 13:38:10+00	\N
3465	62	Lore Desmet	Schaarbeek	\N	\N	9eb563bb38dac265b46c2d47aea3e0a0	t	2020-05-25 13:31:32+00	2020-05-25 13:38:44+00	\N
3471	60	Stan Dewulf	Sint-Jans-Molenbeek	Student	\N	577a779ae7dfa7638de180cd78f971a7	t	2020-05-25 13:37:52+00	2020-05-25 13:39:02+00	\N
3473	60	Nicolas Frénay	IXELLES	\N	\N	dee5faf1ae57d37a4f69914c2290b117	t	2020-05-25 13:39:55+00	2020-05-25 13:40:06+00	\N
3474	62	Kurt Boes	Brussel	\N	\N	eac67fb9c64084a09a8f920706aaf466	t	2020-05-25 13:41:57+00	2020-05-25 13:42:23+00	kurt.boes@telenet.be
3478	62	Antonella Lacatena	Bruxelles	\N	\N	2ba21a01985d05e8a82c21ed31057c78	f	2020-05-25 13:43:10+00	2020-05-25 13:43:10+00	\N
3477	60	Maarten Coertjens	Sint-Agatha-Berchem	\N	\N	a7437f795feef13ce5fa849af0213c58	t	2020-05-25 13:42:46+00	2020-05-25 13:43:14+00	\N
3475	62	Anoniem	Sint-Gillis	\N	\N	22eb33686efec5be5969e5aacf61676c	t	2020-05-25 13:41:58+00	2020-05-25 13:43:19+00	\N
3476	62	Emma Hermans	Brussel	Student	\N	758be4dd04f599db55b3cfe3ab048311	t	2020-05-25 13:42:40+00	2020-05-25 13:43:45+00	\N
3464	60	Van den bogaert	ixelles	Avoctae	\N	bb5d7b84fe57c25816c8885d45361cee	t	2020-05-25 13:30:48+00	2020-05-25 13:44:03+00	vandenbogaertlarissa@gmail.com
3479	60	Lily Bushell	Bruxelles	Étudiante 	\N	64099a5425a6431f244d1b4aea425b92	t	2020-05-25 13:44:47+00	2020-05-25 13:45:13+00	liltsu.yuki@gmail.com
3480	60	Isabelle Allinckx	Bruxelles	Employée	\N	e3889a4bdb0b887eb7fc35fd704a7ef3	f	2020-05-25 13:45:40+00	2020-05-25 13:45:40+00	\N
3481	60	Bénédicte Franck	Uccle	\N	\N	e69597ee997355a4fb70dc0c8f0aae05	t	2020-05-25 13:46:42+00	2020-05-25 13:48:50+00	\N
3483	61	ISABELLE	Bruxelles	\N	\N	cdf681dce4afea4a6df78fd371848910	t	2020-05-25 13:48:39+00	2020-05-25 13:49:01+00	isallinckx@gmail.com
3484	60	Marjorie Unal	BRUXELLES	Coordinatrice	\N	d96a99f16c41cc6b1e69d0bdf9384229	t	2020-05-25 13:49:06+00	2020-05-25 13:49:45+00	marjorieunal@yahoo.fr
3487	62	Klaartje Cops	Schaarbeek 	 	\N	47361570f9a3f8a4a6f73c22e77b4020	t	2020-05-25 13:52:33+00	2020-05-25 13:53:01+00	\N
3486	60	Barbara Menier	1030	Enseignante	\N	e7d5df33e1e7ad4f79e4be8d9d4c1402	t	2020-05-25 13:51:54+00	2020-05-25 13:53:14+00	\N
3489	62	Saar Timmermans	Brussel	\N	\N	3f1c0b5f157b5b0d842a503012d6f21e	f	2020-05-25 13:55:07+00	2020-05-25 13:55:07+00	\N
3485	61	Ruth Flikschuh	1190	bediende	\N	0a0ed894523475a6a66f1c0b35856aab	t	2020-05-25 13:49:59+00	2020-05-25 13:56:27+00	\N
3490	61	Celeste Calicante	Etterbeek, Brussels	\N	\N	570ddbd1bdedab44d6607c2d573a29a8	t	2020-05-25 13:55:51+00	2020-05-25 13:56:33+00	\N
3491	61	Louise Vandeputte	schaarbeek	Student	1999	0e20fa009dca23b8f559e251abbc24c8	f	2020-05-25 13:57:15+00	2020-05-25 13:57:15+00	\N
3492	60	Nicolas Kuen	Ixelles, Bruxelles	\N	\N	b9b368cd303fa78cddb497c300cc9e20	f	2020-05-25 13:58:43+00	2020-05-25 13:58:43+00	\N
3494	60	Florian Schuett	Schaerbeek	Enseignant/chercheur	\N	a2271294028c6de9f12dca2b11eeead7	t	2020-05-25 13:59:02+00	2020-05-25 13:59:23+00	schuett.florian@gmail.com
3495	61	Jean-Luc Wietor	Elsene	\N	\N	3d9ede6a96aa8be4d5d741fd8e23ef87	t	2020-05-25 13:59:02+00	2020-05-25 14:00:04+00	jlwietor@hotmail.com
3496	60	Bernard guyot	Auderghem	1160	enseignant - musicien	ae2a5c8103a6998e3f895e4ec7f045cd	t	2020-05-25 14:00:25+00	2020-05-25 14:01:43+00	berguyot@gmail.com
3500	60	Sarah Lakis	Bruxelles	\N	\N	1caa8bb442cdd13c317e0f671f25d764	t	2020-05-25 14:02:31+00	2020-05-25 14:03:26+00	sarahlakis@msn.com
3501	60	Anke Bracke	Elsene	Projectmedewerker	Mobiel 21	46a41effcb0f689ff45bfe7e189eae28	t	2020-05-25 14:03:04+00	2020-05-25 14:04:06+00	ankebracke@hotmail.com
3497	62	Annelies Keyers	Brussel	Sociologe/actrice	\N	0211f65c9b9169dd6209b00833a0fdda	t	2020-05-25 14:01:06+00	2020-05-25 14:04:24+00	\N
3502	60	Denis Sarah	Bruxelles	Employée	Commune de Forest	03ddd3527118ec0ca6c934c78010b4d7	t	2020-05-25 14:03:11+00	2020-05-25 14:04:31+00	\N
3493	61	Anton Kouzemin	Brussels	Actor	\N	f282948fb4e2691a6b93e9bf7d5b409c	t	2020-05-25 13:58:58+00	2020-05-25 14:11:35+00	kouzeminanton@yahoo.fr
3498	62	Sim Coddé	Antwerpen	\N	\N	c177f374ade744c2c499c717706e1c28	t	2020-05-25 14:01:20+00	2020-05-25 14:12:22+00	\N
3499	61	Gerd Holzhauer 	Brussels	Focntionaire	Conseil de l‘Europe Européenne 	dea531a87f50071d893852a0388318d7	t	2020-05-25 14:01:55+00	2020-05-25 14:29:30+00	\N
3503	62	flor didden	schaarbeek	\N	\N	99c6e45de3dd4f66c67efbc1bb9bf208	f	2020-05-25 14:03:13+00	2020-05-25 14:03:13+00	\N
4826	60	Nasrine	Bruxelles	1030	\N	11b163f1d5a55fc53e87515d33a35066	t	2020-05-27 18:42:40+00	2020-05-27 18:43:10+00	\N
3915	60	Sophie Perdaens	FOREST	\N	\N	16469b099c878bbb29e8a2dc17a8feed	t	2020-05-25 19:38:16+00	2020-05-25 19:38:49+00	\N
3506	60	Noa Jacobs	Anderlecht	étudiante	\N	b83ab6524c851f13a8009f0e164eee95	t	2020-05-25 14:05:05+00	2020-05-25 14:44:56+00	\N
3504	60	Winant noella	Bruxelles 	Infirmière	\N	96c423a6f308219d59a633f37d8db9da	t	2020-05-25 14:03:48+00	2020-05-25 15:06:25+00	noellawinant@gmail.com
3874	60	Marta Navarrete 	Ixelles	\N	\N	b1bc60e49fda40423396b878f4f7c35a	t	2020-05-25 18:38:37+00	2020-05-25 18:39:29+00	\N
4827	60	Bernard Goyens de Heusch	Woluwé-Saint-Pierre	Cycliste	\N	e5417c6483074b76c8f091662975a156	f	2020-05-27 18:45:42+00	2020-05-27 18:45:42+00	bernard.deheusch@hotmail.com
3896	60	Amandine Rose 	Auderghem 	\N	\N	514b9aeb1d541ec8ce2605cd9a0b85f7	t	2020-05-25 19:14:11+00	2020-05-26 23:28:12+00	\N
3876	62	Michiel Herteleer	Oudergem	Arts	\N	76ad14b555dd98cd5da29b29ce4cd76e	f	2020-05-25 18:40:17+00	2020-05-25 18:40:17+00	\N
3877	62	Olivier Demoen	Laken	Ouder	\N	ac54b868cb1f026bde6d0398443dd776	t	2020-05-25 18:42:55+00	2020-05-25 18:43:14+00	\N
4046	62	DELHOMME	Bruxelles	Professeure de méditation	\N	8397d254cdd94b3ca1079a6db70896e9	f	2020-05-25 22:02:00+00	2020-05-25 22:02:00+00	\N
3878	60	Piotr	Uccle	Fonctionnaire	\N	fc873bc278e2e25ef3f45c87aa5cefb5	t	2020-05-25 18:44:00+00	2020-05-25 18:45:35+00	\N
3916	62	Dominique Vercraeye	Londerzeel 	Consultant	\N	d6b536153944c6846f3635ca90c20fe5	t	2020-05-25 19:39:11+00	2020-05-25 19:39:29+00	\N
3885	60	Mark Breddy	Uccle	\N	\N	53f87b0b0061ef5577682c04e7afb552	t	2020-05-25 18:53:03+00	2020-05-25 18:56:35+00	\N
3962	62	Sem	Anderlecht	Opvoeder	\N	d0a17fe055fc8a74986bc5fc512884ac	t	2020-05-25 20:20:08+00	2020-05-26 13:26:05+00	\N
3917	60	Laura Naesens	Schaarbeek	\N	\N	317f6a16224ecd4f824aad3c53c68300	f	2020-05-25 19:41:18+00	2020-05-25 19:41:19+00	\N
3895	62	Geels Thérèse	brussel	retraitée	\N	7c52f4586e38dcb97bf71546167a1099	t	2020-05-25 19:13:42+00	2020-05-25 19:14:17+00	\N
4039	60	Laure Lemaire	Bruxelles	Directrice OISP	Interface3	65629795d3f676cb72fbae451c88c484	t	2020-05-25 21:44:49+00	2020-05-26 08:17:50+00	\N
3918	61	Klinta	Molenbeek 	Consultant 	\N	8b0c497daf641b6defc2418077c17adf	f	2020-05-25 19:42:25+00	2020-05-25 19:42:25+00	\N
3903	62	Taïs Gomes de Santana	Schaarbeek	\N	\N	f5c22328e2b166895ad7c635f0021eba	t	2020-05-25 19:22:32+00	2020-05-25 19:23:20+00	\N
3902	62	Hannah Jacobs	Sint-JOOST-ten-node	Leerkracht	MRS	73d97bdd613df93f983a092d0ba1ef46	t	2020-05-25 19:21:07+00	2020-05-25 19:23:32+00	\N
3884	60	Aurore D'Haeyer 	Schaerbeek 	\N	\N	f972f1d83f9b5ed642fe5c0f25517a60	t	2020-05-25 18:53:02+00	2020-05-25 19:26:04+00	\N
3908	60	Francis Strobbe	Laeken	\N	\N	c9e96ffc87ee19bafa70325eed6d0274	t	2020-05-25 19:26:25+00	2020-05-25 19:26:41+00	\N
4032	60	Marie Blizkovska	Brussels	Femme au foyer	\N	f0321248cdc46a0c18dcd0e32a5ff408	f	2020-05-25 21:38:27+00	2020-05-25 21:38:27+00	\N
3911	61	Laura Naesens	Schaarbeek	\N	\N	5fdff2fc16fd663d5df8e67a0a2ec127	f	2020-05-25 19:28:28+00	2020-05-25 19:28:28+00	\N
3912	62	Sztalberg	Bruxelles 	\N	\N	d744ae999deb0197f9918d446d4adc6d	f	2020-05-25 19:29:19+00	2020-05-25 19:29:19+00	\N
3910	60	louis claus	forest	\N	\N	978a45cfaa729c2a60aa344261188586	t	2020-05-25 19:28:17+00	2020-05-25 19:31:08+00	\N
3909	62	Jean-Marc Deux	Forest	VP GFS Benelux	Schneider-Electric	629f1871dcbe67d3e33eddecdf9e2eed	t	2020-05-25 19:26:40+00	2020-05-25 19:33:00+00	\N
3901	62	Lee Mbambu	Brussel	\N	\N	8bbf25a347576903f291b18c3d53084f	t	2020-05-25 19:19:11+00	2020-05-25 19:37:05+00	\N
3919	60	Catalina D.	1180 Uccle	\N	\N	fe52279690d110bcf36b6dec1889f1d8	t	2020-05-25 19:43:20+00	2020-05-25 19:44:22+00	\N
3920	61	Lieven De Boeck	Brussels	Artist	\N	71b2743abc5dccd0a0917a4a5ebf3707	t	2020-05-25 19:43:22+00	2020-05-25 19:44:25+00	\N
3961	60	Ferrandi 	Bruxelles 	\N	\N	770d2b27985ee1113f6318c05ee05238	f	2020-05-25 20:19:07+00	2020-05-25 20:19:07+00	\N
3875	60	Marie Collard	Bruxelles	Etudiante	\N	ecd1ba95e8d98f018be7a03c4b3709dc	t	2020-05-25 18:40:02+00	2020-05-26 15:37:29+00	\N
4037	61	Belin Czechowicz	Brussels	jewelry	\N	50c69f3085fff816cc902c10e5f76e6e	t	2020-05-25 21:41:27+00	2020-05-25 21:41:55+00	\N
3963	62	Dim Geerinckx	Anderlecht 	\N	\N	feab878ff965fdef5f6112e8df7f1544	t	2020-05-25 20:21:38+00	2020-05-25 20:21:51+00	\N
3964	62	Verdonck  Els 	Brussel	Bediende 	Rusthuis	6cb4ab754dfda1cd4ffb5f32c2bbfbcc	f	2020-05-25 20:22:31+00	2020-05-25 20:22:31+00	\N
3965	61	Walter Lauschner	Bruxelles	Electronic engineer	\N	98ed8b7d3083b3451403938d34b831fc	f	2020-05-25 20:23:02+00	2020-05-25 20:23:03+00	\N
2078	60	Alexandra Jimenez	Forest	\N	\N	48f2fcce65de9e450e68e9bd14ca2b5b	t	2020-05-23 19:00:43+00	2020-05-25 20:23:10+00	alexandra.j@mailo.com
3505	60	Olivier Goris	Etterbeek	Cycliste ! 	\N	65ecb15404db4ff7ad1d9c0bdbd79911	t	2020-05-25 14:03:58+00	2020-05-25 20:53:26+00	gorisolivier@gmail.com
4038	62	Geert Coppens	brussel	\N	\N	262b15683183da6029435e4409827bf0	t	2020-05-25 21:41:49+00	2020-05-25 21:42:19+00	\N
4033	60	Stéphane Olivier	Uccle	\N	1965	0a857a4c56184b1c010e022b4314507b	t	2020-05-25 21:38:53+00	2020-05-25 21:39:19+00	\N
4034	62	Evi Van den Broeck	Sint-gillis	Begeleider beschut wonen	\N	babd6ec0c851e71c227916e5c3d1f2a5	t	2020-05-25 21:39:10+00	2020-05-25 21:39:30+00	\N
4036	60	Fabienne Dupont 	1050	Employée 	\N	f192c7e28a4cf28dcb4da20f117c93e6	f	2020-05-25 21:40:16+00	2020-05-25 21:40:16+00	\N
4035	60	Marie	Brussels	Femme au foyer	\N	99f00f1ceed5b3a20f4dcb872d091726	t	2020-05-25 21:39:53+00	2020-05-25 21:40:17+00	\N
4042	60	Juliette Bibasse	Saint Gilles	curator	\N	2c1a00e8c152a52c318bd537d26575c6	t	2020-05-25 21:48:06+00	2020-05-25 21:49:09+00	\N
4031	60	Campos	Bruxelles	Citoyenne 	\N	78c88467ac95c32a430ce533c0e4e421	t	2020-05-25 21:36:30+00	2020-05-25 21:51:47+00	\N
3888	61	Franzis Wimmer	\N	\N	\N	8053ee14fdba31380d1a8b627bfd152e	t	2020-05-25 18:57:48+00	2020-05-26 10:05:04+00	\N
4040	60	Laura König 	Schaerbeek 	Interprète de conférence 	\N	109678bffcdf16dc7b4bf38cda25b189	f	2020-05-25 21:45:22+00	2020-05-25 21:45:22+00	\N
4045	62	David van Beusekom	Tervuren	Student	\N	c30b79cae9f8e5f251ed43b7a2600e21	t	2020-05-25 22:01:41+00	2020-05-25 22:02:05+00	\N
4041	60	Jean-Louis Rossignon 	Brussels	\N	\N	4643efff467b2044cb1eeed73163f8ca	t	2020-05-25 21:47:47+00	2020-05-25 21:48:19+00	\N
4044	60	Virginie Standaert	L'Hermitage	Styliste textile	\N	cc5f76272d42b212f3687ac9ea2d90fa	t	2020-05-25 22:00:20+00	2020-05-25 22:00:51+00	\N
4047	60	Eva	Brussels	\N	\N	927d74758a4747e17324573b67451267	t	2020-05-25 22:04:09+00	2020-05-25 22:04:43+00	\N
4048	62	Inge Van Haver	Vilvoorde 	Architect	\N	f70a9f9e3377965d1c42284276203273	t	2020-05-25 22:08:24+00	2020-05-25 22:08:48+00	\N
4030	61	Justus Römeth	Etterberk	Parliament Assistant	\N	68a4079e15195b92691a0bf507d94ec4	t	2020-05-25 21:35:53+00	2020-05-25 22:06:16+00	\N
4049	60	Sandrine vanden bussche	1050	👩‍🏫 	\N	3b1dee36a08be7370c80445bf69b6c06	f	2020-05-25 22:15:56+00	2020-05-25 22:15:56+00	\N
3849	60	Natalia Aerts Lopez 	Vorst	Student 	\N	734152563e882989db18ad50a4714739	t	2020-05-25 18:13:28+00	2020-05-25 22:20:43+00	\N
4050	60	Laure Belkhiri	Bruxelles	\N	GRACQ/Fietsersbond Bruxelles Ville/Brussel Stad	32a706310a5b0617d75540d6cf238686	t	2020-05-25 22:16:12+00	2020-05-25 22:16:48+00	\N
4051	60	Test	des données	contrôle	personnelles	a505687c1b773f384c93b2dd39d12e84	f	2020-05-25 22:21:06+00	2020-05-25 22:21:06+00	\N
3898	62	Marieke van Rijn	Woluwe	\N	\N	357995c5a2d0c4e23c86a5c7a581ae08	t	2020-05-25 19:16:03+00	2020-05-26 07:08:33+00	\N
3482	62	Nicole De Langhe	St-Jans-Molenbeek	\N	\N	c5b7b9d28947ea334b7c38b0c5855a81	t	2020-05-25 13:47:13+00	2020-05-25 14:04:34+00	n.delanghe@brussels-expo.be
3509	62	Cristina Paducea	Bruxelles	\N	European Commission 	3b329da9d7c684d9ee349cefc6264c48	t	2020-05-25 14:07:55+00	2020-05-25 18:15:46+00	cristina_paducea@yahoo.com
3507	62	Robbie VN	Jette	\N	\N	5081e2346ad994aad2a996ace4e54118	t	2020-05-25 14:05:18+00	2020-05-25 14:05:38+00	\N
3508	60	Catherine Blin	1170 Bruxelles	\N	\N	a18e6b5df565e7c332e7e906a162538c	f	2020-05-25 14:06:34+00	2020-05-25 14:06:34+00	catblin@outlook.be
3532	60	Cecilia Bertozzi	Bruxelles	Urbaniste	\N	a482cb07ade0eed23f993011445d3c19	t	2020-05-25 14:38:28+00	2020-05-25 18:38:28+00	\N
3510	60	Anna Dimitrijevics	Bruxelles	\N	\N	cc96aa84cf77cfb0a24e416f0a426622	t	2020-05-25 14:09:45+00	2020-05-25 14:10:33+00	mitmondon@gmail.com
3512	62	Stefaan	Overijse	\N	\N	6d337cbc68fa7144b6aece903eb8b369	t	2020-05-25 14:11:50+00	2020-05-25 14:13:16+00	\N
4831	60	Mathieu Degris	Bruxelles	employed	\N	0a9e6ff8610b51d750c37628597d0cf5	t	2020-05-27 19:02:38+00	2020-05-27 19:06:17+00	mathieu.degris@laposte.net
3514	64	Xavier	\N	\N	\N	b81f2e4af7166d834c5ae8b5c244288a	t	2020-05-25 14:15:52+00	2020-05-25 14:16:28+00	\N
3348	61	Sandra Issa	Brussels	Employee	sandraissa@gmail.com	35498768d38cc4e4200c7a737fecae8b	t	2020-05-25 12:23:11+00	2020-05-25 14:17:30+00	sandraissa@gmail.com
3887	60	Sebastien Dolige	Bruxelles	\N	\N	cb906f000308ecdd7ba7b83ac0e20205	t	2020-05-25 18:56:50+00	2020-05-25 18:57:32+00	\N
4830	61	Nora	Brussels	\N	\N	70c16c3ea5a9501feaf1b8e4afadfa0e	t	2020-05-27 18:51:48+00	2020-05-27 21:21:42+00	fiona.hil@web.de
3515	62	Eva	Molenbeek	\N	VUB	d6288cd68af39425c62bd1a8ccca7cf9	t	2020-05-25 14:18:50+00	2020-05-25 14:19:13+00	\N
2608	61	Jotte Vandenabeele	schaarbeek	\N	\N	a5c40f34efdda44e446a060bfa41a4b0	t	2020-05-24 22:05:13+00	2020-05-25 14:19:28+00	jottevandenabeele@gmail.com
3516	60	Claire Geyer	Bruxelles	Bruxelles	\N	59d6f9b63c86402a6a12252135e53e33	f	2020-05-25 14:20:07+00	2020-05-25 14:20:07+00	\N
3897	60	A sessa	Brussels	\N	\N	25e889dba3b235d35cf2d5e7a016d0c5	t	2020-05-25 19:15:18+00	2020-05-27 21:24:48+00	\N
3537	60	Hans 	Saint gilles 	\N	\N	a96e6a8de891b80551ecc5903bb63780	f	2020-05-25 14:39:49+00	2020-05-25 14:39:49+00	\N
3529	62	Ebert Pardaens	Elsene	ingenieur	Leefmilieu Brussel	e82bbccf122da1c660d930c7aed755ce	t	2020-05-25 14:33:22+00	2020-05-25 14:34:20+00	\N
3517	60	Emilie T	Forest	\N	\N	0c093e6b0a1790aea1aa5b4c109fb63d	t	2020-05-25 14:21:22+00	2020-05-25 14:23:25+00	\N
3525	61	Yannis Polspoel	Schaarbeek	\N	\N	53be11899abafa80910eb7a600038b94	t	2020-05-25 14:31:13+00	2020-05-25 14:35:14+00	\N
3519	62	Sebastiaan Leenknegt	Sint-Jans-Molenbeek	architect	\N	b291d32d79f68fbf3b7929d12e413fb2	t	2020-05-25 14:24:33+00	2020-05-25 14:24:45+00	\N
3530	61	Carolyn	Brussels	\N	\N	0416a8cf864cec18bcd4e24170eb7d80	t	2020-05-25 14:34:11+00	2020-05-25 14:35:31+00	\N
3518	60	Josefa 	Bruxelles	\N	\N	50d197c9fcbc498ccd0ef00e013810ec	t	2020-05-25 14:21:47+00	2020-05-25 14:25:43+00	\N
3520	60	Ana B	Saint-Gilles	\N	\N	aae7be115df19b49eda1f94b8e990f28	t	2020-05-25 14:25:12+00	2020-05-25 14:25:45+00	\N
3899	62	Liesbeth De Ceulaer eulaer	Brussel	\N	\N	116f972444f98528af3b4d36cf97f1b6	t	2020-05-25 19:17:56+00	2020-05-25 19:18:52+00	\N
3524	59	Yannis Polspoel	Schaarbeek	\N	\N	1f76dd78ebccc4dc53c849beba27b330	t	2020-05-25 14:29:28+00	2020-05-25 14:35:33+00	\N
3967	62	Joke Vanderhaeghe	Koekelberg	\N	\N	e5a66fcf253b0aa57738d3d51dc42015	t	2020-05-25 20:26:26+00	2020-05-26 05:16:29+00	\N
3886	60	Gwenaël Breës	Bruxelles	\N	\N	c1021ca7211f16a1039d1548fabe8b5c	t	2020-05-25 18:56:05+00	2020-05-25 19:03:33+00	\N
3536	60	Ferrero Juan Manuel	Uccle	Ouvrier	\N	28646cf26423afd23dac3c94ffb0a3b3	t	2020-05-25 14:39:40+00	2020-05-25 14:39:57+00	\N
3521	62	Michaël Valkeniers	Brussel	Gids	\N	9d04e438e079b5afb2832eefb854a612	t	2020-05-25 14:27:45+00	2020-05-25 14:29:20+00	\N
3889	60	Anne Pitoux	1060 - Saint-Gilles (Bruxelles)	\N	1980	f53ba84a4d101fbc4d2a3163126b3e85	t	2020-05-25 19:00:42+00	2020-05-25 19:05:41+00	\N
3531	62	Naomi Cambien	Schaarbeek	\N	\N	ec695a2111a074e43b7b0af7216b4e0a	t	2020-05-25 14:38:17+00	2020-05-25 14:40:17+00	\N
3522	62	An	Jette	\N	\N	83381d20e73eae34e4b76a91314842a8	t	2020-05-25 14:29:05+00	2020-05-25 14:29:58+00	\N
3523	60	Juan Cely	Bruxelles 	CEO	Bluefeet	3eecdddfd39ea47eead2a69c63ba2776	t	2020-05-25 14:29:16+00	2020-05-25 14:30:26+00	\N
3893	60	Thomas Maenhout	Brussel	Ambulancier	Thomas	4e6680059d0919fe81ee040e71e8f47d	t	2020-05-25 19:06:22+00	2020-05-25 19:08:01+00	\N
2838	61	Bavo Stoffels	Laken	librarian	family of 5 cyclists	91c893ba201b829b11ef4244c1dd786a	t	2020-05-25 07:42:44+00	2020-05-25 19:09:28+00	b.m.stoffels@gmail.com
3891	60	Julie François	Etterbeek	\N	\N	b07956b515ac66c60a31236122c33e47	t	2020-05-25 19:01:45+00	2020-05-25 19:13:04+00	\N
3511	60	Isadora Meersseman	Bruxelles	employée	\N	ed7a7c8c12732cd764c7d658060877b9	t	2020-05-25 14:10:48+00	2020-05-25 17:37:45+00	\N
3526	61	Delphine	Brussels	\N	\N	869c6680d58a5941e45eca8e26b0d1c1	t	2020-05-25 14:31:21+00	2020-05-25 14:31:46+00	\N
3538	61	Daniel Sum	Brussels	Developper	Cherry Pulp	5eb23705d55064f305cef590d6552a16	t	2020-05-25 14:40:29+00	2020-05-25 14:40:53+00	\N
3528	60	amandine	bruxelles	\N	\N	e36fc123001af7e999582315c58e8aa3	t	2020-05-25 14:32:21+00	2020-05-25 14:32:37+00	\N
3527	61	John doyle	Ixelles	EU Official 	EC	57685041a4255dcd9be0e7413079cefd	t	2020-05-25 14:32:14+00	2020-05-25 14:32:39+00	\N
3966	61	Celine Bortels 	\N	\N	\N	1b6bb1e741d4de01b5c71f2a3a7a7069	t	2020-05-25 20:25:25+00	2020-05-26 08:47:05+00	\N
3539	62	Bert Ostyn	Wemmel	Bediende	\N	1900bdc8b8932d742099998d21a684e7	t	2020-05-25 14:41:58+00	2020-05-25 19:20:23+00	\N
3900	60	Wan Ting Tram 	Bruxelles	Employee	\N	7427ced9abc65931851e243f2ab7f2ea	t	2020-05-25 19:18:29+00	2020-05-25 19:34:22+00	\N
3540	62	Maya Campbell	Brussels	Teacher	\N	dfc30832575d0606a5b080f51c7b02d1	t	2020-05-25 14:42:02+00	2020-05-25 19:39:08+00	\N
3890	62	S. Stacino	Itterbeek	\N	\N	831bd83df0ea6105e7fe2c89e0fae467	t	2020-05-25 19:01:16+00	2020-05-27 07:57:16+00	\N
3533	60	Thomas Bertrand	Saint-Gilles	Luthier	\N	0d1a2dd009c627d56ce04059fdd63ec9	t	2020-05-25 14:39:10+00	2020-05-25 14:39:29+00	\N
3534	62	Eleonor Ewald	Brussel	\N	Frau	c5c995c2ae40e2eff0f9e3825fa5d7cb	t	2020-05-25 14:39:20+00	2020-05-25 14:39:37+00	\N
3968	61	Anna Barbara Lipińska 	Ixelles 	Ixelles 	\N	6ccadd62143b0f2d0cbe462617fe84ab	f	2020-05-25 20:27:35+00	2020-05-25 20:27:36+00	\N
3535	61	Hans Boomert	Ganshoren	\N	\N	941c96ad73f2dc16501e4dfe66482051	t	2020-05-25 14:39:21+00	2020-05-25 14:39:47+00	\N
3541	61	Lena Wietheger	Watermael	\N	\N	9cf75ec96b09f72b99736eb81118408f	f	2020-05-25 14:42:25+00	2020-05-25 14:42:25+00	\N
3971	62	lieve coorevits	Jette	\N	\N	8cd9bc9cd2950af526967f996ed335bb	t	2020-05-25 20:28:51+00	2020-05-25 20:47:35+00	\N
3969	60	Arthur Van Goethem	Braine-L'Alleud 	Étudiant 	\N	67d471e7cbdadb6655ddb755d1c37d1b	t	2020-05-25 20:27:49+00	2020-05-25 20:28:17+00	\N
3892	61	Ellie Nimeroski	Brussels	Researcher	Orpheus Instituut	42557f736eac83c65cbb2d1103e208bf	t	2020-05-25 19:02:54+00	2020-05-25 21:42:08+00	\N
3542	60	Diana Cornescu	Brussels	Designer	\N	ecbb88eb4e339fac867a62c61c2c64e4	t	2020-05-25 14:43:25+00	2020-05-25 14:43:49+00	\N
3972	62	Jan Chabert	Brussel	Leefgroepbegeleider	janchabert@gmail.com	9291f969b688d57b8a617a3ebdba5b0c	t	2020-05-25 20:29:11+00	2020-05-25 20:29:33+00	\N
3970	60	Dujardin Benjamin 	Etterbeek 	Guide	\N	eda80567ae54447ff56dc0cfc7b6b7d4	t	2020-05-25 20:28:01+00	2020-05-25 20:42:14+00	\N
3973	62	Annick Niedner 	Brussel	Onderwijzer	Equilingua 	db9c28b22fe04001fd65c2fd5330c88f	t	2020-05-25 20:29:37+00	2020-05-25 20:30:21+00	\N
3543	60	France Lamboray 	Forest 	Costumière 	\N	735b77a46ef6d5ed003e94cd9f84329a	t	2020-05-25 14:43:44+00	2020-05-25 14:44:17+00	\N
3544	60	Denis Druart	Bruxelles (Forest)	Designer/Enseignant	\N	48eeac376f216cecde92727a6a863ca5	t	2020-05-25 14:44:03+00	2020-05-25 14:44:25+00	\N
3584	60	Subtil	Bruxelles	Inactif	\N	c1113a0027ab3bd8f138238ca4b35ca8	t	2020-05-25 15:05:50+00	2020-05-25 19:08:56+00	\N
3564	60	Nicolas Bernard	Forest	Ingénieur 	\N	ab5eca23e3c966320f112a784eed306b	t	2020-05-25 14:56:06+00	2020-05-25 14:56:18+00	\N
3545	62	Silvia	Ixelles 	\N	\N	54ed375e3b313a633c7ad7eef0cd7217	t	2020-05-25 14:44:35+00	2020-05-25 14:45:15+00	\N
3921	62	Sascha Salzig	Bruxelles	\N	\N	ff10d9704a79a16e455b59ae86486a66	t	2020-05-25 19:43:52+00	2020-05-25 19:46:19+00	\N
3547	61	Inge Chen	1000	\N	\N	fee0d61c770d9c911ba22cff3d437403	f	2020-05-25 14:46:16+00	2020-05-25 14:46:16+00	\N
3546	61	Catherine Olier	Ixelles	\N	Madame	61d06c9fd248d923c4da5350cc91578c	t	2020-05-25 14:46:10+00	2020-05-25 14:46:29+00	\N
3914	62	Marlies van Hezewijk	Woluwe	\N	\N	dbda550ea97d6f966cbfbc32eb930028	t	2020-05-25 19:31:58+00	2020-05-25 19:34:38+00	\N
4832	60	Peter R	Ixelles	\N	\N	fd46783cc8d43c8fe5b2558cc141cff4	t	2020-05-27 19:03:21+00	2020-05-27 19:05:18+00	\N
3550	61	Marina	Tervuren	\N	\N	dca616dd5731a9aa491d7efcf1e0c328	f	2020-05-25 14:47:20+00	2020-05-25 14:47:21+00	\N
3548	60	Delphine Willems	Woluwe Saint Lambert	Enseignante 	1974	52c8ff258154aaa6c7308ab0e9f1eae8	t	2020-05-25 14:46:31+00	2020-05-25 14:47:23+00	\N
3549	60	Arianna Fabrizi de Biani	Bruxelles	\N	l'Harmattan architecture	18ccde41d90b0238f9b395c4d8d7b796	t	2020-05-25 14:47:05+00	2020-05-25 14:47:28+00	\N
3904	61	Gossieaux 	Braine le château 	\N	\N	6c65dd1b04baf3239b129d1c4c38b544	t	2020-05-25 19:22:35+00	2020-05-25 19:23:16+00	\N
3565	60	mojca lesemann	bruxelles	\N	\N	4f76fab4179d58d637ba12c475e26b5b	t	2020-05-25 14:56:21+00	2020-05-25 14:57:05+00	\N
3552	61	Bob Van Wambeke	Laken	\N	\N	2731d2219952197ccc232a225069d419	t	2020-05-25 14:48:09+00	2020-05-25 14:50:00+00	\N
3906	61	Loïc Desiron	Forest	Architecte	Homegrade	d029535046b7a461a6056ef18af49582	t	2020-05-25 19:22:49+00	2020-05-25 19:23:41+00	\N
3553	60	Marta Ruiz	Bruxelles	\N	\N	76aadf8abb35e30ea97bf2f1ffffd1c8	t	2020-05-25 14:49:32+00	2020-05-25 14:50:22+00	\N
3978	60	Serge Delvigne	\N	\N	\N	6e119ae24efd8c8599257b7ef001da60	f	2020-05-25 20:30:27+00	2020-05-25 20:30:28+00	\N
3905	60	Maryse Lierneux	Bruxelles	\N	\N	6dda26f4cce91a1a3086253cfe2033af	t	2020-05-25 19:22:47+00	2020-05-25 19:25:17+00	\N
3577	61	Alice Bustin	Brussels	\N	\N	916e84c2a2cdf31a4805f69d6c1f4231	t	2020-05-25 15:03:45+00	2020-05-25 15:04:23+00	\N
3977	60	Alexandre Nova	Bruxelles	Artiste	\N	0d412f99998db24ad49dfc7d3b37bd93	t	2020-05-25 20:30:21+00	2020-05-25 20:31:24+00	\N
3578	62	Pieter elsen	1080	\N	\N	f4584213d78982aa9757374eae3a17fe	f	2020-05-25 15:04:23+00	2020-05-25 15:04:24+00	\N
3557	61	Ed Davitt	St Gilles	European Parliament	\N	061cd5383b61a5a6a9fbd3885b32b6f8	t	2020-05-25 14:51:02+00	2020-05-25 14:51:19+00	\N
3555	61	Silvia Carta	Ixelles	\N	\N	20616aabe5b0d7055c25fcfca11955cc	t	2020-05-25 14:50:46+00	2020-05-25 14:51:21+00	\N
3558	61	Rasmus Larsen	Uccle	Policy advisor	EU Parliament	fb13b70a2f90dc92b8e7e3db103ed7f5	t	2020-05-25 14:51:09+00	2020-05-25 14:51:27+00	\N
3907	22	Bike Assist	Herentals	fietsbijstand	Bike Assist	d6ca1c9560c977ea166d992e9ebff42c	t	2020-05-25 19:24:36+00	2020-05-25 19:46:36+00	\N
3559	60	Evelyne Verhulsel	Wezembeek-Oppem	Naturopathie 	\N	3f9d30ec24662182afc1d0557556bcce	t	2020-05-25 14:51:18+00	2020-05-25 14:51:43+00	\N
3556	60	Miguel Chambel	Bruxelles	\N	\N	9cace95923995545381b7178d3e219d1	t	2020-05-25 14:50:54+00	2020-05-25 14:51:44+00	\N
3560	61	Myrthe Bovendeaard	Brussels	Parliamentary Assistant MEP	European Parliament	cfd5b1f6f15b78a1999174c0566775c1	t	2020-05-25 14:51:27+00	2020-05-25 14:52:07+00	\N
3561	62	Marijke	Vilvoorde	Projectwerker zwerfvuil en sluikstort	Incovo	0fe5e8ad5d4afbe975e58bbcb2de56b4	f	2020-05-25 14:52:32+00	2020-05-25 14:52:33+00	\N
3922	61	henri delville	Brussel	\N	\N	6ec01ab9b21881cadb6bfeba4ef03bc9	t	2020-05-25 19:44:43+00	2020-05-25 19:45:33+00	\N
3568	62	Silvia Perez Bogerd	Saint Gilles	Médecin	\N	19e964ff4decc1b5b6ac0cc0d0a196cc	t	2020-05-25 14:58:54+00	2020-05-25 14:59:15+00	\N
3562	62	Annelies Mollet	Schaarbeek	\N	publiq	01553c1f552060081a179bf5f665b899	t	2020-05-25 14:53:31+00	2020-05-25 14:53:58+00	\N
3563	60	Mayi Mukuna	Bruxelles	\N	\N	f298c802dddd185b3db490bd7dc5c4b7	f	2020-05-25 14:54:50+00	2020-05-25 14:54:50+00	\N
3913	61	Viteri Saenz Tania 	Brussels 	1060	\N	aa1af80401437ada78186c6aea852393	t	2020-05-25 19:31:52+00	2020-05-25 19:48:14+00	\N
3582	61	bertrand wert	Ixelles 	Conseiller communal 	\N	285a52c4a6b7f37a26c92ccf346af0d6	t	2020-05-25 15:05:15+00	2020-05-25 15:10:31+00	\N
3569	62	Iris Bos	St. Gilles	\N	European Green Party	c23ea563deb9863619babdcb4ad9f447	t	2020-05-25 14:58:59+00	2020-05-25 14:59:23+00	\N
3567	61	Lise Schwimmer	Bruxelles	\N	\N	7f5a2df66ba2c053112f56e2beb58d85	t	2020-05-25 14:57:33+00	2020-05-25 14:59:31+00	\N
3566	62	Ellen De Muynck	Sint-Gillis	Journalist	\N	d037c87b146b7b58b45582256ab89283	t	2020-05-25 14:56:27+00	2020-05-26 14:01:21+00	\N
3571	61	Júlia Boada-Danés	Ixelles	\N	\N	2bd12f6ff08321a78d97e057586694d0	t	2020-05-25 14:59:47+00	2020-05-25 15:14:23+00	\N
3554	61	Linda Bergmann	Ixelles, Bruxelles	\N	\N	ce3f499cbf7874bbc980ba76119aef0d	t	2020-05-25 14:50:13+00	2020-05-25 17:42:46+00	\N
3979	60	Lydia Rooney	Schaarbeek	\N	\N	52dc3b67c7e50bb13df99e234c0ce0ec	t	2020-05-25 20:31:59+00	2020-05-25 20:32:34+00	\N
3980	61	Marcel Sugano	Brussels	\N	\N	d5906ed34969d5c27e9919d61d1f4532	t	2020-05-25 20:33:07+00	2020-05-25 20:33:23+00	\N
3576	62	Tom Lerminiaux	Brussel	lesgever	\N	cf5fee59a8fb7fd36d304a3aa4aa17b9	f	2020-05-25 15:02:52+00	2020-05-25 15:02:53+00	\N
3573	60	Marco Stefan	Brussels	\N	\N	65593ea5a56f74d6ce667f890556a77a	t	2020-05-25 15:01:44+00	2020-05-25 15:03:20+00	\N
3983	60	Matthew Nicholson	Brussels	\N	\N	cc028661d5a4aaeb1e97ac90f6153658	f	2020-05-25 20:34:44+00	2020-05-25 20:34:44+00	\N
3572	60	Claire G	Brussels	\N	\N	e1bef7445fbd8b0b5de8e7c9449ae10e	t	2020-05-25 15:01:11+00	2020-05-25 15:04:03+00	\N
3574	60	Frederic Deverchère 	Bruxelles 	\N	\N	6d4f2a6f0ca27c0a21d3408b177c322f	t	2020-05-25 15:02:22+00	2020-05-25 15:04:51+00	\N
3579	60	Rose Ní Chléirigh	Bruxelles	assistante	Parlement europeen	bdad44476a4a0df2941453c08ba3bcb2	t	2020-05-25 15:04:46+00	2020-05-25 15:05:04+00	\N
3580	61	Gesa Storz	Bruxelles (Ixelles)	policy advisor	\N	d6e431cba60e84bc1d8f83386fb0dcbb	f	2020-05-25 15:05:14+00	2020-05-25 15:05:14+00	\N
3981	62	Karlijn Werquin	Zug Zwitserland 	Psychologe	\N	69303808c6af3a1c8da330848870128e	t	2020-05-25 20:34:22+00	2020-05-25 20:34:48+00	\N
3581	60	Mélanie Vogel	Brussels	\N	European Green Party 	b5941d9fb8743acc544a17491935a394	f	2020-05-25 15:05:15+00	2020-05-25 15:05:15+00	\N
3575	61	Mathilde VOISIN	Brussels	Parliamentary Assistant MEP	European Parliament	2bdc7bc80db51cf1d52c1887649930fd	t	2020-05-25 15:02:52+00	2020-05-25 15:05:47+00	\N
3985	60	Theresa Doetsch 	1060 	\N	\N	fd04b0d503e10b65f04ba0eceec9f00b	f	2020-05-25 20:38:30+00	2020-05-25 20:38:30+00	\N
3986	60	Milena Strange	Bruxelles	\N	\N	a55aebf1827c66cae71e5f3b8de4846c	t	2020-05-25 20:38:37+00	2020-05-25 20:38:57+00	\N
4043	61	Annemarie	Brussels 	ep	ep	63ea0f1c96419b35b2302e92e4844d30	f	2020-05-25 21:54:02+00	2020-05-25 21:54:03+00	\N
4056	61	EL GHRICH Malika	Bruxelles	\N	\N	42f05601fc7525921704db6458cae5c1	f	2020-05-25 22:59:54+00	2020-05-25 22:59:54+00	\N
4102	60	Hélène Vanderhulst 	Bruxelles 	\N	\N	18a06ea7ae3fc73d777e4debc4fff959	t	2020-05-26 05:40:36+00	2020-05-26 05:41:01+00	\N
3570	61	Rhia	Brussels	\N	\N	ba9ac49f3f6c777793321617f0f9d026	t	2020-05-25 14:59:42+00	2020-05-26 11:50:23+00	\N
3583	62	Queffeulou	Ixelles	\N	\N	2f7b61615e1d62be3426ec07b2f105fa	t	2020-05-25 15:05:50+00	2020-05-25 15:06:19+00	\N
3591	22	Sarah Vanhemelrijck 	Schaarbeek 	\N	\N	cbf0811e2460605ddc3f42bfd22f7bd1	t	2020-05-25 15:07:43+00	2020-05-25 15:12:40+00	\N
3597	61	Sophie	Vorst	Leer	\N	fb98a9afc36bb5c3486a659bbed09423	t	2020-05-25 15:09:36+00	2020-05-25 20:19:01+00	\N
3607	62	David Van Reybrouck	Schaarbeek	Schrijver	\N	f09cf3919a788e4dcf4521cb7330ef33	t	2020-05-25 15:12:19+00	2020-05-25 15:12:53+00	\N
3587	62	Thomas Swerts	Sint-Jans-Molenbeek 	Universitair Docent	Erasmus Universiteit Rotterdam	3fea311d3ee5993de0975456cc5062ed	t	2020-05-25 15:06:36+00	2020-05-25 15:07:00+00	\N
4833	60	Dominique Banneux	Etterbeek	Employée	\N	32c60c5b6065a11536dbf10b54e212da	t	2020-05-27 19:03:24+00	2020-05-27 19:04:00+00	\N
3602	60	Vanderheyden 	Uccle	Employée	\N	31e200144b4d8d9f01b83d3d28dd1687	t	2020-05-25 15:10:59+00	2020-05-25 15:38:12+00	\N
3589	61	Ruth De Nul	1000	Jurist	ruthdenul@gmail.com	5b81aea8a930fea6c857e1f7f9b610c1	t	2020-05-25 15:07:29+00	2020-05-25 15:07:48+00	\N
3588	60	Moinet 	Bruxelles 	Artiste 	\N	056af635c18fa1b1a8b92866e6d66cbe	t	2020-05-25 15:06:59+00	2020-05-25 15:07:59+00	\N
3592	61	Rachel Sheppard	Bruxelles	\N	Parlement européen 	4dd02cc2e0949c13213b538b0d4cc922	f	2020-05-25 15:08:07+00	2020-05-25 15:08:07+00	\N
3608	62	Stijn Heirman	Jette	\N	\N	12302ea40c188cd399d8912533dec267	f	2020-05-25 15:13:53+00	2020-05-25 15:13:53+00	\N
3615	60	Billie meeussen	Ganshoren	Student	\N	a1068f34ba749d63f688b572719d51ae	t	2020-05-25 15:17:10+00	2020-05-26 11:43:36+00	\N
3987	60	Jan Wilczewski	Bruxelles	\N	\N	c16fab2cbafbee5fa982c52705e87a65	t	2020-05-25 20:42:16+00	2020-05-25 20:42:47+00	\N
3993	62	Nikolai Pushkarev 	Vorst	\N	\N	45f849bb5c66963d31b27c47f152c528	f	2020-05-25 20:57:37+00	2020-05-25 20:57:38+00	\N
3610	62	Karima D	\N	\N	\N	1a50edd562ec83a812b674156034ba85	f	2020-05-25 15:14:30+00	2020-05-25 15:14:30+00	\N
3594	22	Ruth De Nul	1000	Jurist 	ruthdenul@gmail.com	8c6e2b52b4ba3c85946c57ee39cf0f47	t	2020-05-25 15:08:15+00	2020-05-25 15:08:41+00	\N
3593	61	Louisa Geismann	Brussels	Employee	European Parliament	948bee9d6e6f91d21d137bde074414d2	t	2020-05-25 15:08:08+00	2020-05-25 15:08:47+00	\N
3596	60	Barbara KEDZIERSKI	Bruxelles	\N	\N	08fbe0d877f705cf34996c5116b92028	t	2020-05-25 15:08:34+00	2020-05-25 15:08:48+00	\N
3595	62	Nele Van Damme	SCHAARBEEK	\N	\N	f30abe087ec1288ed7365fd73ec11f41	t	2020-05-25 15:08:32+00	2020-05-25 15:09:43+00	\N
3598	62	An vandevelde	Sint-Jans-molenbeek	Artiste	Moi meme	a8342469ed271a608e5b6bbe6e8e8bcf	f	2020-05-25 15:09:46+00	2020-05-25 15:09:46+00	\N
3990	61	Cléo	\N	puéricultrice	\N	f799d2535ed805cf44020e40c14e378a	t	2020-05-25 20:43:01+00	2020-05-25 20:45:05+00	\N
3994	62	Lien De Vos	Brussel	Programme manager	ETM	99734f82c5cf2a4f6bcf5bd383a5aae1	f	2020-05-25 21:00:11+00	2020-05-25 21:00:11+00	\N
3991	61	loubna ben yaacoub	brussels	\N	\N	d737987cb006db55d3a2f579da57d8e9	t	2020-05-25 20:46:25+00	2020-05-25 20:46:54+00	\N
3611	60	Hans Van Gaever	Schaarbeek	Demetris	hansvangaever@yahoo.com	ea60613e30de0ed713eaf6e24ab845d3	t	2020-05-25 15:14:31+00	2020-05-25 15:48:08+00	\N
3600	60	Zora Siebert	Saint-Gilles	\N	Heinrich-Böll-Stiftung	72a2ded7bfe4454c7f84c45ac553d397	t	2020-05-25 15:10:30+00	2020-05-25 15:10:54+00	\N
3997	60	Morgane Moriau 	Bruxelles 	Thérapeute 	 Morgane Beauty Secrets 	64a498162ddbb8c9d33a66e753ae8799	t	2020-05-25 21:01:59+00	2020-05-25 21:03:13+00	\N
3995	60	Mattias staelens	Brussel	Architect	\N	0e5ff6c338087d9ffd753249acf34c32	t	2020-05-25 21:00:17+00	2020-05-25 21:00:39+00	\N
3989	61	Ernest de clerck	Brussels	\N	\N	adf9cb7621d7fb62d1748aead12aed93	t	2020-05-25 20:42:29+00	2020-05-26 08:43:37+00	\N
3998	62	Elke Goossens	Laken	Logistiek	Ibo de buiteling	206f136e8b50624ebea4760a6ac5232c	f	2020-05-25 21:03:23+00	2020-05-25 21:03:23+00	\N
3612	61	Thomas Anciaux	Evere	Student	\N	56b174d8d53fe6c73129c87298f82717	t	2020-05-25 15:14:53+00	2020-05-25 15:15:50+00	\N
3599	60	Nelly	Bruxelles	1000	EP	42124b250d2b2a3f0644640acfb0c98e	t	2020-05-25 15:10:04+00	2020-05-25 15:11:12+00	\N
3604	60	Kostas Aligiannis	Sint Gillis	\N	\N	4021d1cf069119c2b06ffb4e1d1990f6	t	2020-05-25 15:11:05+00	2020-05-25 15:11:21+00	\N
3603	61	Philippe Walraff	Wezembeek-Oppem	retired	\N	fd63646524b8f0c795bd7219c579e215	t	2020-05-25 15:11:01+00	2020-05-25 15:11:26+00	\N
3605	61	Léa CHARLET	Saint-Gilles	coordinatrice d'asbl	\N	91e6a90840776d94a9b4a1bee71d66cb	t	2020-05-25 15:11:12+00	2020-05-25 15:11:30+00	\N
3634	62	Erik	Brussel	Bediende	\N	fdf1efcedb8b7095d2390693979a9a6a	t	2020-05-25 15:24:49+00	2020-05-25 15:55:05+00	\N
4000	60	François Tamigneaux	Saint-Gilles / Sint-Gillis	\N	\N	42f2dabb5d6d0974b56aa37655cd9f5b	f	2020-05-25 21:04:14+00	2020-05-25 21:04:14+00	\N
3625	61	Matthieu Gaillet	Brussels	\N	\N	5cc3077ec0a7bb57addf8d2cf4252375	t	2020-05-25 15:20:48+00	2020-05-25 15:21:00+00	\N
3613	61	Pilar dOrey	Brussels	Administrative	\N	5202d6e759974479b15d05ecd58f3047	f	2020-05-25 15:15:56+00	2020-05-25 15:15:57+00	\N
3618	60	Lennert Daeleman	Schaarbeek	Employé 	\N	82a8812103c65cbd33f89ff8a7de8ba9	t	2020-05-25 15:18:40+00	2020-05-25 15:21:02+00	\N
3614	60	de Guiran	\N	\N	\N	02667579b87834b6d62391045fa3eb1d	t	2020-05-25 15:16:22+00	2020-05-25 15:17:35+00	\N
3624	60	Six patricia 	Forest 	Concierge ecole	\N	7f734956e1ad1e8afbfdfe088052e9d0	t	2020-05-25 15:20:30+00	2020-05-25 15:21:08+00	\N
4001	62	Sylke Van Dierdonck	Schaarbeek	Huisarts	\N	c583866acb42fbccba30870d14b437a5	t	2020-05-25 21:05:01+00	2020-05-25 21:05:48+00	\N
4009	60	Tanguy de le Vingne	Bruxelles	\N	\N	cefa73cd274d2c33a93000e8f29ce69c	t	2020-05-25 21:07:48+00	2020-05-25 21:08:08+00	\N
3616	60	Céline Glorie	Bruxelles 	\N	\N	dd8596a552b300fcd343c2c9f1330a9a	t	2020-05-25 15:18:16+00	2020-05-25 15:18:45+00	\N
3619	61	Julie Degraeve	2800	\N	\N	4f465d517e37d5823733f49fbeabf180	f	2020-05-25 15:18:47+00	2020-05-25 15:18:48+00	\N
3620	22	Boutahar youssef	1030	\N	\N	efd33889b40a2849c34b9c11080aec7a	f	2020-05-25 15:18:51+00	2020-05-25 15:18:51+00	\N
3621	61	Antoine Tifine	Etterbeek	\N	FYEG	5b6b14a438b8397358207ed947da8b7b	f	2020-05-25 15:19:28+00	2020-05-25 15:19:28+00	\N
3622	62	Liesbet Meyns	Jette	Ambtenaar	lmeyns@gmail.com	fd79c4afb01c31d59b6be407f44b21e5	f	2020-05-25 15:19:30+00	2020-05-25 15:19:31+00	\N
3617	22	Julie Degraeve	2800	\N	\N	24c9eca49463784b04ee97c501c32051	t	2020-05-25 15:18:25+00	2020-05-25 15:19:39+00	\N
3623	61	Delphine	Brussels	Political adviser	EU Parliament	be7e1b6dbd34b295655c6a13f55e58a1	f	2020-05-25 15:19:49+00	2020-05-25 15:19:50+00	\N
2841	60	Misha de Broux	Brussels 	\N	\N	3652257e9640eabb61f3b87452c6a43d	t	2020-05-25 07:43:28+00	2020-05-25 15:20:07+00	\N
3606	60	RODRÍGUEZ	\N	\N	\N	a5fe507a7cc40095b6525aac8f894f14	t	2020-05-25 15:12:08+00	2020-05-25 15:20:09+00	\N
3999	60	Karim Bensalem	Forest	Employé 	SNCB	b185ba833ace55777d708e089f4dd150	t	2020-05-25 21:03:42+00	2020-05-26 06:04:48+00	\N
4052	60	Giorgia Concas	\N	\N	giorgia.concas@gmail.com	cd0a2dd6877c4675eccc0e4b00f3e60c	t	2020-05-25 22:31:50+00	2020-05-25 22:32:13+00	\N
4053	60	Danielle B	Saint-Gilles	\N	\N	a3a0cd02e10ded8060d377232f645e39	t	2020-05-25 22:32:01+00	2020-05-25 22:32:57+00	\N
3626	61	Alast Najafi	Forest	\N	European Parliament	fb2df567f197d308c58794ca9849f827	t	2020-05-25 15:23:00+00	2020-05-25 15:23:20+00	\N
3627	60	Antonija Parat	Bruxelles	Assistante	Parlement européen	042349d8ac0a5a3b1b692e24689576e6	t	2020-05-25 15:23:01+00	2020-05-25 15:23:25+00	\N
3628	60	Hannelore	Schaarbeek	Student	\N	7a93baf2aa44ad9a81661461a7781a1b	f	2020-05-25 15:24:41+00	2020-05-25 15:24:41+00	\N
3636	61	Louisa Raitbaur	Brussels	Trainee	European Parliament	b21302a08c70e6b94c4fbaaffddc3265	t	2020-05-25 15:25:13+00	2020-05-25 15:25:51+00	\N
3637	62	Miguel Fernandez 	Brussel	Muziek manager 	Sony Music 	c2c79def45726e624dc93bbfc18e02cf	t	2020-05-25 15:27:08+00	2020-05-25 15:27:26+00	\N
3601	60	LEMY	Bruxelles	\N	\N	f1212e3cbf292b0b74ecfa0e4ec1217c	t	2020-05-25 15:10:30+00	2020-05-25 15:27:57+00	\N
4057	61	Louis Van Geertruijden	Etterbeek	Researcher	\N	6a002bb1eb339ac72ebcd5f469b2d487	t	2020-05-25 23:02:53+00	2020-05-25 23:13:05+00	\N
3992	60	Alice	Bruxelles 	\N	\N	6624c474408102083e20e43139215cfd	t	2020-05-25 20:53:47+00	2020-05-25 20:54:49+00	\N
3418	62	Sarah Janss	Brussel	student	\N	8a23eadea398d152cb40ad8cf5f0e5b6	t	2020-05-25 13:08:06+00	2020-05-25 20:55:06+00	sarah.janss.rais@gmail.com
3996	60	Joris van haver	Schaarbeek	Ingenieur 	\N	e7215bdbe68abfb96a3b64a049b69f5d	f	2020-05-25 21:00:44+00	2020-05-25 21:00:44+00	\N
4002	61	Karolina Wojciechowska	Ixelles	\N	\N	7cbcec4f9feea8e418abda18790d8d94	f	2020-05-25 21:06:18+00	2020-05-25 21:06:18+00	\N
4103	60	Bruno Gonsette	Schaerbeek	Retraité 	Citoyen	6cf022fc81105f3b1f446949f0fe5fb9	f	2020-05-26 05:41:26+00	2020-05-26 05:41:26+00	\N
3639	60	Colin Brown	 Brussels	\N	\N	d2534ee1d033a651addceb95b7f09518	t	2020-05-25 15:28:17+00	2020-05-25 15:29:09+00	\N
3642	61	E. Nalon	Brussels	\N	\N	c2e68ff8033a921af9aaeeaa133c63a5	t	2020-05-25 15:29:06+00	2020-05-25 15:29:24+00	\N
3641	62	Charlotte Vaes	Schaarbeek 	 	\N	c1c74620aed58bc4619c443dfce0c01d	t	2020-05-25 15:29:03+00	2020-05-25 15:29:33+00	\N
3640	61	Sara Santens	1040	\N	\N	bcd8c38fb5d98a3ad93a9b6882e31453	t	2020-05-25 15:28:59+00	2020-05-25 15:30:39+00	\N
3638	60	Alain	Brussels	Student	Vrije universiteit brussel	02f303573c2f171a22894638727e9751	t	2020-05-25 15:27:57+00	2020-05-25 15:34:10+00	\N
4004	60	Claudia Marenco	Bruxelles	\N	\N	04c9a3314ebe47275ea4e929124413dc	t	2020-05-25 21:06:22+00	2020-05-25 21:06:47+00	\N
4003	62	Nikolai Pushkarev 	Vorst/Brussels 	\N	\N	49167c928484b88424217860f385a392	t	2020-05-25 21:06:19+00	2020-05-25 21:07:18+00	\N
4005	61	Katrien Neven	Sint-Joost	\N	\N	8ac9cdb4025b87a10d78391fbf8472e5	t	2020-05-25 21:07:04+00	2020-05-25 21:07:22+00	\N
4143	62	Steve Sirjacques	Sint-Pieters-Woluwe	\N	\N	013a3848d833f3f996a1731fc2b52dde	f	2020-05-26 06:41:57+00	2020-05-26 06:41:58+00	\N
4008	62	Sarah DHaeyer	Laken	\N	\N	9f7a1a55b9d1bb06dd395a6e2e0a1c69	f	2020-05-25 21:07:40+00	2020-05-25 21:07:40+00	\N
4007	62	Myriam drabs	Brussel	\N	\N	1a7b0af982db350db14d624656d59043	t	2020-05-25 21:07:30+00	2020-05-25 21:07:56+00	\N
4006	60	Mayer	Saint-gilles	enseignante	\N	6bacbd64200dcde3ebb812eb21c933ab	t	2020-05-25 21:07:27+00	2020-05-25 21:08:04+00	\N
4124	60	Nathalie Parmentier	Schaerbeek	Citoyenne	\N	f178429bfbb256bfcb92b633d1a5ce43	t	2020-05-26 06:13:16+00	2020-05-26 06:13:44+00	\N
4011	62	Felicity Jagger	Laken	Orthopedagoog	felicity.jagger@gmail.com	a47f93b1336fe64cc8e7977133775719	t	2020-05-25 21:10:23+00	2020-05-25 21:10:41+00	\N
4012	61	Arnold Torsten HUBSCH	Anderlecht (Belgien)	Director	PwC	c36f5996056a0904648ff253f51d65e1	f	2020-05-25 21:11:29+00	2020-05-25 21:11:30+00	\N
4013	60	Emma Orselli 	Bruxelles	Productrice	\N	1f8a813f3ae780f029836fd8600f6d91	f	2020-05-25 21:12:07+00	2020-05-25 21:12:07+00	\N
4123	60	Hubert	ressaix	dentiste	\N	1728b5483d8ef5934186deb6f33b2cbc	t	2020-05-26 06:12:45+00	2020-05-26 06:13:46+00	\N
4015	59	Katleen Peeters	1081	\N	\N	abd3316ea7785f4a0b470bb92c7439e3	f	2020-05-25 21:12:27+00	2020-05-25 21:12:27+00	\N
4014	60	Luis Correia	Bruxelles	traducteur	\N	e92e060a99651336130b8d9dff1ea2a6	t	2020-05-25 21:12:15+00	2020-05-25 21:12:46+00	\N
4016	61	Adam	Schaerbeek 	Official	European Commission 	0b5c1f61cc696f65c8c0d2d723a3d392	t	2020-05-25 21:13:30+00	2020-05-25 21:14:31+00	\N
4054	60	Andreas Larsson	bruxelles	traducteur	CEC	74afc05e0d7647d62cd1de10a81186c6	t	2020-05-25 22:32:07+00	2020-05-25 22:33:06+00	\N
4125	62	Kaat Hebbrecht	brussel	Arts	\N	ae8ec2a079ffd37e0c665754f51d8671	f	2020-05-26 06:15:15+00	2020-05-26 06:15:15+00	\N
4055	60	Cécile V	Auderghem	Employee	\N	45b4cb6affba9d54365ce0b13ce820f7	t	2020-05-25 22:58:21+00	2020-05-25 22:58:46+00	\N
4142	60	Sander Broekaert	Elsene	GIS Consultant	SIGGIS	a321b5e08ce853f5d722c3c8306dae03	t	2020-05-26 06:38:28+00	2020-05-26 06:42:03+00	\N
4126	60	Piette V	ressaix	dentiste	\N	6ed87de12959ca0262de6d3eda5ef57a	t	2020-05-26 06:15:23+00	2020-05-26 06:15:47+00	\N
4127	62	Harmonie Troch	Jette	Regisseur	\N	8baa63e8e7469d4720fc53971573b940	t	2020-05-26 06:15:24+00	2020-05-26 06:16:11+00	\N
4137	62	Karolien taverniers	Brussel	Reporter/bioboerin 	\N	3c86951d82675523f345f63b99e6e6f0	f	2020-05-26 06:26:42+00	2020-05-26 06:26:42+00	\N
4136	61	Marie Boomert	Brussels 	Student	KU Leuven	3b495eeb4e611f5991e874ecf44ddfa7	t	2020-05-26 06:26:38+00	2020-05-26 06:27:04+00	\N
4138	60	Dewitte	\N	\N	\N	32f3809c59b1c8d11d97480c90ec847e	f	2020-05-26 06:27:09+00	2020-05-26 06:27:09+00	\N
4113	62	Femke	Brussels	Ondernemer	Tibored	89edf9a1dcdfee9a0a6799e6eab3084a	t	2020-05-26 06:02:54+00	2020-05-26 06:30:40+00	\N
4139	60	Hubart Florian	Bruxelles 	Étudiant 	Ulb	d8acc84008674460dcced1198a433f8e	f	2020-05-26 06:33:07+00	2020-05-26 06:33:08+00	\N
4141	62	Laure van ranst	1070	Employee 	\N	cf30c501eb3f8f00a195c4f58fafeaac	f	2020-05-26 06:38:24+00	2020-05-26 06:38:24+00	\N
4155	62	Elke Vermeulen	Etterbeek	Jeudhulpwerker	\N	b051e82898dd4881fd8af6884959f3bf	t	2020-05-26 07:01:32+00	2020-05-26 08:44:23+00	\N
4146	60	Thomas El Berkani	Bruxelles 	\N	elberkani.thomas@gmail.com	ea916bd13822e0bef3f48823930008c6	t	2020-05-26 06:45:36+00	2020-05-26 06:46:07+00	\N
4147	60	David Leclercq 	Forest	\N	\N	12c3d228885dec4b5c823dc682b31e25	t	2020-05-26 06:45:38+00	2020-05-26 06:46:17+00	\N
4156	61	Boils	Brussels	Employee	\N	55e8ca3e96f94e108e5c7f215dc43472	f	2020-05-26 07:02:30+00	2020-05-26 07:02:30+00	\N
4158	60	Mathieu 	\N	\N	\N	d9ddb6c8886ce3523af849df9a86432d	t	2020-05-26 07:03:19+00	2020-05-26 07:03:34+00	\N
4153	61	Sophie Colsell	Bruxelles	\N	\N	c2d010b60f31f9e307fc8bf39e0934b0	t	2020-05-26 07:00:35+00	2020-05-26 07:04:13+00	\N
4157	60	David Beaugnet	Bruxelles	Employé	ERCEA	957dcd18b1eeee7e6eb5761c0aaf6ebd	t	2020-05-26 07:02:48+00	2020-05-26 07:05:19+00	\N
4170	60	Goethals marine 	Saint Gilles 	\N	\N	e70dd2c0299c44199479426c0759a7a2	f	2020-05-26 07:14:56+00	2020-05-26 07:14:56+00	\N
4164	60	Roberta fadda	Etterbeek	\N	\N	f803a34cec74b7faa9c02ae7b7ded1d6	t	2020-05-26 07:09:04+00	2020-05-26 07:09:36+00	\N
4174	62	Hannelore Smits 	Brussel	Lerares	Brusselleer	eef757e9aca9301422b304391fe08aad	f	2020-05-26 07:19:20+00	2020-05-26 07:19:20+00	\N
4171	60	Florian Hubarr	Bruxelles 	Étudiant 	Ulb	98007fcf742154877c04a094484a1f69	t	2020-05-26 07:15:07+00	2020-05-26 07:16:14+00	\N
4172	60	Lucas Dupuis	Bruxelles	Etudiant	ULB	183e54d2afec74315f8b770839ba9061	t	2020-05-26 07:15:12+00	2020-05-26 07:15:53+00	\N
4179	60	Stéphanie Marlière	Bruxelles	Assistante sociale	O.N.E.	d19cd0dc05fd373a2d9ceb3caf875bdb	f	2020-05-26 07:28:05+00	2020-05-26 07:28:05+00	\N
4180	62	David van der Ha	Ganshoren	\N	\N	219629fb47567cd33aac3f89442654d8	t	2020-05-26 07:28:20+00	2020-05-26 07:28:34+00	\N
4181	62	pieter pools	Geraardsbergen	Pensioen	bellemangeraardsbergen@gmail.com	80b96dc85b85b023ebacb1bd68fb9ebc	f	2020-05-26 07:29:12+00	2020-05-26 07:29:13+00	\N
4182	62	Dirk Van Erps	Etterbeek	Europees ambtenaar	\N	2d6dc770edc0a6757437f7ccd31a4fbe	t	2020-05-26 07:31:02+00	2020-05-26 07:31:32+00	\N
4165	62	Oda Van Neygen 	Brussel	\N	\N	de08a871b21332685f9ab9a932ce7df8	t	2020-05-26 07:09:36+00	2020-05-26 08:11:44+00	\N
4184	61	Claire Gago-Chidaine	Bruxelles	\N	\N	a01a0534e69094105907cb0d647b01c3	t	2020-05-26 07:32:03+00	2020-05-26 07:46:16+00	\N
3635	61	Manon K. Janssen	Sint-Joost-Ten-Node	\N	\N	07af98a530e487671f6085d8c8d73c7d	t	2020-05-25 15:25:03+00	2020-05-25 15:26:43+00	\N
3659	61	\N	\N	\N	\N	c9215cffd4048ef51cfeb0df91f68aa5	t	2020-05-25 15:34:55+00	2020-05-25 20:19:08+00	\N
3675	61	Omar Eklil 	Brussel	Test analyst	fednot	f5b1996d144b3ce86897708c30362530	t	2020-05-25 15:47:14+00	2020-05-26 06:56:40+00	\N
3672	62	Florence postma	Bruxelles	Medical affaires manager	Nutricia	188abcae1125a9f65a9787783f8697ee	t	2020-05-25 15:41:40+00	2020-05-25 15:48:23+00	\N
3645	61	Maxim Hellyn	Anderlecht	\N	\N	de885d5386613b599ce6be084e43dc4f	t	2020-05-25 15:30:36+00	2020-05-25 15:30:58+00	\N
3644	62	Grietkin VW	Anderlecht	\N	\N	4b603259d8d2c0c9068c5b0b736b552b	t	2020-05-25 15:30:35+00	2020-05-25 15:31:08+00	\N
4010	59	Alexandra Jimenez	Bruxelles	\N	\N	51d3ccc62997233228cd1da63494d78c	t	2020-05-25 21:08:27+00	2020-05-26 05:44:47+00	\N
3664	62	Natalie G.	Bruxelles	\N	\N	10b5a2b0fbf5b2e7178fd16befb84e4b	t	2020-05-25 15:38:18+00	2020-05-25 15:40:09+00	\N
3643	61	Frank Herrmann	Molenbeek	\N	\N	669f3e5b4da9b2e15083a1e553554748	t	2020-05-25 15:29:10+00	2020-05-25 15:31:18+00	\N
3649	60	pieterjan schraepen	Sint-Gillis	\N	\N	548ab168c0796d627fbf465ea6a8424a	f	2020-05-25 15:32:31+00	2020-05-25 15:32:31+00	\N
3647	61	Juliane Schmidt	\N	\N	\N	c40b360d54e6b60a431224c49bb1e962	t	2020-05-25 15:31:46+00	2020-05-25 15:32:39+00	\N
3648	61	Marina 	Brussels 	\N	\N	55d80b6e4728c6f01d747ef4333db374	t	2020-05-25 15:32:05+00	2020-05-25 15:32:57+00	\N
3666	60	Stonner Marion	Bruxelles	apa	pe	82bce9aa447dfca5696ac959774a4129	t	2020-05-25 15:39:55+00	2020-05-25 15:40:27+00	\N
3651	60	Claire Beguin 	1190	Salariée 	Ministere	266a414f487ceb5cf3d3b9783f376501	f	2020-05-25 15:33:14+00	2020-05-25 15:33:15+00	\N
3668	60	Smeets Charlotte 	1170	Student	\N	f6859829aed7f0a88e1d1094e4088b11	f	2020-05-25 15:40:33+00	2020-05-25 15:40:33+00	\N
3652	61	Daniel pinn	Brussels 	\N	\N	d3c89de2923c4f40038fa34b5defed31	t	2020-05-25 15:33:17+00	2020-05-25 15:33:54+00	\N
3653	62	André	Bruxelles	Étudiant	\N	a4ed3f7ceee645256116b4a8287e3945	t	2020-05-25 15:33:25+00	2020-05-25 15:34:01+00	\N
3657	61	Alexandra Quaresma	Brussels	HR	\N	0b1983771d06d77cb3aa2b6d4b3281a6	f	2020-05-25 15:34:18+00	2020-05-25 15:34:18+00	\N
3658	62	Lotte De Vos	Sint joost ten node	Student	VUB	66f311295b5b9ef314173d8bc2354c63	f	2020-05-25 15:34:25+00	2020-05-25 15:34:25+00	\N
3656	62	Bill Cortvriend	Brussels	\N	\N	41ba4ebca8e31ac45850467e81173fbe	t	2020-05-25 15:34:17+00	2020-05-25 15:34:30+00	\N
3650	61	T. Liebert	Watermael-Boitsfort	\N	\N	0a1c8a3843ae0ccb55aa2984e73ec0ff	t	2020-05-25 15:33:09+00	2020-05-25 15:35:32+00	\N
3646	60	Bernard Polet	Woluwé-Saint-Lambert	Plombier	Bernard Polet  sprl	856686509404cf7049839a418f38faad	t	2020-05-25 15:31:15+00	2020-05-25 15:35:48+00	\N
3681	62	Evi Verdonck	Vorst	Optometrist	\N	102c74c47496776218c6617ae86b38ff	t	2020-05-25 15:50:51+00	2020-05-25 15:51:58+00	\N
3678	62	Mats Dekock	Schaarbeek	bricoleur	\N	04ea504e104b8d4b5dc13a63fa1757e4	t	2020-05-25 15:48:32+00	2020-05-25 15:48:47+00	\N
3661	62	Inge Van Opalphen	Brussel	Bediende	OVB	3b17e156565861a1187973caa3e12ac5	t	2020-05-25 15:36:27+00	2020-05-25 15:36:43+00	\N
3662	62	Maarten Kreijkamp	\N	\N	\N	e34e32c5be0ea46db75c8b58a8e412c6	t	2020-05-25 15:37:27+00	2020-05-25 15:37:53+00	\N
3673	62	Tim Boesman	Sint-Gillis	\N	\N	f2a9fc7bf9bc01106b9a9a1aacee1bd4	t	2020-05-25 15:44:35+00	2020-05-25 15:53:00+00	\N
3670	60	Gregoire Rifaut	Bruxelles	\N	\N	8f195a89f27182f60921a327650cc638	t	2020-05-25 15:41:11+00	2020-05-25 15:41:32+00	\N
3669	60	Mattéo Badet 	Bruxelles 	\N	\N	ae549cb212a1ad0e3b7860de301b93e0	t	2020-05-25 15:40:39+00	2020-05-25 15:41:39+00	\N
3667	60	Anouchka Oler 	Forest	Artiste	\N	16fbbadf6101eaa1b2bc0199f16c4a0b	t	2020-05-25 15:40:16+00	2020-05-25 15:41:49+00	\N
3671	62	Laure Verstraete	Jette	\N	\N	cdac9bd650fe8f499eca5ca2b8af4e3d	t	2020-05-25 15:41:19+00	2020-05-25 15:43:09+00	\N
3660	60	Franziska Telschow	Watermael-Boitsfort	\N	\N	5562eb65f5aac5efadfb47c2ff856034	t	2020-05-25 15:36:04+00	2020-05-25 15:46:02+00	\N
3680	60	Chiara Galiffa	Uccle	Fonctionnaire UE	European Commission	f405454a2f0dfdd512dcf673c8d800df	f	2020-05-25 15:49:18+00	2020-05-25 15:49:18+00	\N
3679	61	Canivet Marie 	Bruxelles 	Forest 	\N	15a39b331f47df13db478ade3e68aca4	t	2020-05-25 15:49:17+00	2020-05-25 15:49:58+00	\N
3676	60	DANIEL PLAT	UCCLE	\N	DANIEL PLAT KUTNOWSKA	6a19ddf7d7c068e2d3900a5e0a00dabd	t	2020-05-25 15:47:17+00	2020-05-25 15:47:47+00	\N
3674	60	Vincent Lheureux	Schaerbeek	\N	\N	69aa13b5c9459f1414f593ed8ed34fac	t	2020-05-25 15:47:12+00	2020-05-25 15:47:50+00	\N
3683	61	Vincent Madeline	Ixelles	\N	\N	02b493d1113b492c7ac980d74f0d2e7c	f	2020-05-25 15:51:03+00	2020-05-25 15:51:03+00	\N
1821	60	Bénédicte Bouchat	Bruxelles	Avocate	\N	32479f4d342338e07119335d39575945	t	2020-05-23 11:04:33+00	2020-05-25 15:53:31+00	\N
3684	61	Marta Gionco	Forest	\N	\N	ad8676a541b1e7f3f225786ef5b06c6f	t	2020-05-25 15:51:15+00	2020-05-25 15:51:34+00	\N
3682	60	Jean Gauthier Heymans	Schaerbeek	\N	\N	f0c1b7982c86c8580069c6c6f2fcb4f6	t	2020-05-25 15:51:01+00	2020-05-25 15:51:38+00	\N
3654	62	Maskens Maite	Brussels	Professor	Université Libre de Bruxelles	d0a95aa34a6228962afa0a40ad0e76ac	t	2020-05-25 15:33:59+00	2020-05-25 15:54:18+00	\N
3663	61	Sarah Coeurnelle	Brussel	\N	\N	87c086dd53cefc87addccc723690b52d	t	2020-05-25 15:38:12+00	2020-05-25 16:01:17+00	\N
3677	60	Nabil Aniss	Saint-Gilles	\N	\N	0ddd287e06f7446811da7311d36e64fc	t	2020-05-25 15:48:14+00	2020-05-25 17:35:53+00	\N
3703	61	Gauthier Polet	Brussels	Engineer	\N	ee53fe8c45ee95cc874105b7b2c51f25	f	2020-05-25 16:03:08+00	2020-05-25 16:03:08+00	\N
3688	62	Jasper Abrahams	Schaarbeek	Student 	\N	a61df4fba4510d71cd93bc009a085e53	f	2020-05-25 15:53:16+00	2020-05-25 16:03:16+00	\N
3691	60	Nora Claes	Molenbeek-Saint-Jean	\N	\N	39f504bb62a7062ede1977ff5a27f9e4	f	2020-05-25 15:55:00+00	2020-05-25 16:05:01+00	\N
3700	62	Linde Maes	Schaarbeek	Student	\N	f281df447ac144f5af54c26ac649cdf0	f	2020-05-25 15:59:21+00	2020-05-25 16:09:22+00	\N
3693	60	JUDITH VAN PARYS	Bruxelles	\N	\N	13d8a8c1bbdc41d8eedb8f32a769cc32	f	2020-05-25 15:55:37+00	2020-05-25 16:15:38+00	\N
3686	62	Tim Schloesser	1050	Ixelles	\N	b41d780637b80859038523e1e2d8da7b	t	2020-05-25 15:51:33+00	2020-05-25 16:31:16+00	\N
3692	61	Maaike Laporte	Schaerbeek 	Mam	\N	e3c32d9472286da7e7e086258c512212	t	2020-05-25 15:55:24+00	2020-05-25 16:08:05+00	\N
3701	62	Myrthe	Brussel	Boekhandelaar	\N	498962b0932d4b0041cece9ce325d2b0	f	2020-05-25 16:00:55+00	2020-05-25 16:10:56+00	\N
3687	60	Evan Cole 	1000 bxl	\N	\N	c92c6fdaac25a5005fb7cfa1b770cc78	t	2020-05-25 15:53:01+00	2020-05-25 16:50:29+00	\N
3704	62	Zanna Vanrenterghem	Brussel	\N	\N	bf3623b37bcc8a6a65d6109688c66f52	f	2020-05-25 16:04:03+00	2020-05-25 16:14:04+00	\N
3702	61	Simon B	Bxl	\N	\N	777153803f56b4ac368378ea10a3432f	t	2020-05-25 16:01:43+00	2020-05-25 16:12:07+00	\N
3698	62	Evelien Vanderstraeten	Schaarbeek	Biker	\N	63cf380b6dd026d3ae20fa9773cf4ae1	t	2020-05-25 15:57:17+00	2020-05-25 16:29:47+00	\N
3695	60	Celine Giraudeau 	Schaerbeek 	\N	\N	a592f3ac71134b4da777c6226fab973b	t	2020-05-25 15:56:48+00	2020-05-25 16:15:29+00	\N
3699	60	Milabi Lucie 	St josse ten noode	Fonctionnaire 	lkatukum@gmail.com	9a78c192ec7b036b0f8d6b8a429758cb	t	2020-05-25 15:58:00+00	2020-05-25 16:21:30+00	\N
3696	60	Moors 	Schaerbeek 	Teachet	FWB	1d295befe9fca02ce861f1ffa663b889	f	2020-05-25 15:56:49+00	2020-05-25 16:16:50+00	\N
3690	60	Laura Strijckers	\N	\N	\N	8b351db85e3f60498f991a74f20984f3	t	2020-05-25 15:54:38+00	2020-05-25 16:27:50+00	\N
3694	61	Jacques Sterkmans	Elsene	gepensioneerde	\N	a3a7ea7e4eaf19ad943caf6e9483250f	t	2020-05-25 15:55:45+00	2020-05-25 16:19:26+00	\N
5196	61	Linh Ngu	Schaerbeek	\N	\N	ad83f01724c466f6b1decf31c6d5991a	t	2020-05-31 07:58:27+00	2020-05-31 07:58:44+00	\N
3705	62	Myriam halimi	1060	\N	\N	51ac6a86d638e997cb0e721b89e9b55f	t	2020-05-25 16:05:11+00	2020-05-25 16:05:34+00	\N
3712	62	Severine Stolfo	Forest	\N	\N	06daa1af7ac61bfbaaa2c4e12b7bbc9f	f	2020-05-25 16:11:01+00	2020-05-25 16:11:01+00	\N
4163	60	Valia Chesnais	Bruxelles 	Comédienne 	valma.chesnais@gmail.com	8cae7f45c0ba2edfcea7cdf2a0964360	t	2020-05-26 07:08:16+00	2020-05-26 07:08:46+00	\N
3714	60	Ahdi	Bruxelles	1080	\N	1589b9f844e2976d82d4cf72a5ef9e06	f	2020-05-25 16:11:57+00	2020-05-25 16:11:57+00	\N
3713	62	Julie Claassens	Brussel	Pedagogisch Team Manager	ToekomstATELIERdelAvenir 	6a658dfe466f1c55d66bd6a0e9f034db	t	2020-05-25 16:11:33+00	2020-05-25 16:12:10+00	\N
3689	61	Van Praet Sarah	Ixelles	\N	\N	25f37f58c292c2cc6d1233e6d608f6ae	t	2020-05-25 15:54:10+00	2020-05-25 16:42:28+00	\N
3931	62	Leni Huyghe	Brussels	\N	\N	be1f66e80155c6850f23430c49172ba4	t	2020-05-25 19:47:12+00	2020-05-25 19:47:49+00	\N
3932	61	Nicolas Van Gucht	Brussel	Day dreamer	\N	7e63d848153a7fd1837e5fe26fbf0197	t	2020-05-25 19:47:41+00	2020-05-25 19:48:46+00	\N
4161	60	Marion	1060	\N	mion_02@hotmail.com	247b5cfec681a1d228e9e7b440d543db	t	2020-05-26 07:08:03+00	2020-05-26 07:09:58+00	\N
4018	61	Chris Beck	Brussels	Parliamentary assistant	European Parliament	6fcc09ff4a1765f166d446abd174ada3	t	2020-05-25 21:14:38+00	2020-05-25 21:16:28+00	\N
4058	61	Apolline	Brussels 	Freelance	\N	57addf578bb634fc043c89efbd5e2550	f	2020-05-25 23:26:23+00	2020-05-25 23:26:24+00	\N
4059	60	Michel Hubert	Bruxelles	\N	\N	3cdcbeb4d2019929e3518a7eeecb4d9f	f	2020-05-25 23:29:10+00	2020-05-25 23:29:10+00	\N
4145	60	Fernando Hoyos	Bruxelles	Interprète indépendant	\N	72508e94b2837d020044f92f78ea7afd	t	2020-05-26 06:43:44+00	2020-05-26 06:44:02+00	\N
4060	60	Delphine	1030	Enseignante	/	90182fa7db1f973b29f331e1e2764464	t	2020-05-25 23:38:31+00	2020-05-25 23:38:59+00	\N
4104	62	Lien notaerts	Molenbeek	\N	\N	eb6de125df963b81eeedc08e521c471f	f	2020-05-26 05:42:01+00	2020-05-26 05:42:01+00	\N
2493	62	Christine Verdoodt	Vorst	\N	\N	d368e766fc222044e90296a1f438155b	t	2020-05-24 19:12:17+00	2020-05-26 05:45:25+00	christine_verdoodt@hotmail.com
3846	61	Dominik	La Hulpe	Risk Manager	\N	c7e68bd73ea3cd0b63888530372a2623	t	2020-05-25 18:11:55+00	2020-05-26 06:44:40+00	\N
4106	62	Bernice Brigou	Brussel 	Restauratrice	\N	4aa61434b450db60f946d838bd1f0244	t	2020-05-26 05:49:21+00	2020-05-26 05:49:46+00	\N
4175	61	Arnaud Weijers	1160	\N	\N	5c11221ade3608925bb74ab20fdaddcc	t	2020-05-26 07:20:20+00	2020-05-26 08:17:07+00	\N
4144	62	jonathan Sauer	BRUSSEL	Innovation manager 	Worldline	db7e57f7e02b89bdb27f7698078560d5	t	2020-05-26 06:43:38+00	2020-05-26 06:45:20+00	\N
4108	62	Jelle Rheinhard	Duffel	Consultant	Ae	5c20bbb640c2781fb846bf3deb347f2f	t	2020-05-26 05:51:38+00	2020-05-26 05:52:23+00	\N
4148	60	Alain Diderich	1190	Travailleur Associatif	ML	74f7a2540d3084b19f028a70a71c086b	t	2020-05-26 06:46:17+00	2020-05-26 06:47:07+00	\N
4131	60	Anna Vitiello	Brussels	\N	\N	64cdba102cbfce796add326a8ee753bf	t	2020-05-26 06:21:35+00	2020-05-26 06:22:08+00	\N
4132	62	Zeno	Schaarbeek 	Webdesigners 	\N	3c46bc568d4b6c203054c459e458597a	t	2020-05-26 06:22:07+00	2020-05-26 06:22:26+00	\N
3930	60	Van Oost	Bruxelles	Consultant en gestion des sols pollués	\N	4598ec480c70bc42843f6eeff142f24f	t	2020-05-25 19:46:27+00	2020-05-26 22:12:15+00	\N
4133	61	Olivier Gossieaux	Braine le Château	\N	LNG Consult SPRL	00dda3044f90cbf3d33daa2eb0bafc54	t	2020-05-26 06:22:18+00	2020-05-26 06:23:15+00	\N
4130	61	Jan Baerts	Vorst	Tv director	\N	c01db5a1509be3b7803b83f82a849ed1	t	2020-05-26 06:19:39+00	2020-05-26 06:30:44+00	\N
4140	62	Jente Minne	Brussel	It manager	Microstart	c6144dd5be6dfec4ca060b6fe880d125	f	2020-05-26 06:38:18+00	2020-05-26 06:38:19+00	\N
4149	60	Helene Derbaudrenghien	Schaerbeek	\N	\N	70d71e16a3b59f2bbbef3d3b4f6a1848	t	2020-05-26 06:50:14+00	2020-05-26 06:51:02+00	\N
4134	60	Daniela Ortlauf	1190 Forest	\N	\N	7de5a2fab21aafc9de91f3210fd3be3c	t	2020-05-26 06:22:56+00	2020-05-26 17:22:19+00	\N
4152	61	Lenaic 	1000	Project Manager 	\N	48bad4e869601a061a5f3468e5f3ffb8	t	2020-05-26 06:58:38+00	2020-05-26 06:58:53+00	\N
4151	60	Franka Boehm	Woluwe-Saint-Pierre 	\N	\N	de502aaed2dab71a9fa59c041c1106ae	t	2020-05-26 06:56:55+00	2020-05-26 07:04:01+00	\N
4162	60	Marie	Bruxelles 	Étudiante 	\N	0d05ffdd5d2f991b444579681377e3ce	f	2020-05-26 07:08:06+00	2020-05-26 07:08:06+00	\N
4188	62	Delomez 	Brussel	Leraar	\N	688c9b54aa352c79af1c0ad0f84525f9	t	2020-05-26 07:34:59+00	2020-05-26 07:35:26+00	\N
4160	61	Eliott	Ixelles	Student	ULB	792dc34b7d68faa53198acd2d0a870b9	t	2020-05-26 07:07:13+00	2020-05-26 07:08:22+00	\N
4198	62	\N	\N	\N	\N	b2f6bff548335d0c3b9f2177fc9c2bc2	t	2020-05-26 07:47:19+00	2020-05-26 09:34:48+00	\N
4169	62	Frederik Serroen	Sint-Gillis	\N	\N	e7021dd18986d51987be10b9dd4ac3f2	f	2020-05-26 07:13:12+00	2020-05-26 07:13:12+00	\N
4167	60	Dominique	Bruxelles	artiste	\N	8f6d7f05801ace6597839bd10694fddc	t	2020-05-26 07:12:56+00	2020-05-26 07:13:24+00	\N
4166	60	Hangya-Lachmann Noemi	Schaerbeek 	Femme au foyer	\N	d98d5b9ffbd66ffafdf76ca7a2da81e9	t	2020-05-26 07:12:15+00	2020-05-26 07:19:28+00	\N
4196	60	Emilie Herssens	Schaerbeek	citoyenne, cycliste	\N	a57be64c86c804ee6c2f1bc45819e11e	t	2020-05-26 07:46:06+00	2020-05-26 08:26:15+00	\N
4178	62	Maarten Van Bever	Mechelen	\N	\N	e293858b8e26269a6b97cfe722f171c9	t	2020-05-26 07:22:57+00	2020-05-26 07:23:23+00	\N
4176	60	Christian Pringels	Bruxelles - Uccle	Travailleur auprès d'enfants	Famille	84e46976233d231f90cbb7bdfb9a6e6a	t	2020-05-26 07:20:44+00	2020-05-26 07:21:05+00	\N
4107	60	Hubert Caroline	Etterbeek	Dentiste	\N	191ae0556c7e2f4bd3600a8b765c83f0	t	2020-05-26 05:51:18+00	2020-05-26 08:12:08+00	\N
4159	61	Marie-Sophie Wenzel	St Gilles	\N	European Parliament 	7a82f31029e8846818ae79e2028a7864	t	2020-05-26 07:06:27+00	2020-05-26 07:32:33+00	\N
4185	61	delphine prinselaar	brussels	\N	\N	4d2ab75fdf0fac5b862ba47ba715d104	f	2020-05-26 07:33:23+00	2020-05-26 07:33:24+00	\N
4190	62	Cosima Rosie Lagae	Brussel	\N	\N	3accaa4d96ae607719026c4b78e0da51	t	2020-05-26 07:38:35+00	2020-05-26 07:38:55+00	\N
4186	60	beine constantin	forest	occupé	\N	0e4c311ca4875342b2b0daf8285fe933	t	2020-05-26 07:34:10+00	2020-05-26 07:38:15+00	\N
4189	61	Sophie Roizard	\N	\N	\N	b9ffb933ecd58b4e3814d767ee0bc4e0	t	2020-05-26 07:38:04+00	2020-05-26 07:38:20+00	\N
4177	62	Marius Riedl	Brussel	Student	ULB	adac7f4ef75392584d9b70d7fe77feee	t	2020-05-26 07:22:09+00	2020-05-26 13:43:22+00	\N
4194	62	Katrien Maes	Brussel	leerkracht	basiseducatie Brusselleer	ffd0127b952fc410d51dbd5fbd81aaab	f	2020-05-26 07:43:39+00	2020-05-26 07:43:39+00	\N
4192	61	Didier Crepin	Bru	Employee	VISITBRUSSELS	8cce11bf140b595cb9b468661edc6608	t	2020-05-26 07:40:14+00	2020-05-26 07:41:47+00	\N
4193	62	David De Witte	Mechelen	Bediende	SAM	90dbc312f3a9d8603552118b45356ca7	t	2020-05-26 07:41:03+00	2020-05-26 07:42:22+00	\N
4195	60	Charlotte Raymond	Bruxelles	\N	1987	6b262fdabc14c09b4643b8056a845499	t	2020-05-26 07:44:32+00	2020-05-26 07:44:50+00	\N
4168	62	Myriam Zwemmer 	Brussel 	Leerkracht 	\N	eda6935b6897a95bfaacd82bce4c8614	t	2020-05-26 07:13:06+00	2020-05-26 08:37:09+00	\N
4191	62	Manya Gregory 	Brussel 	Bediende	Brusselleer 	8b92a4cfa2673e968fb344e7112f6c0a	t	2020-05-26 07:39:31+00	2020-05-26 13:27:52+00	\N
4199	60	Géraldine Taymans	Bruxelles	gérante horeca	1982	6361e849eb5139c9ab6d560ff9414f15	t	2020-05-26 07:47:30+00	2020-05-26 07:47:43+00	\N
4183	61	Anton Svane Olesen	Brussels	APA	Greens	6430c915bcb5e70a3e59ef5bd7ab62de	t	2020-05-26 07:31:41+00	2020-05-26 07:54:21+00	\N
4200	60	Roxanne Abels	Bruxelles	Bediende	Veb	2b5641ff950f37105802b5f91223999d	t	2020-05-26 07:48:21+00	2020-05-26 07:49:03+00	\N
4835	60	Jean-Marc Etienne	Esneux	Facteur	\N	8d856f6589448c13c7b52160ea857efe	t	2020-05-27 19:23:45+00	2020-05-27 19:29:31+00	jmarc_etienne@hotmail.com
3753	60	Marie Fisette	5000	Employée à la STIB	Stib	86dbb02595e06975db923bacc58d8e22	t	2020-05-25 16:48:08+00	2020-05-25 18:14:45+00	\N
3706	62	Antoinette Spreutels	Schaarbeek	Advocaat	Xirius public	62062d67ad12ca5237baa09085ecdee1	t	2020-05-25 16:05:57+00	2020-05-25 18:06:17+00	\N
3747	61	Clara nguyen	Etterbeek	Writer	\N	d6aeb55ffeaa34b2fdfc964a31ddd7e8	t	2020-05-25 16:43:03+00	2020-05-25 17:11:08+00	\N
3752	60	Louis Ferwerda	Bruxelles	\N	\N	d7cb23c62151518eae1bc9a248802c13	t	2020-05-25 16:47:21+00	2020-05-25 18:29:05+00	\N
3736	60	Emmanuel Campos Tavares	Bruxelles	Consultant 	\N	eb5ea5d26dc48ebf262cea7e8fea3619	t	2020-05-25 16:35:07+00	2020-05-25 18:50:42+00	\N
3707	62	Gabriel Ramos	Brussel	Animator	\N	b501eb0a623786b3075e237248d8c4ee	t	2020-05-25 16:07:05+00	2020-05-25 18:51:20+00	\N
3709	62	Pieter Maes	Schaarbeek	architect	\N	0229d4f08fba0583c2267d8b2c7563d6	t	2020-05-25 16:07:27+00	2020-05-25 16:08:39+00	\N
3711	22	Maarten Langhendries	Schaarbeek	\N	\N	83924b841b050ba87c71e7ed9687fa96	t	2020-05-25 16:10:06+00	2020-05-25 16:10:38+00	\N
3727	62	Philippe	Forest	\N	\N	16087d611fc1771d85b733de621c9890	t	2020-05-25 16:29:25+00	2020-05-26 08:03:16+00	\N
3730	61	anne	ixelles	\N	\N	b6d4bdac272e07d51d324aa4b64597ee	t	2020-05-25 16:30:49+00	2020-05-25 16:31:18+00	\N
3716	62	Juliette Billiet	Brussel	student	\N	38b40a6930dec67b23cd2074936e1697	f	2020-05-25 16:18:32+00	2020-05-25 16:18:32+00	\N
3757	60	Florence Kohnen 	1190	Indépendante	\N	820cbb9c43812d2d03c9428c0e7f2032	t	2020-05-25 16:54:22+00	2020-05-25 19:52:35+00	\N
3731	62	\N	\N	\N	\N	301f0cd1cab21ecee1fda62844ce3b7f	t	2020-05-25 16:31:04+00	2020-05-25 16:31:18+00	\N
3717	60	Juliette Billiet	Vorst	student	\N	dca0c4e8a9242a6de70342fbd4a59e8e	t	2020-05-25 16:19:01+00	2020-05-25 16:19:13+00	\N
3722	62	Hadiatou 	1080	Sociaal werk 	\N	f255f04b4e28084273b81bed454f9b3c	t	2020-05-25 16:26:04+00	2020-05-25 20:20:07+00	\N
3715	60	Kirsten Jongberg	Schaerbeek 	\N	\N	d1dd0a3e41e991a633e1876b6b639de9	t	2020-05-25 16:13:18+00	2020-05-26 07:56:23+00	\N
3732	62	De Deygere	ukkel	x	x	c7d775cf13174a4a32c14e781132c578	f	2020-05-25 16:31:51+00	2020-05-25 16:31:51+00	\N
3718	62	Helsen Romain	Averbode	Pensioen	\N	cf1987751d6a2d3626d56c1de9e3958c	t	2020-05-25 16:20:17+00	2020-05-25 16:20:36+00	\N
3719	62	Annie Kolemen 	Brussels 	\N	\N	3607acdb24188d53efda3fccc3592d25	t	2020-05-25 16:20:31+00	2020-05-25 16:20:51+00	\N
3710	62	Kobe Ramakers	Kortenberg	Begeleider	Sporen	98281180ee87f0f3f6e0731019e1d2b1	t	2020-05-25 16:07:31+00	2020-05-25 16:23:18+00	\N
3720	60	Philippe Martin	Bruxelles	\N	\N	502f55cff4fc09ae261c93c407ede1d7	t	2020-05-25 16:23:43+00	2020-05-25 16:23:57+00	\N
3744	62	Vits Jona 	Schaarbeek	Bediende	\N	f613ec690516b48a41ad30617281512f	t	2020-05-25 16:40:49+00	2020-05-25 16:41:48+00	\N
3721	61	Vandermeulen	Brussels	Consultant	Gate-16	fa0425e7e8691efa4e46292a8bf10433	t	2020-05-25 16:25:22+00	2020-05-25 16:25:48+00	\N
3723	60	Heraldo Hettich	Ixelles	Assistant Parlementaire	European Parliament	15ae206e89e1fa8236a818b0223c2e3a	f	2020-05-25 16:26:37+00	2020-05-25 16:26:37+00	\N
3724	62	Kristof L	1030	\N	\N	67c50aa84bc81648e0016f87f9164898	t	2020-05-25 16:26:57+00	2020-05-25 16:27:12+00	\N
3763	61	Martin Habets	\N	\N	\N	6a300d92aaa7dc1889a957fe46156663	t	2020-05-25 16:56:41+00	2020-05-25 17:39:20+00	\N
3726	62	Victor	Molenbeek	student	\N	78db62059c0d58653efdbf10a3cc1913	f	2020-05-25 16:28:48+00	2020-05-25 16:28:48+00	\N
3728	62	Candice Joseph	Brussel	Studente	Vrije Universiteit Brussel	10715136fc00647544c89e9cc2bb8f71	t	2020-05-25 16:29:32+00	2020-05-25 16:29:44+00	\N
3729	61	John Magan	Boitsfort	\N	\N	f751864baf88f5b6fc893bb4435cdae2	t	2020-05-25 16:29:40+00	2020-05-25 16:29:55+00	\N
3735	62	Wesley De Brandt	Anderlecht	\N	\N	5d6014ba279e5387b9a5354ccb7c7e4f	t	2020-05-25 16:34:41+00	2020-05-25 16:35:03+00	\N
3734	60	Santacana Elodie	Bruxelles	\N	\N	7f2f9116f6cdcb434fad72744abc3e2a	t	2020-05-25 16:34:27+00	2020-05-25 16:36:05+00	\N
3738	61	Anne Kooistra 	Brussel 	\N	\N	abbb8a9c5befca2cd063575a8876ed2e	f	2020-05-25 16:36:18+00	2020-05-25 16:36:18+00	\N
3746	62	Catteeuw Gerda	Brussel	Bediende	AIG Europe	d0629958e3fa0b2a973bc89538ea9041	f	2020-05-25 16:42:56+00	2020-05-25 16:42:56+00	\N
3733	62	Petrus	1210	\N	\N	f5a93089e71e7b839a6b3909034fc00f	t	2020-05-25 16:32:05+00	2020-05-25 16:36:47+00	\N
3739	62	Saskia Hendriks	Uccle	\N	\N	b028961261e67ce80d993996a2f76e6d	t	2020-05-25 16:36:20+00	2020-05-25 16:37:37+00	\N
3758	60	Willem Van Orshoven 	Bruxelles	Paysagiste	\N	7e715983c3c1586b22b81dc900552813	t	2020-05-25 16:55:37+00	2020-05-25 17:25:36+00	\N
3741	62	Mcfarren, Dani 	Brussel	\N	\N	e3e0923d33d7449f2cd051e01e0df4a5	t	2020-05-25 16:38:32+00	2020-05-25 16:39:40+00	\N
3740	61	Pieter DW	Brussels 	\N	\N	dcae69b3548b613d0b91b69de5f8145e	t	2020-05-25 16:37:29+00	2020-05-25 16:39:55+00	\N
3745	62	Janssen	Elsene	\N	\N	65dd332313ab78fd62d58c630d14c94d	t	2020-05-25 16:42:46+00	2020-05-25 16:43:21+00	\N
3743	62	Lore 	Laken	\N	\N	8a27b03233da200f277699dacd05ce79	t	2020-05-25 16:40:19+00	2020-05-25 16:40:43+00	\N
3725	62	Nore Delang	Brussel	Notarieel jurist	Mevr.	e42cbd929dd052da41fd75c44f8493e7	t	2020-05-25 16:28:36+00	2020-05-25 17:26:45+00	\N
3750	60	Xavier G.	Uccle	Enseignant	ULB	d2f7721b0b56c4c3d9a16259ab3af01c	t	2020-05-25 16:44:51+00	2020-05-25 16:45:02+00	\N
3754	60	Othman El Maanouni	Saint Gilles	Indépendant	\N	87c116a1561f0d9a6f99f793df0ae403	t	2020-05-25 16:49:07+00	2020-05-25 16:49:29+00	\N
3748	60	Rosenstock	Bruxelles	\N	\N	6fb1a22a4686d5c987cae8402c3fe321	t	2020-05-25 16:44:01+00	2020-05-25 16:45:36+00	\N
3751	61	Philip Gallasz	Brussels	\N	\N	44025db96ebdb356cf8d81f7f0bd7493	t	2020-05-25 16:45:19+00	2020-05-25 16:45:46+00	\N
3756	62	Behaegel	Koekelberg	Ambtenaar	\N	3faf96d67a9190c7f5dc963e85e4a7da	f	2020-05-25 16:51:19+00	2020-05-25 16:51:19+00	\N
3755	60	Johannes Van De Walle	Anderlecht	\N	\N	ebf4151a95a2813bd1883555e9a1d957	t	2020-05-25 16:50:49+00	2020-05-25 16:52:07+00	\N
3742	61	Matt	Bruxelles	Fonctionnaite	PE	f6019f5a7dfc34860d40c2530ffdb439	t	2020-05-25 16:39:03+00	2020-05-25 16:52:43+00	\N
3759	60	Jennifer Paterson	Bruxelles	Avocate	\N	d38991b5a95cf14e59f80d7bf9209d26	f	2020-05-25 16:55:46+00	2020-05-25 16:55:46+00	\N
3760	62	Anna	Laken	\N	\N	debe84e2dcb4e637c8a073f0837e743c	f	2020-05-25 16:55:48+00	2020-05-25 16:55:48+00	\N
3761	62	Cyril Spruytte 	Brussel, Sint-Lambrechts-Woluwe	Student	\N	bdfbf8d47c6b019671fa858034318885	t	2020-05-25 16:56:14+00	2020-05-25 16:56:32+00	\N
3764	60	Emile Luhahi 	Bruxelles	\N	\N	e153492bdd78475c28922fd51859680e	t	2020-05-25 16:56:58+00	2020-05-25 16:57:14+00	\N
3765	60	Olyff	Bruxelles	Ixelles	\N	5e897d2caf6b9114c321c578beec5042	f	2020-05-25 16:58:10+00	2020-05-25 16:58:10+00	\N
3766	60	Sacha Henet	Bruxelles 	Avocat 	Myoc	697c63112da6ee8b9cea9bb6ec6177f1	f	2020-05-25 16:59:54+00	2020-05-25 16:59:54+00	\N
1427	61	Nádia Guerlenda Cabral	Brussels	Consultant	\N	f7862e61a6a963dc2aa33e254774a0df	t	2020-05-22 18:01:54+00	2020-05-25 17:00:00+00	nadiagcabral@gmail.com
3767	60	charline	1170	bruxelles	odisee	df5781b68466e0040905c33c8f9d75ef	f	2020-05-25 17:00:03+00	2020-05-25 17:00:04+00	\N
3768	62	Magali Martin 	Bruxelles	\N	\N	36ba0a350f902e1534ec823875f3ff60	f	2020-05-25 17:00:05+00	2020-05-25 17:00:05+00	\N
3737	60	Sophie Commerce	Bruxelles	developpeuse immobilier	\N	ac4f370b1fc3d1df495caa64be9ce3f2	t	2020-05-25 16:35:56+00	2020-05-25 17:00:23+00	\N
3708	62	Elke Segers	Bruxelles	\N	\N	9088db8aedafc34855db33dc6c7ad527	t	2020-05-25 16:07:25+00	2020-05-25 17:01:54+00	\N
3804	62	Amin Khallouf	Brussel 	Bediende	\N	29024cafebc57d9714c6841f90ba0854	t	2020-05-25 17:30:03+00	2020-05-25 21:49:04+00	\N
3803	60	Léo	Uccle 	Étudiant 	\N	90c97845678531231471edb724fe0fff	t	2020-05-25 17:29:49+00	2020-05-29 10:06:49+00	\N
3762	62	Sander Rosseels	Sint-Gillis	cultuurbeleidscoördinator	Gemeente Oudergem	8116adb6adfdf227c536486994f9f187	t	2020-05-25 16:56:30+00	2020-05-25 17:02:38+00	\N
3772	60	Nadine Neukermans	St Lambrechts Woluwe	bediende	BGWF	8b8d1cd5dcf1e352025d77034a4d4f81	f	2020-05-25 17:02:52+00	2020-05-25 17:02:53+00	\N
3769	61	Lannoy Estelle	Bruxelles	Musicienne	\N	7836e8d731a57918ddb2dbfe9a1c8064	t	2020-05-25 17:00:58+00	2020-05-25 17:02:57+00	\N
3770	61	Maarten Vleeschhouwer	Brussel	\N	\N	40729af3bebd5003a3e285a9135aff12	t	2020-05-25 17:02:03+00	2020-05-25 17:03:13+00	\N
3802	62	Martine Verbraeken	Mechelen	\N	\N	79e1652841e4efe0647db1a0b8e94050	t	2020-05-25 17:29:10+00	2020-05-26 05:12:46+00	\N
3814	60	Tutus Todir	Bruxelles	Sans	\N	c15fb70f2787ac05f92ed1583220ca71	t	2020-05-25 17:37:54+00	2020-05-26 12:48:18+00	\N
3782	62	Marie Godard	Brussel	Recruiter	\N	eac2ac1130ba8596fb2bede1925568fb	t	2020-05-25 17:13:16+00	2020-05-26 07:59:53+00	\N
3790	62	Lies Vander Heyden	Elsene	Guide	Rbins	2dad356e370889b97f9fe7326e69678a	t	2020-05-25 17:19:06+00	2020-05-25 17:19:28+00	\N
3773	62	Thomas schoenaerts	1020	Regisseur	\N	1751e1510cd0131ba89fad5e7e15b499	t	2020-05-25 17:05:15+00	2020-05-25 17:05:38+00	\N
3774	60	Philippine Pacco	Bruxelles	Employée	\N	c87374fadb16de1685149bb78572f082	t	2020-05-25 17:05:29+00	2020-05-25 17:05:44+00	\N
3771	60	Marijke van schagen	Hoeilaart	Functionaire 	\N	d47a97f0e20ce63d7a90366ae2f2f763	t	2020-05-25 17:02:22+00	2020-05-28 21:02:39+00	\N
3810	61	Renaud Trapp	Brussels	Civil servant	\N	632a9544352585c8851c6e770caf025e	t	2020-05-25 17:34:18+00	2020-05-26 12:08:53+00	\N
3776	62	Lisa Derijcke	Anderlecht	Bediende	1991	1b70bb406cdbf6818cc38de0d84a7ac7	f	2020-05-25 17:07:46+00	2020-05-25 17:07:46+00	\N
3775	61	olga Perez Vitoria	Ixelles	advisor	EP	6f4901737724d47db72a8accb6d08b50	t	2020-05-25 17:06:14+00	2020-05-26 08:28:27+00	\N
3780	62	Andries 	Brussel 	Consultant	andries_66@hotmail.com	6f7bfe82043ecd69a70fa3f4f134acb4	t	2020-05-25 17:11:28+00	2020-05-26 13:13:19+00	\N
3777	61	Seppe Cockx	\N	\N	\N	39de0c6822cec29386965f331a1cd28b	t	2020-05-25 17:09:04+00	2020-05-25 17:09:21+00	\N
3781	62	Charlotte 	Bruxelles	Consultant	\N	5d260f9eb9de85c7900d26f0162d5bae	t	2020-05-25 17:12:52+00	2020-06-01 12:55:30+00	\N
3801	62	Cedric versluys	Brussel	Developer	Merkator	7bc7f3867049d6d188e3292d36c0eea5	t	2020-05-25 17:28:09+00	2020-05-25 17:28:37+00	\N
3778	60	Marine Thuillier	Etterbeek	Employée	\N	5d109a701f168f374b1314488d91c43b	t	2020-05-25 17:09:32+00	2020-05-25 17:09:56+00	\N
3792	60	Bernadette de Hertogh 	Nivelles 	Institutrice Maternelle 	\N	8a8ca0c6b3f3c08a00328868bc73bfd7	f	2020-05-25 17:19:48+00	2020-05-25 17:19:49+00	\N
3791	60	Cinthia Venero	Ganshoren	Étudiante cinéma	Université Libre de Bruxelles	e66f9b0c54c108ded16ec7efb7a1b967	t	2020-05-25 17:19:47+00	2020-05-25 17:20:05+00	\N
3783	61	Dominik Piotrowski	Brussels	Civil servant	European Commission	c7cccba0c3d8a72fa7568da4db99db83	t	2020-05-25 17:13:36+00	2020-05-25 17:14:05+00	\N
3784	62	Els Roelandt 	1000	Librarian	\N	72980eb5d4a9046c92566f27a75562cd	t	2020-05-25 17:13:40+00	2020-05-25 17:14:15+00	\N
3785	60	Nadine Neukermans	St Lambrechts Woluwe	bediende	BGWF	6869fe9788675b705775e842ca3bda9d	f	2020-05-25 17:15:05+00	2020-05-25 17:15:05+00	\N
3779	62	Linde Smeets	Laken 	\N	\N	0c844819279ffa43e412466a4dcbc7d0	t	2020-05-25 17:11:01+00	2020-05-25 17:15:31+00	\N
3793	60	Vincent Jauneau	Schaerbeek	Employé 	\N	5361dd87cf103411f9a449785b88ecef	t	2020-05-25 17:20:23+00	2020-05-25 17:20:42+00	\N
3787	62	Maaike Pyck	Brussel 	Gids-animator	KBIN	61114cdd2ad84bb95215d20be8b29e66	t	2020-05-25 17:16:44+00	2020-05-25 17:16:59+00	\N
3788	60	Olivier	1030	Employer	\N	7d4d3e7ac3e822da3fffdeb75c7e94c5	t	2020-05-25 17:16:56+00	2020-05-25 17:17:33+00	\N
3786	62	Lotte	1020	Kinesist	\N	2c2448e7ca21e8974134e655e4c88aeb	t	2020-05-25 17:16:05+00	2020-05-25 17:17:35+00	\N
3789	62	Jacques De Munnynck	1702	\N	\N	da47264106f2a93b664be846672f4623	t	2020-05-25 17:18:18+00	2020-05-25 17:19:02+00	\N
3796	61	Maria Godschalk	Sint-Lambrechts-Woluwe	None	None	27bfc5b71340f98e847e7de7bf67627a	f	2020-05-25 17:24:46+00	2020-05-25 17:24:46+00	\N
3794	62	Charlotte	Bruxelles	Traductrice	\N	8161f48402e42faaab9a21334d74565e	t	2020-05-25 17:23:50+00	2020-05-25 17:25:02+00	\N
3795	60	Sammy Van Alphen	Saint-Gilles	Employé	\N	8cf7f57e55070dbb1cc5b7af03c5edf8	t	2020-05-25 17:24:08+00	2020-05-25 17:25:09+00	\N
3797	60	Cecile Imberechts 	Bruxelles	Employée 	-	955056efe1ccdf0ac6986de692df3ae8	f	2020-05-25 17:25:54+00	2020-05-25 17:25:54+00	\N
3798	62	Thomas Verhaeghe	Brussel	nieuwsarchivaris	VRT	c74af6e52e0e0c493f1400007ad394de	t	2020-05-25 17:25:56+00	2020-05-25 17:27:02+00	\N
3800	60	Oliver Gillessen	BRUXELLES	Employé 	IBA	fde72c31ab5c5b1228437737c32fc867	f	2020-05-25 17:27:15+00	2020-05-25 17:27:15+00	\N
3799	60	Kevin Welby	Linkebeek 	Retired	Self standing	7726c98ef1cb4cf3cee5639da3d39068	t	2020-05-25 17:26:28+00	2020-05-25 17:27:29+00	\N
3816	60	Celia Ippolito	Gent	archiviste	\N	82f32d95fe0e3b780f763b67483dc9d1	f	2020-05-25 17:38:31+00	2020-05-25 17:38:31+00	\N
3809	62	Maarten Babeliowsky	Brussel	Student	Vrije Universiteit Brussel	c5741a7c648c0c7131407ec692e0129d	f	2020-05-25 17:33:13+00	2020-05-25 17:33:13+00	\N
3806	60	Leboutte	Brussels	\N	\N	4fdf95e3e24cedea893c4123cf301f5f	t	2020-05-25 17:32:36+00	2020-05-25 17:33:20+00	\N
3808	60	Apraxine André	Céroux Mousty 	\N	\N	669c79b36025db3b619dd0bfe408ecc7	t	2020-05-25 17:33:01+00	2020-05-25 17:33:33+00	\N
3811	60	Lisa Musiol	\N	\N	\N	337f3f686c23d7b90bf39c33ffbef032	t	2020-05-25 17:35:43+00	2020-05-25 17:36:19+00	\N
3815	62	Sarah Bourgognon	1083 Ganshoren	Rue du Saule 43	\N	74d2b983debc3431f00062b6e8a2fc10	f	2020-05-25 17:38:27+00	2020-05-25 17:38:27+00	\N
3820	62	Dorien Schouppe	Kerksken	Wetenschapper	1988	08f95403e86fbb6223de71d78e1ef4f4	t	2020-05-25 17:41:00+00	2020-05-25 17:41:23+00	\N
3819	61	Marjon Ebraert	1080	Sociaal-werk	Tonuso vzw	abe3d5f48cf2494eecbd62b49d74e50f	f	2020-05-25 17:40:40+00	2020-05-25 17:40:41+00	\N
3817	62	Jolien Werquin	Ganshoren 	\N	\N	c61806795ea3c881e14ccdcfff7e5e35	t	2020-05-25 17:40:05+00	2020-05-25 17:40:45+00	\N
3818	61	Piet Maris	Brussels	artist	Choux de Bruxelles	8c3b46932cd70324a20bbbb5b4795e7f	t	2020-05-25 17:40:35+00	2020-05-25 17:40:54+00	\N
3821	61	Jef	1000	\N	\N	d3d84f8a8e8a57d756de51387678f053	t	2020-05-25 17:42:06+00	2020-05-25 17:42:46+00	\N
3822	62	Tuur Boomert	Brussel	student	\N	77464fbdf194a2f948e1264773a7ac6b	t	2020-05-25 17:44:14+00	2020-05-25 17:44:39+00	\N
3826	61	Vantomme 	Brussel 	Secretaris-intendant	VZW VPW  Brussel-Noord-Oost 	ef5f36dffdc2b5b01c8912fad111d5f8	t	2020-05-25 17:49:13+00	2020-05-25 17:49:32+00	\N
3824	62	Ine	\N	\N	\N	94de787c156fdb00d2f8e7fc0cdf11ae	t	2020-05-25 17:47:18+00	2020-05-25 17:48:17+00	\N
3825	62	Nicolas De Smidt	Sint-Gillis	Brouwer	\N	679400e118360e4e79a3e0a8c861da54	t	2020-05-25 17:48:12+00	2020-05-25 17:49:27+00	\N
3823	60	Anne DC	Wezembeek	pensionnee	\N	22eaad1351579006cd3dd99fbf4ca9d6	t	2020-05-25 17:45:20+00	2020-05-25 17:54:21+00	\N
3827	62	Jesse Dobbelaere	Schaarbeek	Bediende	\N	710e0b1bd1a0bef44092a9d8aa7b2606	t	2020-05-25 17:50:20+00	2020-05-25 17:51:04+00	\N
3837	62	Marieke Sels	Sint-Gillis	leraar	\N	719a8bd38fe9e54127272076b6980f51	t	2020-05-25 18:00:54+00	2020-05-25 18:05:46+00	\N
3838	62	Claeys Els	Ternat	\N	\N	6735ab011c2de3cbb1f59247657ff32e	t	2020-05-25 18:01:01+00	2020-05-25 18:22:26+00	\N
4021	62	Dirk Van Hulle	Temse	ambtenaar	FOD Economie	27f3c4c30826b16c9a6b80a61dc31939	t	2020-05-25 21:20:10+00	2020-05-25 21:20:49+00	\N
3828	62	Lisa Schoupoe	Sint Gillis	Antoine Breartstraat	\N	c1d18b7eba179ca3cb3746c124d137d7	t	2020-05-25 17:50:56+00	2020-05-25 17:51:37+00	\N
3833	60	E. Binder	Woluwe-Saint-Pierre 	Civil servant	EP	2a9fb33e7b1099f825dc6d40d520cc0c	t	2020-05-25 17:56:46+00	2020-05-25 19:16:48+00	\N
4837	61	Peter drevelhaven	Brussels	IT officer	Delphi works	085e161f57e36912773770e4e782227c	t	2020-05-27 19:40:25+00	2020-05-27 19:41:55+00	peter.drevelhaven@gmail.com
3830	60	Armand Bosquillon de Jenlis	BE	saint gilles	\N	922c7a079e53db324bf2bc1ea0087a3f	t	2020-05-25 17:54:28+00	2020-05-25 17:54:53+00	\N
4876	62	Van Lynh Tu	Bruxelles	\N	\N	94cb28789286314a03118cc42ab64eea	t	2020-05-28 05:38:24+00	2020-05-28 05:38:55+00	tvanlynh@hotmail.com
3831	60	Nils Brunelet	Uccle	\N	\N	51e5951524f205e5752a83b51429e00a	t	2020-05-25 17:55:47+00	2020-05-25 17:56:02+00	\N
4029	61	Sabine Tonet	Sint-Jans-Molenbeek	\N	\N	ff6736dda5409c9a11512a59eb6f12c6	t	2020-05-25 21:33:17+00	2020-05-28 06:29:24+00	\N
3938	62	Tim Blommaert	Brussel	\N	Joker Toerisme	d20d097e6c9cae1d9fde420d8b206d4b	t	2020-05-25 19:52:00+00	2020-05-25 19:52:26+00	\N
3832	60	Legros Zoé	Schaerbeek	\N	\N	55349ec7f9c12ef47cc0a3f1ddcf1b5b	t	2020-05-25 17:56:26+00	2020-05-25 17:56:40+00	\N
3836	62	Naomi Smith	Bruxelles	Independent 	Naomi Smith	6fe734734a1946e135a5b2e0a841f0c8	t	2020-05-25 18:00:54+00	2020-05-29 19:32:53+00	\N
4110	60	Jon	Schaerbeek 	papa de 2 enfants	\N	fd62cacbcb25d1bc2e981efa208228b7	t	2020-05-26 05:52:24+00	2020-05-26 18:14:37+00	\N
3805	61	Silke Lalvani	Brussel	\N	\N	b674f0b01f209c32b21e00176d46baab	t	2020-05-25 17:31:55+00	2020-05-25 21:26:40+00	\N
3956	60	Elodie Mertz	Molenbeek	\N	\N	22a16f37d1adce4303fff4b70e394b1e	t	2020-05-25 20:13:56+00	2020-05-26 10:11:05+00	\N
3839	22	Claeys Els	Ternat	\N	\N	fb7483cd80076df7ea3df65af45ee66a	f	2020-05-25 18:01:16+00	2020-05-25 18:01:16+00	\N
3840	62	Katie Van Landuyt	Brussel	\N	\N	293038e8bdcd41b403d0fa097d960ca9	t	2020-05-25 18:03:33+00	2020-05-25 18:04:10+00	\N
3941	60	Patricia	Bruxelles	\N	\N	d8669f8189bb34428aed1ed655ba9377	t	2020-05-25 19:55:51+00	2020-05-25 19:56:32+00	\N
4025	62	Jasper Ramaut	Elsene	Bediende	Indies keeping secrets Brussels	43458879d7683f99fb215013a56244e4	t	2020-05-25 21:28:19+00	2020-05-25 21:29:12+00	\N
3950	60	Clarisse Noury	1150	Bruxelloise	\N	33814dae041ec09f704d9e4d34e21832	t	2020-05-25 20:05:16+00	2020-05-25 20:06:08+00	\N
4026	60	Carlota Jovani	Bruxelles	Interprète	carlotajovani@gmail.com	186a3d7a82a0ff6b04e9b9200077b432	t	2020-05-25 21:29:11+00	2020-05-25 21:29:31+00	\N
3952	62	Lore Schoonjans	Molenbeek	\N	\N	4c172413be59ec6f85adbe1c95e5fffb	t	2020-05-25 20:08:19+00	2020-05-25 20:08:48+00	\N
3942	62	Eva	Brussel	\N	Bolt	f2f640547086cc60617a351de4dbb537	t	2020-05-25 19:56:33+00	2020-05-25 20:09:12+00	\N
3953	61	Rafal Stanecki	Brussels	\N	\N	faeb4db689b43e6873f2f5a5dac4a727	t	2020-05-25 20:09:25+00	2020-05-25 20:09:44+00	\N
4090	60	Eva Jacobs	Bruxelles	\N	\N	489f468d457d5333e6e3036d9ecd5c0b	t	2020-05-26 05:06:35+00	2020-05-26 13:17:25+00	\N
3957	62	Marlies	Anderlecht	\N	\N	718b246cb989e05f7e91ed2f20c0b0e2	t	2020-05-25 20:14:08+00	2020-05-25 20:14:26+00	\N
4024	60	Maria-Carmen Lainé	Uccle	Business controller	\N	8ab2c0a421f4274f1a854b5ad67ba3b9	t	2020-05-25 21:25:04+00	2020-05-25 21:58:52+00	\N
3960	60	ledoux	bruxelles	commerce	\N	31fd1f9c4b77ac144d0d818a0bc01b62	t	2020-05-25 20:18:05+00	2020-05-25 20:18:35+00	\N
3959	60	Sophie Kwanten 	1030	\N	\N	e37f69e939d8a8d1c2ef1408e5d19189	t	2020-05-25 20:16:36+00	2020-05-25 20:31:45+00	\N
3835	61	Rene Neuberger	Bruxelles	APA	PE	6925fb4c29abc91edcb82b44bce40f85	t	2020-05-25 17:59:34+00	2020-05-25 20:34:45+00	\N
3829	62	Wautié julie	Beersel	Psychosociale begeleidster	\N	838377b78b8cb462309b467a66d98108	t	2020-05-25 17:50:57+00	2020-05-25 20:35:32+00	\N
3933	61	Mehay harminder	Brussels	Business	\N	afee44037d3a4f19c261cc2ca9846c3d	t	2020-05-25 19:50:03+00	2020-05-25 20:52:41+00	\N
4061	60	Thomas	Saint gilles	\N	\N	c01a543817d8d8d4be3a591a9ae3b82c	f	2020-05-25 23:39:04+00	2020-05-25 23:39:04+00	\N
4020	60	Ines de Araujo Reis	Brussels	\N	dearaujo.ines@gmail.com	77034b65870859df0f1d85e6c8eb464e	t	2020-05-25 21:18:53+00	2020-05-25 21:19:40+00	\N
4088	60	Valentina 	ANDERLECHT	\N	1975	f1490e03fe5e12362e22fa35eefbbce6	t	2020-05-26 05:01:35+00	2020-05-26 05:02:12+00	\N
4082	61	Nicolas Fautré	Saint-Gilles	Citoyen	\N	837d17f1e93587d355324fa93a579865	t	2020-05-26 04:41:39+00	2020-05-26 04:42:05+00	\N
4091	61	Jana Struys	schaarbeek 	Brede Schoolcoördinator 	\N	c0d4b2d6a4af7987618171ea7b308d80	t	2020-05-26 05:12:47+00	2020-05-26 08:12:48+00	\N
4084	62	Brynaert	Brussel	Pensioen	\N	08af735887f9c650dbee41614d20a89d	f	2020-05-26 04:55:01+00	2020-05-26 04:55:01+00	\N
4085	60	Dominique	oudergem	\N	\N	6e6ea9945347a06ff024d809ba1f4090	f	2020-05-26 04:56:13+00	2020-05-26 04:56:14+00	\N
4086	62	Soen janssen	Schaarbeek	Consultant 	\N	b1c36f1ec281c8d60840dd3ccde18bb0	t	2020-05-26 04:56:22+00	2020-05-26 04:57:13+00	\N
4089	60	Anne Valérie Heuschen	1050	\N	\N	916da73c6f58d4022abc390e7beb388b	f	2020-05-26 05:02:27+00	2020-05-26 05:02:28+00	\N
3834	62	Thomas van Rijn	Sint-Pieters-Woluwe	Gepensioneerd	\N	66fc12296b4d806d446847b8b2232b1b	t	2020-05-25 17:57:41+00	2020-05-26 17:49:15+00	\N
4087	60	Aude Staquet	BRUXELLES	Employée	ULB	5c7e23321dd5cc5e66010da30d6acb9c	t	2020-05-26 05:00:46+00	2020-05-26 08:21:44+00	\N
4092	62	Brigitte Lutje spelberg	Bruxelles	Retraité	\N	514646e71d18871effa3996ee23606cd	f	2020-05-26 05:16:45+00	2020-05-26 05:16:45+00	\N
4111	60	Danielle Seynaeve	Watermael Boitsfort	Enseignante	\N	9bc38d6855eb0830c73e09a7361ee3c9	f	2020-05-26 05:55:40+00	2020-05-26 05:55:41+00	\N
4093	62	Maxime	1040	dr	\N	95850545c007c0419f1ee4d71b2c17d7	t	2020-05-26 05:22:10+00	2020-05-26 05:33:20+00	\N
4098	60	Stephanie Pierard	Ixelles 	Employée	\N	3eb4d55fa7c2a71ba88b7f63d9f49193	t	2020-05-26 05:33:29+00	2020-05-26 05:33:52+00	\N
4109	61	Alexis Duchêne	Bruxelles	\N	\N	51b6b386561f4ded9b362bd7c95332fb	f	2020-05-26 05:51:54+00	2020-05-26 05:51:54+00	\N
4100	61	Piotr Strzelka	Schaerbeek	Clerk	\N	719e199f7a07d26ab81df4cc24121f0d	t	2020-05-26 05:38:08+00	2020-05-26 05:38:46+00	\N
4099	60	Vanessa neirynck	Bruxelles	Styliste	\N	3e2c4f62bff130c93bc464c22e621bcb	t	2020-05-26 05:34:25+00	2020-05-26 05:38:52+00	\N
4094	62	Van Overschelde 	Schaerbeek 	\N	\N	2ad5a8e77d894d0692d5c0e8b5ef4498	t	2020-05-26 05:24:04+00	2020-05-26 05:47:49+00	\N
4101	60	Kathleen Coessens 	Brussel 	\N	Koninklijk Conservatorium Brussel 	68d7862388deb8f8fe89f43dbb3405cd	t	2020-05-26 05:39:18+00	2020-05-26 20:41:44+00	\N
4115	62	Timmo hesselink	Overijse	\N	\N	024b964392e1191271fa8afcc9e0d054	t	2020-05-26 06:05:53+00	2020-05-26 06:06:24+00	\N
4129	62	Arthur Dielens	Uccle	Chargé de projet	Refresh XL	cd1962a094bda1e5bd7607096a20f307	t	2020-05-26 06:17:32+00	2020-05-26 06:18:30+00	\N
4128	61	Lars Koenig	Brussels	Policy Officer	Regional Office	3aa6b01c3f73b1dd22b69c48b88c1b61	t	2020-05-26 06:15:47+00	2020-05-26 06:18:30+00	\N
4135	61	Mohammad Mashhadizadeh 	Etterbeek  	Employee  	 	b62e3b1eb3eacede6f42eed0179080d6	t	2020-05-26 06:24:03+00	2020-05-26 06:26:03+00	\N
4083	59	Renée Dekker	Schaarbeek 	\N	\N	f124f32b3b8408da33ad283d292129d8	t	2020-05-26 04:47:48+00	2020-05-26 07:19:27+00	\N
4840	61	Claus G	Brussels	IT officer	PI	9bfe14d28ed6b20b818a2ed93dff0766	t	2020-05-27 19:43:28+00	2020-05-27 19:44:04+00	\N
4202	60	Pablo Fernandez	Brussels	\N	\N	b405e933ff80d045cf956951fe10f86f	t	2020-05-26 07:48:33+00	2020-05-26 07:48:54+00	\N
4841	62	Celine Oosterlynck	Anderlecht	\N	\N	1361001cabffd5042b782d3731827540	t	2020-05-27 20:15:10+00	2020-05-27 20:17:35+00	celine_oosterlynck@hotmail.com
4211	62	Jolien De Troch	Brussel	bediende	\N	8d323d935ede1eddc1ff0e061b877118	t	2020-05-26 08:00:49+00	2020-05-26 08:02:11+00	\N
4842	60	Julie frères 	Bruxelles	\N	\N	b933a14213fa540b47a2acdb872e62ad	t	2020-05-27 20:17:22+00	2020-05-27 20:17:49+00	\N
4201	60	Antoine	1050	\N	\N	1a543472a3a5202298d6042f6b64b35a	t	2020-05-26 07:48:31+00	2020-05-26 08:03:47+00	\N
4212	60	Nolwenn	Ixelles	Economiste	\N	191cebe8b8bb8b6500cf3a4425bce1f6	t	2020-05-26 08:01:18+00	2020-05-26 08:05:06+00	\N
4215	60	Silke Quateau	Ixelles	Lerares	\N	32312d78418bd6852cc0f7e01a4bff0d	f	2020-05-26 08:05:44+00	2020-05-26 08:05:45+00	\N
4854	61	Liesbeth Reyskens 	Brussel	Tolk	\N	ec60ab45d1cd78afb19c4d7b0a4f0240	t	2020-05-27 21:27:31+00	2020-05-27 21:28:16+00	lmreyskens@gmail.com
3453	61	Barbara Mendes-Jorge	Brussels	Communications Consultant	\N	a8145bd594ce98cf9d253c771ac30be5	t	2020-05-25 13:24:30+00	2020-05-26 08:06:09+00	\N
4877	62	Bart Scharlé 	Brussel	Bediende	\N	5ced106d377c12fe2bfc3fb68414b563	t	2020-05-28 05:42:54+00	2020-05-28 05:43:38+00	\N
4218	60	Olivier Lernoux	Ixelles 	\N	\N	aa47ef2c42e6a8c56534c1f91c416126	f	2020-05-26 08:10:07+00	2020-05-26 08:10:08+00	\N
5059	60	Chaumont	Schaerbeek	\N	\N	d12ce757c74684bf4688e829a45b4d77	t	2020-05-29 08:29:57+00	2020-05-29 08:30:45+00	antoinechaumont@live.be
4939	60	Pierre Paladin	schaerbeek	fonctionnaire	\N	d1bc2671f0319c6902507e8eeaaf3807	t	2020-05-28 10:48:07+00	2020-05-28 10:48:33+00	\N
4941	61	Eleanor Linsell	1050	\N	\N	fe869c8689dfd624e994483e13cb9871	t	2020-05-28 10:50:40+00	2020-05-28 10:51:20+00	\N
4221	60	Nadège	Ixelles	Étudiante 	\N	3b248b2092200d8c0dff66368d65809e	t	2020-05-26 08:15:42+00	2020-05-26 08:20:47+00	\N
4222	60	Simona Pohlova	Bruxelles	fonctionnaire	Commission Européenne	985bbaf9cfa63bbf53f127dcedd616df	t	2020-05-26 08:16:19+00	2020-05-26 08:21:02+00	\N
4217	60	Karine flynn	Bruxelles	Decoratrice	\N	912e78f51dd76abcf1e280a3fee60836	t	2020-05-26 08:07:45+00	2020-05-26 08:35:30+00	\N
4216	60	Olivia Verbraeken	Forest	employée	\N	e9d258d27666bf904b0df5c341fa05fb	t	2020-05-26 08:06:01+00	2020-05-26 08:53:27+00	\N
4213	60	du Chelas	Brussels	Professeur	N/a	2dae91a5432c48520b3196f29d132ba4	t	2020-05-26 08:02:22+00	2020-05-26 11:00:56+00	\N
4219	61	Ellen Townsend	\N	\N	\N	fd5836415bdb1e9aa71c8d06fc5502d6	t	2020-05-26 08:14:22+00	2020-05-26 12:54:16+00	\N
4975	60	\N	\N	Musicienne professionnel	Independente	2ec975425df880da33433ea9a9c428bd	t	2020-05-28 13:08:32+00	2020-05-28 13:11:30+00	akiko.ookawa@live.jp
4994	60	Bob Permentier	Anderlecht	Musicien	\N	619abcac1a6fcf4679734730f1d39252	t	2020-05-28 15:57:32+00	2020-05-28 15:58:13+00	bob@sailfriends.be
5144	60	Adrià Oliete Kamdem	Brussels 	student 	\N	d5861031565715b5725fccd6c7f726c7	f	2020-05-30 14:15:43+00	2020-05-30 14:15:44+00	\N
4995	60	Jean-Louis CRAENHALS	Laeken	enseignant	\N	afdcee615622734670d98f38bd7e1c0d	t	2020-05-28 16:06:36+00	2020-05-28 16:09:03+00	\N
4996	60	Hoebeeck	Shaerbeek	Directrice	\N	22d80787cde04e2032b899a6c4971733	f	2020-05-28 16:09:12+00	2020-05-28 16:09:12+00	sophiehoebeeck@hotmail.com
5009	60	Eva corbiaux	1030	Infirmiere	De brug	4af3ca54f6477cc9ad0a2292a7431634	t	2020-05-28 19:02:00+00	2020-05-28 19:04:25+00	evacorbiaux@gmail.com
5018	62	Leen Engelen	Schaarbeek	Psycholoog	\N	ab41977ed8ca8de7b2ecb95bc72f46cf	f	2020-05-28 19:17:16+00	2020-05-28 19:17:17+00	\N
5010	62	Arnaud De Burchgraeve	Schaarbeek	\N	\N	f847c5289fd434a0223ac28273305dd2	t	2020-05-28 19:09:13+00	2020-05-28 20:32:22+00	\N
5057	60	Annelies Nachtergaele	Ixelles	Avocate	Citoyen	e4b16c11a095b860e9ed36ed359fcc1c	t	2020-05-29 08:01:29+00	2020-05-29 08:04:29+00	nachtergaeleannelies@gmail.com
5062	60	Buysse 	Bruxelles	Enseignante 	\N	241886e0a521a7904cd4c82811bc6981	t	2020-05-29 08:33:40+00	2020-05-29 08:34:01+00	buysse.maroussia@gmail.com
5060	60	Eva	Boitsfort	\N	Employée 	61d682d9e51e96cca126a319ca442a52	t	2020-05-29 08:32:59+00	2020-05-29 08:36:13+00	\N
5067	60	Émilie 	Schaerbeek 	\N	\N	99915a7e4ace6b80d8f62fd3353021da	t	2020-05-29 08:55:03+00	2020-05-29 08:55:30+00	emilieno@hotmail.com
5069	60	Linda Presburg	Brussel	Bediende	Brussels by Water	f28a69c0c1d005ed49f6b02ad2882f93	t	2020-05-29 09:07:14+00	2020-05-29 09:07:58+00	linda.presburg@gmail.com
5066	60	Simon	Molenbeek	Indépendant	\N	0b3740733baaaeadb618b5d8c14a03e5	t	2020-05-29 08:54:42+00	2020-05-29 09:13:03+00	simonmbos@gmail.com
5061	60	Aurélie Fayt	Koekelberg	\N	\N	040fdf94cd477e21e9448494920d1a47	t	2020-05-29 08:33:35+00	2020-05-29 09:55:43+00	\N
5058	62	Julie de Caluwé	Brussel 	Employé 	\N	26a4b23c3c7eb40a69b82ad311d3c220	t	2020-05-29 08:25:20+00	2020-05-29 17:29:04+00	julie.decaluwe@gmail.com
5142	60	Adrian Bihr	Brussels, scharbeek	Étudiant	\N	5eeca57c75d80f93071673d1f5768141	t	2020-05-30 14:08:47+00	2020-05-30 14:09:29+00	adrian.jokull@gmail.com
5132	60	Perrine André 	Bruxelles	\N	\N	7d8c894ceb1a94f5930e1cf8b3dfe40c	t	2020-05-30 13:41:14+00	2020-05-30 14:10:16+00	perrineandre1@gmail.com
5143	60	Sarah DH	Bruxelles	\N	\N	77ab639d144db01134b736ba811d6dd8	f	2020-05-30 14:15:39+00	2020-05-30 14:15:40+00	\N
5146	60	Coppet Patricia	Bruxelles	enseignante	\N	961436ea336310e5b71baf2e17a5febb	f	2020-05-30 14:19:02+00	2020-05-30 14:19:02+00	\N
5145	60	Xavuer Delville	Ottenburg	\N	\N	7fd05f2b52d62d36d1a5943541add615	t	2020-05-30 14:16:07+00	2020-05-30 14:27:06+00	delville.xavier@telenet.be
5165	60	Mytenaere Guillaume 	\N	\N	\N	0a8e56123e8745c4eb7e50e2091afe25	f	2020-05-30 16:12:46+00	2020-05-30 16:12:46+00	guillaume.myttenaere@gmail.com
5166	60	Nathanaël Bialek 	Bruxelles 	\N	\N	042e62b031f5443f5400ded39569bd16	t	2020-05-30 16:15:39+00	2020-05-30 16:16:18+00	bialekids@gmail.com
5168	60	Jean-Claude Bollaerts	Bruxelles	\N	\N	2068feef69680bd1bf83db4eb6084aa6	t	2020-05-30 16:30:36+00	2020-05-30 16:31:17+00	jc.bollaerts@skynet.be
5167	60	Marielle DECLERCQ	Bruxelles	retraitee	03/07/1947	203c291d7dc0a3557d21e0618353457d	t	2020-05-30 16:23:15+00	2020-05-30 16:26:32+00	\N
5170	60	Francis Fanuel	Jette	\N	\N	0a5cb5397423e31bcd2d946d321a4611	t	2020-05-30 17:40:32+00	2020-05-30 17:41:05+00	francis.fanuel@gmail.com
5178	60	SACHA	Bruxelles	Vtt	\N	9d8bb20fe4ae8fb57531c563ed4faf41	f	2020-05-30 20:00:37+00	2020-05-30 20:00:37+00	sacha25abraham@gmail.com
5179	60	Jean-Charles Drabs 	\N	\N	\N	396ca35cf826c93e0d6837cec832ca07	t	2020-05-30 20:05:44+00	2020-05-30 20:06:32+00	jeancharlesdrabs@gmail.com
5181	61	Udo Folkers	Bruxelles	\N	\N	ea09a6872d9d4fba3627fc88898794e3	t	2020-05-30 21:00:36+00	2020-05-30 21:02:41+00	folkers@posteo.eu
5180	60	François Betting	Bruxelles	\N	\N	c122b71c70d1aa273285d75f13a22dee	t	2020-05-30 20:13:09+00	2020-05-30 20:13:46+00	\N
5188	60	Frédéric Toussaint 	Bruxelles 	Indépendant 	\N	aff71c6fbdb8043d88c3dc52ecd89806	t	2020-05-30 22:20:43+00	2020-05-30 22:21:28+00	frederic.toussaint@yahoo.fr
5192	60	Geoffrey Usé	Bruxelles 	Fonctionnaire 	\N	b1a9ab9314aae874f57104c81c70b0e4	t	2020-05-31 05:58:54+00	2020-05-31 05:59:16+00	\N
5195	60	Christophe Roos	Boitsfort	Indépendant	\N	8a3d8242b2092563ae84a439cec8bc46	t	2020-05-31 07:21:44+00	2020-05-31 07:22:07+00	fivel555@gmail.com
5193	61	Franck Conrad	Uccle	\N	\N	0dd05d23cf01b78484f0588b79212e2e	t	2020-05-31 06:22:40+00	2020-06-01 10:36:12+00	\N
4203	62	Katrien Maes	Brussel	\N	CBE Brusselleer	5a007b272759ed6f24e3556cdccabb53	t	2020-05-26 07:48:55+00	2020-05-26 07:49:17+00	\N
4248	60	Frédéric R.	Bruxelles	\N	\N	fb730bbd8e83d417367952dc45368cb1	t	2020-05-26 08:43:12+00	2020-05-31 06:40:37+00	\N
4206	61	Anne-Sophie Prins	\N	\N	\N	fd509404e23a9a529f9aedb8fe25faec	f	2020-05-26 07:50:44+00	2020-05-26 07:50:45+00	\N
4205	60	Michael Lesemann	Bruxelles	\N	\N	e050b802507eba36853d38c6e213799f	t	2020-05-26 07:50:22+00	2020-05-26 07:50:45+00	\N
4207	60	Delphine Lenud	Bruxelles	\N	\N	024fe0137c0539e69949d7aa0781942b	f	2020-05-26 07:51:07+00	2020-05-26 07:51:07+00	\N
2772	61	Jonas Van Bockhaven	Brussel	\N	\N	72279347e01936dc1bc97583b4b7b057	t	2020-05-25 07:02:18+00	2020-05-26 07:52:18+00	vbjonas@hotmail.com
4204	62	Lambeens	Evere	Deskundige	INBO	1a983527b4f13b9d8613179ea5632425	t	2020-05-26 07:50:12+00	2020-05-26 07:54:26+00	\N
4209	61	Amandine Crespy	Ixelles	Political scientist	Université libre de Bruxelles	3ddc4b637f6660a04fe24b23ea624fbf	f	2020-05-26 07:54:35+00	2020-05-26 07:54:35+00	\N
4208	61	Leonardo Sciuccati	Brussels	\N	\N	804694b898c1d2455d0ec0d1429c6681	t	2020-05-26 07:54:13+00	2020-05-26 07:55:34+00	\N
4254	61	Valentin	Antwerp	\N	Student	fba567d1b67ea0a29945089600f85bd1	t	2020-05-26 08:50:19+00	2020-05-26 12:33:21+00	\N
4223	61	Edward	Anderlecht	IT	\N	1bda441e42739ce2899637aa1bcfb8b5	f	2020-05-26 08:17:53+00	2020-05-26 08:17:53+00	\N
4226	62	Ine Meersman	Brussel	Lesgever	Brusselleer	5b247526d7c776a18e08035774ae02e1	t	2020-05-26 08:18:50+00	2020-05-26 08:19:27+00	\N
4247	62	Julie Van Garsse	Anderlecht	\N	\N	b048d67aa6dd2783b06edf2ba8c00758	t	2020-05-26 08:43:09+00	2020-05-26 08:44:26+00	\N
4225	62	Karla merckx	Schaarbeek	Gepensioneerd 	\N	9c0c27a71076dc338dd8a3502b754daf	t	2020-05-26 08:18:17+00	2020-05-26 08:19:43+00	\N
4227	60	quentin	bruxelles	travailleur	ÅTTA	33182257d0dfffda238991ac4cbeb951	t	2020-05-26 08:19:42+00	2020-05-26 08:20:16+00	\N
4249	60	Marie	Ixelles	Étudiante	\N	1908405556991ea0ff2f98a204c102d3	t	2020-05-26 08:44:14+00	2020-05-26 08:44:42+00	\N
4228	60	de Moffarts Geoffroy	Brussels	Professor 	FWB	9151e80b093b0cec0c00e4815872421d	t	2020-05-26 08:20:57+00	2020-05-26 08:21:42+00	\N
4229	60	anne-marie vanwelkenhuyzen	Bruxelles	\N	\N	edc328c3ccf648039ea7ac1c202ceb96	t	2020-05-26 08:21:05+00	2020-05-26 08:24:03+00	\N
4236	61	pascal Le Grand	Auderghem	\N	\N	02fb10619b4eaf5de534d408896f7a4d	t	2020-05-26 08:34:50+00	2020-05-26 08:35:40+00	\N
4230	62	Lars	Kessel-Lo	Ambtenaar	Vlaamse overheid	9aa7f28e543305bd94fce1726779e495	t	2020-05-26 08:24:51+00	2020-05-26 08:25:12+00	\N
4231	60	\N	\N	\N	\N	646d10ada77e408cc53f1a8a27342453	f	2020-05-26 08:25:17+00	2020-05-26 08:25:17+00	\N
4232	62	Frin Platteeuw	Koekelberg	\N	\N	4274323e308db061f81a7c0233ef0812	t	2020-05-26 08:26:52+00	2020-05-26 08:27:12+00	\N
4233	60	Boes Noémie	Bruxelles	\N	\N	524b98c81eead9209dc1749f437c2f56	f	2020-05-26 08:29:17+00	2020-05-26 08:29:18+00	\N
4234	61	Antoine Pairet	Brussels	Tech Entrepreneur	\N	826af743a606e12898326b6cfbd3a0f5	t	2020-05-26 08:33:15+00	2020-05-26 08:33:32+00	\N
4271	60	Cédric Favresse	\N	\N	\N	327c8bacdbc369d1cb81b7bdb26f42ed	t	2020-05-26 09:10:41+00	2020-05-27 05:51:07+00	\N
4237	62	I. Boukhalfa 	Jette	\N	\N	f25ea650fd44ab42d4e8200933a7eb3e	t	2020-05-26 08:35:28+00	2020-05-26 08:36:25+00	\N
4241	60	Zyra	Bruxelles	fonctionnaire	\N	f50702fb24787d9749fab6b67cac11c1	f	2020-05-26 08:36:50+00	2020-05-26 08:36:50+00	\N
4235	61	Cloe Marthe	HOEILAART	Artiste	\N	9a65088c25e6bca1664583ea5634bb3c	t	2020-05-26 08:34:49+00	2020-05-26 08:37:34+00	\N
4242	60	Florence Didion	Bruxelles	Fonctionnaire	Bruxelles Environnement	9e6b8b0916e062b6a0b25b0601d5b14f	t	2020-05-26 08:38:08+00	2020-05-26 08:38:50+00	\N
4238	62	Wim Putteneers	Ukkel	Financieel analist	\N	a734b39feced55623d834208f9d06352	t	2020-05-26 08:35:30+00	2020-05-26 08:39:26+00	\N
4243	60	Nathan Vanderhaeghen	Bruxelles	Comptable	\N	66aeb201f3a3e71d9cb56e767352b20c	t	2020-05-26 08:40:41+00	2020-05-26 08:40:58+00	\N
4240	62	Ellen De Naeyer	Brussel	\N	\N	fe947a609237664fcd5487ff8ed505d2	t	2020-05-26 08:35:58+00	2020-05-26 18:16:31+00	\N
4261	60	Huberty 	\N	\N	\N	49b2dea4abe5e33fd8f5099249142420	t	2020-05-26 08:59:38+00	2020-05-26 09:00:19+00	\N
4246	61	Karen Ardila	Ixelles	Graphiste	\N	03de0c6c5600ecdece88178aaf0abcb2	f	2020-05-26 08:41:28+00	2020-05-26 08:41:28+00	\N
4257	60	Andreas Halling	St-Gilles	artistic director & performer	HYOID	4fc0ce1498286fd2fc37652df23fcf6e	t	2020-05-26 08:55:39+00	2020-05-26 08:55:55+00	\N
4251	60	Jérémy Cléro 	Saint Gilles	\N	\N	ca0bf84110cf3fb6810cb568f09757b1	f	2020-05-26 08:45:27+00	2020-05-26 08:45:27+00	\N
4252	60	Ivan Ficher	Ganshoren	Avocat 	\N	758b46d1ee9263117007fb1fe8840d6d	t	2020-05-26 08:46:17+00	2020-05-26 08:47:10+00	\N
4258	62	Nelleke Heyvaert	Brussel	Logopediste/ ondersteuner ONW	Kasterlinden	4d5c12a95e59d6ebd1907c4cf219ed61	f	2020-05-26 08:56:18+00	2020-05-26 08:56:18+00	\N
4244	61	Tanja Heijnemans	Oxford	Account Manager	Miss	b3f860de6bc003a7768a207416022d3f	t	2020-05-26 08:41:19+00	2020-05-26 12:45:19+00	\N
4255	60	François-Xavier Orban	Schaerbeek	product manager	\N	03dfc1975cb069580b43ec8ef9d67795	t	2020-05-26 08:50:20+00	2020-05-26 08:50:46+00	\N
4253	61	Mahmoud 	Brussels	\N	\N	6d4e34e5b916dadd93825ebae3b768fe	t	2020-05-26 08:50:16+00	2020-05-26 08:51:27+00	\N
4245	62	Ellen Valkenborgs	Schaarbeek	\N	\N	c1f2fb126bbe97e96e9324f2dbb56711	t	2020-05-26 08:41:25+00	2020-05-26 08:54:02+00	\N
4259	60	Bénédicte Van Roy	Ixelles	\N	1982	30afe4df85a9a605306feb4f1c4da529	t	2020-05-26 08:56:27+00	2020-05-26 08:57:22+00	\N
4262	61	Mieke Van Dessel	\N	\N	\N	4a988aed3954520823cd635287df2994	f	2020-05-26 09:00:40+00	2020-05-26 09:00:42+00	\N
4260	61	Nelleke Heyvaert	Brussel	\N	\N	18d7fefbdbe203d9c9e7a2a2c2008f53	t	2020-05-26 08:57:31+00	2020-05-26 08:57:45+00	\N
4270	60	Stefaan De Schrijver	Sint Pieters Woluwe	\N	\N	2fcacd10c752f5e3f19f5d0a01d1ad52	t	2020-05-26 09:09:02+00	2020-05-26 09:10:20+00	\N
4265	61	Ramona Coman	Bruxelles	Prof	\N	d4feff3197620d75c3ab78e590106c28	f	2020-05-26 09:04:59+00	2020-05-26 09:04:59+00	\N
4263	62	Bieke Comer	Anderlecht	\N	\N	652300da29ddc185538577b48c71199b	t	2020-05-26 09:03:45+00	2020-05-26 09:05:27+00	\N
2302	62	Noémie Vanden Berghe	Bruxelles	medicaal	\N	733feab8147fda203f548c436410763d	t	2020-05-24 11:16:45+00	2020-05-26 09:05:37+00	\N
4266	62	Leonoor Leus	Brussel	Architect	Leonoor Leus	ea084f02dc0c51c5a513576cfd865af5	t	2020-05-26 09:05:33+00	2020-05-26 09:05:46+00	\N
4267	60	Paul Steinbrück	Brussel	architect + activist	POOL IS COOL	0534d0ae3152f248385af512d7e1479d	t	2020-05-26 09:05:51+00	2020-05-26 09:06:02+00	\N
4268	62	Bram Vriens	Brussel	\N	\N	f27fc39d9e1fe9a8767454db8d0b3752	t	2020-05-26 09:07:37+00	2020-05-26 09:08:11+00	\N
4269	60	Linda Lama	Uccle	Juriste 	BNP 	a91ec80ff1918c9406f2be7f431ea362	f	2020-05-26 09:08:26+00	2020-05-26 09:08:27+00	\N
4264	61	Soumia	Bruxelles	\N	\N	fc8817751649f7dadcaae465c8e4ab56	t	2020-05-26 09:04:19+00	2020-05-26 09:09:20+00	\N
4224	62	Jeroen leysen	Brussel	Muziektherapeut	\N	c1fe32334395f768ea3066309d5f7b1b	t	2020-05-26 08:18:01+00	2020-05-27 08:00:33+00	\N
4256	61	Sara Ständer 	St. Gilles	\N	\N	4f183837f2291fe0fb840c2680ff4b81	t	2020-05-26 08:50:23+00	2020-05-26 09:21:14+00	\N
4210	62	De Poorter Johan	Gent	educatieve	Brusselleer	4454e7b1d96bad6ee2bd32366259d54a	t	2020-05-26 07:56:59+00	2020-05-26 11:55:01+00	\N
4272	60	Pierre	Jette	étudiant	\N	968bed3ac9c2dc5582f713dc4ccbca3d	t	2020-05-26 09:11:07+00	2020-05-26 09:11:50+00	\N
4273	60	Massart Marcelle	Bruxelles	Enseignante	\N	34faea8b30a5dd41ba2b5e0339347da0	t	2020-05-26 09:11:21+00	2020-05-26 09:30:46+00	\N
4274	60	Thomas Van de Leemput	Bruxelles	\N	\N	ca4085ddeaf5d3cf2ffc22726f2100bf	t	2020-05-26 09:11:48+00	2020-05-26 09:12:18+00	\N
4275	61	Madeleine Coste	BRUSSEL	1000	\N	ce7f6eb8e1e818ae4f529072bcbc5768	f	2020-05-26 09:16:17+00	2020-05-26 09:16:17+00	\N
4844	60	ian dykmans	bruxelles	photographe	\N	71e0c3386ba79b309a02d0bdacb0453b	t	2020-05-27 20:20:36+00	2020-05-27 20:31:07+00	iandykmans@gmail.com
4276	61	Matthew Langdon	Bruxelles	Consultant	\N	0720da27522ef52bdbe30bda798ca75a	t	2020-05-26 09:17:12+00	2020-05-26 09:17:27+00	\N
4277	60	Jérôme de Selys Longchamps	Bruxelles	\N	\N	3406c2d1f4027e99e40b5505ab6a0856	t	2020-05-26 09:19:25+00	2020-05-26 09:19:46+00	\N
4845	62	Carl	Sint-Gillis	\N	\N	18cd530d029aa7b65838705af35360c4	t	2020-05-27 20:38:35+00	2020-05-27 20:41:06+00	\N
4278	60	Valérie Berman	Ixelles	Fonctionnaire	\N	2d28f1052af75e5d8420da16f1859e91	t	2020-05-26 09:20:59+00	2020-05-26 09:24:00+00	\N
4846	62	Tom Mannaerts	Sint-Joost-ten-Node	Artiest	Cie compost	4218af633e343111849c5f4e7dd01ead	t	2020-05-27 20:49:32+00	2020-05-27 20:50:04+00	tomannaerts@gmail.com
4956	62	Katy  Wiese	Bruxelles	\N	\N	fecbeec2cde6235d82f7717915d1ba5e	f	2020-05-28 11:44:43+00	2020-05-28 11:44:43+00	\N
4847	60	Noémi Tiercet	Bruxelles	\N	\N	88f591160d26e252fd65e4bb6b7e0006	t	2020-05-27 20:52:09+00	2020-05-27 20:52:59+00	\N
4281	61	Mattias Kayaert	Koekelberg	\N	\N	7ba982532f70a228a498e831e09442c9	t	2020-05-26 09:25:50+00	2020-05-26 09:26:13+00	\N
4282	61	Laura Kaun	Brussels	Student	\N	342d64223c3b98165a8249f1ca097644	t	2020-05-26 09:26:09+00	2020-05-26 09:27:00+00	\N
4848	62	Lien Nauwelaerts	Brussel (Sint-Joost-ten-Node)	\N	\N	39032b8e4e52bb018a6a969ec07d47f5	f	2020-05-27 20:54:57+00	2020-05-27 20:54:57+00	nauwelaertsl@gmail.com
4852	60	Paul Willems	Bruxelles	artiste	QQVF	67425951930a3ebd593f20ec28da39a9	t	2020-05-27 21:11:40+00	2020-05-27 21:12:16+00	paulwillems.adk@gmail.com
4851	61	Borislav Arnaudov	Brussels	Finance	\N	e5b1610d5ec4988f09deb5a73d422d3e	t	2020-05-27 21:10:44+00	2020-05-27 21:13:02+00	barnaudov@gmail.com
4850	61	Karolina Kaiser	Uccle	\N	\N	87603286dd695d08871e9580bd00ab16	t	2020-05-27 21:10:25+00	2020-05-27 22:35:28+00	karolina.kaiser@gmx.de
4883	60	Schmitz Bernadette	Bruxelles	Retraitée	\N	68ee247da4b128f948a510922f40e974	f	2020-05-28 06:32:11+00	2020-05-28 06:32:11+00	\N
4886	61	Virginia Gomez Onate	Brussels	Advisor	\N	72543ed467f1fd566d83e47d7977f656	t	2020-05-28 06:40:05+00	2020-05-28 06:40:30+00	vir.onate@gmail.com
4878	62	Jeroen Descamps	Tervuren	Bediende	jeroen.descamps@gmail.com	7988c2e4fdb908fe770c4ed84ff5191d	t	2020-05-28 05:57:01+00	2020-05-28 07:15:31+00	jeroen.descamps@gmail.com
4843	61	Oskar Njaa	Oslo	General Manager	Bellona	d0282a6e4cf36da650ff76cfbc57b0b3	t	2020-05-27 20:18:28+00	2020-05-28 07:40:04+00	\N
4853	61	Tea Jardas 	Brussels	Public affairs manager	Efpia	39e35b96b12545fab791d13bb2a98899	t	2020-05-27 21:26:33+00	2020-05-28 07:42:56+00	jardastea@gmail.com
4849	60	Selvais Arnaud	Schaerbeek	Enseignant	\N	2e8613e1208ee8963a281d2840a5a275	t	2020-05-27 21:09:41+00	2020-05-28 08:53:19+00	linkfox98@hotmail.com
4943	62	Giel Vanhoutte	Anderlecht	Urban planning	1991	327b0999e46ca2628b53d1d0e1262103	f	2020-05-28 10:52:44+00	2020-05-28 10:52:45+00	\N
4944	61	Antoine Gaudfernau	Uccle	Engineer	\N	44233592e2811e934ee9258dcc6d6705	f	2020-05-28 10:56:11+00	2020-05-28 10:56:11+00	\N
4945	62	Lien Vandamme	Schaarbeek	\N	\N	628119f14997d6e153337deaf41fb1a7	t	2020-05-28 10:57:22+00	2020-05-28 11:02:32+00	\N
4948	62	William van den broeck	Brussel	Engineer	\N	1cbb43096dc80ec92bf348a44e906d8d	t	2020-05-28 11:04:56+00	2020-05-28 11:05:14+00	vandenbroeckwilliam@gmail.com
4946	62	Lynn Daeghsels	Vorst	\N	\N	2619e622eb44d070024aecf53b204a62	t	2020-05-28 11:01:36+00	2020-05-28 11:05:59+00	lynn.daeghsels@gmail.com
4947	61	Sophie Baudoux	Ixelles	\N	\N	d7633e7fb4df7e8c1212be9de858e4e4	t	2020-05-28 11:02:35+00	2020-05-28 11:39:06+00	ashegeorget@yahoo.fr
4985	60	Marie Papazoglou	Bruxelles	\N	1980	1203259dccd26594f09be4a5b1c478cd	t	2020-05-28 14:00:42+00	2020-05-28 14:23:44+00	\N
4970	62	Kasper Michiels	Etterbeek 	Kabinetsmedewerker	\N	c5ff24a031dd3f82dbb51ab8447a83b2	f	2020-05-28 12:57:02+00	2020-05-28 12:57:02+00	kaspermichiels@hotmail.com
4957	60	Beata	Brussels	Product Manager	\N	e83889b37890773ecd525888f4909db8	t	2020-05-28 11:45:32+00	2020-05-28 11:51:32+00	\N
4962	62	MARGOT	BRUSSEL	\N	\N	086435a346955e5ca6c8e1678e9eb414	t	2020-05-28 11:57:28+00	2020-05-28 11:57:49+00	\N
4963	62	Marc Vanooloon	Brussel	Gepensioneerd	\N	f9770ed1ab37d287dca2e69c6d89f663	f	2020-05-28 11:58:04+00	2020-05-28 11:58:04+00	\N
4965	61	SCHARTZ Eric	Ixelles	Consultant	\N	6a9d704aa1e8cf2f1881370b8a2c82c8	f	2020-05-28 12:00:33+00	2020-05-28 12:00:33+00	schartz_eric@hotmail.com
4964	61	Simon van Walle	Brussels	Mgr	Umicore	23676bade699e49066fdb2518d41ef00	t	2020-05-28 11:58:57+00	2020-05-28 12:23:53+00	\N
4982	60	Morgane Rossignol	Ixelles	\N	\N	fad733ce2f279e8bf578594290097565	t	2020-05-28 13:25:29+00	2020-05-28 13:25:51+00	\N
4955	62	Louise	Brussel	Architect	\N	95eeb74c98b0df9776946638558c5548	t	2020-05-28 11:41:59+00	2020-05-28 13:35:11+00	\N
4966	60	Christine Delginiesse 	Uccle 	Employée 	\N	aa878f891590dd6a4fed1102a29b5260	t	2020-05-28 12:27:15+00	2020-05-28 12:41:16+00	\N
4967	60	Jonathan Smets	Bruxelles	formateur	\N	2be6a6c5ba17438bb0e6bf5cd546120d	t	2020-05-28 12:41:09+00	2020-05-28 12:44:09+00	\N
4969	62	Charles Goethals	Molenbeek	\N	\N	7f6b6f9b950f0bfad89ed9d4369b8959	t	2020-05-28 12:54:54+00	2020-05-28 12:55:14+00	\N
2489	62	Karel Petermans	Sint-Jans-Molenbeek	\N	\N	5c0fa6fdd1b14df9ae002358066e2877	t	2020-05-24 19:04:40+00	2020-05-28 14:37:03+00	karelpetermans@hotmail.com
4984	60	Gaelle Janssens	Bruxelles	\N	\N	1123bebe3f03ce02cfde08545afe326e	t	2020-05-28 13:41:06+00	2020-05-28 13:41:39+00	\N
4988	62	jonas van bockhaven	1000	\N	\N	c3b3bc1e89663043d1da3c0d08f87b5e	t	2020-05-28 14:36:40+00	2020-05-29 08:02:49+00	vbjonas@hotmail.com
5019	61	Camille	Etterbeek	\N	\N	93e86bd268de14520cbaf6d6cb3afe7d	t	2020-05-28 19:37:04+00	2020-05-31 16:21:04+00	\N
4983	22	Joanie lemercier	Anderlecht	Artiste	Studio JL	1b54513e64f8a6f8e8ba59192589f18a	t	2020-05-28 13:37:03+00	2020-05-28 14:22:20+00	\N
4997	60	alice 	auderghem	pensionnée	\N	cf1d5a662be1faba5742faf2c1fde7b3	t	2020-05-28 16:14:56+00	2020-05-28 16:16:02+00	alice.olbrechts@gmail.com
5022	60	Kim Engels	Ganshoren	\N	\N	b5f0dfbb953f20afcdfd44d1aabdc84b	t	2020-05-28 19:59:24+00	2020-05-28 20:06:18+00	kim.engels@vgc.be
5068	59	roseline levaque	Bruxelles	\N	\N	cb61afe9cfb286e7daf342bc729a61c3	t	2020-05-29 09:05:17+00	2020-05-29 09:05:33+00	\N
5083	61	Ugne Tornau	Brussels	Project manager	CCL	ec977e244cc96db541d291534cb875c9	f	2020-05-29 13:27:36+00	2020-05-29 13:27:36+00	utornau@hotmail.com
5084	61	Pueyo Manuel	Ixelles	web design	bigkids	f97079bf20a31ed76576136435b53ff6	t	2020-05-29 13:28:06+00	2020-05-29 13:57:21+00	olebrussels@gmail.com
5085	60	Sophie CAPELLE	Bruxelles	employée	\N	f123f136c3872655ce223e653843ce53	t	2020-05-29 13:34:46+00	2020-05-29 13:48:47+00	\N
5086	62	Patrick Dering	Brussel	Assistant	EU	f1f8a8e6b23382f1685d09b4efd49bbc	t	2020-05-29 13:42:49+00	2020-05-29 13:43:43+00	\N
5094	60	OLBRECHTS	Tervuren	Kaderlid	\N	e8f42ad8d97e60d75e6c8c65afabd0c1	f	2020-05-29 16:51:35+00	2020-05-29 16:51:35+00	ma.olbrechts@gmail.com
5095	60	Dewulf	\N	\N	\N	1ac5ab6110a2103c95d0e922dcb7181a	t	2020-05-29 17:13:49+00	2020-05-29 17:14:24+00	\N
4987	61	Lyllou	Brussels	\N	\N	fb4a17d4b47db4dfa756d1df1f3ff621	t	2020-05-28 14:05:23+00	2020-05-31 09:02:47+00	\N
4279	60	Kathryn Fleet 	Brussels	\N	\N	9679ae94df7fba2a71a7cd0ec4e27de3	t	2020-05-26 09:24:55+00	2020-05-26 09:25:17+00	\N
4302	60	Eric ronsse	Bruxelles	musicien , ingénieur du son	\N	5ebd64e1e682d646ac58c9317c10d4ba	t	2020-05-26 10:03:29+00	2020-05-26 10:03:42+00	\N
4280	61	I. Plets	Sint-Gillis	\N	\N	6647f09183e5d269d83b3d662d974eea	t	2020-05-26 09:25:37+00	2020-05-26 09:27:05+00	\N
4300	61	Friedrich Trosse	St. Gilles	\N	\N	78c100636061d3142d9f5575b46e49ae	t	2020-05-26 10:01:53+00	2020-05-26 10:03:50+00	\N
4283	61	Tara Hadviger	Brussels	\N	\N	c54bf0f68d8af8744b1326f160f0593d	t	2020-05-26 09:27:21+00	2020-05-26 09:27:41+00	\N
4314	62	\N	Elsene	Bediende	\N	7f033fa85f49f7a2f10c5b075229a728	f	2020-05-26 10:21:03+00	2020-05-26 10:21:03+00	\N
4301	61	Kaat De Vis	Anderlecht	Projectmanager	Mad Brussels	a09e25ccc454703b37305c3008b4cb3e	t	2020-05-26 10:02:41+00	2020-05-26 10:05:02+00	\N
4285	60	Thibault Brogniez	Nivelles	étudiant	 	c1d661ffa79fcd190cfef0587fa92317	t	2020-05-26 09:38:26+00	2020-05-26 09:38:48+00	\N
4286	62	Kristina Thoring	Uccle	\N	\N	b4e36d786939f106764bbbe1e8506a34	t	2020-05-26 09:38:37+00	2020-05-26 09:41:33+00	\N
4330	61	ilse grieten	brussels	\N	\N	789748973acce4efc21da953e53c87f1	t	2020-05-26 10:43:57+00	2020-05-26 21:05:30+00	\N
1712	60	Stéphane Aujean 	Saint-Gilles 	\N	\N	816855c17e0bf7395c94b883d6b5465c	t	2020-05-23 08:38:57+00	2020-05-26 09:44:17+00	\N
4303	60	Lien Arits	Brussels	Community & Communications Manager	HackYourFuture Belgium	1b48107ef10c7b7eced93ae4e60015a5	t	2020-05-26 10:05:55+00	2020-05-26 10:06:15+00	\N
4290	60	Radmanfar Abbas	Dilbeek	Étudiant	\N	d73e793dd17fb5d862a4ce85dfd4b780	t	2020-05-26 09:45:36+00	2020-05-26 09:45:50+00	\N
4289	60	schepens moïse	jette	sage femme	\N	d6dcf025a68e3afc81fc0622a241626e	t	2020-05-26 09:45:30+00	2020-05-26 09:45:56+00	\N
4291	62	Shadan Alhamwi	Brussels	\N	\N	4b6d0e49d8b07c3b3a49e6589d9f6766	t	2020-05-26 09:46:43+00	2020-05-26 09:46:58+00	\N
4315	60	Hubart Patrick 	Bruxelles 	Ing du son	Sonhouse	a026a24f1b1f73503679b6d565b1db32	f	2020-05-26 10:21:22+00	2020-05-26 10:21:22+00	\N
4292	62	Silke Quateau	Elsene	Lerares	\N	ccf1a7b6b8bf20835d63ad9b8216463b	t	2020-05-26 09:48:44+00	2020-05-26 09:49:03+00	\N
4293	61	Rosemary Hindle	Brussels	\N	\N	04cf2b2db9d03d08047a4dad4a10c5d1	f	2020-05-26 09:51:10+00	2020-05-26 09:51:10+00	\N
4304	61	Mihnea	Saint Gilles	Researcher	\N	ae01ebda4f162fd36afce957ec187d17	t	2020-05-26 10:06:28+00	2020-05-26 10:06:52+00	\N
4339	62	Kitty Eromosele	Bruxelles 	\N	kittyeromosele@hotmail.com	0f955cc53260cfed36c9420586ee3053	t	2020-05-26 10:56:52+00	2020-05-26 12:50:18+00	\N
4298	60	Pauline Ducuroir	1160	Étudiante	\N	4181737e1aae87d0f9930f5836980ac2	t	2020-05-26 09:58:29+00	2020-05-26 10:00:07+00	\N
4299	60	Navez	Uccle	Médecin 	\N	d80edea59ff671d7a815222d4e4ca6d2	f	2020-05-26 10:01:44+00	2020-05-26 10:01:44+00	\N
4318	60	yves jacquet	bruxelles	guide	xl nord	77c56239a9438dda636c725f217b4d90	t	2020-05-26 10:24:09+00	2020-05-26 10:33:03+00	\N
4297	61	Malgorzata Golebiewska	1160	fonctionnaire	\N	52d6c966d935e08f404c5b564a09d335	t	2020-05-26 09:57:01+00	2020-05-26 10:03:05+00	\N
4294	61	Brieuc	Bruxelles	Consultant	\N	0dbf65b943bb99027cd771af56d81447	t	2020-05-26 09:51:40+00	2020-05-26 10:03:20+00	\N
4305	61	Juan Sebastian Aguilera Blanco	Evere	\N	\N	050f20141887ef4c831a5a2929ff1aed	t	2020-05-26 10:08:22+00	2020-05-26 10:08:36+00	\N
4320	60	Durieux 	Namur	Pensionnée 	\N	e911afb84a8cbbae0ad4c0f46aa08b20	t	2020-05-26 10:32:02+00	2020-05-26 13:55:51+00	\N
4307	61	Barianda Calór	Saint gilles	Unemployed	Actiris	ed0940ec8e9209372ecf4a2276f1a469	f	2020-05-26 10:10:12+00	2020-05-26 10:10:13+00	\N
4284	61	Elisa Lopez Lucia	Bruxelles	Professeure 	ULB	efa76ddd914abb4a40736f16bdcf37e6	t	2020-05-26 09:30:43+00	2020-05-26 10:11:21+00	\N
4308	60	Pascale Vielld	Bruxelles 	Professeure	\N	8367e6ee9069901e537b7a2a09178f3a	f	2020-05-26 10:13:57+00	2020-05-26 10:13:57+00	pzscale.vielle@glail.col
4317	60	Fontaine Fanny	Bruxelles	Etudiante	\N	2cceff4dfce526cfd2092c1c01ae4670	t	2020-05-26 10:23:08+00	2020-05-26 10:23:25+00	\N
4316	61	Alberto Vela	Ixelles	Journalist	\N	b641148b9839e3d11ae56b5e2711637d	t	2020-05-26 10:22:35+00	2020-05-26 10:23:28+00	\N
4310	60	Agnès Leroux	Schaerbeek	\N	citoyenne	b2b8b49dcd4d6c512c4ee6c7a8076c7c	t	2020-05-26 10:15:57+00	2020-05-26 10:16:25+00	\N
4309	59	Liza	Sint-Joost-ten-Node	inwoner	\N	48f5af4998b916bd1e072b2499b57529	t	2020-05-26 10:15:45+00	2020-05-26 10:17:25+00	\N
4306	60	Marie-Gabrielle Tytgat	Bruxelles	\N	\N	831f4cfc5d7d252cb3fea3adad724b65	t	2020-05-26 10:08:49+00	2020-05-26 13:28:26+00	\N
4312	60	Els Van Paepegem	Halle	\N	\N	bd745c8bb02669f72202718895bd4cd0	f	2020-05-26 10:18:30+00	2020-05-26 10:18:30+00	\N
4313	62	Els Van Paepegem	Halle	\N	\N	ac840b3b23bca291e3a8d97a1407b5aa	t	2020-05-26 10:19:46+00	2020-05-26 10:20:21+00	\N
4328	61	Franziska Kunz	Brussels	Artist	\N	449e66b64d59bb866d6f0f1333428ace	f	2020-05-26 10:42:56+00	2020-05-26 10:42:56+00	\N
4323	62	Mattijs Van Bruwaene	Jette	\N	\N	aa4815ea240c17f0b590087325182706	f	2020-05-26 10:36:46+00	2020-05-26 10:36:46+00	\N
4319	60	Vandevelde	Bruxelles	Avocate	\N	81d580dfbc13c5e5acdd397ceb1ca990	t	2020-05-26 10:27:55+00	2020-05-26 10:29:17+00	\N
4336	60	Frédéric Supiot	Bruxelles	Médecin	\N	cb9e5aaea8fdb738813c04562c8e61c4	t	2020-05-26 10:54:03+00	2020-05-26 15:16:02+00	\N
4321	61	Cheyenne	Ixelles	\N	\N	65a4a2f705014e44a39490e10d26c234	t	2020-05-26 10:32:21+00	2020-05-26 10:32:52+00	\N
4322	60	Stefano Paganini	Bruxelles	Artiste	paganinistef@gmail.com	b217ebf43acc22ffbd93574ab3fce621	f	2020-05-26 10:32:53+00	2020-05-26 10:32:53+00	\N
4311	62	ilse	Schaarbeek	onderzoekster	\N	e677ce6d1ab890920de10cbc1e6adb4e	t	2020-05-26 10:18:09+00	2020-05-26 13:07:17+00	\N
4327	62	John Engel	Brussel	Producent	Left Field Ventures	1644c861a3288654e3d1505e7a2448dc	t	2020-05-26 10:42:06+00	2020-05-26 10:42:43+00	\N
4296	61	Sini Eräjää	Bruxelles	campaigner	\N	436c47810276ee78e47c1c288ee42655	t	2020-05-26 09:56:37+00	2020-05-26 21:28:08+00	\N
4331	62	Adelgonde Calmeyn	Brussel	lesgever	Brusselleer	cac1725235618d9acc2467f8f608b453	t	2020-05-26 10:45:52+00	2020-05-26 10:46:27+00	\N
4333	60	Caroline Maes	Brussel	Employée	\N	8a5beb33e694426ce1d7dc3b7a68bf6d	f	2020-05-26 10:48:49+00	2020-05-26 10:48:50+00	\N
4326	61	George Kosmopoulos	Brussels	Software Engineer	Le Wagon	d947c6150fbce562b8cd1d1e43a236a9	t	2020-05-26 10:41:01+00	2020-05-26 10:47:21+00	\N
4332	60	garance 	bruxelles	1060	\N	3aeea822cc7ca29fbf619345fc7877fd	t	2020-05-26 10:47:10+00	2020-05-26 10:47:59+00	\N
4335	62	De Vleesschauwer ludo	Brussel 	Coördinator 	Brede school Nieuwland 	4adcb0bb28179f0d4bfa1d1dcc35013e	f	2020-05-26 10:51:04+00	2020-05-26 10:51:04+00	\N
4334	60	Girard	Bruxelles	Regisseur	\N	5848cad47e6c8f3930a1a7efa047b873	t	2020-05-26 10:49:57+00	2020-05-26 10:50:15+00	\N
4287	60	Raphaële Germser 	Bruxelles 	\N	\N	9e7aa99eea7dc3c8bbdf00d0bd200ff3	t	2020-05-26 09:42:11+00	2020-05-26 17:30:37+00	\N
4337	62	Hendrike scharmann	Brussel	Musician	\N	dc3db28ea66e33c3c0c98c24c043f768	t	2020-05-26 10:54:50+00	2020-05-26 10:55:15+00	\N
4338	61	Carsten	Balen	Brandweerman	\N	e04ed5ae704e3829ce614e9b3f7e6311	f	2020-05-26 10:56:44+00	2020-05-26 10:56:44+00	\N
4324	60	Pascale Pongegnie	1030	Teacher 	\N	d8beb21da51c2239468a6b1cace27874	t	2020-05-26 10:38:04+00	2020-05-26 12:55:52+00	\N
4329	60	Picard	1180	Avocat	\N	2e2f7caa367e1fe19b339a6706e11c0b	t	2020-05-26 10:43:44+00	2020-05-26 11:01:59+00	\N
4345	60	Noé	Liège	\N	\N	acc3079c10741c10055e6f42b0277474	f	2020-05-26 11:09:39+00	2020-05-26 11:09:39+00	\N
4855	62	Karen van Schaik	Brussel	Musician/composer	\N	3f93c16822597368fcb4002d06f7566c	t	2020-05-27 21:39:21+00	2020-05-27 21:39:48+00	karenvschaik@gmail.com
4340	62	Sarah De Meuter	Anderlecht 	\N	\N	850c3bf9c4e4e4ffe66420aae3fc6a69	t	2020-05-26 10:57:31+00	2020-05-26 10:58:55+00	\N
4857	60	Joachim Lacrosse	Forest	\N	\N	fe330b421b8c82c62a52a40c2ca704d8	t	2020-05-27 21:47:10+00	2020-05-27 21:49:12+00	joachimlacrosse@hotmail.com
4341	61	Quentin Sacrez	Etterbeek	\N	\N	84e3c6fa162ca0fc07da2a61b8060d61	t	2020-05-26 10:59:35+00	2020-05-26 11:00:54+00	\N
4342	61	Christopher Daley	Sint-Gillis	filmmaker	\N	541efda9ae84b845d331d102dd5502f9	t	2020-05-26 10:59:37+00	2020-05-26 11:01:38+00	\N
4859	62	Greg	Auderghem	software developer	\N	cf3002aaa4f974bb2f671cf30e278890	t	2020-05-27 21:56:33+00	2020-05-27 21:56:49+00	\N
4343	60	Ferenc Marofka	1180	\N	\N	f4f14ecdf7bf243204689b3c1e733ac5	t	2020-05-26 11:03:07+00	2020-05-26 11:03:25+00	\N
5088	22	Caroline Loup	Schaerbeek	\N	\N	024cc5dcc0438573d11829e5926ec810	t	2020-05-29 13:52:21+00	2020-05-29 14:36:20+00	\N
4344	61	Sofie Dahlqvist	Brussels	Trainee	European parliament	5d400fd8b1d86cb7e0c8b245478a3ad9	t	2020-05-26 11:09:14+00	2020-05-26 11:09:32+00	\N
4860	62	Zino Boisdenghien	Sint-Jans-Molenbeek	\N	\N	9986b9801c0250e4e0c90f29f1c92dfc	t	2020-05-27 21:57:49+00	2020-05-27 21:58:36+00	\N
4349	61	Océane’ Hubert	Bruxelles 	STudent	\N	763e0b125bdb37f968284bd38ea7f7a8	t	2020-05-26 11:17:25+00	2020-05-26 11:17:53+00	\N
4880	61	Marie-Cécile Guyaux	brussels	occupied	\N	69f53f2d9bfea2bc927b43bcaeef4d56	t	2020-05-28 06:13:53+00	2020-05-28 06:14:49+00	mcguyaux@gmail.com
4881	62	Mirjam van Reisen	Brussel	Onderzoeker	EEPA	20207f049e1b5290ddceb00e2d70fbd2	f	2020-05-28 06:15:56+00	2020-05-28 06:15:56+00	mvreisen@eepa.be
4882	62	Van Bael	KOEKELBERG	\N	\N	2f547a66399c42b820b9151d608a0525	t	2020-05-28 06:20:38+00	2020-05-28 06:21:02+00	bart.van.bael@gmail.com
4884	62	Paolo Longhi	Schaerbeek	Aide soignant	\N	ebbbae5d8839abde7c08514df28cac7e	f	2020-05-28 06:35:57+00	2020-05-28 06:35:57+00	paolo.longhi@iclud.com
4885	60	Guyaux	Bruxelles	Avenue Père Damien	Prive	1242ed11b63818e09448ab5d65f23df7	t	2020-05-28 06:37:00+00	2020-05-28 06:37:17+00	cguyaux@gmail.com
4968	62	Anne-Sophie Dubrux	Brussel	Student	\N	ab43612d13b8cd168ba5398fe62d333e	t	2020-05-28 12:45:20+00	2020-05-28 12:45:43+00	\N
4887	61	Bas Jurriens	Schaarbeek	Kader	\N	af5c82654404b94f07ea311656a071f0	t	2020-05-28 06:43:17+00	2020-05-28 06:43:39+00	\N
4879	61	Carrera Raul	Brussel 	Musico	\N	44981c3c98db8a3589b1cd8d0bbadb42	t	2020-05-28 06:07:59+00	2020-05-28 07:46:43+00	raul.carrera@laposte.net
4949	61	Joseph Cunningham	Schaarbeek	Student	\N	41536d94de5d91482cb844e8fca12ba5	t	2020-05-28 11:11:04+00	2020-05-28 11:11:27+00	jat.cunningham@gmail.com
4951	60	FUNCK	Woluwé Saint-Pierre	Doctorant	\N	e6b5df2b83abb589cf27d8a52850ca8b	t	2020-05-28 11:16:45+00	2020-05-28 12:48:57+00	sylvain.funck@gmail.com
4950	62	Anneleen Lambrecht	\N	\N	Anneleen Lambrecht	05a4450b51a5b127441061327e33d70c	t	2020-05-28 11:13:00+00	2020-05-28 11:13:20+00	\N
4633	62	Matthys	Brussel	Leerkracht	\N	aba5192d3188c2be79b447ac2ee12747	t	2020-05-27 06:57:37+00	2020-05-28 11:17:11+00	\N
4971	22	Jerome vande velde	Mechelen	Engineer	\N	d12e016c7ac834a3619f8b4c7d34645b	f	2020-05-28 13:01:02+00	2020-05-28 13:01:06+00	\N
4954	62	Thomas	Brussel	\N	\N	ed070f57cbdc89df0cef21d6a8a36a72	t	2020-05-28 11:30:38+00	2020-05-28 11:31:13+00	\N
4960	61	Julie	Ixelles	\N	\N	a7c342bdfcc025c510936a092ef18942	f	2020-05-28 11:54:31+00	2020-05-28 11:54:32+00	\N
4998	61	Philippart agnes	Bruxelles	Employee	\N	199a589daa1c79b99588ad0ccbf5691f	f	2020-05-28 16:32:20+00	2020-05-28 16:32:20+00	\N
4961	62	Marie Vitoux	Elsene	Bediende	1989	f3262369b0ba500feab7d8629b0af9f4	t	2020-05-28 11:55:23+00	2020-05-28 11:57:06+00	\N
4958	62	Julia	Sint-Jans-Molenbeek	\N	\N	462a526029dc410fc8146eb64fbbaae7	t	2020-05-28 11:47:11+00	2020-05-28 12:08:14+00	\N
4952	62	Annick de rynck	Willebroek	\N	\N	ca9061ca255f6c7498842a8c1cde4d16	t	2020-05-28 11:19:35+00	2020-05-28 12:31:00+00	\N
4959	62	Charlotte Bosseler	Saint-Gilles 	Avocat 	\N	c1ef1ee12028501321c33dd2c3bb3d56	t	2020-05-28 11:50:50+00	2020-05-28 18:58:21+00	\N
5020	62	Louisa 	Brussel 	\N	\N	529c26cbc09494fe6614cc42b3b05509	t	2020-05-28 19:45:19+00	2020-05-28 19:46:36+00	llanckma@gmail.com
5021	62	Marie	Brussel	Student	\N	bdb8d99a15b4a42d4183444cd1ab8357	f	2020-05-28 19:50:16+00	2020-05-28 19:50:16+00	marie-bakaranger@outlook.com
5070	61	Desmecht Caroline	Schaerbeek	Freelance	\N	a686d48200445eb4068d23d276990be3	t	2020-05-29 09:39:21+00	2020-05-29 09:39:50+00	caroline.desmecht@gmail.com
5073	60	Brynaert Pierre	Bruxelles	Professeur	\N	526be58779df8699bda41f1b59ef28d5	t	2020-05-29 10:30:59+00	2020-05-29 10:32:25+00	brynaertpierre@gmail.com
5075	62	Lacroix Stéphanie	saint-gilles	Digitale marketing manager	\N	7bd5d2347cacfdf8b1da5f19ac9e67c0	t	2020-05-29 11:46:52+00	2020-05-29 11:47:19+00	lacroix.s@hotmail.com
5082	62	Thomas Devos	Brussel	muzikant	1972	6dda4b8790aebfb3fc364d277e13d3b2	f	2020-05-29 13:05:43+00	2020-05-29 13:05:44+00	\N
5148	61	Manon Barthod	Brussels	\N	\N	00a631736d1881dd9666f4aec82e19ce	t	2020-05-30 14:31:59+00	2020-05-30 14:47:08+00	manon.jbarthod@gmail.com
5097	60	Nicolas Hazi	Schaerbeek	Biologiste	Monsieur	d07828a8bed2e42f811103c598a0f96a	t	2020-05-29 18:13:01+00	2020-05-29 18:14:33+00	nicolas.hazi@protonmail.ch
5147	60	Assanvo Yannis 	Bruxelles 	Écolier 	\N	4ecc6866f791db6dae2c237d4d219daa	t	2020-05-30 14:27:57+00	2020-05-30 14:28:57+00	\N
5149	60	ariadni rosa-clot	\N	\N	\N	5e46cb974169a1276c41208a28b6a896	f	2020-05-30 14:32:53+00	2020-05-30 14:32:53+00	\N
5150	61	Guy Janaway	Saint-Gilles	\N	\N	66b7987fc66827700a74f5e004bc8124	t	2020-05-30 14:43:37+00	2020-05-30 14:43:56+00	\N
5151	60	Diana Faccio	Bruxelles	Employee	Health Care without Harm Europe	52e131390150651f428a981205c2b240	t	2020-05-30 14:44:06+00	2020-05-30 14:44:29+00	\N
5153	60	Delfosse 	Bruxelles 	Auderghem 	\N	4fa2d94524e1f4c53b2dcbc5dc43b7b7	t	2020-05-30 14:50:32+00	2020-05-30 14:51:01+00	annezmfd@gmail.com
5156	61	Sibylle 	Bruxelles 	\N	\N	097e771e95c7b160ba30d81567ab40e0	t	2020-05-30 14:57:34+00	2020-05-30 14:58:00+00	\N
5157	61	Desgain roland	Brussels	\N	\N	a6df511e741fa94fdfc387441e756be0	f	2020-05-30 15:00:41+00	2020-05-30 15:00:41+00	rdesgain@gmail.com
5158	61	Barbara de Radigues	Bruxelles	Députée régionale	\N	52fc8dea4c89ecbcf4497770315a407d	f	2020-05-30 15:22:06+00	2020-05-30 15:22:07+00	\N
5159	60	Olivier chantrell 	Bruxelles 	\N	\N	5abb72fb23e6839b1731fd698db9a79c	f	2020-05-30 15:28:06+00	2020-05-30 15:28:06+00	\N
5074	61	Yasko deboodt	Schaarbeek 	\N	\N	3f688b1e68288c3d11a9c6a4fb35d909	t	2020-05-29 11:35:35+00	2020-05-30 16:36:27+00	\N
5169	60	Prieur	Uccle	\N	\N	c4382d92eb1f310fcf0833ed4e6e4a5b	t	2020-05-30 17:22:14+00	2020-05-30 17:22:47+00	\N
5172	60	marlène Calis	Jette	\N	\N	9318232df23afa6703d4fae0b5616054	t	2020-05-30 17:41:42+00	2020-05-30 17:42:23+00	elleose@gmail.com
5174	60	olivier chantrell	Bruxelles	\N	\N	42ddec6ca12cb937514ee117677bf8f6	t	2020-05-30 17:41:43+00	2020-05-30 17:42:39+00	\N
5182	62	A	Bruxelles	\N	\N	14106a129fd519b86bb82e8a64ab5723	f	2020-05-30 21:16:17+00	2020-05-30 21:16:17+00	\N
5154	60	Eva Rose Thys	bruxelles	étudiante	\N	9e682da235a0236588224cb8c6d5576d	t	2020-05-30 14:50:49+00	2020-05-31 23:55:55+00	erose0726@gmail.com
5183	61	Thomas Swerts	Sint-Jans-Molenbeek	Universitair Docent	\N	029b67a6b6a72bf410dbb8d973bb1c31	t	2020-05-30 21:28:47+00	2020-05-31 10:24:55+00	\N
5160	61	Kate Reilly	Bruxelles 	\N	\N	b2e95ed608e09c02418ad26793b197c5	t	2020-05-30 15:28:44+00	2020-06-02 08:28:00+00	\N
4383	60	Mélanie Van hoef	Berchem sainte agathe	Employée	\N	dca84c049d060bff130057215adfb93a	t	2020-05-26 12:35:27+00	2020-05-26 12:36:20+00	\N
4346	61	Giulia Prelz Oltramonti	Saint Gilles	Lecturer	\N	bb5d473814ca41a87a9730f97f43ae3a	t	2020-05-26 11:11:06+00	2020-05-26 11:11:59+00	\N
4366	62	Lene	Brussel	Marketeer	\N	019c3284649ea17ed94f3bc15fcf57b5	t	2020-05-26 11:45:47+00	2020-05-26 11:46:38+00	\N
4861	62	\N	Brussels	Student	\N	e8107d8fbfac33d4a68bea89826ea3fa	t	2020-05-27 22:06:26+00	2020-05-27 22:06:48+00	\N
4348	61	Regine Roncucci	IXELLES	\N	UNEP	0922183a66f5b147eb5cde098238d789	t	2020-05-26 11:13:29+00	2020-05-26 11:14:04+00	\N
4347	61	Emma	Etterbeek	Student	\N	bfb77c59ef151d4882009258d4affbb0	t	2020-05-26 11:13:00+00	2020-05-26 11:16:41+00	\N
4378	62	Jasmine De Jonckheere 	Brussel 	\N	\N	1cd72d6e54c32f97ee755dc90521cf49	t	2020-05-26 12:19:45+00	2020-05-26 12:20:29+00	\N
4351	60	Hugh Murphy	Brussels	Teacher	\N	0c4f965ea6a1962270fe51bc5758dbb9	f	2020-05-26 11:18:49+00	2020-05-26 11:18:50+00	\N
4350	61	garif telzhanov	Etterbeek 	\N	\N	fabd43917ec452ec741a69789da6a088	t	2020-05-26 11:18:41+00	2020-05-26 11:19:06+00	\N
4367	60	Pierre Schobyn	Bruxelles	\N	Pierre Schobyn	4fabd85869636324d668c7c7c84d76ae	t	2020-05-26 11:46:29+00	2020-05-26 11:50:07+00	\N
4352	60	Anne germain	Ganshoren	\N	\N	412959f97a567ce03e369c8d78fea018	t	2020-05-26 11:30:27+00	2020-05-26 11:31:15+00	\N
4368	62	Hazel Corthouts	Brussel	student	\N	f35dfeff892bdde5bf83afd4e15e0aa2	t	2020-05-26 11:47:59+00	2020-05-26 11:51:37+00	\N
4355	60	Jérôme Finet	Etterbeek	\N	\N	14a514924753794d7ddd62a615baf417	f	2020-05-26 11:32:16+00	2020-05-26 11:32:16+00	\N
4354	60	Florence Mullier	Saint-gilles	Graphiste	\N	c224a6593ca099d3533154b0d00267a9	t	2020-05-26 11:32:08+00	2020-05-26 11:32:21+00	\N
4295	60	ARIANE GEERINCK	Bruxelles	Animatrice 	\N	cf082a2e031125cf04ee6c8df8be6cfc	t	2020-05-26 09:53:50+00	2020-05-26 11:32:22+00	\N
4353	60	Mariam Diallo	Molenbeek-Saint-Jean	\N	ULB	063c475ec3e3869944c34094c9554ddb	t	2020-05-26 11:31:33+00	2020-05-26 11:33:06+00	\N
4404	60	Zhen meng	bruxelles	\N	\N	d5d58ae86cb6c5fb9d8576f8db07d6c6	t	2020-05-26 13:13:59+00	2020-05-26 15:41:22+00	\N
4357	62	Els Spaas 	Brussel	Leerkracht 	Cvo	ad78cc5006f1aa6177b78f808972f984	f	2020-05-26 11:36:04+00	2020-05-26 11:36:04+00	\N
4371	60	Sarah Van Hove	Bruxelles	\N	\N	38d6533cb8abc90a916d37ee52cd6ff5	t	2020-05-26 11:59:11+00	2020-05-26 12:20:44+00	\N
4359	60	Lingrand Géraldine	Bruxelles	Hr assistant	\N	739902af597997516984b3a345e810c6	f	2020-05-26 11:39:53+00	2020-05-26 11:39:53+00	\N
4369	62	Mieke Melis	Brussel	Projectverantwoordelijke REA-AED	IPOWG vzw	437693fb74f1f34e98a07829bcf8d939	f	2020-05-26 11:52:22+00	2020-05-26 11:52:22+00	\N
4361	60	Barbara Salter	Brussels	Pensionnée 	\N	08af88219cbb1ba6237d7349c65f41d0	t	2020-05-26 11:40:25+00	2020-05-26 11:40:52+00	\N
4360	62	Tinne Lambert	Brussel	leerkracht	\N	8b9790af2caffb902388bbafaf8b33ff	t	2020-05-26 11:40:11+00	2020-05-26 11:42:18+00	\N
4362	61	Billie meeussen	Ganshoren	Student	Vub	e008e0190fbb8cd59b15837ac4594993	t	2020-05-26 11:42:18+00	2020-05-26 11:42:40+00	\N
1361	61	Anis Bedda	Brussels	CEO	Transforma bxl 	361d2aba179f841db6b66d0b20a31f42	t	2020-05-22 16:06:02+00	2020-05-26 11:43:27+00	anis.bedda@gmail.com
4364	62	Geert	VUB	onderzoeker	Brussel	322929613ff5511e46f99d6b82f50c89	t	2020-05-26 11:43:17+00	2020-05-26 11:45:05+00	\N
4363	62	Simon De Clercq	Schaarbeek	\N	\N	6868285b534c8071809cde34aea8d259	t	2020-05-26 11:43:10+00	2020-05-26 11:45:11+00	\N
4373	62	Hilde Segers	1755	\N	\N	27c176436e09ee3a62df9dc0f1813645	t	2020-05-26 12:04:56+00	2020-05-26 12:05:28+00	\N
4358	61	Loïc Versichel	Brussel	\N	\N	f9f7d1451f908621f8b77a23d2010464	t	2020-05-26 11:36:58+00	2020-05-26 12:07:19+00	\N
4380	62	Edouard Lardin	Brüssel	Student	\N	1ee56174fe6592b2531b509fdcb2aea9	f	2020-05-26 12:23:29+00	2020-05-26 12:23:29+00	\N
4375	62	HUGO MORIZEAU	Vorst	thuisverpleeger	Wheel Of Care	ece924c9bd0b795c19e5feba97e13d0e	f	2020-05-26 12:10:37+00	2020-05-26 12:10:37+00	\N
4379	61	Ruth	Brussels	employee	\N	c0bae386df5ce84ebd9d1163d1438800	t	2020-05-26 12:22:37+00	2020-05-26 12:24:28+00	\N
4370	60	Matteo Burniat	Bruxelles	Étudiant	\N	acdcf695f94068c986b27e76e698f519	t	2020-05-26 11:52:47+00	2020-05-26 12:13:12+00	\N
4376	60	Vincent Vercruysse 	Bruxellles	employé	 SRABE	aafd62746e168f1c5700442436a8fd67	t	2020-05-26 12:12:54+00	2020-05-26 12:14:27+00	\N
4385	60	Rousseau 	Saint-Gilles 	\N	\N	1090da3cd3a397b3555273e7f2826802	t	2020-05-26 12:38:49+00	2020-05-26 12:39:29+00	\N
4374	62	Laura Persijn	Vorst	student	\N	5f88289ebfed44f54b3aae804c4af7fd	t	2020-05-26 12:10:11+00	2020-05-26 12:19:22+00	\N
4377	62	Filip Van Droogenbroeck	Schaarbeek	\N	Vrije Universiteit Brussel	c773c516289240178afcddb4c19b083e	t	2020-05-26 12:16:16+00	2020-05-26 12:26:35+00	\N
4381	60	Alix Rijckaert	Etterbeek	citoyenne, journaliste, maman, être vivant, cycliste	\N	d7be6ea9b2d8a69f448e8808d29e2f6b	t	2020-05-26 12:33:57+00	2020-05-26 12:34:23+00	\N
4382	62	Mies Maenhout	Evere	\N	\N	5b626038487fba189df0ba10af5dcf53	t	2020-05-26 12:34:14+00	2020-05-26 12:34:25+00	\N
4384	61	Anneke Evenepoel	Brussels	\N	\N	8d688302139cb38e208d387e4ee6a0c6	f	2020-05-26 12:35:44+00	2020-05-26 12:35:45+00	\N
4356	61	Viviane André	Ixelles	\N	\N	b8be7c6e1e71a0d8d7cd806d4c235bff	t	2020-05-26 11:34:37+00	2020-05-26 14:58:59+00	\N
4402	60	Eva SEKER	BRUXELLES	étudiante	\N	793f8cccaf40f5c037b95f537e0c6987	t	2020-05-26 13:10:09+00	2020-05-27 14:30:33+00	\N
4390	60	Stokart Mathilde	Bruxelles	\N	\N	63ce775cc974b7770f9049f676d5f519	t	2020-05-26 12:44:48+00	2020-05-26 12:45:41+00	\N
4389	60	Michiel Vandevelde	1030	Artist	/	e1089791e629b13fda1fac06aa620920	t	2020-05-26 12:43:35+00	2020-05-26 12:44:15+00	\N
4394	61	Clara Torbeyns	\N	\N	\N	eb5d6b43b365e6eceef9d3b87cb81c40	f	2020-05-26 12:49:59+00	2020-05-26 12:49:59+00	\N
4392	62	Jeroen 	Schaarbeek	Leraar 	\N	e5d616b2791f5736c78fed4456314caa	f	2020-05-26 12:45:59+00	2020-05-26 12:45:59+00	\N
4391	61	Jeroen Dehing	Ganshoren	Leraar	\N	3290fe08dbfe374a83d5301225ddbf83	t	2020-05-26 12:44:55+00	2020-05-26 12:46:20+00	\N
4393	60	Beth Wiltshire	Saint Gilles	\N	\N	98866d34cb6706722ae5b8c2b24a08de	f	2020-05-26 12:49:57+00	2020-05-26 12:49:57+00	\N
4395	60	Jeanne Bodson-Poinas	Bruxelles	\N	\N	7981d805ce2db64fe9e37a7a36f8091d	f	2020-05-26 12:50:40+00	2020-05-26 12:50:40+00	\N
4365	61	Tomasz W.	St-Gilles	traducteur	\N	b2ccf6a551ee1afae874bfad0dcd2f8f	t	2020-05-26 11:44:04+00	2020-05-26 12:51:04+00	\N
4399	62	Elise	Brussel	student	\N	61527e05cea56ab2ab116bcbd54b23f7	t	2020-05-26 12:59:14+00	2020-05-26 13:01:43+00	\N
4396	59	Julia Eckhardt	\N	\N	Q-O2 lab	24b77ba4b233daf12f303c269b40cfdc	t	2020-05-26 12:53:08+00	2020-05-26 12:54:24+00	\N
4398	61	Niccolo Panozzo	Brussels	\N	\N	360bdb1f7be7a07511022703dbaaf920	t	2020-05-26 12:57:04+00	2020-05-26 12:57:20+00	\N
4397	61	Niccolò Mannari	Brussels	Consultant	B2EU Consulting	6dbd73142ce2818fd7c82ec4f6f5998b	t	2020-05-26 12:53:40+00	2020-05-26 12:59:24+00	\N
4400	60	Creston aurelie	Bruxelles uccle	\N	\N	d6c284f0aa484ec06f92ef9797b1cbfb	t	2020-05-26 13:03:50+00	2020-05-26 13:04:57+00	\N
4401	59	Saïmah Wilson	Schaarbeek	\N	\N	e835768c260cd17c2928ecd3481db346	t	2020-05-26 13:04:13+00	2020-05-26 13:04:51+00	\N
4403	60	Beckers	Ottignies	Retired	\N	bd742da7b9b06e9ef1bd6e4d25c9c42a	t	2020-05-26 13:12:29+00	2020-05-26 13:13:10+00	\N
4388	60	Norro Dominique	Braine-le-Château 	Retraitée 	\N	fc8a5648205816290edfb109ffabf681	t	2020-05-26 12:42:23+00	2020-05-26 20:09:36+00	\N
4415	61	Michal Feherpataky	Brussels	\N	\N	f7b028716668d83f9b3ae61a4c66e491	t	2020-05-26 13:39:21+00	2020-05-26 13:39:56+00	\N
4405	61	Julian NF	Bruxelles	Consultant	\N	a09690e8938101bd72b485f5487b6ccd	f	2020-05-26 13:15:36+00	2020-05-26 13:15:36+00	\N
4862	60	Terziyska	Vilvoorde 	Musicienne 	\N	5b383c75528dd5fefe974d603065812f	t	2020-05-27 22:18:44+00	2020-05-27 22:19:27+00	gergana78@gmx.de
4836	62	Jules Kerner	Uccle	Salarié	\N	d645e84a062667f569b20dbcb15f15af	t	2020-05-27 19:31:51+00	2020-05-27 22:54:42+00	juleskerner2@gmail.com
4372	60	Lorenzo Carola	Brussels Area, Belgium	musician	Forum des Compositeurs	f429b76b5ef360a1fb041e3ce05af1fb	t	2020-05-26 12:01:03+00	2020-05-26 13:23:09+00	\N
4870	61	Anonimous	Forest	\N	\N	449faef9796bef3bdf139d4f85210e6b	f	2020-05-28 00:28:00+00	2020-05-28 00:28:00+00	david_migueld@hotmail.com
4409	60	Cantarella Hadrien	Schaerbeek 	Finance Business Partner	\N	dc27147024ac83fbd44f8226e8ed394b	t	2020-05-26 13:26:03+00	2020-05-26 13:26:23+00	\N
4408	60	Yvette Piens	Bruxelles	pensoinnée	\N	a65b55bf38c427e34abfec90aeab61f6	t	2020-05-26 13:25:56+00	2020-05-26 13:26:57+00	\N
4888	60	Hanna Penzer	Bruxelles	\N	\N	f478da06d496869e0390ea45c0c52c62	t	2020-05-28 06:56:39+00	2020-05-28 06:57:28+00	\N
4890	62	Lies Tousseyn	Brussel	Opvoedingsondersteuner	Kind en Preventie	0bbdfec6ec0596d3a42dacdbd06f7d69	t	2020-05-28 06:59:47+00	2020-05-28 07:02:15+00	tousseynlies@yahoo.com
4889	61	Thibault Voglaire	Koekelberg	employé	\N	e4322758baf9af192b4b56a08187746a	t	2020-05-28 06:57:20+00	2020-05-28 12:06:05+00	\N
4413	60	Cantarella Armand	Schaerbeek	Retired	\N	61dac85bd3c9b733666435c0e4f126c9	f	2020-05-26 13:31:45+00	2020-05-26 13:31:45+00	\N
4410	61	Diaz lucrece	Ixellles	Retraitée 	\N	8db5ebd776d261d48c4afc8e6481f429	t	2020-05-26 13:27:18+00	2020-05-26 14:27:52+00	\N
4412	60	Chelman Fay	Schaerbeek 	Éducation	\N	ac726661886568d66258cf7cddb333f0	t	2020-05-26 13:28:22+00	2020-05-26 15:41:26+00	\N
4414	60	Cazenave Marie-Paule	Brussels	Retired	\N	07e05ad8870a7c9dbf82372b2453ad58	t	2020-05-26 13:32:35+00	2020-05-26 16:19:13+00	\N
4407	62	Gwen	Brussel	\N	\N	87d4b028f8f7faa2ed29dac20c195200	t	2020-05-26 13:23:45+00	2020-05-26 18:30:11+00	\N
4406	60	Gilles	Auderghem 	Bruxelles	\N	c0eafffb981246119130621b0f4b0d71	t	2020-05-26 13:22:40+00	2020-05-26 20:17:37+00	\N
5078	60	Marguerite Beauduin	Bruxelles	PM 	Event 	20ef31f51518e59de87b7369e5cd8120	f	2020-05-29 12:13:17+00	2020-05-29 12:13:18+00	\N
5105	61	Nacima Kisma	Uccle	Ophtalmologue	\N	870ac0c8ff670c39807cd7831fb06eb4	t	2020-05-29 21:28:37+00	2020-05-29 21:30:16+00	nacimakisma@hotmail.com
5003	61	Anna Irmisch	Brussels	Engagement Manager	\N	c35a8b67c6d550e51530bbf9be226d2e	t	2020-05-28 17:32:40+00	2020-05-28 17:33:44+00	\N
5002	61	Christoph Raab	Ixelles	Doctorant	\N	af0c1cbafa141bc9c494435d30e8f7aa	t	2020-05-28 17:23:50+00	2020-05-28 17:38:14+00	\N
4999	60	Charlotte de Harlez	Woluwé-Saint-Pierre	\N	\N	b9fd068045273a9f923ecfb16b33f5c4	t	2020-05-28 16:40:00+00	2020-05-28 18:29:19+00	\N
5001	60	Ludovic	Bruxelles	Ingénieur 	\N	de71501f68f856f7ac4f2d14befed289	t	2020-05-28 17:21:56+00	2020-05-28 18:30:18+00	\N
5024	60	Thomas Drimmer	Schaerbeek	Ingénieur	Safran	298ebe879543739c6ce0a6cad4f2047d	t	2020-05-28 20:23:14+00	2020-05-28 20:23:36+00	thomas.drimmer@gmail.com
5025	60	Julie Richel	Ixelles	Employee	\N	5a59bff2ab24d994fd9e347b7fd0f79f	f	2020-05-28 20:42:04+00	2020-05-28 20:42:05+00	\N
5036	60	Max Uebe	St Gilles	\N	\N	106a461b226248eeb3ee14cf87eb5f31	t	2020-05-28 21:53:43+00	2020-05-28 21:54:17+00	max.uebe@gmail.com
5037	62	JULIE BERARD	FOREST	\N	\N	a25d30174a7835fe862737d2f29a0e82	f	2020-05-28 22:34:46+00	2020-05-28 22:34:47+00	\N
5079	62	Katy  Wiese	Bruxelles	\N	\N	e935aa67fd00a4c6e52f06aa51312eb7	t	2020-05-29 12:13:32+00	2020-05-29 12:13:50+00	\N
5038	60	Alexandre	Woluwe-Saint-Pierre	Employé	\N	d735bca96ccc6290de18ce2479c05e76	t	2020-05-28 23:02:15+00	2020-05-28 23:03:20+00	\N
5093	60	Serge lacroix	Anderlecht	Employé	\N	9d9f12c403be4fdad4d7863e6b9a18c0	t	2020-05-29 15:58:33+00	2020-05-29 15:59:39+00	\N
5071	61	Barbara Dauby	1030 représente 	Indépendante  	\N	6de0af0a28ab4d184f5a3c7a70ccf98c	t	2020-05-29 09:50:31+00	2020-05-29 09:51:36+00	\N
2125	60	Robin Pringels 	Schaerbeek 	Formateur	CEMEA	351a4f3a37f6e61f644ce9f6f5e14439	t	2020-05-23 20:49:31+00	2020-05-29 09:52:24+00	rob1pringels@hotmail.com
5072	62	Ilse Leus	Oudergem	Eremagistraat	\N	cad3fead77a07f764fd2bf20d12262a0	t	2020-05-29 09:52:59+00	2020-05-29 09:53:26+00	\N
5076	61	Cattani Victoria	Bruxelles	Student	Erg	743ab206a79952e3bda18ab28a01ec81	t	2020-05-29 11:56:43+00	2020-05-29 12:21:36+00	cattanivictoria@gmail.com
5080	60	Nicolas Vandeweyer	bruxelles	freelance	rtbf	5207a1d858dcea9d0af925d71f09cd24	f	2020-05-29 12:46:26+00	2020-05-29 12:46:27+00	\N
5089	60	Anne Nierinck	Bruxelles	Consultant	Runnel Consulting bvba	6bd262baad8dc4bf4be932faf07fa194	t	2020-05-29 14:31:24+00	2020-05-29 14:31:43+00	anne@borderless.net
5090	62	Thomas van Binsbergen	Brussel	student	\N	e610de8b4c2b146b35c268b48f9664a4	t	2020-05-29 14:39:16+00	2020-05-29 14:39:56+00	\N
5098	60	Arnaud	Bruxelles	Consultant	\N	d0e0216bc45921558b75e7f63906650b	t	2020-05-29 19:15:01+00	2020-05-29 19:16:05+00	\N
5091	62	Rik Van Roy	Sint-Joost-ten-Node	Leerkracht	\N	596a9d6c5981d799c8e9f3eae3711cb0	t	2020-05-29 14:42:41+00	2020-05-29 14:43:02+00	\N
5092	61	Thomas Devos	Brussel	muzikant	1080	8f1e118eba2cfbad4a1f42c37559ce51	f	2020-05-29 15:51:15+00	2020-05-29 15:51:15+00	\N
5099	60	Vouloir	Bruxelles	psychologue	\N	ea0c055e81c42342abb56e6cfa49f86e	t	2020-05-29 19:32:19+00	2020-05-29 19:32:47+00	jocelyne.vouloir@gmail.com
5107	62	Caterina dada	Etterbeek	\N	ECF	c3d21f3a7f71bafe4b7553f16dfd8bbf	f	2020-05-29 22:24:59+00	2020-05-29 22:25:00+00	\N
5103	60	Lechaude 	Bruxelles 	Ingénieur 	\N	ac607cb6bd2fcd4a341a4e4a1f46142e	f	2020-05-29 20:59:32+00	2020-05-29 20:59:32+00	\N
5102	62	Castel 	Brussel	Oogarts	\N	f1bfc519409fad35edaf5448496b94f8	t	2020-05-29 20:57:31+00	2020-05-29 21:00:23+00	\N
5104	60	Richard Peppiette	Watermael-Boitsfort	\N	\N	6cb0f7b8ee6a9e6a9290940730c96556	t	2020-05-29 21:12:02+00	2020-05-29 21:12:38+00	\N
5162	60	\N	\N	\N	Yannturbooo@gmail.com	1e62da9244873d73e5f1de547402fd15	f	2020-05-30 15:42:26+00	2020-05-30 15:42:26+00	\N
5161	60	adrien	bruxelles	vélo	?	2c7274cecdc62693ae4e26b09263ae1b	t	2020-05-30 15:41:59+00	2020-05-30 15:42:43+00	adrienqua2fli@gmail.com
5175	60	Geerts Bernard	Bruxelles	1160	\N	d57906253e280c82d7e768e5d8750c52	f	2020-05-30 18:11:41+00	2020-05-30 18:11:41+00	b.geerts@yahoo.fr
5163	60	Burton Monique	St.Pieters-Leeuw	retraitée	\N	00dc59127db0250545fe0402636b795e	t	2020-05-30 15:48:56+00	2020-05-30 15:50:29+00	\N
5185	60	ingrid payan	Uccle	Coordinatrice asbl	\N	0d0154e5c8e57c046787109200942bb1	t	2020-05-30 21:44:34+00	2020-05-30 21:45:08+00	ingapayan@gmail.com
5176	61	Sonia Goicoechea	\N	\N	soniagoicoechea@gmail.com	2f1ba6cf937b0932be660a367fc8cd07	t	2020-05-30 18:45:23+00	2020-05-30 18:45:52+00	\N
5186	60	Alauzet Christelle	\N	\N	\N	3d78210ef5fb7404ddaf0da0a9a23e3b	t	2020-05-30 21:58:45+00	2020-05-30 21:59:12+00	chrisalauzet@gmail.com
5189	62	Kamal Molla	Jette	Verpleegkundige 	Ziekenhuis (AZJP vilvoorde)	933ca67cf103fb0e9af4297efc915a83	t	2020-05-30 23:04:20+00	2020-05-30 23:04:54+00	\N
5190	59	Hannah Vanbelle	Sint-Joost-ten-Node 	\N	\N	a3aad29d3163634bd98bfa76b045fcd5	t	2020-05-30 23:21:46+00	2020-05-30 23:22:15+00	\N
5191	60	Pierre charlier	Ixelles	\N	\N	e2c9f39afe2cefc6fe82dddc5bc08486	t	2020-05-31 04:59:51+00	2020-05-31 05:00:20+00	\N
5194	60	Vanhalst	Dilbeek 	Médecin 	\N	e30a242a4917526bf4cb8351872bb2d4	t	2020-05-31 06:45:53+00	2020-05-31 23:33:17+00	pascale.vanhalst@skynet.be
5184	60	Jérémy	Bruxelles	\N	\N	80f437c2f40119964854b4f3bb5e1252	t	2020-05-30 21:38:32+00	2020-06-01 08:18:23+00	\N
4450	62	Sarah	Laken	\N	\N	0c7ed4adb9e25ca5d6d6f33ccf60d19c	t	2020-05-26 15:23:28+00	2020-05-26 15:23:43+00	\N
4416	60	Camille Bullot	Bruxelles	\N	\N	6b06b24edd3cf2f72071e18794d0d021	t	2020-05-26 13:39:49+00	2020-05-26 13:40:05+00	\N
4417	60	M.Blondeel	Bruxelles	citoyenne	Habitat groupé	020af666982a03650f64058d74e757bd	f	2020-05-26 13:42:28+00	2020-05-26 13:42:28+00	\N
4431	60	Lea zyra	Ixelles	Etudiante	ULB	d5b74368958dc0d83f604635025c0798	t	2020-05-26 14:17:03+00	2020-05-31 16:12:34+00	\N
4436	60	Lucie Lapointe	1030	\N	\N	27536de590fff92c534eccd1eb3a8d2f	t	2020-05-26 14:33:16+00	2020-05-26 14:34:44+00	\N
4419	61	Ewa Feret	Sint Gilles	\N	\N	5bab3dbd65b64b172525e63495d6b425	t	2020-05-26 13:45:47+00	2020-05-26 13:46:17+00	\N
4437	60	Raoui yamina	Bruxelles	\N	\N	8fddcac927de76afebbe7d283f14939b	f	2020-05-26 14:36:04+00	2020-05-26 14:36:05+00	\N
4420	61	Flora	Brussel	1081	\N	21b2ba25eab3e57a72e1caaf297c1b47	t	2020-05-26 13:46:42+00	2020-05-26 13:47:05+00	\N
4387	61	Pepijn Kennis	Brussels	\N	\N	f1f023077c5747f62c3a78b53bbccfe4	t	2020-05-26 12:41:15+00	2020-05-26 13:47:45+00	\N
5368	60	guus	\N	\N	\N	f028a36bed067c9fa0c9190643064f63	t	2020-06-01 11:42:36+00	2020-06-01 12:14:26+00	\N
4421	60	le Beau de Hemricourt	Schaerbeek	\N	\N	8a39d1a04a9f2dfac3d675b2cddad6e1	t	2020-05-26 13:52:17+00	2020-05-26 13:52:38+00	\N
4418	61	Leen Boersma	Molenbeek	Midwife	Doctors Without Borders	a672c45a1731c8e30b236d7b45eb91d0	t	2020-05-26 13:44:49+00	2020-05-26 13:53:07+00	\N
4424	61	Monika	Bruxelles	\N	\N	bacb9a11a1a297df171dc8040b7d8f86	f	2020-05-26 13:57:42+00	2020-05-26 13:57:43+00	\N
4422	60	angelo	uccle	\N	\N	3ebcd66cb3d80991f22f3540127bcffc	t	2020-05-26 13:56:28+00	2020-05-26 13:57:54+00	\N
4425	61	Pawel Lisiak	Brussels	\N	\N	4aa4328d278fbc775b6d34784cbd9960	t	2020-05-26 13:59:11+00	2020-05-26 13:59:38+00	\N
4426	60	Thomas Grailet	Schaerbeek	Comptable 	\N	89a6a360e8cb10d72477883c51240972	f	2020-05-26 14:03:03+00	2020-05-26 14:03:03+00	\N
4439	60	Karel Deneckere	Elsene	onderzoeker	VUB	795122c07eb6e4572e393ab3e8a921f0	f	2020-05-26 14:39:16+00	2020-05-26 14:39:17+00	\N
4427	60	patricia tancredi	Woluwé St-Lambert	employée	\N	640d3676a3c671b08c27146dea1e058d	t	2020-05-26 14:05:44+00	2020-05-26 14:06:12+00	\N
4435	60	Alex	Bruxelles	\N	\N	b1e6c6a6389a33b7da0bb85f666055ed	t	2020-05-26 14:28:28+00	2020-05-26 14:42:32+00	\N
4428	60	Miguel Rosal Martins	Bruxelles 	\N	\N	c668ad6df1fd91c97add44ad1729546d	t	2020-05-26 14:11:05+00	2020-05-26 14:11:23+00	\N
4430	61	James Armstrong	Schaerbeek	Project Assistant	European Cyclists' Federation	f9ccb469ec889546be61e33fda85ce1c	f	2020-05-26 14:14:39+00	2020-05-26 14:14:39+00	\N
4429	60	Samantha Zamora 	Woluwe-Saint-Lambert	Conseillère communale 	1971	6b48ba6fb8eb7433f2a5def128bf45af	t	2020-05-26 14:12:54+00	2020-05-26 14:15:24+00	\N
4451	62	Luc Demol	Anderlecht	\N	\N	12762cd79dacab4dde1a0e275b837b40	f	2020-05-26 15:26:56+00	2020-05-26 15:26:57+00	\N
4432	60	Clément Bourtembourg	Bruxelles	Employé	\N	417dce8f075ec5abd1eb0dcd1b35fcb8	t	2020-05-26 14:19:14+00	2020-05-26 14:22:43+00	\N
4438	62	Luc ooms	Ganshoren 	Zelfstandoge	\N	ee1dcb923e7c63e96e4ff5bf98f416c1	t	2020-05-26 14:39:09+00	2020-05-27 08:21:14+00	\N
4433	62	Anaïs De Keijser	Brussel	Stedenbouwkundige	Sweco	7994ed0e1a7c80e4c79032a646c6ca0f	t	2020-05-26 14:25:05+00	2020-05-26 14:27:06+00	\N
4434	62	Eli	Sint-jans-molenbeek 	\N	\N	9d8f46be9f6fc9083efaa417b776024d	t	2020-05-26 14:26:59+00	2020-05-26 14:27:30+00	\N
4452	61	Benjamin Feyen	Ixelles	\N	\N	8e17c5b32968f76c3688e85c816201e8	f	2020-05-26 15:28:31+00	2020-05-26 15:28:31+00	\N
4442	60	Unai Herencia	Etterbeek	\N	\N	6de819a5108cee7f22edafb24f6dea86	t	2020-05-26 14:52:54+00	2020-05-26 14:54:34+00	\N
4444	61	Johanna Lindner	Schaerbeek	Employee	\N	f5c9dff08c3074f435a7bd3aeecc205c	f	2020-05-26 15:00:54+00	2020-05-26 15:01:00+00	\N
4447	60	Ella Martens	Laken	Bibliotheekmedewerker	\N	55545eeb0d9ed59faa9a93e8d57efb94	f	2020-05-26 15:02:42+00	2020-05-26 15:02:42+00	\N
4423	60	Pamela Cecchi 	Bruxelles	\N	\N	18f5b4bac75298b98d9f0a8a8b24a94d	t	2020-05-26 13:57:17+00	2020-05-26 15:06:06+00	\N
4448	62	Chiene Peeters	Brussel	Vroedvrouw	Wheel of care	6cb1a7e79f1e1eb977cc34d95e3a02d1	f	2020-05-26 15:07:19+00	2020-05-26 15:07:19+00	\N
4440	60	Valérie De Hoe	Bruxelles 	\N	valdehoe@yahoo.fr	67dfc2712a69127d6486523439f92a7c	t	2020-05-26 14:42:56+00	2020-05-26 15:09:04+00	\N
4446	60	Jerome Lagae	bruxelles	\N	\N	e22e796277a40791dcf4efe1298edc1b	t	2020-05-26 15:02:24+00	2020-05-26 15:10:05+00	\N
4449	64	Testing	\N	\N	\N	7d3eddcc73b53d26cbc26193260373d7	f	2020-05-26 15:17:32+00	2020-05-26 15:17:33+00	\N
4461	62	Paul Van Santvoort	Molenbeek	Gepensioneerde	\N	433c6d4d4517026fcc3fb30373735024	t	2020-05-26 15:49:55+00	2020-05-26 15:50:49+00	paulvs137@gmail.com
4453	62	Koen Theunis	Sint-Gillis	\N	\N	80d8defda8793aeb4bb0d26d98ae6790	f	2020-05-26 15:28:43+00	2020-05-26 15:28:43+00	\N
4454	60	Pilar Martin Pitto	Bruxelles	\N	\N	a78d237db2ecede3cc9c2165fcd3e8ae	t	2020-05-26 15:32:23+00	2020-05-26 15:36:11+00	pmartinpitto@gmail.com
4457	60	Louise Moreau	\N	Etudiante	\N	2da97372ad0e9c0f381d4ed9e834652b	t	2020-05-26 15:38:31+00	2020-05-26 15:39:09+00	\N
4458	62	SarahVK	Brussel	\N	\N	b3168788c654f08d0284285abb878c27	f	2020-05-26 15:43:26+00	2020-05-26 15:43:26+00	\N
4459	61	Giorgia Morero	Bruxelles	\N	\N	4264b19c524044c9c605ff5543d527af	f	2020-05-26 15:44:15+00	2020-05-26 15:44:15+00	gmorero@hotmail.com
4460	62	dorien vanden boer	Schaarbeek	\N	\N	ba59fe1437b73c3439c8463adeb32be7	t	2020-05-26 15:44:29+00	2020-05-26 15:44:46+00	\N
4462	60	Caroline Lagrange	1560 Hoeilaart	\N	\N	b0a0956eaa7706d7232a4a8379350701	t	2020-05-26 15:50:57+00	2020-05-26 15:51:12+00	\N
4465	61	Iga	Schaarbeek	Employe	\N	8845bb6415a82abf18936d51c118aada	t	2020-05-26 15:58:12+00	2020-05-26 15:59:27+00	iguniaw4@interia.pl
4463	60	Nicolas Dartiailh	Forest	Photographe	\N	9a3c72448eda5c8465abf6ed7d52489e	t	2020-05-26 15:54:36+00	2020-05-26 15:55:18+00	\N
4464	62	Cleo De Wolf	Laken	\N	\N	9b67e7acc4e70aa54b32604c44b1dcdd	t	2020-05-26 15:57:06+00	2020-05-26 15:57:32+00	\N
4441	61	Greet	Brussels	\N	\N	3170d6dcec32789529775615cdf6fb55	t	2020-05-26 14:45:11+00	2020-05-26 19:12:28+00	\N
4470	60	Shiho Nishimura 	Bruxelles 	\N	\N	117e02eebf64b3fe72e3b5d3bbf5ab94	f	2020-05-26 16:06:09+00	2020-05-26 16:06:09+00	\N
4468	61	Katarzyna Szkuta	Etterbeek	researcher, analyst	\N	743642bde5ba1d4a835ec9aaee0c4138	t	2020-05-26 16:01:35+00	2020-05-26 16:06:02+00	\N
4469	62	Smits deborah	Mechelen	Hulpopvoeder	\N	a25c6812e4a22cc27adc459e1d2ff4cd	t	2020-05-26 16:03:48+00	2020-05-26 16:08:31+00	\N
4471	61	Mimi Kunz	brussels	artist	\N	4aca3bf4193823d53244834381050886	t	2020-05-26 16:09:44+00	2020-05-26 16:09:57+00	2mimikunz@gmail.com
4472	62	Baert lia	Brugge	Pensioen	Welzijnsschakel	8e3b26c8ef7870d174843d736cb12d1b	f	2020-05-26 16:10:11+00	2020-05-26 16:10:11+00	\N
4473	62	Pieter Torbeyns 	Schaarbeek 	Sociaal werker	De harmonie 	ed892b8596ee68ada87e650c0346cc7d	f	2020-05-26 16:11:14+00	2020-05-26 16:11:14+00	\N
4443	61	Louise Vanderlinden	Brussel	Architect	51N4E	925d632fe58e98924b4770e7d5afe4d1	t	2020-05-26 14:57:00+00	2020-05-26 16:11:50+00	\N
4456	62	David Briers	St Gilles	 	\N	ba7c2f32a536143e5375f02601aa43fe	t	2020-05-26 15:35:47+00	2020-05-26 18:29:02+00	briersdavid3@gmail.com
4475	62	Chloé Van Soest	Anderlecht	\N	\N	203c044913818e200a6ed732d075b7a6	t	2020-05-26 16:12:43+00	2020-05-26 16:13:00+00	chloe.van.soest@gmail.com
4466	62	Marieke Arnou	Sint Agatha Berchem	\N	\N	327571e8ad734ca4516cf2e0924291e8	t	2020-05-26 16:01:28+00	2020-05-26 18:39:05+00	\N
4476	61	Marthe	Brussels	\N	\N	5b08777f942ac0c9e1ea7143ffd6dcea	t	2020-05-26 16:13:18+00	2020-05-26 16:13:40+00	\N
4474	62	Sander Nelen	Brussel	Teacher	\N	9d61fb3bb5db000afb8a3462a9435ac2	t	2020-05-26 16:12:31+00	2020-05-26 16:14:06+00	\N
4863	59	Javier	Brussel	Bediende	REPER	d3798eb8bec39128ea1875de88b62b15	f	2020-05-27 22:24:14+00	2020-05-27 22:24:14+00	\N
4477	60	Marta	1040 Bruxelles 	Avocat	Milieu	66930e2df685f3848b4c30e06a4ad153	t	2020-05-26 16:15:11+00	2020-05-26 16:15:53+00	\N
4503	61	Celia Nyssens	Bruxelles	employée	EEB	45a9a2d33ae630442adfba5b7c82d914	t	2020-05-26 17:14:47+00	2020-05-28 10:40:09+00	celia_nyss@hotmail.com
4513	60	Valeria	1040	\N	\N	4b415ff39ad15085b81857ea172086fa	t	2020-05-26 18:07:53+00	2020-05-26 20:19:28+00	\N
4486	62	Louis Verstraete	Brussel	Met pensioen	\N	d5a49866d82dacdf0c80ee00a1bf6fa4	t	2020-05-26 16:40:13+00	2020-05-28 16:00:58+00	fa628831@skynet.be
4500	61	Barbara Steffner	Bruxelles	\N	\N	af8222fa5aa352971964762b4c02dbe8	f	2020-05-26 17:04:02+00	2020-05-26 17:04:03+00	\N
4481	62	Matthias Brantegem 	Sint-Jans-Molenbeek	Bediende	\N	a3da0f02beb17ea7ee7918b6f1ca3c7a	f	2020-05-26 16:19:21+00	2020-05-26 16:19:21+00	\N
4478	61	Zsuzsanna Pal	Molenbeek Saint-Jean	Freelancer	\N	d728d11675d2e4359a1e3f3a3bcb9171	t	2020-05-26 16:15:55+00	2020-05-26 16:20:11+00	pal_zsuzsanna2000@yahoo.com
4480	60	Léone Huyghebaert 	Overijse 	Student	KUL	86866ac89329de0d690df1d114d8e324	t	2020-05-26 16:19:02+00	2020-05-26 16:20:25+00	\N
4482	62	Wietse Vanophalvens	Brussel	Student 	1997	c986d9ea75c24d1c303f0a1ca75e6cea	f	2020-05-26 16:27:36+00	2020-05-26 16:27:36+00	\N
4484	60	Hugo Matagne	Bruxelles	\N	\N	ea300e34d4f95f17387a23b3e13e9901	t	2020-05-26 16:34:27+00	2020-05-26 16:34:46+00	\N
4485	61	Emma Pauwels	Brussels/Leuven	Student 	\N	615a98cc25b4b2686c4cf3fc4d1760ca	t	2020-05-26 16:39:45+00	2020-05-26 16:41:46+00	miss.emmapauwels@gmail.com
4483	62	isabel van maele	Anderlecht	netwerkondersteuner	Huis van het Kind - Ket in Brussel	50dd8c317d6b77a5cbe06459b8a22d18	t	2020-05-26 16:32:53+00	2020-05-26 16:42:30+00	\N
4487	60	Pierre	Bruxelles	\N	\N	342b34b82f53dad34be201f85dad2592	f	2020-05-26 16:43:24+00	2020-05-26 16:43:25+00	\N
4501	61	Branislav Andel	Sint-Joost-ten-Node	\N	\N	6063c9960d4db2ce36f38a4cccfc533a	t	2020-05-26 17:08:49+00	2020-05-26 17:09:18+00	\N
4488	62	Helga Baert	Brussel	artistiek coordinator	\N	69663ee96c62b26b3dad37de34da629b	t	2020-05-26 16:43:47+00	2020-05-26 16:44:24+00	\N
4489	60	Ouardia Derriche	Bruxelles	\N	\N	caa22f94d2b19d2368cdfddd24738fa1	t	2020-05-26 16:46:52+00	2020-05-26 16:47:48+00	ouardia.derriche@gmail.com
4491	60	vanessa barnich	bruxelles	\N	\N	064818d08f5476f43b8c57a3658e831e	f	2020-05-26 16:48:02+00	2020-05-26 16:48:02+00	vaness126@hotmail.com
4492	60	Matteo Barisione	Bruxelles	\N	\N	3105b9ea82e1ed5db8145435acc99989	t	2020-05-26 16:48:25+00	2020-05-26 16:48:47+00	\N
4490	60	Blandine Malvault	Brussels 	\N	\N	8f638de211f887a22cc9f4361de58e84	t	2020-05-26 16:47:56+00	2020-05-26 16:50:29+00	blandinemalvault@hotmail.fr
4494	60	de Henau	Alsemberg 	Enseignants 	\N	4c2688a5c6187f9bca4527c24f45e517	f	2020-05-26 16:51:33+00	2020-05-26 16:51:33+00	dhyannick@hotmail.com
4493	60	Dupas 	Schaerbeek 	\N	\N	807973c601e327710504fea5cb650178	t	2020-05-26 16:51:21+00	2020-05-26 16:51:42+00	jul.dupas@gmail.com
4495	61	YUNXIA	Brussels 	Supply chain manager	Inspectron Sprl	c188ad4342dae64be191b11da0ce5ee6	t	2020-05-26 16:52:50+00	2020-05-26 16:53:17+00	emilypan1989@163.com
4502	61	Florian Boniface	Ixelles	biker	\N	45cb3ebb5918d3e4b5772333bdb35b51	t	2020-05-26 17:13:29+00	2020-05-26 17:13:53+00	flrnbnfc@gmail.com
4497	60	Sophie Girard-Sequeira	Schaerbeek	\N	\N	7cfa84803e14f0ee0daf8517ff202bd5	t	2020-05-26 16:55:12+00	2020-05-26 16:55:28+00	\N
4496	61	Anoniem	Brussel	\N	\N	cffc30d8729af77739c6a44cc8c30022	t	2020-05-26 16:55:06+00	2020-05-26 16:55:40+00	runacresclaire@gmail.com
4498	61	Mirka Lankamp	Jette	interpreter	\N	3ee56aeb9f738465ecb498970149a5ff	t	2020-05-26 17:00:21+00	2020-05-26 17:02:15+00	mlankamp03@gmail.com
4499	62	Carol Laurent 	\N	Bruxelles	\N	bc3acfbc6768bd849f914aff1a4cfd0f	t	2020-05-26 17:03:00+00	2020-05-26 17:03:39+00	\N
4504	61	Federico Pedrini	Vorst	Couch Surfer	🏄‍♀️ 	012d9f9260683e3b8bf41de845412fd1	t	2020-05-26 17:26:01+00	2020-05-26 17:26:44+00	federicopedrini@gmail.com
4505	60	Vanessa Tanghe	Forest	Urbaniste 	\N	81ddf591a2efd2fd8fac63226f37a570	t	2020-05-26 17:26:41+00	2020-05-26 17:27:23+00	vatanghe@gmail.com
4522	61	Eadaoin Golden	Woluwe-Saint-Lambert 	\N	\N	c85596bd2a305c0db42833b7a375e132	t	2020-05-26 18:32:24+00	2020-05-26 20:22:17+00	\N
4506	60	Joachim	Bruxelles	Kiné	Somers	fa903bba06b9d6f18106e1b899e51316	t	2020-05-26 17:34:33+00	2020-05-26 17:35:01+00	\N
4507	60	Silvia Rodriguez	1060	Artiste	\N	d4a3b0a1f8b7ff200f754d8cd3387175	f	2020-05-26 17:39:25+00	2020-05-26 17:39:25+00	rodriguezsylvie@homail.com
4508	60	Duquenoy	Bruxelles	\N	\N	7574a39a2d086a6d9a55c902df5a72b7	t	2020-05-26 17:43:20+00	2020-05-26 17:44:26+00	\N
4521	61	An Truyts	Brussels	\N	\N	514929b74b06c7c278bade47c2433685	t	2020-05-26 18:30:06+00	2020-05-26 18:30:59+00	antruyts@gmail.com
4509	61	ellen van keer	laken	mother-of-2	\N	ca405fea6e34107326ccdb98a3f5823f	t	2020-05-26 17:44:29+00	2020-05-26 17:45:32+00	\N
4514	62	Klaas Annys	Gent	\N	\N	598842793736d068f3e03787eae20c86	t	2020-05-26 18:12:09+00	2020-05-26 18:12:41+00	\N
4510	60	Gaëlle Francart	Bruxelles	\N	\N	ae46c04364b3e337040c342836ebb1c3	t	2020-05-26 17:56:27+00	2020-05-26 17:57:01+00	\N
4511	62	Lukas C	Schaarbeek	\N	\N	d023447f8326b67e984702522e57d419	t	2020-05-26 17:58:56+00	2020-05-26 17:59:43+00	\N
4512	60	Isabelle soille	Bruxelles 	\N	\N	4ee4c38b5b361d62e784a2f62cee2c72	f	2020-05-26 18:02:05+00	2020-05-26 18:02:05+00	zabiku@hotmail.com
4515	60	Maerevoet	Limal	Md	\N	a5145c0219efe3f2ae4bf08820c5150e	f	2020-05-26 18:19:55+00	2020-05-26 18:19:56+00	\N
4516	62	Charlotte Vandevyver	Anderlecht	\N	\N	be65e537ffab218bcd6dc2ea88adb2cd	t	2020-05-26 18:21:26+00	2020-05-26 18:21:49+00	charlotte.vandevyver@gmail.com
4519	60	Ransquin cath	1170	\N	\N	c1acae61eabe4ed5b72ca3d0a25e9332	t	2020-05-26 18:23:13+00	2020-05-26 18:23:59+00	cransquin@gmail.com
4520	62	Louella Van Oprooy	Turnhout 	Leerkracht 	\N	dab1e704520dfb4c959932551c5004c3	t	2020-05-26 18:29:52+00	2020-05-26 18:31:22+00	loeke_1@hotmail.com
4523	60	maxim bedo	Schaerbeek	\N	maximbedo@gmail.com	d2f5ff9849e60310e948365071f93632	t	2020-05-26 18:38:48+00	2020-05-27 10:47:20+00	maximbedo@gmail.com
4525	60	Sandra Ramos	Forest	\N	\N	ad952310998ee7e9f28f869512fe4ee9	t	2020-05-26 18:43:03+00	2020-05-26 18:43:18+00	\N
4526	61	Susanne Pauer	Woluwe-Saint-Lambert 	\N	\N	7d1fc1f367c1f975a807bddc898fc61e	f	2020-05-26 18:44:10+00	2020-05-26 18:44:10+00	\N
4527	60	Vanja d’Alcantara	Forest	\N	\N	37bf0a570c853a748536211f06f6706a	f	2020-05-26 18:56:30+00	2020-05-26 18:56:30+00	\N
4528	60	DELVIGNE, Ghislaine	Bruxelles	retraitée volontaire	toutes sociales!	2664202df3a5908bcaa050fc52b45965	t	2020-05-26 18:59:59+00	2020-05-26 19:00:39+00	\N
4531	62	Lore bocken	Brussel	Ambtenaar	geen	1a7347d48db8051f4151cdf2a25f34c5	t	2020-05-26 19:04:09+00	2020-05-26 19:04:41+00	lore.bocken@gmail.com
4530	61	liesl vanautgaerden	brussel	expert 	flemish government	5d53b277aa83f5525838a6a493b4a3d4	t	2020-05-26 19:02:26+00	2020-05-26 19:04:02+00	lieslvanautgaerden@hotmail.com
4529	62	katrien Moeys	Sint-Gillis	Ingenieur	\N	306e9ee2aea1f13dcfcc0bd9cc1ebdfa	t	2020-05-26 19:01:32+00	2020-05-26 19:04:35+00	\N
4532	61	Ildiko Antal	Kraainem	psychologist 	\N	3abca2299f1606866e9a359f6c7cb06f	f	2020-05-26 19:05:29+00	2020-05-26 19:05:29+00	\N
4479	62	sofie verraest	brussels	docent	\N	c329ea232ab0d61a53e1530bc69dc7f9	t	2020-05-26 16:16:47+00	2020-05-26 19:51:38+00	\N
4542	61	Sam Peat	Brussels	Actuary	\N	e5b78ba56ef60cf8138724610f969612	t	2020-05-26 19:43:20+00	2020-05-27 19:11:12+00	gingerguitarist@hotmail.co.uk
4533	62	Herman van Laar	Brussel	Zelfstandig e	\N	d008e654cf6ba658b146c9459016de72	t	2020-05-26 19:06:39+00	2020-05-26 19:16:38+00	\N
4547	62	Vincent Piessevaux 	Schaarbeek 	Jurist	\N	90fd5b75d57dd8d4b189b0084fdef21a	t	2020-05-26 19:54:15+00	2020-05-27 20:08:45+00	vincent.piessevaux@gmail.com
4560	60	Laurent Durviaux 	\N	\N	\N	f1e9da6d54158feaef8988bc9fc702ac	t	2020-05-26 20:17:17+00	2020-05-26 20:18:24+00	durviauxl@gmail.com
4864	60	Charles Sibille	1970	Médecin 	\N	49c5f01380afc775e20ea35810db1376	f	2020-05-27 22:32:16+00	2020-05-27 22:32:17+00	\N
4534	61	Alison coleman	Brussels	Manager	Seefar	ed51b192effe8344b9efb61e63fbbe3c	t	2020-05-26 19:21:38+00	2020-05-26 19:23:41+00	\N
4552	60	Arne Smeets	Ganshoren	\N	\N	b459557a572a3a88d39fa5a40289c824	t	2020-05-26 20:01:02+00	2020-05-28 15:34:41+00	\N
4553	61	Julia Lietzmann	Bruxelles	\N	\N	8c6f3ed26b5677c792953e867fe49e92	t	2020-05-26 20:01:27+00	2020-05-26 20:18:26+00	\N
4536	60	Chloé D	Evere	Employé	/	e286c42e80cbe38c8c9ea672b350163f	t	2020-05-26 19:25:50+00	2020-05-26 19:26:37+00	\N
4535	60	Renaud Delville	Bruxelles	\N	\N	0ac41ce3d45782f0d4f0fae4656fca11	t	2020-05-26 19:22:37+00	2020-05-26 19:27:56+00	renaud.delville@skynet.be
4551	62	Jan wijers	1030	\N	\N	93ab85859be2bf41ba07d651a7d57382	t	2020-05-26 19:59:32+00	2020-05-31 20:07:38+00	\N
4591	61	Arno Vervaet	Sint-Jans-Molenbeek	Ingenieur	\N	8cbb007994585da24bc3d2f7c6d36a56	t	2020-05-26 22:22:59+00	2020-05-27 13:30:00+00	\N
4544	60	Ive Stevenheydens 	1030	\N	\N	49194231dc17294beed3e374089c03ca	f	2020-05-26 19:47:19+00	2020-05-26 19:47:19+00	istevenheydens@hotmail.com
4590	62	Theo Delville	Brussel	Skate	L.O.C.O.W	74dcb0fa55451b5712c6467e2bbf1296	t	2020-05-26 21:59:35+00	2020-05-27 07:39:34+00	\N
4561	62	Silke	Anderlecht	\N	\N	7a14f77c6144c1aaf3cd0e2edb310d1a	f	2020-05-26 20:19:17+00	2020-05-26 20:19:18+00	\N
4545	60	Baar	Bruxelles	Accompagnatrice sociale	Maison Babel	976f0b5958464d5a7e0e2ee65ceeda52	t	2020-05-26 19:51:32+00	2020-05-26 19:54:34+00	\N
4548	62	Filip Libert	Schaerbeek	\N	\N	b4bea38360539200639b519a64af78db	t	2020-05-26 19:54:32+00	2020-05-26 19:55:25+00	\N
4549	62	Benny 	Schaarbeek	\N	\N	afc5f8679e3d7108cbfcfed393f61b69	t	2020-05-26 19:55:37+00	2020-05-26 19:56:02+00	\N
4550	61	Tom Cnop	Oudergem	Engineer	1974	c20f7dccdb17b4967624deeac530641e	t	2020-05-26 19:57:15+00	2020-05-26 19:57:36+00	\N
4588	62	Veerle	Jette	\N	\N	ad876a6ebe367e702759f355bdaba0a9	t	2020-05-26 21:41:04+00	2020-05-27 10:22:00+00	\N
4563	60	Jean Van den Eynde	Bruxelles	Consultant 	Russell Reynolds Associates	53445ca458e5fee0f9e3af6a9f3c474e	f	2020-05-26 20:21:56+00	2020-05-26 20:21:56+00	\N
4554	60	Wullus Sylvie	Woluwe St Lambrechts	\N	\N	ead6979db4c83d78e3e841d12ee976ec	t	2020-05-26 20:06:07+00	2020-05-26 20:06:36+00	\N
4555	62	Valérie Berckmans	Brussel	styliste	www.valerieberckmans.be	f0edbe080a09158a75ee2f860313dba9	t	2020-05-26 20:08:30+00	2020-05-26 20:08:47+00	info@valerieberckmans.be
4562	62	Lea David	Schaarbeek 	\N	\N	1435efe0ab5fe1e2113b02e48ab43174	t	2020-05-26 20:21:48+00	2020-05-26 20:22:37+00	lea.david@telenet.be
4557	60	Eric Ch	Bxl	1170	\N	622174a239e8547042d7e3414e0d7ce8	t	2020-05-26 20:12:57+00	2020-05-26 20:13:36+00	\N
4558	62	Marieke Kruis	Sint-Gillis	\N	\N	a88f8e48c97ffe24baa78d7dcb232b37	t	2020-05-26 20:14:43+00	2020-05-26 20:15:03+00	mariekekruis@gmail.com
4559	60	Jean-Michel L.	1190	\N	\N	6dae00a853f5e592768752118b5ef277	t	2020-05-26 20:15:08+00	2020-05-26 20:15:40+00	\N
4564	60	Pierre Verstraete	Woluwe StLambert	Employé	\N	733b7ecbf648b3136f1ccc98c02dc4ff	t	2020-05-26 20:24:41+00	2020-05-26 20:25:06+00	\N
4574	62	Koen Schollen	Schaarbeek	\N	\N	298b35a2ff847c05b634a604b37cdb90	t	2020-05-26 21:04:07+00	2020-05-26 21:05:21+00	koenschollen@gmail.com
4566	60	Axel Langiano	Ixelles	\N	\N	638a568e113c412efa82b4a860bce0c3	t	2020-05-26 20:26:51+00	2020-05-26 20:27:22+00	\N
4575	60	Boulabarj fatiha	Anderlecht	chomage	kairos	50b9797b83b1db3a985c7bc2c97762cb	f	2020-05-26 21:05:49+00	2020-05-26 21:05:49+00	minanefatiha@hotmail.com
4567	60	Nicolas Auzanneau	1030	\N	\N	0d43bb663bd46508929d2900d3fce228	t	2020-05-26 20:29:33+00	2020-05-26 20:30:32+00	\N
4568	60	nils gilot	saint gilles	étudiant	\N	90fd02e29aba025de84e7b0ca0a1a162	t	2020-05-26 20:39:14+00	2020-05-26 20:39:32+00	\N
4570	62	Kathleen Coessens	Brussel - Haren	\N	Koninklijk Conservatorium Brussel	d488b9fe07081b7f25d6b93db89602a5	f	2020-05-26 20:44:37+00	2020-05-26 20:44:37+00	katmamtak@gmail.com
4569	60	Guy Cailloux	1030 Schaerbeek	retraité	\N	41521fd4be38e4f586bbf97acf6ec19b	t	2020-05-26 20:40:33+00	2020-05-26 20:49:01+00	\N
4571	60	Anthea Missy	Bruxelles	Artist	Anthea Missy	acfef854da9fddea53e7ec0e77364293	t	2020-05-26 20:53:59+00	2020-05-26 20:55:55+00	anthea.missy@gmail.com
4556	60	Pauline Mersch	Watermael-Boitsfort	\N	\N	ad631c17b7b98a14b888ba346cbfab0b	t	2020-05-26 20:09:50+00	2020-05-27 08:25:32+00	popo.mersch@hotmail.com
4576	62	Karen Verlinden	Anderlecht	\N	\N	a89b36990ceaa8223b9a0ba46275b41d	t	2020-05-26 21:16:11+00	2020-05-26 21:16:57+00	\N
4543	60	L'Ecluse Hilda	Bruxelles	Retraitée	\N	10c47877239b71e0e9d7dea9205326f1	t	2020-05-26 19:45:08+00	2020-05-27 12:26:57+00	\N
4577	62	Katrien van Remortel	Koekelberg	\N	\N	71644f6ccb3ea4b726f5ab206c81717d	t	2020-05-26 21:18:28+00	2020-05-26 21:18:52+00	\N
4578	62	Marianne 	 Brussel 	Zelfstandige 	\N	ea0409fafb1021bc21c19b8dab24b69b	f	2020-05-26 21:21:50+00	2020-05-26 21:21:50+00	marianne.geervliet@hotmail.com
4579	61	 Hannah	Brussels	\N	\N	8f379ef226ab0eb6142d8a0bf399ec97	f	2020-05-26 21:26:03+00	2020-05-26 21:26:03+00	\N
4580	60	Véronique Laurent	Forest	Employée	\N	615dfa948cade82c41553db7510dfa50	f	2020-05-26 21:29:21+00	2020-05-26 21:29:21+00	erolaurent@hotmail.com
4585	61	Ben	Brussels	Architect	\N	2072c02129554e53556e4007607049b9	t	2020-05-26 21:32:11+00	2020-05-26 21:32:51+00	\N
4581	60	Julio Sanchez	Jette	\N	\N	1a17f0cc3dd797d83a0e9d396fe106cf	t	2020-05-26 21:29:48+00	2020-05-26 21:30:53+00	\N
4582	60	Colpaert Dominique	Bruxelles 	\N	\N	776251bcade2e2a072b1b1964281dd8f	t	2020-05-26 21:29:57+00	2020-05-26 21:31:02+00	\N
4584	61	Virginie Jennar	Bruxelles 	Employee	\N	7db2dfdb3557c3a26316bf6bf3912568	f	2020-05-26 21:31:20+00	2020-05-26 21:31:20+00	\N
4583	62	judith tobac	1080	bediende	\N	5a10de9619b75d899312970ad9536a99	t	2020-05-26 21:30:49+00	2020-05-26 21:32:45+00	\N
4587	62	Veerle	Jette	\N	\N	a17e6fce538b0cb9f1df54161721d005	f	2020-05-26 21:40:12+00	2020-05-26 21:40:13+00	\N
4572	61	Olga Kummer	UCCLE	Project manager	Self-employed	2c4da2ee04c6f40fc1d9d860622c1f99	t	2020-05-26 21:00:23+00	2020-05-27 08:00:53+00	\N
4589	61	Simon Decat	1030	student	\N	ae0677895dea79141fd7860c0faeab9a	t	2020-05-26 21:41:21+00	2020-05-27 07:46:17+00	\N
4593	60	Simon Hallet 	Bruxelles	Employe	\N	f6112f86a13cf4fd931c1149a301b272	t	2020-05-26 22:38:31+00	2020-05-26 22:38:53+00	hallet.s@gmail.com
4594	62	Robin Van Hoovels 	Leuven 	\N	Cities By Bike 	dbb4d14917c1dd2a6b2bf8cd1800b1d6	f	2020-05-26 23:01:38+00	2020-05-26 23:01:38+00	robinvanhoovels@hotmail.com
4595	62	Gilles 	1080	Employer	Keolis	24e1fcb5f1e2601d8a8ab2e02146db65	f	2020-05-27 00:04:53+00	2020-05-27 00:04:53+00	\N
4596	62	Bart Maras	Schaarbeek	\N	\N	677d8d18b0496be4a962f0d3e25bed65	t	2020-05-27 00:42:49+00	2020-05-27 00:43:41+00	\N
4546	61	Jens V.	Molenbeek	Consultant	\N	3dd9c9aeb6cd5ef7303265d4dc3141c2	t	2020-05-26 19:53:55+00	2020-05-27 07:22:27+00	\N
4573	62	Danielle De Meuter	itterbeek	Pensioen 	\N	7aa9eb863e1a37a0e14947b39c91972c	t	2020-05-26 21:01:26+00	2020-05-27 10:00:22+00	\N
4650	61	Carlotta Weber	Uccle	\N	\N	a2acc2a6a829334cef19473fa9b28398	t	2020-05-27 07:21:27+00	2020-05-27 17:45:04+00	\N
4597	60	Marie-Eve Van Linthoudt	Bruxelles	 	\N	ebe8b993d4ee4d6bd50c8e577bf5ecca	t	2020-05-27 01:08:08+00	2020-05-27 01:09:13+00	\N
4598	61	Sean Maddens	Brussels	Nurse	UZ Brussel	76b36c5272b19a48782af8468dae84c9	f	2020-05-27 03:00:01+00	2020-05-27 03:00:01+00	sean.maddens@outlook.com
4592	61	Maria Casado	Saint Gilles	\N	\N	3cb89759212c556250c81384150de9b0	t	2020-05-26 22:27:24+00	2020-05-27 03:11:14+00	casado_maria@yahoo.es
4865	60	Isabelle Van De Woestyne	Bruxelles	1160	\N	3c6ff662e9d8a72e01d61ff79efbeb40	t	2020-05-27 22:32:52+00	2020-05-28 20:24:56+00	vdwisabelle@yahoo.fr
4645	60	Fanny Mayné	Uccle	\N	\N	3972c5234b57286cf3f35c567126667d	t	2020-05-27 07:08:42+00	2020-05-29 13:05:03+00	\N
4617	60	Julien	Schaerbeek	Employé	\N	18a03cdef96df52ea4775a0867541be6	t	2020-05-27 06:13:05+00	2020-06-01 15:53:57+00	\N
4600	62	Marijke Robert	Anderlecht	Dierenartsassistente	1997	4a4b5d4d297ca8e66767110be10f3e5a	t	2020-05-27 04:36:24+00	2020-05-27 04:37:34+00	\N
4621	61	Anna nelissen	Elsene	\N	\N	f4df285142e0229c42d5f618d63d9e4e	t	2020-05-27 06:22:13+00	2020-05-27 06:23:22+00	\N
4601	60	They Mathilde 	Bruxelles 	\N	\N	f3ac44049c71c220695f3ce68f5aefb7	t	2020-05-27 04:47:33+00	2020-05-27 04:48:04+00	\N
4602	60	Nathalie Peeters	Bruxelles	\N	\N	793dca6c57e1d18ad54f5f73cb8b44e3	t	2020-05-27 05:01:02+00	2020-05-27 05:09:18+00	\N
4605	61	Sandra Pasqual	Bruxelles	Employee	\N	aaa142d14b90f6a7bdebf1d99028696f	f	2020-05-27 05:25:11+00	2020-05-27 05:25:11+00	sp10177@gmail.com
4622	62	Liselotte	Brussel	student	\N	e1d70f114eef832ba849165a75bb1db4	f	2020-05-27 06:23:55+00	2020-05-27 06:23:55+00	\N
4606	62	Fien Vandersteen	Brussel	Burgerlijk Ingenieur Architect	\N	b0102198916fb5377dfbd19aa75bdbe4	t	2020-05-27 05:38:12+00	2020-05-27 05:38:33+00	\N
4607	61	Maria galewska 	Saint gilles	Administration 	\N	55e35b47ae547073681843021e1dd989	f	2020-05-27 05:44:00+00	2020-05-27 05:44:01+00	\N
4609	60	Becker	 Bruxelles 	1000	Habitante	16cf73f050c9b61958dde91dbe455084	t	2020-05-27 05:52:30+00	2020-05-27 05:53:08+00	nathaliebecker001@gmail.com
4642	60	Sophie Delerue	Bruxelles	\N	\N	69a60a7499b4cdf728444109c070f440	t	2020-05-27 07:07:20+00	2020-05-27 09:34:17+00	sophie.del@wanadoo.fr
4611	62	Miek Stevens	Sint-Jans-Molenbeek	bediende	geen	624dbd141fa0afeb15d80c05727ed789	t	2020-05-27 06:04:46+00	2020-05-27 06:05:36+00	\N
4612	60	Yannick Hartstein	Schaerbeek	\N	\N	81df366568912160542632b1bebebc4c	t	2020-05-27 06:05:34+00	2020-05-27 06:05:46+00	yannickhartstein@gmail.com
4623	62	Jelle Hemelsoet	Brussel	Leraar	\N	68c33b6d20fd2de0bcc68a77ab1df0a8	f	2020-05-27 06:26:59+00	2020-05-27 06:26:59+00	\N
4604	60	Tullia Teucci	Kraainem	Restauration d'oeuvres d'art	\N	f6b8e004fbd65c8eeffab2e2a22868d9	t	2020-05-27 05:01:57+00	2020-05-27 06:30:03+00	\N
4614	61	Bérénice Dartevelle	Bruxelles	\N	\N	0c8d7e7eebdcb95b8f1729c775fbcccd	t	2020-05-27 06:09:55+00	2020-05-27 06:10:37+00	\N
4613	62	Julie Gusman	Brussel	\N	\N	7246e8befd8f043096eb77b045d2494c	t	2020-05-27 06:06:56+00	2020-05-27 06:11:34+00	\N
4615	61	Bert Quintiens	Jette	\N	\N	9c1f5f74643898f99baeb3c8eecf7bc7	t	2020-05-27 06:11:47+00	2020-05-27 06:12:06+00	\N
4616	61	Beata Stepien	Schaerbeek	\N	\N	4a0af82316f8aefe3e6c6a37e741481b	f	2020-05-27 06:12:21+00	2020-05-27 06:12:21+00	bstepien2003@hotmail.com
4618	60	Morgan Reverseau 	Brussels	\N	\N	3d79dc05edd7d8914ca7320d25712b9f	t	2020-05-27 06:16:48+00	2020-05-27 06:17:13+00	\N
4619	60	Tina Milanovic	Schaerbeek	Employee	\N	8faf76e61b3256244f79b589c03da7c0	t	2020-05-27 06:18:18+00	2020-05-27 06:19:08+00	killabeez07@yahoo.com
4610	61	Thomas Danthine 	\N	\N	\N	592b14a15bad6b52bb380e8432222010	t	2020-05-27 05:58:33+00	2020-05-27 08:13:07+00	\N
4624	60	Fanny Angevin	Saint Gilles	\N	\N	ffb47893c1f7b2454d500676e8f2ef90	t	2020-05-27 06:33:12+00	2020-05-27 06:33:35+00	\N
4625	60	Maud salembier	Bruxelles	Professeure	Saint Luc	f0adc82e005005d2ffd7a8c3b23ea4a7	f	2020-05-27 06:42:09+00	2020-05-27 06:42:09+00	\N
4608	61	Sobieski Thérèse 	Bruxelles 	Retired 	\N	a4e08aa3502ba67d6fa2fca372030305	t	2020-05-27 05:51:26+00	2020-05-27 12:26:36+00	therese.sobieski@gmail.com
4626	62	Nelson Polfliet	Schaarbeek	Filmmaker	\N	04a48e4d93013c00048ddbf62fed6344	t	2020-05-27 06:42:28+00	2020-05-27 06:43:08+00	\N
4627	61	Adela Tesarova	Etterbeek	\N	\N	0b02ea64ddb06ca8762db5ce7cc59cfe	t	2020-05-27 06:42:44+00	2020-05-27 06:43:30+00	adela.tesarova@centrum.cz
4524	62	Thomas DC	Etterbeek	Verpleegkundige	Wheel of Care 	74d34f59c6a2870088cc91bcf8778762	t	2020-05-26 18:41:09+00	2020-05-27 06:44:47+00	icycle4care@gmail.com
4628	60	elke timmerman	koekelberg	\N	mad brussels	974ceb478471a1525907b04e4d138fe1	f	2020-05-27 06:50:48+00	2020-05-27 06:50:49+00	\N
4634	60	DIDION camille	Forest	\N	\N	d8347e81d69669a717427fc91f65bdf7	t	2020-05-27 06:57:57+00	2020-05-27 06:58:16+00	camille.didion@gmail.com
4630	61	Maria Gernert	Bruxelles	Research & Innovation Assistent	IFOAM EU	0b96512f5258f450a31607a35acd5969	t	2020-05-27 06:53:37+00	2020-05-27 06:54:07+00	mariagernert@web.de
4629	60	Linus Siöland	Etterbeek	Policy Analyst	\N	138aa010db9a1c863bd38b2d90b20ef0	t	2020-05-27 06:53:00+00	2020-05-27 06:54:12+00	\N
4637	61	Marie Pitz	Bruxelles	\N	\N	11664a4c62086ff9f18a10ea1b9bacbc	f	2020-05-27 06:59:24+00	2020-05-27 06:59:24+00	\N
4636	60	Astrid Wauters	Sint-Gillis Brussel	\N	\N	5119fbc54138f7bd0b2b806df3298c0f	t	2020-05-27 06:59:16+00	2020-05-27 06:59:40+00	astridwauters@gmail.com
4632	60	Greet Lemmens	Elsene	Bediende	\N	4f7baf387712daa6b60ae053cd7a0e72	t	2020-05-27 06:54:27+00	2020-05-27 10:13:28+00	greet_lemmens@hotmail.com
4639	60	Demuylder Patrick 	Uccle 	Cheminot 	\N	30865df4da9f557a60d29bf6388d2491	t	2020-05-27 07:03:06+00	2020-05-27 07:05:00+00	patrick57demuylder@gmail.com
4640	60	Ana Catarina Vilaca Correia da Silva	Ixelles	Consultant	\N	0101407126c96b3e100be5705c32cbce	t	2020-05-27 07:04:16+00	2020-05-27 07:05:19+00	\N
4644	61	Katleen Van Waeyenberge	België	\N	katleen.vanwaeyenberge@gmail.com	7bfc403fda413b37f933ae3916b79d87	t	2020-05-27 07:08:14+00	2020-05-27 07:08:37+00	katleen.vanwaeyenberge@gmail.com
4641	60	Monika Malecka	Bruxelles	\N	\N	44fe48b9cd542a67acbaad1f75abd462	t	2020-05-27 07:05:25+00	2020-05-27 07:05:42+00	\N
4643	60	Charlie Braky	Schaerbeek	\N	\N	bd520319b9038401daf581b9b995edc2	t	2020-05-27 07:07:53+00	2020-05-27 07:08:20+00	\N
4631	60	Stephanie Debecker	Bruxelles	\N	\N	9cb9f2b546b7de4087adf73ebf964c18	t	2020-05-27 06:54:11+00	2020-05-27 07:11:06+00	stephanie.debecker@skynet.be
4646	62	Aurélie Mommens	Bruxelles	\N	ULB	0fdbe3642de3e3a32a27d80954a0884f	f	2020-05-27 07:13:44+00	2020-05-27 07:13:44+00	\N
4648	61	Marcin Adolewski	Bruxelles	\N	\N	e7dedeac63c08ca7688a14c2dd54de5c	f	2020-05-27 07:15:13+00	2020-05-27 07:15:13+00	\N
4649	60	Margaux HEBERT	Schaerbeek	\N	\N	bcceda0ea6b175c1f2c807472ad51ff6	t	2020-05-27 07:15:35+00	2020-05-27 07:16:14+00	margaux.hebert@live.fr
4647	62	Katrien Vriens	\N	\N	\N	9719713274c00788bc72a3de2ec6c268	t	2020-05-27 07:14:14+00	2020-05-27 07:17:34+00	\N
4620	62	Leila Boukhalfa	Laken	Bediende	\N	df1497c8dbb4f944e9aaf185ae45a7c2	t	2020-05-27 06:19:46+00	2020-05-27 07:50:07+00	\N
4638	60	Lenormand	Schaerbeek	\N	\N	deec6ed956f980d4142d1e9b99c58b8c	t	2020-05-27 07:02:32+00	2020-05-27 10:05:06+00	\N
4635	62	Bart Melis	Sint-Jans-Molenbeek	Controller	MIVB	1fb7b566c4b4300cfab728e7ab147759	t	2020-05-27 06:58:04+00	2020-05-27 11:43:44+00	\N
4599	62	Sam Vangoetsenhoven	Molenbeek	Leerlingbegeleider	\N	6ad49d74e7fae58bc36e80309efc4c5a	t	2020-05-27 04:34:41+00	2020-05-27 14:37:05+00	\N
4868	60	Furrer	Bruxelles 	Directeur 	Friends of Europe	0922fd868d282cd76ee529bf92af050c	f	2020-05-27 22:54:05+00	2020-05-27 22:54:05+00	nathalie.furrer@gmail.com
4866	62	\N	Brussel	Leerkracht	\N	e8c827b3fd307ab7ae033fa8aaef6093	t	2020-05-27 22:33:53+00	2020-05-27 22:35:47+00	\N
4651	61	Tiffany Fliss	Woluwe St Lambert	administrative assistant	Grayston & Company	dfbf9ff38a3f9793e80909feaaee41a8	t	2020-05-27 07:23:02+00	2020-05-27 07:29:37+00	\N
4654	61	Marc Sader	Uccle	\N	\N	32d8346bdab67b8fbc1165e3f99b2edd	t	2020-05-27 07:28:22+00	2020-05-27 07:30:18+00	sader_marc@yahoo.com
4867	62	Piet Bataillie	Brussel	IT consulting	\N	cfa631e9977073751b3cdd8cd1843914	t	2020-05-27 22:52:44+00	2020-05-27 22:54:01+00	piet.bataillie@gmail.com
4655	61	Matthew Jones	Ixelles	\N	\N	788e1f4a3a7ae757db2f248b63c374dd	t	2020-05-27 07:33:56+00	2020-05-27 07:36:47+00	matthewlyndenjones@gmail.com
4657	60	\N	\N	\N	\N	ddd4974141f1dec9d51f30fd7a5ae19f	t	2020-05-27 07:35:44+00	2020-05-27 07:37:42+00	beatrice.chenoix@gmail.com
4658	60	Cathy Condon 	Bruxelles 	Teacher	Oxfam	014afd7e9b37808da034d5b11bcd2369	f	2020-05-27 07:38:39+00	2020-05-27 07:38:40+00	\N
4891	62	Florent PELSY	Bruxelles	consultant 	\N	f3d9161bcb498f97ed24dfe1659ba1c7	t	2020-05-28 07:12:36+00	2020-05-28 07:14:23+00	florent.pelsy@milieu.be
4674	60	Van winckel	Bruxelles	\N	\N	a3d6fa7e0228e67565e72498484d90e9	t	2020-05-27 08:28:36+00	2020-05-27 10:50:48+00	mvanwinckel@hotmail.fr
4659	60	Sylvie A. B	Forest	\N	\N	afeb148a1c89a6cf72fdaba9faee5db1	t	2020-05-27 07:40:26+00	2020-05-27 07:40:47+00	\N
4895	60	Etienne Petre	1950 Kraainem	Cadre	\N	33561ffd6ed02cc28789487e99ee11ea	t	2020-05-28 07:22:47+00	2020-05-28 07:23:16+00	\N
4871	61	Patrick Clauwaert	Brussel	denker	\N	2f4d4c063dc80356ce8b3da28b9ef153	t	2020-05-28 01:16:47+00	2020-05-28 14:27:00+00	patrickclauwaert@yahoo.com
4679	61	jan	brussel	\N	\N	1b8f16d6aa366549b059c041d272d6fa	t	2020-05-27 08:40:14+00	2020-05-27 08:41:11+00	lemaitrejan@gmail.com
4663	62	Raphaël Gehrenbeck	Ganshoren	\N	\N	8105c6805d794c366a60123749d08cfa	t	2020-05-27 07:52:55+00	2020-05-27 07:53:40+00	\N
4662	60	Philippe Lepinois	Uccle	\N	\N	111bd7e2ab5030303475f9699d947469	t	2020-05-27 07:45:09+00	2020-05-27 07:56:03+00	\N
4664	62	sarah hulsmans	\N	\N	\N	50227b0c2a0cee7301ebd2e6e19c6c47	f	2020-05-27 07:56:57+00	2020-05-27 07:56:57+00	\N
4665	60	Roxane Degrez	Ixelles	Étudiante	\N	434177724ac55d296733b30b8ac83edb	t	2020-05-27 08:06:40+00	2020-05-29 05:20:52+00	\N
5100	61	Amelie	brussels	employee	///	dda5434cada0b18f84adcb4e032f0d56	t	2020-05-29 19:43:06+00	2020-05-29 19:44:06+00	\N
4666	60	Meireles Bruno	Uccle	Étudiant	\N	8548e271846e1a0f6542b1988bafe0b8	t	2020-05-27 08:08:04+00	2020-05-27 08:09:11+00	tutase12@gmail.com
4667	60	Raphael Krings	Bruxelles	\N	\N	84e7878eb16a3964994a5b87157d706b	t	2020-05-27 08:08:56+00	2020-05-27 08:09:54+00	raphkrings@gmail.com
4689	61	Christina vandekelder	Jette	Employee 	\N	e4db2fd728cac56a1caffa8dee2fba4c	t	2020-05-27 08:53:41+00	2020-05-31 15:32:22+00	\N
4692	60	John McCarrick	Ixelles	International Relations	amfori	7a5ae1763cc4b7390715065b402a737c	t	2020-05-27 08:59:56+00	2020-05-27 09:01:47+00	john.mccarrick@amfori.org
4669	59	Arno Vervaet	Sint-Jans-Molenbeek	\N	\N	820411f6d4b468d598033c71de20c11a	t	2020-05-27 08:16:44+00	2020-05-27 08:17:16+00	\N
4701	61	Alice Gillam	Bruxelles	\N	\N	f435d200aeebb0645d0576fa735281c9	t	2020-05-27 09:14:56+00	2020-06-03 14:05:41+00	\N
4670	60	Sara-Cristina	Schaerbeek	fonctionnaire	CE	c29803662cfbe57c8f750727c90cdf2c	t	2020-05-27 08:17:25+00	2020-05-27 08:17:41+00	saraavram@hotmail.com
4668	60	Alice Baudin	Uccle	\N	\N	d99e79e393eca80d0d21af2f83582cd8	t	2020-05-27 08:15:16+00	2020-05-27 08:19:11+00	\N
4671	60	Ronan Gédouin	Woluwé Saint Pierre	\N	\N	b86a2cfd6592a325da316d2d4ed647af	t	2020-05-27 08:20:13+00	2020-05-27 08:20:39+00	\N
4681	62	Brieuc Colard	Ukkel 	Student 	\N	f864bd76ed5fd900310a56d1a63e7120	t	2020-05-27 08:42:27+00	2020-05-27 08:42:42+00	colardbrieuc17@gmail.com
4672	60	Caroline Mierop	Ixelles	\N	\N	46ff2ae16bf248b992053f19adc7f3ec	t	2020-05-27 08:22:07+00	2020-05-27 08:22:32+00	\N
4673	60	Hick Anne-Marie	Waterloo	Retraitée	\N	88bfcc6418b2483a9100697f69d988ad	t	2020-05-27 08:26:47+00	2020-05-27 08:27:52+00	hick.annemarie@gmail.com
4675	60	Pons	Bruxelles	\N	\N	32a565dacbae7a01fade8cc30afe9326	f	2020-05-27 08:31:25+00	2020-05-27 08:31:25+00	tpmyosotis@gmail.com
4676	60	frenay caro	ixelles	\N	\N	5c81a4259a956ac925d6918df39c38a8	f	2020-05-27 08:36:15+00	2020-05-27 08:36:15+00	caro_frenay@hotmail.com
4677	60	Marie	bruxelles	\N	\N	6764a1df173175b335b99d9caf14f69d	t	2020-05-27 08:36:39+00	2020-05-27 08:37:20+00	\N
4682	60	Jean-Marie COANT	Bruxelles	\N	\N	d27a10c62e19bf6a3c5fa4228d2ba6a9	t	2020-05-27 08:47:16+00	2020-05-27 08:47:45+00	\N
4683	61	Jan Willem baron van Heemstra	Elsene	consultant	very little	7fa40bb12951b1862e650514674c1d94	t	2020-05-27 08:49:46+00	2020-05-27 08:50:19+00	\N
4685	60	Florence Sarrazin	Schaerbeek	Policy advisor	\N	0f72830d04955ab1e3694cb101fa24c5	f	2020-05-27 08:52:32+00	2020-05-27 08:52:32+00	\N
4686	62	Joke Coopman	Vorst	sociaal werker	Dbroej - Chicago	c6e7bd4bdb1b50c197be7a9d10be1848	f	2020-05-27 08:53:03+00	2020-05-27 08:53:04+00	\N
4688	60	de Borman Nicolas	brussels	\N	1974	399c05e50910b786320c112605cc479a	f	2020-05-27 08:53:25+00	2020-05-27 08:53:26+00	\N
4680	62	Marieke K	Elsene	\N	\N	7d7bb6db07b1a1b7ac850423b47fa145	t	2020-05-27 08:42:03+00	2020-05-27 08:54:26+00	\N
4687	61	Florence	Schaerbeek	\N	\N	a4c094d80da84fbcc1dafedccb185f12	t	2020-05-27 08:53:09+00	2020-05-27 08:54:42+00	\N
4690	62	Sofie Lintermans	Sint-Lambrechts-Woluwe	\N	\N	dfddbac0431fac3e0f1005047d5eaa83	t	2020-05-27 08:55:04+00	2020-05-27 08:55:28+00	ecua.sofia@gmail.com
4694	61	Edoardo Melis	Brussels	\N	\N	0b47aa2cd65b013d9f678a44626e3475	f	2020-05-27 09:04:05+00	2020-05-27 09:04:06+00	\N
4684	60	Hanon Maurice	Bruxelles Woluwe Saint Lambert	clos du dauphin 4	Comité de quartier	972dc05394c81ed53d3440a101711788	t	2020-05-27 08:49:56+00	2020-05-27 09:07:39+00	maurice.hanon@skynet.be
4697	60	Ina Geerts	Brussel	actrice	1965	b28889240b0e428c9c3ff4d390f73f92	t	2020-05-27 09:08:01+00	2020-05-27 09:08:32+00	\N
4700	61	Tony Zamparutti	Brussels	\N	\N	1ac78cd6f823ad4b56cf475e52ea2bef	t	2020-05-27 09:13:38+00	2020-05-27 09:14:01+00	\N
4698	61	Pablo Mariani	Ixelles	\N	\N	9801616ae4070534d3495ce9e407697e	t	2020-05-27 09:11:30+00	2020-05-27 09:11:49+00	\N
4696	60	Ibra Ba	Bruxelles	chef de cuisine	\N	32168ca027af784dd67d9780e5a0fe9c	t	2020-05-27 09:07:56+00	2020-05-27 09:16:50+00	pokkog1@gmail.com
4695	60	Ewa Mis	Bruxelles	interprete	\N	0da2180f2e8b313d8a59964afe37f93d	t	2020-05-27 09:06:29+00	2020-05-27 09:16:55+00	fcia_fcia@hotmail.com
4702	60	Delphine 	Etterbeek 	\N	\N	0a649b71c675ab4a46304d8763bec43b	f	2020-05-27 09:17:07+00	2020-05-27 09:17:07+00	\N
4691	60	Gaetane Adam	Bruxelles	\N	\N	50d0eedc265f1195849a18f3e4099edd	t	2020-05-27 08:58:30+00	2020-05-27 11:14:39+00	\N
4693	62	joke	brussel	/	/	937ace270fd060570b5975c6acfeeb09	t	2020-05-27 09:02:24+00	2020-05-27 12:36:08+00	\N
4699	60	Amy Biss	Bruxelles	Traductrice	\N	65e645228a3dfe496c47b2e8907151c3	t	2020-05-27 09:12:07+00	2020-05-27 09:22:48+00	amy_biss@hotmail.co.uk
2917	61	Aude-Laure Delbac	1050	\N	\N	66c12bbc85b85e58e2bcf7dba7e88e9a	t	2020-05-25 08:24:44+00	2020-05-27 09:31:06+00	aude_laure@hotmail.com
4705	61	Ambar Hernandez	Laeken	Parent au foyer	\N	0ebcd5934f5887042ffc2a593df520cd	t	2020-05-27 09:24:46+00	2020-05-27 09:32:24+00	\N
4704	62	Marije van Velzen	Schaarbeek	vertaler	\N	223fed1d64b734a3e241a854c2b42c8e	t	2020-05-27 09:21:28+00	2020-05-27 09:33:41+00	\N
4707	60	Hannah	Laken	\N	\N	a3ee927819920ca0d6e965d477e2def8	t	2020-05-27 09:33:16+00	2020-05-27 09:33:53+00	hannah.adriaens@gmail.com
4678	60	Detrait	Schaerbeek	\N	\N	6de4ca72e1748fb2ab2ab118e05d612c	t	2020-05-27 08:37:35+00	2020-05-27 09:34:26+00	\N
4708	61	Elif Kalan	\N	\N	\N	810b55c3cbc8488735efcb08802b58a1	f	2020-05-27 09:35:16+00	2020-05-27 09:35:16+00	\N
4709	60	Janssens Monique	Braine l'Alleud	Kinésithérapie	\N	29e91759ea66ab32b2bf7592328bf067	f	2020-05-27 09:35:23+00	2020-05-27 09:35:23+00	anssens@gmail.com
4872	61	Jozef Deville	Brussel (Jette)	\N	\N	2dc4da58ed5cb274df4c21b1a1144259	t	2020-05-28 04:22:05+00	2020-05-28 04:39:55+00	\N
4711	60	Gaetano 	Bruxelles 	\N	\N	497d99b3b9a947b2809e313ab565c2b9	t	2020-05-27 09:38:37+00	2020-05-27 09:39:13+00	\N
4712	60	Toha	Bruxelles	\N	\N	76e9bc9ba7fe7eb3d409babd37cd2a62	t	2020-05-27 09:40:20+00	2020-05-27 09:40:33+00	\N
4915	61	Naomi Ntakiyica 	Brussels	Researcher	\N	d1b6c3593a1205dbd3e083784c7b6ad1	t	2020-05-28 09:18:24+00	2020-05-28 09:19:19+00	\N
4710	61	Paul Frisch	Brussels	\N	\N	49c286fb97f909f6ef692351beb94d7f	t	2020-05-27 09:36:55+00	2020-05-27 09:41:18+00	\N
4713	62	Julie Selvais	Etterbeek	leerkracht	\N	5d4b7d0b5d559b5ed159a11abc8da9dd	t	2020-05-27 09:41:06+00	2020-05-27 09:42:38+00	julie_selvais@yahoo.co.uk
4731	60	Tessa Dixson	\N	\N	\N	55b9f70eb3d822bef72db570796ebc05	f	2020-05-27 10:14:14+00	2020-05-27 10:14:14+00	\N
4894	60	De Oliveira 	Etterbeek 	\N	\N	dba61e6aa0baa709a334fa86e2cd350f	t	2020-05-28 07:20:22+00	2020-05-28 07:21:40+00	\N
4893	62	Elisabeth Mullier	Schaerbeek	\N	\N	efc455aa9cd6709703dbc2f898702aa2	t	2020-05-28 07:18:48+00	2020-05-28 07:23:39+00	elisabethmullier@yahoo.com
4733	60	Sarah C	Etterbeek	\N	\N	173ccaa1f461ff0a15defb981af199e5	t	2020-05-27 10:22:05+00	2020-05-27 10:22:39+00	info@sarahforro.com
4732	60	Wivine de Traux	Bruxelles 	Éditeur et auteure 	\N	c20f61699a3b7b625294e59d569320fc	t	2020-05-27 10:19:21+00	2020-05-27 10:25:48+00	w.detraux@gmail.com
4734	60	Droeshaut Olivia	Bruxelles	\N	\N	7b58731984bedfc106cc59e46a07928e	t	2020-05-27 10:22:14+00	2020-05-27 10:26:15+00	olivia@dyod.be
4740	61	M Gaspar	Woluwe-Saint-Pierre	\N	\N	cc73aeacacccbdbca49682642523e1da	f	2020-05-27 10:56:00+00	2020-05-27 10:56:00+00	\N
3292	62	miet koppers	Brussel (Sint-Gillis)	sociaal werker	uit de marge	3356d392f31d9f4144d098aa186f1223	t	2020-05-25 11:57:39+00	2020-05-28 09:19:46+00	mietkoppers@hotmail.com
4743	60	Bonnaud	1180	\N	\N	09f82c35b6caaa4f5317286614b6c068	t	2020-05-27 11:15:04+00	2020-05-27 11:25:59+00	\N
5027	60	Marie Moreau	Schaerbeek	\N	\N	eeb844907111c72f2b30fc684df08bf9	t	2020-05-28 20:49:02+00	2020-05-28 20:49:42+00	marieemoreau@yahoo.fr
4898	60	Nicolas Chkifi	1740 - Ternat	\N	\N	e451d4044d46e7b14b2b1f364f0f61a4	t	2020-05-28 07:29:23+00	2020-05-28 07:29:39+00	\N
5030	62	Maaike Grugeon	Brussel (Vorst)	bediende	\N	976453297fd9f2851eb6b61374474f2a	t	2020-05-28 21:09:02+00	2020-06-03 19:53:58+00	maaike_grugeon@hotmail.com
4745	60	BenjaminBertrand	Brussels	\N	\N	65fd92676c8105ae7fc983dba19721f5	t	2020-05-27 11:27:29+00	2020-05-27 11:27:51+00	\N
4746	62	\N	\N	\N	\N	7894df1ce2a1cfc04252d96f8f0ef295	f	2020-05-27 11:34:28+00	2020-05-27 11:34:29+00	\N
4892	60	Gérôme Quentin 	Schaerbeek	It developer 	Elium 	d1b20f88ae3dae1fbbea2f0d0e89429f	t	2020-05-28 07:16:44+00	2020-05-28 07:39:43+00	geromequentin@gmail.com
4749	62	Jonas	Molenbeek	bediende	\N	8494bc1d44e6a9688a3963a315133b79	f	2020-05-27 11:57:56+00	2020-05-27 11:57:56+00	\N
4901	60	Galia patxot	Bruxelles	Architecte	\N	de948b2e36575641ca37adffe5f08f78	f	2020-05-28 07:40:14+00	2020-05-28 07:40:14+00	aliapatxot@hotmail.com
4750	60	Decruynaere Céline	Molenbeek-Saint-Jean	\N	\N	cc8ddce9beed2dbee68db5074cee458a	t	2020-05-27 12:02:20+00	2020-05-27 12:08:31+00	\N
4756	60	Schyns	Etterbeek	Privée 	Aucune	f53ada7885a094103e08f527ce6ba30c	f	2020-05-27 12:16:04+00	2020-05-27 12:16:05+00	\N
4902	60	Katharina	1190	Cadre	\N	8d033427d4b7fc52baf7e6bda3338e03	t	2020-05-28 07:47:10+00	2020-05-28 07:48:48+00	\N
4757	60	Sébastien Behzad	Forest	\N	\N	7d8750a5b93c834f4ee5606d3150fef3	t	2020-05-27 12:18:32+00	2020-05-27 12:19:19+00	\N
4748	60	Michel Schwarz	Lasne	Formateur	\N	6ab5cfc8505bcd0e33d8670976d078f6	t	2020-05-27 11:55:34+00	2020-05-27 12:56:38+00	michelhappiness@gmail.com
4744	60	Josephine Hannay	Bruxelles	\N	\N	4d2934a9a7575fb21ae8c4c7b2dd2ce4	t	2020-05-27 11:26:36+00	2020-05-27 13:20:12+00	\N
4911	60	caroline Goffin	bruxelles	\N	\N	08f9da3c3abeecb8da11fb3df3b8de6e	t	2020-05-28 08:55:00+00	2020-05-28 08:55:22+00	\N
4917	60	Alberto Franzin	Ixelles	Chercheur	\N	396550660537c09a7afd9e759fd286d0	t	2020-05-28 09:22:21+00	2020-05-28 09:25:38+00	alberto.franzin@gmail.com
4913	62	Arthur	Den Haag	\N	\N	ab568318196f4fba008183ed213aa33c	f	2020-05-28 09:08:35+00	2020-05-28 09:08:35+00	\N
4912	60	Sara Van Zandycke	Brussel	trainer + Digital Expert	Bibliotheques sans frontieres	fe0dbd4d7073263a429d4078b3f99c72	t	2020-05-28 09:08:19+00	2020-05-28 09:10:01+00	\N
4914	60	Alexia de Visscher	Forest	Enseignante	\N	d00c7ac475b57461c186fcfa05aa0f5e	t	2020-05-28 09:15:54+00	2020-05-28 09:16:13+00	alexia@editionsdevisscher.be
4918	61	Mottaki Chaîmae 	Evere, Bruxelles 	Étudiante	\N	17510f2deb327428cb6e098de609ac3a	f	2020-05-28 09:33:01+00	2020-05-28 09:33:01+00	mottakichaimae@gmail.com
4922	60	Wijnand	Schaarbeek	\N	\N	cf8c707b7ae5d7a9ffc69c4775775b7c	t	2020-05-28 09:50:53+00	2020-05-28 13:50:30+00	\N
4919	62	Tom Lootens	1000 Brussel	\N	\N	842ae41ae623295923031b3a6eb8e605	t	2020-05-28 09:33:27+00	2020-05-28 09:33:52+00	\N
4928	60	Kolya Corno	Schaerbeek	citizen	\N	08e731274bfd6e84afb83c1e8ea6b836	t	2020-05-28 10:04:41+00	2020-05-28 10:05:12+00	\N
4923	62	Laura Rijsbosch	Etterbeek	Architect	\N	f34d18232470e7b01e475fd56353de15	t	2020-05-28 09:55:30+00	2020-05-28 09:56:40+00	\N
4929	62	Martin Funck	Schaerbeek 	Ingenieur 	\N	044853ce160ad87ca96cd990ec725a20	t	2020-05-28 10:05:39+00	2020-05-28 10:07:05+00	funck.martin@gmail.com
4916	61	Benedicte Werner	Forest	employee	COLEACP	3e82838db1afd2bf26587d751e2f8ce8	t	2020-05-28 09:21:55+00	2020-05-28 10:19:34+00	benedicte.werner@coleacp.org
4926	60	Samy Geronymos	Bruxelles	\N	\N	fb83351c3447b031e8db283461521246	t	2020-05-28 10:00:51+00	2020-05-28 10:25:52+00	samy.geronymos@gmail.com
4927	60	Roger Demaret	1140 Evere	Retraité	sans objet	1070ff316aba1bccad31c4753f63949b	t	2020-05-28 10:04:18+00	2020-05-28 15:01:27+00	rogerdemaret@yahoo.com
4899	60	Nathalie Banneux	Court-St-Etienne	\N	\N	712f62959f8a73363c42ff3343d1b24d	t	2020-05-28 07:29:29+00	2020-05-28 15:41:26+00	\N
5004	60	Claire Saucez	1090	\N	\N	c10f7ff9c0a17b2c16d9c4cae41dcd15	t	2020-05-28 17:56:37+00	2020-05-28 18:42:24+00	clairesaucez@hotmail.com
5026	60	Coraline Stroomer	Wemmel	\N	\N	79c5b2570bb18706c503f687eb4636e9	f	2020-05-28 20:43:31+00	2020-05-28 20:43:31+00	troomer@icloud.com
5028	60	PLANAS	Bruxelles	\N	\N	769c04b7efbbaa946ae7eb7eb434348e	f	2020-05-28 20:53:49+00	2020-05-28 20:53:49+00	martaplanas2@gmail.com
5031	60	Nathalie HAULET	HOVES (HT.)	\N	1980	212aa5b7431977a8933601815d8e7cfd	t	2020-05-28 21:12:22+00	2020-05-28 21:13:20+00	nathaliehaulet@hotmail.com
5032	60	Marianne Beeckmans	Woluwe Saint-Pierre	infirmière	\N	215fc1de55dd11b00a9423cbaa75bd76	t	2020-05-28 21:13:19+00	2020-05-28 21:13:56+00	beeckmansma@gmail.com
5033	61	Nina	Brussels	\N	\N	540cefb0154bbddfadd8d8c17293af57	t	2020-05-28 21:24:26+00	2020-05-28 21:25:01+00	\N
4900	59	RENAUD	Saint Josse ten Noode	privé	\N	02fac4a48cb1e8ac3768a0aa603a1085	t	2020-05-28 07:32:20+00	2020-06-02 10:08:21+00	\N
4735	60	Martin Maréchal	bruxelles	salarié	Parlement bruxellois	18ddf8711646401e81cee057646567ae	t	2020-05-27 10:36:55+00	2020-05-27 17:03:28+00	\N
4747	62	Lien Creuwels	Schaarbeek	\N	\N	7bd9c5addd913fed16ffe7ae16ddc34f	t	2020-05-27 11:45:32+00	2020-05-27 20:08:16+00	liencreuwels@hotmail.com
4897	59	Maison Médicale Botanique 	Saint Josse ten Noode	médical	\N	a5cf02fe780419e4233f7b3ad5bcee63	f	2020-05-28 07:24:56+00	2020-05-28 07:24:56+00	\N
4714	60	Lise Oulès	Ixelles	\N	\N	d2e776f27bb77187c972f090cfa0df3a	t	2020-05-27 09:41:22+00	2020-05-27 12:02:37+00	lise.oules@hotmail.fr
4760	60	véronique Siquet	Schaerbeek	employé	\N	d057422d7f56ea600e81ce9d02487870	t	2020-05-27 12:24:29+00	2020-06-03 09:39:57+00	verosiq@hotmail.com
4715	60	Gabriel	Ixelles	Diseñador 	\N	6e9839f6fd3cf7c1a157c13341c0c02d	t	2020-05-27 09:42:23+00	2020-05-27 09:43:33+00	\N
4716	61	Arnaud Hinck	Brussels	Employee	amfori	e9d9fd78904d07426ea612560679d0c5	t	2020-05-27 09:43:13+00	2020-05-27 09:44:07+00	\N
4873	60	Bene	Bxl	Employée	\N	7795fef9141a2d80c01355a471ddd70b	t	2020-05-28 05:18:09+00	2020-05-28 05:18:27+00	\N
4777	59	Brigitte Marchal	Bruxelles	cycliste	citoyenne	181fb03eb892db959937f11edbbbfd20	t	2020-05-27 13:45:31+00	2020-05-29 18:44:38+00	\N
4717	62	Michele	Elsene	\N	\N	d5bff2ac28f61dd1a8135fe3d3a1d4ad	t	2020-05-27 09:43:31+00	2020-06-03 07:23:10+00	\N
4720	60	Maxime	Schaerbeeck	\N	\N	9d273a42e959063dae805f9f05ebc8bc	t	2020-05-27 09:47:17+00	2020-05-27 09:48:43+00	\N
4752	61	Guillaume Dayez	Bruxelles	student	\N	82f6e852fce760abfe2ea5c49c4fbe03	t	2020-05-27 12:04:29+00	2020-05-27 12:06:05+00	\N
4721	60	David Lacour	Bruxelles	\N	1974	4dc46d4b5b951e36b731403f08352a3a	t	2020-05-27 09:50:30+00	2020-05-27 09:50:47+00	\N
4703	62	Tom Wyns	Jette	Consultant	\N	778ae09d5795937984457b646e55198b	t	2020-05-27 09:20:12+00	2020-05-27 09:52:17+00	\N
4722	61	Benjamin Lacour	\N	\N	\N	dcea217ac7b9649e143c82b365f08dad	t	2020-05-27 09:55:24+00	2020-05-27 09:57:08+00	\N
4753	60	SPOTO	Ixelles	Chomeuse	\N	533463343b71aadc689e330279bddc5d	f	2020-05-27 12:10:35+00	2020-05-27 12:10:36+00	\N
4723	61	Florence Grégoire	Bruxelles	Citoyenne	\N	6dd5a776a68c58b7075735e59bb6982e	t	2020-05-27 10:02:27+00	2020-05-27 10:04:42+00	\N
4726	60	Mayke	1000	FRONT DESK	BECENTRAL	3c8e3c4c1f1aed76a896efbe7560e012	f	2020-05-27 10:05:46+00	2020-05-27 10:05:46+00	mayke.annemans@gmail.com
4725	60	Van Asbroeck Charlotte	1030	\N	\N	54abd9bcae819ef6ea2cb7c7700fa167	t	2020-05-27 10:05:25+00	2020-05-27 10:06:05+00	\N
4727	60	Pollet	Bruxelles	fonctionnaire	\N	279f623e38165e7216f3e55d9af63f12	f	2020-05-27 10:06:37+00	2020-05-27 10:06:37+00	polletanne0@gmail.com
4719	60	Martin Hellweg	Etterbeek	traducteur	\N	5c650b028cd143cd8921380047ca8983	t	2020-05-27 09:45:33+00	2020-05-27 10:13:15+00	\N
4730	61	Boris	Schaerbeek	Videast	\N	48c0ee8bfc4bf8e5409e61c46dba6232	t	2020-05-27 10:13:04+00	2020-05-27 10:13:22+00	asma.boris@gmail.com
4728	60	Paul Davies	Etterbeek	\N	\N	6e558538912afc0d4031bb0a724c5840	t	2020-05-27 10:12:19+00	2020-05-27 10:23:30+00	p_r_davies@yahoo.co.uk
4769	62	Richard elodie	Brussel	Bediende	Duo for a job 	c0eaea36789483cfb55f159cdf1fadf8	t	2020-05-27 13:21:18+00	2020-05-27 13:21:42+00	richard.elodie@gmail.com
4755	60	Anne Belien	Saint-Josse	 	\N	708355a44803999e21070a8402d56f87	t	2020-05-27 12:12:54+00	2020-05-27 12:13:22+00	arglangues@gmail.com
4738	61	Wanda Lauwers	Jette	bewoner	\N	f3a62d1e942ae6b34ce3f9d22031bcfe	t	2020-05-27 10:42:48+00	2020-05-27 10:43:45+00	\N
4737	59	Wanda Lauwers	Jette	leerkracht	\N	dfd86be2b0fbf83ab56ceb47286692c1	t	2020-05-27 10:39:11+00	2020-05-27 10:43:48+00	\N
4739	60	Catherine G.	Etterbeek	Citoyenne	\N	878ca3f00f545842bdcaea55ac0fa0ab	t	2020-05-27 10:44:22+00	2020-05-27 10:47:51+00	\N
4776	60	Xavier Schoumaker	1080	Consultant IT	EU	31517e1ccadfdb11b4fde1c5d8c476a0	t	2020-05-27 13:42:19+00	2020-05-27 13:43:01+00	\N
4724	60	muriel	1070	\N	\N	307540958d4c783cfa07054a8ded8a27	t	2020-05-27 10:04:01+00	2020-05-27 11:08:28+00	\N
4742	60	Timothée Brès	Bruxelles	freelance	Ouishare	d7c184158cae7b162793689d40f0c0a6	f	2020-05-27 11:10:21+00	2020-05-27 11:10:21+00	timobres@gmail.com
4741	62	Wallace D.	Brussel	Student	\N	e0231b2f3981e687ce9803ac19b30464	t	2020-05-27 11:07:20+00	2020-05-27 11:14:37+00	\N
4736	61	Pauline 	Brussels	Teacher 	\N	4ae215fe97d06be0833b4166c3f4a4ff	t	2020-05-27 10:38:14+00	2020-05-27 12:24:37+00	\N
4761	60	Isabelle Courbet	Bruxelles	\N	\N	2887fbfa09ab3b15e6f2da0026dc6e59	f	2020-05-27 12:26:21+00	2020-05-27 12:26:21+00	i.courbet@hotmail.com
4763	61	Axelle	1060	Graphic design & communication	Belgium	a2b0e733110b55debabd9ffc04147a93	f	2020-05-27 12:27:24+00	2020-05-27 12:27:24+00	lormans.axelle@gmail.com
4762	60	Romain Poussin	anderlecht	artiste	\N	45e5d0c03c75b98e0e5721f3a387f3bb	t	2020-05-27 12:27:14+00	2020-05-27 12:28:04+00	romain.poussinbxl@gmail.com
4718	60	Loik Dal Molin	Anderlecht	\N	\N	efce02fd6083caff8873d97df6aa09a5	t	2020-05-27 09:44:21+00	2020-05-27 12:31:34+00	loikd@hotmail.com
4767	60	Martine ROMAIN	Saint-Gilles	ex-conseillère en mobilité	\N	18b32524b3f36fc38ae29b98c9098acd	t	2020-05-27 13:08:31+00	2020-05-27 13:22:20+00	martineromain@scarlet.be
4765	61	Raquel Motta	Brussels	Consultant	\N	bfc4f117d38b2d1f97127b04c7475d64	t	2020-05-27 13:08:01+00	2020-05-27 13:08:34+00	\N
4766	60	Bernard Claes	Forest	\N	\N	c182bc03d77b4d9a5bfe23027f9da539	t	2020-05-27 13:08:28+00	2020-05-27 13:10:41+00	b.claes@mail.be
4770	62	Diana AVELLANEDA	Brussels	Apotekeress	1975	a209eb7684577287e1b1449bac26033a	f	2020-05-27 13:23:01+00	2020-05-27 13:23:01+00	avellanedavila@gmail.com
4771	60	marit meganck	schaarbeek	architect	\N	fe447f59cacf3a2f65873a6197ee223b	t	2020-05-27 13:29:32+00	2020-05-27 13:30:10+00	\N
4772	62	Michiel D'Haemer	1070	\N	Michiel D'Haemer	d2cbdbbc6113edf8bbeab97b4eb8d8bc	f	2020-05-27 13:33:30+00	2020-05-27 13:33:30+00	\N
4758	60	Wirion Michèle	Schaerbeek	\N	\N	4838d7fc333c3796e9e1feb273f11931	t	2020-05-27 12:21:56+00	2020-05-27 13:34:57+00	michele.wirion@gmail.com
4773	60	Caroline Roks	1050 - Ixelles	architecte	\N	9e0bc545b1b47b1c49d0db2008e0d21f	t	2020-05-27 13:34:32+00	2020-05-27 13:35:17+00	caroline.roks@gmail.com
4774	62	Kerlijn	1930	Consultant	\N	f7e37aee2078acdc8a06ebbfa7f45260	t	2020-05-27 13:38:08+00	2020-05-27 13:38:30+00	vanassche.kerlijn@gmail.com
4775	60	Davide D.	1050 Ixelles	\N	\N	48164212919d7364f50ef654fae106be	t	2020-05-27 13:38:51+00	2020-05-27 13:39:26+00	\N
4759	60	Noémie Gevers	Dion-Valmont	\N	\N	dd07d67d60d23b3b9090b4a54d4dfc14	t	2020-05-27 12:22:12+00	2020-05-27 13:41:39+00	\N
4778	61	Matthias Caenepeel	Antwerpen	Engineer	\N	56bb6423a5a852eca23d50b5f2cc415c	t	2020-05-27 13:48:24+00	2020-05-27 13:48:41+00	\N
4779	60	Nguyen	Bruxelles	70 rue de parme	\N	36c7bc6c6ed477964584d60d916f60d8	f	2020-05-27 13:50:25+00	2020-05-27 13:50:26+00	\N
4783	61	Sarah Hull	Ixelles, Brussels	\N	\N	91e67185e781d1caa3fee5dc8a9124df	t	2020-05-27 14:07:03+00	2020-05-27 14:09:19+00	\N
4782	60	Alexis Fagel	Bruxelles	Étudiant	\N	10705960cc0beaf97ad05eb4bf851378	f	2020-05-27 14:06:31+00	2020-05-27 14:06:31+00	\N
4781	61	Julie Kavanagh	Ixelles	\N	\N	d5fc157b0e53786041e71ea8c05467f0	t	2020-05-27 14:06:27+00	2020-05-27 14:07:28+00	\N
4785	61	Louisa W	Ixelles	\N	\N	7e21ce794879cb53c43ceca80bade56a	t	2020-05-27 14:09:57+00	2020-05-27 14:29:20+00	\N
4786	60	Frederic Rouel	Auderghem	\N	\N	498e6be06d223eff83c65eb76b24e85b	t	2020-05-27 14:30:06+00	2020-05-27 14:46:27+00	fredrouel@hotmail.com
4780	60	Paulus carole	1180	\N	\N	37c64f78753163b0f443507eec0b751e	t	2020-05-27 13:51:49+00	2020-05-27 15:02:12+00	\N
4787	61	Isabelle Verheyden 	Bruxelles 	\N	\N	72610570591c6b56abeb655fd77f54dc	t	2020-05-27 14:30:36+00	2020-05-27 14:31:03+00	\N
4788	61	Alberto Guerrero	Etterbeek	\N	\N	57ea2d30a6c0c727aa8cf2221a9ed015	f	2020-05-27 14:31:38+00	2020-05-27 14:31:38+00	\N
5035	60	Tadej Breznik	Bruxelles 1000	Fonctionnaire	EFTA/AELE	0e8290e6447308db1b1a5f5cfdba966c	t	2020-05-28 21:29:55+00	2020-05-28 21:31:01+00	tbr2@efta.int
4874	61	Sara De Bruycker	Brussel 	\N	\N	780cf92d294b565c03630c6c54a3b018	t	2020-05-28 05:22:12+00	2020-05-28 05:22:45+00	\N
4789	60	David O'Grady	IXELLES	Teacher	\N	22cf7f7111e10d9da87d69f827b1c079	t	2020-05-27 14:36:24+00	2020-05-28 07:00:24+00	\N
4794	60	Emily M	Saint Gilles	Trainer	BeCode	a4b5c89b865a742a3edd7926053d9299	t	2020-05-27 15:14:17+00	2020-05-27 15:14:36+00	\N
4896	60	Anja De Cunto	Etterbeek	Employee	\N	c59b81b0d95fc3dbdb4ec0c5b24719cb	t	2020-05-28 07:24:38+00	2020-05-28 07:25:21+00	anjade@tiscali.it
4903	62	leen maes	1050	\N	\N	d1338e13d7f28e86464cb532776a80b8	f	2020-05-28 07:53:30+00	2020-05-28 07:53:31+00	\N
4905	60	Juliette Dumesnil 	Etterbeek 	\N	\N	9347c8a8cd6ed0122d6c1a6b8727b1a8	f	2020-05-28 08:03:36+00	2020-05-28 08:03:36+00	\N
4904	61	Silvia LP	Brussels	Employee 	\N	2605baa98672a43fc92cdf1fc812fded	t	2020-05-28 07:59:13+00	2020-05-28 08:04:17+00	silv.lorenzo.perez@gmail.com
4907	60	Anne	\N	\N	\N	c77d865bcb97c8d2fc0ff3d9eecd73ca	t	2020-05-28 08:24:22+00	2020-05-28 08:25:04+00	\N
4908	61	Elizabeth Freeman	Ixelles	Salarié	\N	9878d6b3339fcb57b76786bcb78fb3e0	f	2020-05-28 08:25:42+00	2020-05-28 08:25:43+00	\N
4910	61	Gregory Reinbold	1190 Forest	\N	\N	4754cb96089ea1d361922b17e671066a	t	2020-05-28 08:48:37+00	2020-05-28 08:49:59+00	gregory@reinbold.be
4909	60	Porte Clémence	1060	Bruxelles	\N	43946804cd3aac1242b7db4f87aac776	t	2020-05-28 08:46:40+00	2020-05-28 08:55:51+00	clemence.porte@gmail.com
4906	60	Jacek Sierakowski	Bruxelles	Médecin journaliste	Indépendant	69be478c03fd57cdd886087f46f463ea	t	2020-05-28 08:04:23+00	2020-05-28 09:26:31+00	siera@skynet.be
4921	62	charlene marechal	sint-gillis	\N	\N	3b800c27c6a129b7f2647683f3073a6a	f	2020-05-28 09:44:56+00	2020-05-28 09:44:57+00	\N
4924	62	Ine Vos	Molenbeek	\N	\N	c62857a71d68f7b383aaef201e2ecc83	f	2020-05-28 09:56:57+00	2020-05-28 09:56:57+00	vos_ine@hotmail.com
5101	60	Julia Majewska	Ixelles	\N	\N	dd013c6bf42ce4ce43d9027f5c2e7256	f	2020-05-29 20:47:43+00	2020-05-29 20:47:44+00	\N
4925	62	Margaux	Brussel	dromer	\N	72d1f479940bfbfe90d2d5407a4d833e	t	2020-05-28 09:59:41+00	2020-05-28 10:00:47+00	\N
4930	60	Anna brisou	Ottignies	Chercheur	Agcglass europe	7d81be5e566f0ae24739430fd3f48443	f	2020-05-28 10:09:14+00	2020-05-28 10:09:15+00	\N
5116	62	Anna Kennis	Brussel	\N	\N	d68f61d4d078bd2a8e62cb6557eecd24	f	2020-05-30 10:12:47+00	2020-05-30 10:12:47+00	\N
4931	60	piron	Bruxelles	etudiant	\N	769130b4c6cb6e9d8bb15e09bed8761f	t	2020-05-28 10:13:42+00	2020-05-28 10:14:23+00	\N
4933	61	Valentine Eloy	Bruxelles	Civil engineer	\N	9650efe0971f1d6c7ac3b1d65b87f524	f	2020-05-28 10:17:42+00	2020-05-28 10:17:42+00	\N
5106	60	françois	arlon	vendeur	ma famille	3d784eb382893cdd43188a6e53d22e11	t	2020-05-29 22:21:40+00	2020-05-29 22:22:02+00	\N
4934	60	Julie Goffaux	Schaerbeek	\N	\N	a44e513fc74a3669c1a1e7e03759c20c	t	2020-05-28 10:17:48+00	2020-05-28 10:18:10+00	\N
4935	62	Jan Bosmans	Jette	\N	\N	f597a95e29a2c4c478aa16855b784ffc	t	2020-05-28 10:22:49+00	2020-05-28 10:24:09+00	\N
4938	60	Lucie	\N	Ambassadrice de notre belle Bruxelles, 	pour le bien de tous	e96e15c98bfbd7b63c83b4c98ac4007c	t	2020-05-28 10:43:25+00	2020-05-28 10:43:48+00	lucie_rolland@yahoo.fr
4932	60	Brecht van goethem	Schaarbeek	Huisarts	\N	83fea1d42013f9adfc42d2ff432fabd3	t	2020-05-28 10:13:58+00	2020-05-28 11:33:21+00	\N
5005	60	Solange	Ixelles	Marcheuse et cycliste	\N	8731ccd52a063042d33fc0e523cecab4	f	2020-05-28 18:02:19+00	2020-05-28 18:02:25+00	\N
5034	60	Torres	Bruxelles 	Communication Officer	EEA and Norway Grants	c4e66602fbba03067b311c2485a75904	f	2020-05-28 21:28:56+00	2020-05-28 21:28:57+00	\N
5108	60	Monique Ferguson	Bruxelles	Responsable projets	Brusano	a8ffb67e56f1eb4ab705b4fe5b9caad3	t	2020-05-30 03:45:18+00	2020-05-30 04:09:03+00	\N
5109	60	sabine prieus	auderghem	\N	infirmière	3d83a5587877b04840e3b65a5b7b4c28	t	2020-05-30 06:30:56+00	2020-05-30 06:31:27+00	scl.prieus@gmail.com
5117	60	Elena Rota	Woluwe st Pierre	fonctionnaire	\N	4626030e6b8329166c07b958c616e50b	t	2020-05-30 10:42:35+00	2020-05-30 10:43:25+00	rotaele@yahoo.it
5110	60	Castel	Bruxelles	Médecin 	\N	0f0077264cf28ff59b0beeb978a6d7c6	t	2020-05-30 06:41:42+00	2020-05-30 06:42:29+00	\N
5118	60	Brigitte Simonet	Auderghem	\N	\N	a320c928e68a4f8e2f6a0e2c4a011330	f	2020-05-30 10:57:43+00	2020-05-30 10:57:43+00	brisimo4@hotmail.com
5112	59	Marianne Beeckmans de West Meerbeeck	Woluwe Saint-Pierre	infirmière	\N	a4958e623fc9d14e1fe525240ef1d06f	t	2020-05-30 07:04:07+00	2020-05-30 07:04:31+00	\N
5111	61	Frederic Hallet	Auderghem	Employee	\N	e11ee3a2095cb98db9ada5fb9addd62f	t	2020-05-30 07:03:02+00	2020-05-30 08:40:10+00	fred_hallet@hotmail.com
5115	60	Riccardi marisa	Bruxelles	L'enseignante	\N	8da1f3d6ba8c2137091bbf0078f96f6b	f	2020-05-30 08:42:48+00	2020-05-30 08:42:48+00	\N
5114	60	Benoît Molherat	SAINT GILLES	Entrepreneur	citoyen	292edfe1001a00ae88945a67537321e0	t	2020-05-30 08:26:55+00	2020-05-30 09:17:42+00	\N
5123	60	Carl Devos	Auderghem	employé	\N	25c7019f7359273d0aef2ee72d2000d8	t	2020-05-30 12:21:41+00	2020-05-30 12:22:13+00	carl@zongo.be
5119	22	Jara Modrego Ruiz	Schaerbeek	citizen	\N	e0c9fb658b015bb2ce79152a872a15e2	t	2020-05-30 11:10:21+00	2020-05-30 11:12:28+00	\N
5120	61	Julie	Ixelles	\N	\N	333e7391614fa06168ab6cbc6c240cf0	t	2020-05-30 12:03:40+00	2020-05-30 12:05:41+00	\N
5121	60	Cyril Masset 	Auderghem 	Étudiant 	Sous le gracq 	694fee93b997d1720486008d5bc0115a	t	2020-05-30 12:08:26+00	2020-05-30 12:08:40+00	be.magic04@gmail.com
5130	60	Kaur Loveleen	Bruxelles	Étudiante	Aucune.	8fa6bf71139c1040c5dfaf0e1d972a8c	f	2020-05-30 13:19:45+00	2020-05-30 13:19:45+00	\N
5122	60	Louis Masset	Bruxelles	Étudiant	Gracq	a53fe47240e0a2bf4b317c4982a23123	t	2020-05-30 12:13:23+00	2020-05-30 12:13:59+00	\N
5124	60	Héloïse	Beersel	Étudiante	\N	dd8cdaa06b3cc5680477a48eee375e1f	t	2020-05-30 12:28:38+00	2020-05-30 12:32:21+00	\N
5125	60	Claire Delvaulx	bruxelles auderghem	\N	\N	ea369a4feb11315ce4fd15a616ee8ed7	t	2020-05-30 12:34:11+00	2020-05-30 12:34:48+00	cdelvaulx@gmail.com
5127	60	Antoine Daube	Bruxelles 	Étudiant 	\N	851ea02c59bcd7e814d1a44519b0a68a	t	2020-05-30 13:08:42+00	2020-05-30 13:09:05+00	\N
5128	60	Vaury	Auderghem 	\N	\N	91f794cff717a41c0388e3a704dac5fe	t	2020-05-30 13:10:34+00	2020-05-30 13:12:06+00	bvaury@skynet.be
5129	60	Ducarme Lola	Bruxelles 	\N	\N	ebb3e4d6511baeb37e85e4ff7eb00eb5	t	2020-05-30 13:13:48+00	2020-05-30 13:14:27+00	\N
5131	60	Merlin	Bruxelles 	Basket	\N	e9b66c8cc5d3b862e4d270a2ef01414e	f	2020-05-30 13:27:48+00	2020-05-30 13:27:48+00	\N
5134	62	Ann Depoorter	\N	\N	\N	e8ef766db7cf5f792aa77e966d7a6fe7	t	2020-05-30 13:41:15+00	2020-05-30 13:41:51+00	\N
5135	60	Emile	Bruxelles 	Étudiant	\N	80364253dedb2af38fdf1e7c302e21c7	t	2020-05-30 13:48:54+00	2020-05-30 13:49:44+00	e.dujacquier@gmail.com
5137	60	kirikou	bruxelles	cheval	ecole	94a45562ad67d65fbe16d6ae9ed07417	f	2020-05-30 13:52:27+00	2020-05-30 13:52:27+00	kirikou@gmail.com
5138	60	aaron 	Bruxelles 	vélo 	\N	c14359242e0010771d292876c575b5a7	f	2020-05-30 13:56:42+00	2020-05-30 13:56:42+00	aarontahiri59@gmail.com
4790	61	Clare phelan	Belgium	\N	\N	0c1d791eeb0a3daaba530a390f625a8e	f	2020-05-27 14:40:01+00	2020-05-27 14:40:01+00	\N
4791	60	Portacolone	Auderghem	\N	\N	f9eafcf4cc796ba4fb5554202cdac481	f	2020-05-27 14:50:09+00	2020-05-27 14:50:09+00	theannina@hotmail.com
4806	61	Nina T	1200	\N	\N	64b7e26f6f17e520239a6757646aca1e	t	2020-05-27 16:13:10+00	2020-05-27 16:48:03+00	\N
4792	60	Lou Gee	Bruxelles	\N	\N	71190b3e71e02f74646eb4cf56ed6f96	t	2020-05-27 15:04:50+00	2020-05-27 15:05:24+00	\N
4875	59	Paloma Petrement	Schaerbeek	Infirmière ere	\N	4eee84562cb85f516083aaf43e04f31d	t	2020-05-28 05:30:06+00	2020-05-28 05:30:41+00	\N
4795	60	Jeroen Van Malderen	Schaarbeek	\N	\N	3fb861545075b9bcf5234680550f541c	t	2020-05-27 15:19:14+00	2020-05-27 15:19:55+00	\N
4796	60	Antoine Caramalli 	Bruxelles	\N	\N	eca87aaf765425a6fed080e5d70c9812	t	2020-05-27 15:24:39+00	2020-05-27 15:25:03+00	antoine.caramalli@gmail.com
4797	62	Mathias Van Den Branden	Molenbeek	IT	Overheid	9583d5f9f71181b41cfe091d9284497c	f	2020-05-27 15:25:40+00	2020-05-27 15:25:40+00	\N
4991	60	Pauline	Bruxelles	\N	\N	6153b3133006f0ee841a46e28fb42e51	t	2020-05-28 15:16:00+00	2020-05-28 15:16:48+00	\N
4798	60	Tzibana	Bruxelles	étudiante	\N	a1755df30fc4ff8552eab1a6cd758461	t	2020-05-27 15:27:49+00	2020-05-27 15:28:05+00	tzibana.sattya@gmail.com
4799	60	Stéphanie Dupuis	Bruxelles	employé	\N	d0e066dc0fe8e5d3aed80041a5805382	f	2020-05-27 15:32:20+00	2020-05-27 15:32:21+00	\N
4800	59	Cristina Braschi	Bruxelles	\N	\N	117adc815271bfa227dec5fc96ee61a8	f	2020-05-27 15:34:23+00	2020-05-27 15:34:23+00	\N
4936	61	Zanë Hadri	Brussels	\N	\N	18b41567eac6f1e9740fc2e73883b8ee	t	2020-05-28 10:28:09+00	2020-05-28 10:28:50+00	\N
4801	60	Welkenhuysen	Bruxelles	Etudiant	ULB	7832bbce4d9befd2c6c092d8b46242cf	t	2020-05-27 15:36:28+00	2020-05-27 15:37:05+00	simon.welkenhuysen@gmail.com
4937	60	Lionelle Van Bunnen	Bruxelles	\N	\N	70bc3f36350bbfbdad65e88f31349112	t	2020-05-28 10:37:59+00	2020-05-28 10:38:58+00	\N
4804	60	Gilles Schretter	Ixelles	Architecte	\N	29f63a747deef0fe26e27fe058728f1e	f	2020-05-27 15:44:47+00	2020-05-27 15:44:48+00	\N
4802	60	Gaëtan Waterkeyn	Bruxelles	Etudiant	\N	c915ba976f36a98091c20ddf6a915e02	t	2020-05-27 15:38:51+00	2020-05-27 16:09:03+00	\N
4992	60	Solange	Woluwe-Saint-Lambert 	\N	\N	ad442c2a9eadaba4ab0e857af454a2ca	t	2020-05-28 15:26:57+00	2020-05-28 15:27:43+00	solange.carpent@outlook.com
4805	60	Guy de Geest	Ixelles	Engineer	\N	3a9ae3309c47fa74fcaff5c3d604391c	t	2020-05-27 16:06:29+00	2020-05-27 16:14:47+00	guy.degeest@laposte.net
4807	62	an bruyninckx	schaarbeek	bediende	\N	10665faa910aed43a17a5925228544d7	t	2020-05-27 16:15:27+00	2020-05-27 16:16:09+00	an_bruyninckx@yahoo.com
4768	61	Peter Doise	Schaarbeek	Mobility guide 	\N	2c93b53fa10b3182f4c59643b1f015c5	t	2020-05-27 13:13:27+00	2020-05-27 16:26:27+00	peterdoise@hotmail.com
4940	62	Anouk Friedli	Brussel	theatermaker	\N	3466b84552ce2df9d73b666bac309a83	t	2020-05-28 10:50:00+00	2020-05-28 10:50:14+00	\N
5007	62	Olivia Lebbe	Watermaal-Bosvoorde 	\N	\N	e253346b8a1d85ee10dcd859b0f5e3c0	t	2020-05-28 18:36:02+00	2020-05-28 18:36:28+00	lebbe.olivia@gmail.com
4973	60	De Brouwer Hortense 	Bruxelles 	Étudiante 	\N	95b42146a1f66859d6ee434ca4961ec7	f	2020-05-28 13:04:09+00	2020-05-28 13:04:09+00	\N
4972	62	Glenn Nijs	Anderlecht	Account manager 	N/A	10613a20db643a2ae97931c1929d8c69	t	2020-05-28 13:03:40+00	2020-05-28 13:04:17+00	\N
4974	62	Theresia	Laken	\N	\N	1c2ff2d2ab324ba40a7607ab4e5bd7a1	t	2020-05-28 13:05:14+00	2020-05-28 13:05:30+00	theresia.feldmann@gmail.com
4978	60	Naveau Adrien	bruxelles	Ingénieur construction	\N	2ca045b1dbc5c97d7a02949738ff03c1	t	2020-05-28 13:17:29+00	2020-05-28 13:17:58+00	\N
5008	61	Van Haelen 	1200 Bruxelles 	\N	\N	d69badfae19917cb15cdc37c1d3c3fd4	t	2020-05-28 18:44:56+00	2020-05-28 18:45:46+00	nvh555@gmail.com
4980	61	Nathalie Capart	Bruxelles	Indépendante	\N	10734720e8fe9903999ba3c4dfabf785	f	2020-05-28 13:23:18+00	2020-05-28 13:23:19+00	\N
4981	60	Marion Laing	Jette	enseignante	\N	7dff9daebe20917ff145c9880a235320	t	2020-05-28 13:23:22+00	2020-05-28 13:23:54+00	m.laing@laposte.net
4979	60	Vincent Delbaen	Ixelles	Data consultant	\N	03b715a24b90ab9eda70b62b617d2e96	t	2020-05-28 13:18:18+00	2020-05-28 13:37:04+00	\N
4989	60	De Cremer Micheline	Jette	Retraitée	\N	e4d97f33c7b7361a7e96f18950a6802e	t	2020-05-28 14:53:42+00	2020-05-28 14:54:12+00	michelinedecremer.dp@gmail.com
4990	60	Boris Verdeyen	\N	\N	\N	69690aa6c6112a79eff78f62596f2af4	t	2020-05-28 15:04:24+00	2020-05-28 15:04:38+00	\N
5047	62	Ranja Van Asbroeck	Mechelen	Ambtenaar	\N	f6908dbd6d49f9f0b7f06e6f289e0829	f	2020-05-29 06:40:25+00	2020-05-29 06:40:25+00	\N
5039	60	Christine Athmann	Etterbeek	secretaire	\N	b026d9c1cd56df300734f0802ce99318	t	2020-05-28 23:27:41+00	2020-05-28 23:28:00+00	\N
5041	60	Miriam	Ixelles	\N	\N	3894a4a6954c9816c3eb2f12cdf24b1d	f	2020-05-29 06:10:35+00	2020-05-29 06:10:35+00	epple.miriam@gmail.com
5042	60	Sonja	Woluwe Saint Lambert	secretaire	\N	f42e3a512337fa6d29e71c8dda8717b9	f	2020-05-29 06:12:26+00	2020-05-29 06:12:26+00	s_brehonnet@yahoo.com
5043	60	Martine Mouchet	Overijse	Architecte	\N	a592f978244624d950ba925e7439b5c7	f	2020-05-29 06:26:20+00	2020-05-29 06:26:20+00	\N
5044	60	Olivier	Bruxelles	\N	\N	b9164b57a1a680543eba3824eb2a518e	t	2020-05-29 06:28:04+00	2020-05-29 06:28:29+00	oguerlain@gmail.com
5045	61	Anouck De Crombrugghe	\N	\N	anouck.decrombrugghe@gmail.com	2f58c738da5628be700ab87eafc0231c	t	2020-05-29 06:37:44+00	2020-05-29 06:38:14+00	\N
5050	61	Coralie van Pottelsberghe	ETTERBEEK	Coo	Les Débrouillardes 	af0c81ea31b7ec437ef135889f5a9442	f	2020-05-29 06:57:37+00	2020-05-29 06:57:38+00	\N
5051	62	Jürgen Geerdens 	Ganshoren 	\N	\N	70a8dd18bdf07533df4fd872b6719bcc	t	2020-05-29 07:07:25+00	2020-05-29 07:08:11+00	jgeerdens@gmail.com
5052	60	Axel Jansen	Anderlecht	\N	\N	abccca9f3b79146686464bd404b3d066	t	2020-05-29 07:16:34+00	2020-05-29 07:17:07+00	axel.jansen@beuc.eu
4764	60	Chris Mitchell	Woluwe St Pierre	\N	\N	2b855488e1d658361aad53a808b1f0ba	t	2020-05-27 13:04:55+00	2020-05-29 07:34:12+00	mitchris@hotmail.be
5063	60	El akraoui hassan 	Koekelberg 	\N	\N	6dfd8c6ca9abb35692ad882112428b9b	f	2020-05-29 08:36:23+00	2020-05-29 08:36:23+00	aboufarah1@yahoo.fr
5054	60	Gaëtan Kowalkowski	Koekelberg	\N	\N	177dcac08adcd4b41010f5ec276354cc	t	2020-05-29 07:34:19+00	2020-05-29 07:35:23+00	\N
5055	60	Veronica Vaccari	Ixelles	\N	\N	30e4e021cc5a1eeb60f885bc80af4daa	t	2020-05-29 07:47:45+00	2020-05-29 07:48:14+00	\N
5064	60	quetin aksajef	bruxelles	belgique	\N	2047606960e3170e1fbc0f7cdad5afca	f	2020-05-29 08:36:32+00	2020-05-29 08:36:32+00	quentinaksajef@hotmail.com
5065	60	scarella	bruxelles	\N	\N	33d197bd62ea7df75dc13253a6be8e13	t	2020-05-29 08:41:53+00	2020-05-29 08:54:06+00	tardigrade123@yahoo.fr
5053	62	Luc Van Malder 	Ganshoren	bediende	Steward Youth For Climate	549af660e7d442d06d290b06800e049a	t	2020-05-29 07:23:15+00	2020-05-29 10:00:38+00	lukvanmalder@gmail.com
4977	62	Sébastien Driessens	1030	\N	\N	94f8801baefd77f1d669a0f6270cea0c	t	2020-05-28 13:16:01+00	2020-05-29 13:59:47+00	\N
5113	61	Warichet 	Brussel	Physiotherapist 	\N	a3f56478ca674981dff4a15b4db42308	t	2020-05-30 07:36:15+00	2020-05-30 07:37:03+00	mathsamba@gmail.com
5140	60	Nikita job	Bruxelles 	Étudiante	\N	527dea883155f47c0b371307b3bcf02a	t	2020-05-30 14:01:27+00	2020-05-30 14:03:24+00	\N
5141	60	Vinciane Quoidbach	Bruxelles	\N	\N	0ff1fa7aa3192c92ce3def69bf6342a8	t	2020-05-30 14:07:19+00	2020-05-30 14:07:49+00	vinciane.quoidbach@gmail.com
3488	64	Test xavier	\N	\N	\N	dd3e95bd183e360d83046038a34485c4	t	2020-05-25 13:53:28+00	2020-05-30 16:11:35+00	xdamman@gmail.com
5197	60	Luc Calis	Bruxelles	\N	\N	68f66450ceb6181925918cb876506418	t	2020-05-31 08:22:25+00	2020-05-31 08:37:35+00	luc.calis@gmail.com
5202	60	Marie Sintzoff	Auderghem	\N	\N	98e7aae01d0bb9dbd7d79f1bbc9fcad0	t	2020-05-31 09:39:55+00	2020-05-31 09:40:23+00	mariesintzoff@gmail.com
5204	60	Samuel de Surgeres 	\N	\N	\N	81f10e9217cc4c10b7b20d46880d5cb2	t	2020-05-31 09:41:49+00	2020-05-31 09:43:28+00	\N
5206	59	Machteld	Sint-Joost-Ten-Node	\N	\N	cd515a87aaf63894334bb36ad15140e3	f	2020-05-31 09:46:10+00	2020-05-31 09:46:10+00	\N
5207	60	Olivier Le Thanh Duong	Ixelles	\N	\N	468eda6de068658a17db83fe64b42175	t	2020-05-31 09:51:43+00	2020-05-31 09:52:18+00	\N
1542	62	Oscar Tigchelhoff 	Schaarbeek	inwoner	me, myself & lots more	65788e288b1ced05b3edaa121379162b	t	2020-05-22 21:06:22+00	2020-05-31 10:15:23+00	\N
5216	62	Sorel	Louvain la neuve	Ong agro 	\N	345b0e3ad5b4b5ae7fc505d9ee938446	f	2020-05-31 10:38:10+00	2020-05-31 10:38:11+00	\N
5187	60	Mathieu Rosseels	Bruxelles	\N	\N	90bd7ebdfc60d705041c06468906ece2	t	2020-05-30 22:13:50+00	2020-05-31 10:43:56+00	\N
2643	60	Céline	Région de Bruxelles, Belgique	Assistante	CICR	da549cd924550dffb3ed4cd237afc5d0	f	2020-05-25 04:14:04+00	2020-05-31 13:07:40+00	celine101@hotmail.com
5200	61	Andrew Johnson	Brussels	Retired Teacher	\N	0affdbbc4f1359cd6437f21625f64c68	t	2020-05-31 09:19:00+00	2020-06-01 21:56:33+00	cotedazur2015@gmail.com
5199	60	Carole Ensch	Ixelles 	\N	\N	302882a9e0576eb621d66cc28346d3f4	t	2020-05-31 08:29:13+00	2020-06-02 07:48:37+00	\N
5203	60	Marie-Paule Sadzot	Watermael-Boitsfort	\N	\N	abc18b04249b125b07f82b7ece4d957b	t	2020-05-31 09:40:12+00	2020-05-31 09:41:23+00	mp.sadzot@gmail.com
5259	60	Lembourg Simon 	Colfontaine 	Invalide	Privé 	3dacb6743d11a346cdfcecc511a5250a	t	2020-05-31 16:08:38+00	2020-05-31 16:09:45+00	lembourg.simon@yahoo.fr
5236	60	Hélène Ziane	Bruxelles (Etterbeek)	Consultante	/	86f6a53e9777287a669120da014a7f98	t	2020-05-31 15:18:09+00	2020-05-31 15:18:54+00	helene_ziane@hotmail.com
5212	59	Sandra Martelli	Saint Josse-Ten-Noode	\N	\N	3d3ac355127a3d56a0512419b9ed5ee6	t	2020-05-31 09:54:42+00	2020-05-31 09:55:30+00	\N
5211	60	Cécile Petit	\N	\N	\N	d25431e6bc23ec88581f0309a64763d4	t	2020-05-31 09:54:03+00	2020-05-31 10:04:33+00	\N
5213	61	Nathalie Pondeville	Bruxelles	1030	\N	e31049e354559b68777676908f536b94	t	2020-05-31 10:04:11+00	2020-05-31 10:05:34+00	npondeville@hotmail.com
5237	60	Fanny Gosset	Ganshoren	Employée	\N	026f5944ef6664db89b6be4f03eb16cd	t	2020-05-31 15:18:43+00	2020-05-31 15:19:21+00	\N
5214	62	Robert Olma	Brussel	Consultant	\N	8714c718c180bcb643fee7a8604831e6	t	2020-05-31 10:19:17+00	2020-05-31 11:05:45+00	\N
2344	60	Jeremie Alliaume	Bruxelles	Papa	\N	1f35b29382d7f337213b6ee68721e90a	t	2020-05-24 13:40:25+00	2020-05-31 12:13:58+00	openletter.earth@alliaume.net
5219	59	Veerle Deen	Sint-Joost-ten-Node	Inwoner	\N	6bfb9566e30a60134f5c77bf00a05e9d	t	2020-05-31 13:54:36+00	2020-05-31 13:55:11+00	\N
5220	60	Dupont Danielle	Merchtem	\N	\N	90c7224735750a5828fdf137326237c2	f	2020-05-31 14:53:26+00	2020-05-31 14:53:26+00	dupont.danielle@hotmail.com
5239	60	Roberta Arbinolo	Ixelles	\N	\N	31895de0665ca4f89f2d92ef9855cba1	t	2020-05-31 15:22:56+00	2020-05-31 15:23:32+00	roberta.arbinolo@gmail.com
5235	60	Luc Stevens 	Bruxelles 	\N	Gracq Bruxsel	38404a2b86039ae2d08a7bb55e8a6029	t	2020-05-31 15:17:43+00	2020-06-01 06:37:29+00	\N
5223	60	Geoffrey Van Wynen	\N	\N	djvanc@hotmail.com	218c89fec9b8fea56c3ffccd1aa4b393	f	2020-05-31 15:03:55+00	2020-05-31 15:03:55+00	djvanc@hotmail.com
5224	60	Laurent Gosuin	Auderghem	Employé	\N	38aa278c093ad51e83da66a3f1ae51db	f	2020-05-31 15:04:46+00	2020-05-31 15:04:46+00	\N
5221	60	Nicolas Dewart	Bruxelles	\N	\N	78c29b831d31c1969f6d920807c72bc6	t	2020-05-31 15:02:35+00	2020-05-31 15:06:06+00	\N
5225	60	philippe	Bruxelles	\N	\N	20970af251dd1c7c5c48ad5f176e4e44	t	2020-05-31 15:06:00+00	2020-05-31 15:07:24+00	\N
5227	60	David 	Forest 	Employé 	État 	6a53d8e59838ba12f953aea4cb66d301	f	2020-05-31 15:08:11+00	2020-05-31 15:08:11+00	\N
5228	60	Mirabelle  da Palma	Forest	Employée 	\N	bdc3f46ecd048887a1ab37dca61ba35f	t	2020-05-31 15:09:11+00	2020-05-31 15:10:03+00	mirabelledapalma@gmail.com
5229	60	Geisen	bruxelles	prof	\N	4e851ab509d1cc2251d9f2deb355845d	f	2020-05-31 15:10:39+00	2020-05-31 15:10:40+00	\N
5230	60	Sindy Kinard 	Schaerbeek 	VIP with a lot of money 	\N	6ea652325535919125ca4604dee36645	f	2020-05-31 15:11:03+00	2020-05-31 15:11:03+00	\N
5231	60	Alexia Gilliot	\N	\N	\N	86adbca0a9b49be4bdd151110dec7b92	f	2020-05-31 15:12:18+00	2020-05-31 15:12:18+00	\N
5234	60	Anyssa Karafi	Bruxelles	employée	\N	f0d9b789b5c198db651d7b5906293de1	f	2020-05-31 15:16:34+00	2020-05-31 15:16:34+00	\N
5215	61	Robert Olma 	Brussels 	Consultant	\N	52c7a88cc405f4cac0ff930ba601d095	t	2020-05-31 10:21:29+00	2020-05-31 15:16:51+00	\N
5233	60	Alessandro Polito	\N	\N	\N	9392e662db1768546a1490b93bab7e2d	t	2020-05-31 15:15:33+00	2020-05-31 15:16:54+00	\N
5255	60	Alaia White	Bruxelles	n/a	n/a	bcc6bac04a5a5c915b0bf1dc4d8dc20d	t	2020-05-31 16:00:02+00	2020-06-01 09:26:11+00	\N
5241	60	Rooseleer 	Uccle 	\N	\N	e3d3f76fbe77f8964c0ed522507e83b5	f	2020-05-31 15:26:06+00	2020-05-31 15:26:07+00	\N
5242	60	Morineau 	Berchem-Sainte-Agathe  	Architecte 	\N	ef9db328555eab43e6acb4d35c1a5120	t	2020-05-31 15:26:19+00	2020-05-31 15:26:56+00	smorineau@slrb.brussels
5251	60	Ingrid Tuzi	Bruxelles	Doctor	\N	b782408df0a71a374af26f712a576f0d	t	2020-05-31 15:45:04+00	2020-05-31 15:45:28+00	\N
5250	60	Cartage Sophie	Jette	\N	\N	dc78b8d16e04b563778d1160b246b06a	t	2020-05-31 15:44:41+00	2020-05-31 15:45:30+00	\N
5244	60	Hacken	Bruxelles	\N	\N	25356ecf2cc2e7e806b2cc514b7d854b	t	2020-05-31 15:30:16+00	2020-05-31 15:30:41+00	\N
5245	60	Florian Dufour	Auderghem	avocat	\N	0219c4367eefb1d436595bcb2790d204	t	2020-05-31 15:30:30+00	2020-05-31 15:31:10+00	\N
5246	60	Mélanie Blondelle	Forest	\N	\N	a3d4e8db7f14e9678012ba10466723f3	t	2020-05-31 15:36:42+00	2020-05-31 15:37:00+00	\N
5256	60	Biston 	Forest	Enseignant 	Fwb	a71ca77f2ef7726b5c8097f8281f433f	t	2020-05-31 16:00:42+00	2020-05-31 16:17:21+00	bistonaxel@gmail.com
5252	60	maria luisa sanchez	Bruxelles	\N	\N	0246fa9ccf9494e03fcaa3f83ee47a50	t	2020-05-31 15:48:34+00	2020-05-31 15:49:00+00	\N
5249	60	Theodore Boermans	Schaerbeek	\N	\N	d91cea3c1d337ff051e674499574112f	f	2020-05-31 15:42:23+00	2020-05-31 15:42:23+00	theo.boermans@gmail.com
5247	60	Ahmed  Mesnaoui	Brussels	Student	Ulb	64712654116d6c3ab0bee6472a0115fa	t	2020-05-31 15:42:18+00	2020-05-31 15:42:35+00	\N
5248	59	Ludo De Witte	1210 Brussel	\N	\N	88c4b8b452cf548ac470651521b0b305	t	2020-05-31 15:42:22+00	2020-05-31 15:42:51+00	\N
5260	60	audrey petit	Bruxelles	Marketing interim	audreypetit11@hotmail.com	7a39dabeb81f0adfb54fcc56159be264	f	2020-05-31 16:17:52+00	2020-05-31 16:17:52+00	audreypetit11@hotmail.com
5253	60	Wathelet Alain	Brussels 	\N	ULB	1d70982c096b65fbdc0591fb99502b3b	t	2020-05-31 15:51:12+00	2020-05-31 15:51:47+00	awathele@ulb.ac.be
5254	60	Manon	Bruxelles 	\N	\N	3539ac6bebc3c03bab356b8cfd071178	f	2020-05-31 15:58:34+00	2020-05-31 15:58:35+00	\N
5258	60	Magali Cadelli	Bruxelles	\N	Privée	5a6a5da27d7cb35200b230994f5f5e28	t	2020-05-31 16:05:44+00	2020-06-01 12:38:22+00	cadellimagali@gmail.com
5271	60	Marta Grabowska	\N	\N	\N	19ba72ca75937f8a2076e44a23e8ac59	t	2020-05-31 16:50:51+00	2020-05-31 18:59:30+00	marta.grabowska@hotmail.fr
5261	60	Gregory bueken 	Bruxelles 	Employe	\N	b0205e18551ed8dd97f0e09430a12f7d	f	2020-05-31 16:22:44+00	2020-05-31 16:22:45+00	\N
5262	60	Roobaert	Bruxelles	\N	\N	7f5d84f19e2a0835a0ba5ea76e26f476	t	2020-05-31 16:26:00+00	2020-05-31 16:26:23+00	\N
5264	60	Anne-Claire et Benoit	Bruxelles	Social	\N	b48035a87de55038fc65e52cf4b5250a	f	2020-05-31 16:31:27+00	2020-05-31 16:31:27+00	\N
5266	60	Vandemeulebroek Félix 	Schaerbeek	\N	\N	f83ebe2044bf8c46bc8fde2f61cf3d80	t	2020-05-31 16:37:33+00	2020-05-31 16:38:45+00	felixvandemeulebroek@gmail.com
5265	60	Kevin L	Ixelles	\N	\N	4ddcd217934243e5d134fa82bb69169e	t	2020-05-31 16:34:39+00	2020-05-31 16:37:21+00	\N
5240	60	Lambot valérie 	bruxelles 	Employee	\N	e763ee48d15de3800fbea46663317161	t	2020-05-31 15:23:46+00	2020-05-31 16:39:01+00	valerielambot@gmail.com
5267	60	Sophie Gérard 	Brussels 	\N	\N	378e5dad7b0fb4fa75095b1269471b54	t	2020-05-31 16:41:12+00	2020-05-31 16:41:48+00	\N
5268	62	Christophe Pierlot	Brussels	\N	\N	55504b72991f8132b124fa368628d657	t	2020-05-31 16:48:16+00	2020-05-31 16:48:46+00	chrpierlot@gmail.com
5270	60	Eléonore van der Gracht	Ixelles	Employée 	\N	e2d99334120f9f59ad925ab27cf1aa58	t	2020-05-31 16:50:33+00	2020-05-31 17:48:06+00	\N
5238	60	David Toussaint	Etterbeek	Sans emploi	phantmdct@gmail.com	b1196b618205ced4f3f1af8fd63a3cd4	t	2020-05-31 15:19:54+00	2020-05-31 17:59:26+00	phantmdct@gmail.com
5257	60	Rener	Bruxelles	A.S	Comensia	172abc111a497dcbd76d5ef668fc6d40	t	2020-05-31 16:05:15+00	2020-05-31 18:24:47+00	\N
5222	60	Maud Perilleux	Bruxelles	Ingénieur 	\N	1276b4c80c65ceb556d17ac9e5069df2	t	2020-05-31 15:03:44+00	2020-06-01 03:24:29+00	\N
5263	60	Marie Ramot 	Bruxelles 	\N	\N	b14eb85cba7a69c456613c313b55e216	t	2020-05-31 16:27:09+00	2020-06-02 09:34:27+00	marieramot@hotmail.com
5269	62	Suzanne van Hemmen	Brussel	\N	\N	e664e926913a6ebe782c0ba5fa29d4e8	t	2020-05-31 16:49:46+00	2020-05-31 16:51:07+00	\N
5272	60	Elsa	Schaerbeek 	Travailleuse	. 	79604f03c6a1c5ddc1f6271cf93d2c93	t	2020-05-31 16:55:34+00	2020-05-31 16:55:51+00	\N
5295	60	Adel	Bruxelles	Humoriste 	\N	b926ca55ef92f293b46f87e8452c9fd7	f	2020-05-31 19:57:38+00	2020-05-31 19:57:38+00	\N
5273	60	Gervais	Auderghem	ingénieur	\N	8c7573ca7a70320ef66026858ad6af9d	t	2020-05-31 17:05:37+00	2020-05-31 17:06:52+00	\N
5274	60	Joshua	Brusels	Riding the bike 	\N	a984b3abcf4f21456eb79bd309be7487	t	2020-05-31 17:17:27+00	2020-05-31 17:17:48+00	joshua.jarman06@icloud.com
5275	59	Mathilde Berthet	Saint-Josse	\N	\N	8cbf84fc99db850ef53ae2bf8f9221ae	t	2020-05-31 17:18:51+00	2020-05-31 17:24:19+00	\N
5297	60	Van Enis Alice	Auderghem 	Psychologue	\N	94bd10b175cf9da3d7fbcfa65c673d51	f	2020-05-31 20:24:44+00	2020-05-31 20:24:44+00	alice.vanenis@hotmail.com
5277	60	Jacques	Bxl	Ébéniste 	\N	3fe95a9919aae38e82f832c0f256d00a	t	2020-05-31 17:30:03+00	2020-05-31 17:30:28+00	\N
5278	60	Fanchon 	Bruxelles	Projet manager	\N	00c6f02d8a6833aed807c278b6ac56a9	f	2020-05-31 17:35:47+00	2020-05-31 17:35:47+00	\N
5296	60	Walid Salem 	Bruxelles 	Professeur	\N	fe762bc15d590e292bb25f875858ff64	t	2020-05-31 20:20:13+00	2020-05-31 20:30:18+00	\N
5279	60	François Trigaux	Bruxelles	Chercheur	\N	6ef8c49d1e4064bc2a822d0ebc8a483d	t	2020-05-31 17:42:56+00	2020-05-31 17:43:23+00	\N
5276	60	Julien VANDEVOORDE	Ixelles	\N	\N	f4d341b82e29ddae6236089ed761df74	t	2020-05-31 17:22:23+00	2020-05-31 18:07:58+00	\N
5281	60	Katja Klasinc	Bruxelles	\N	\N	2f47138b3d81c180070a7ee05452f5fe	t	2020-05-31 18:23:46+00	2020-05-31 18:24:58+00	katja.klasinc@gmail.com
5282	60	Dimitri 	Brussels 	Photographer 	\N	8123b8e9da11c5626e70bad607489ccb	f	2020-05-31 18:29:33+00	2020-05-31 18:29:33+00	publicationap@hotmail.com
5283	60	DAVID B	limal	\N	\N	765ddcfb5e203fd17d0c57d68ec83895	t	2020-05-31 18:30:56+00	2020-05-31 18:32:33+00	david_bauer@hotmail.com
5284	60	Servais Frédéric	Forest	\N	1190	4e03de3f174dba30b1c08556f65efd35	t	2020-05-31 18:39:09+00	2020-05-31 18:39:30+00	\N
5316	60	Damien Perry	Schaerbeek 	\N	\N	70fdfd0483f0d9bef442ea6e5fb09752	t	2020-05-31 22:04:19+00	2020-05-31 22:04:36+00	\N
5285	60	Antoine Canart	Uccle	\N	1984	a088ca77aa81cff79e6c62f37d54d613	t	2020-05-31 18:41:25+00	2020-05-31 18:42:05+00	\N
5286	60	Margit Oberleiter	Bruxelles	Employée	\N	2df5bc143eecd3d756d046543bef15bc	t	2020-05-31 18:48:38+00	2020-05-31 18:48:57+00	margit@zongo.be
5298	60	Boutte Achille	1000 Bruxelles 	Comptable	\N	152e9cbefb8f0e919c4cc9f5171a8898	t	2020-05-31 20:31:33+00	2020-05-31 20:32:01+00	\N
5287	60	Laurent Gosuin	Auderghem	Employé	\N	5f20d92ace3ee7bd116b78e602ea8f44	t	2020-05-31 18:58:49+00	2020-05-31 18:59:11+00	\N
5280	60	Myriam Fabry	Watermael-Boitsfort	\N	Mme.	9d79ea55308485fe5c364f42105a1168	t	2020-05-31 17:44:59+00	2020-06-01 18:44:00+00	myriam2fabry@skynet.be
5290	60	marjolaine 	Saint gilles	\N	\N	2d09590acdc88feff425fe6474116969	f	2020-05-31 19:23:19+00	2020-05-31 19:23:19+00	marjolaineabalea@gmail.com
5289	60	Pascal Haass	Brussels	praticien shiatsu	\N	fab4c55588aef25b4c5877d8aab06c87	t	2020-05-31 19:23:07+00	2020-05-31 19:23:20+00	\N
5291	62	Hendrik	Brussel	Student	\N	7794f85633f3a0a5145fc6e2ba741a2a	f	2020-05-31 19:27:46+00	2020-05-31 19:27:46+00	hendrik_vdp@hotmail.com
5307	60	Moureau 	Ixelles 	Assistante sociale 	\N	ba6f015e4dd42284f5a4a87135d0f7b4	t	2020-05-31 21:03:08+00	2020-05-31 21:04:03+00	\N
5292	60	Haris	Jette	\N	\N	20a93e3eb1f5fe87401fd2d7b660cfda	t	2020-05-31 19:46:30+00	2020-05-31 19:46:54+00	\N
5293	59	Fatma Girretz	\N	\N	Einwohnerin	f19ed00b540b7d4949e2476cb3eaab30	t	2020-05-31 19:52:58+00	2020-05-31 19:53:27+00	\N
5294	60	Marine Kaiser	Anderlecht	artiste	\N	a44317f6308f5d0daf7f3c35682834f8	t	2020-05-31 19:56:06+00	2020-05-31 19:56:44+00	marineksr@gmail.com
5301	61	Sylvie	Ixelles	HR	\N	0bb1e181a9d5f5b58eccc663069a6b74	f	2020-05-31 20:38:30+00	2020-05-31 20:38:30+00	\N
5299	60	Margot	Bruxelles	Institutrice	\N	95b6befc0ba311efa08be853dff79681	t	2020-05-31 20:37:50+00	2020-05-31 20:38:46+00	\N
5300	60	Caroline	Bruxelles	indépendante	\N	599e4d0382ec4408fc97a2bc774665f5	t	2020-05-31 20:38:01+00	2020-05-31 20:39:58+00	\N
5302	60	Lisa Houben	Brussels	Famous opera singer	\N	17b1174015433da641e70ba2e13af9fe	f	2020-05-31 20:42:39+00	2020-05-31 20:42:39+00	lisahouben@hotmail.com
5308	60	Julie Capoulade 	Saint-Gilles 	Chargée de plaidoyer ONG	Protection International 	63046b50b4bb03bcaaf25454fa3fcb71	t	2020-05-31 21:05:38+00	2020-05-31 21:06:13+00	julie.capoulade@gmail.com
5303	60	Béatrice Einsiedler	Bruxelles	\N	\N	12abd8776895583697c1a31d2e39cd9c	t	2020-05-31 20:47:02+00	2020-05-31 20:47:41+00	\N
5306	60	Rousseau Nancy	Bruxelles	\N	\N	0285642f3d681bc6418befdfc68d9d2f	t	2020-05-31 20:52:27+00	2020-05-31 21:07:30+00	\N
5304	60	Sebastien Albert 	Evere	Director 	Institution Financière 	40de5e160578fa80e73402b845bb8b23	t	2020-05-31 20:48:54+00	2020-05-31 20:50:03+00	\N
5313	60	Louisd ducamp	Forest	Praticienne Shiatsu	\N	40869e4bc95df7306b8f091f016ae3e6	t	2020-05-31 21:53:18+00	2020-05-31 21:57:03+00	louiseducamp@hotmail.com
5305	60	Lasse Boehm	Woluwe-Saint-Pierre 	\N	\N	4015dc941a2e796158e3ee45ae72302f	t	2020-05-31 20:51:24+00	2020-05-31 21:00:56+00	\N
5309	60	Peter Szatmári 	Uccle 	Fonctionnaire 	\N	67cf4b6f22a0f2c3d2e1e9889116424e	t	2020-05-31 21:22:09+00	2020-05-31 21:23:07+00	peszatmari@gmail.com
5310	60	Veireman	Nivelles	\N	\N	338bae0faf2cfa84434da327c5a77c83	t	2020-05-31 21:23:29+00	2020-05-31 21:24:36+00	stephane.veireman@mac.com
5311	60	Stéphanie Hocq	Brussel (Sint-Gillis)	sans emploi	1985	d5ac174b86473b9170ae0a321fd38093	f	2020-05-31 21:46:28+00	2020-05-31 21:46:29+00	\N
5317	60	Arnaud Biliotti	Bruxelles	Employé	\N	d562f54bd472e32087e662e3b59b2c9d	t	2020-05-31 22:33:03+00	2020-05-31 22:33:20+00	arnaudbiliotti@gmail.com
5315	60	Kalisa Ruzindaza	Bruxelles	Médecin	martial.kr@gmail.com	bddfa1583f5cf5a492613954f2b625db	t	2020-05-31 21:58:18+00	2020-05-31 21:58:34+00	\N
5288	60	Marguerite potard	Etterbeek	Directeur d'ONG	NA	2acd485f6e2079553406280100739de7	t	2020-05-31 19:03:05+00	2020-06-01 17:08:28+00	\N
5320	60	Pierre-Olivier 	Bruxelles	Gérant 	\N	a90c78ad378c0ce730af55d79879741f	t	2020-06-01 04:47:31+00	2020-06-01 04:48:09+00	\N
5322	62	van der Span Martine	Oudergem	\N	\N	7c83ec71a6ddf5fc4fd4c956744eafa4	t	2020-06-01 06:17:35+00	2020-06-01 06:22:03+00	tinespan@gmail.com
5321	60	David Bariaux	Auderghem	\N	\N	35b76151c9cea01ee9064ef74ab38721	t	2020-06-01 05:24:49+00	2020-06-01 05:25:32+00	\N
5323	60	Guillaume Desmottes	Auderghem	\N	\N	ac96ce8d6c60200e3c85b69662f804fa	t	2020-06-01 06:33:03+00	2020-06-01 06:33:26+00	\N
5324	60	Stefanie Schrank 	Auderghem 	\N	\N	d55b2a4f127e3808d84573a92534ac5e	t	2020-06-01 06:38:56+00	2020-06-01 06:39:24+00	\N
5325	60	Aline De Jaegere 	Auderghem 	\N	\N	9460b8173759e59751c2862af1007af3	t	2020-06-01 06:54:06+00	2020-06-01 06:54:32+00	aline.dejaegere@gmail.com
5326	60	Joséphine De Wit	Bruxelles	Horeca	\N	0a8709254a3723638116a0e2e561e283	t	2020-06-01 07:01:23+00	2020-06-01 07:03:17+00	\N
5318	60	Delourme	Bruxelles	Économiste	\N	610d4872695ad95cf60f31abc20eb22f	t	2020-05-31 23:15:29+00	2020-06-01 09:10:53+00	thibaud.delourme@gmail.com
5319	60	Mathias Junqué	Bruxelles	\N	\N	95e08a84e0e0d23d00216f5a1bcee0b1	t	2020-05-31 23:30:44+00	2020-06-01 10:18:23+00	\N
5312	60	Michel	Bruxelles	Indépendant	\N	38e91ab0faab5d4d309e7295b6f6ed95	t	2020-05-31 21:47:25+00	2020-06-02 09:24:21+00	michel@sotrac.be
5330	60	Jessica fernandez	Bruxelles	Administratif	\N	caa284f3bc2d4becdaa3c80028e7c765	t	2020-06-01 07:31:08+00	2020-06-01 07:31:26+00	jessica.fernandez.jeanjot@gmail.com
5331	60	Ludovic Delorme	Saint Gilles 	Architecte	\N	ed773a77332529771728fe488b391c2c	t	2020-06-01 07:41:08+00	2020-06-01 07:42:05+00	ludovic_delorme@yahoo.fr
5332	59	Amber	Saint-Josse-ten-Noode	\N	\N	80e1ceade75f5c784ad219985381f7a0	t	2020-06-01 07:43:29+00	2020-06-01 08:00:15+00	\N
5327	62	Sonia Dewandeleer	Vorst	Bediende	\N	9bb0980e68010a52d1745cb2db2233fa	t	2020-06-01 07:04:26+00	2020-06-01 07:05:26+00	sdewandeleer@hotmail.com
5329	60	Wagner	Ixelles	Ingénieur	\N	f13dda6ec6682ca94c0e229e16d95591	t	2020-06-01 07:24:31+00	2020-06-01 07:24:53+00	\N
5355	60	Eeckhoudt Laura	1150	\N	Nudicoloc	9847cdf0259edd2540c8257316ad888e	t	2020-06-01 09:41:44+00	2020-06-01 09:42:07+00	eeckhoudtlau@gmail.com
5333	60	Carine Van Malderen	Woluwe-Saint-Lambert	\N	\N	c0cefd92aab47a0908129c2d4f573869	t	2020-06-01 07:48:01+00	2020-06-01 07:48:58+00	\N
5334	60	Sebastiao Pires Carvalho	Bruxelles	Etudiant	-	117793a85914f60ebf7c4830e946b10e	t	2020-06-01 07:49:46+00	2020-06-01 07:50:39+00	sebastiaopc@hotmail.com
5353	60	Florian Delcoigne	Brussels	architect	\N	d70b266d6c1bf8d0f541d96f4f7e899a	t	2020-06-01 09:38:54+00	2020-06-01 09:45:43+00	\N
5335	62	Greet Mandelings	Zaventem	Bediende	\N	f2442cc3c6d0d4b9bb3afa554d8a332e	t	2020-06-01 08:09:59+00	2020-06-01 08:10:36+00	gmandelings@hotmail.com
5336	60	Simon 	Molenbeek	Fonctionnaire	\N	6e9233968c81704371410a37cef6b9a1	t	2020-06-01 08:10:32+00	2020-06-01 08:10:52+00	\N
5337	60	Sottiaux	Schaerbeek	Cycliste	SIAMU	0f839a9ba3a5ff3185d25d5cfd38579f	t	2020-06-01 08:22:14+00	2020-06-01 08:22:33+00	sottiauxvalentin@gmail.com
5338	62	Leander Meeuwis 	Brussel	Student	\N	163bd6eecb5827a5939cb57f27ebf577	t	2020-06-01 08:30:03+00	2020-06-01 08:30:23+00	\N
5367	61	babs verhoeve	leuven	\N	\N	ca181d4b1806e2253a46ee420cf9b71c	t	2020-06-01 11:40:44+00	2020-06-01 11:41:54+00	\N
5339	60	coen	woluwe saint pierre	student	ulb	1e97c85c74fb31821d2bf653b9c3915e	t	2020-06-01 08:42:35+00	2020-06-01 08:43:18+00	\N
5356	60	Steenbeek	Ixelles	Employé 	/	d23ece7de4995925fcdc3c66e9700b74	t	2020-06-01 09:45:46+00	2020-06-01 09:46:13+00	\N
5340	60	sofía martínez	Bruxelles	Engineer	Eu commission	7d5666cb9a9b436ca227cbf7c5fcdeab	t	2020-06-01 08:47:06+00	2020-06-01 08:47:27+00	\N
5342	60	Pascale Marcq	1170 	Employée 	\N	c5f8ea718dbbb5cb7f26dfde5df91d9a	t	2020-06-01 08:58:50+00	2020-06-01 08:59:35+00	marcqpascale53@gmail.com
5344	60	Maietta 	Bruxelles 	\N	\N	6f2c0a1d114ede7c24b622be3be3658c	t	2020-06-01 09:14:07+00	2020-06-01 09:15:52+00	virgo_maietta@yahoo.fr
5345	60	Laurent	Ath	Coordinateur	La Véloterie	d65419cef1d38be0b47f7cd7d8073e42	f	2020-06-01 09:16:45+00	2020-06-01 09:16:46+00	\N
5343	59	Matteo Brignacca	sint joost ten node	libre	x	58e40790df5cc665a7aa74904608a315	t	2020-06-01 09:08:50+00	2020-06-01 09:21:09+00	\N
5357	60	Goerg	Jette	prof	\N	b3ab46bfd7110e50b6522d2c04875343	t	2020-06-01 09:50:43+00	2020-06-01 09:51:05+00	sachagoerg@gmail.com
5348	59	Hedwig	Sint-Joost-ten-Node	Inwoner	\N	a4b4892b7d56fd7bc807bccb8b9f4401	f	2020-06-01 09:30:20+00	2020-06-01 09:30:21+00	\N
5349	62	David De Grave	Zemst	\N	\N	009b4aea882a681f2f73bb1b09782a6f	t	2020-06-01 09:31:27+00	2020-06-01 09:31:54+00	\N
5347	60	RAFAEL MUNOZ GOMEZ	Bruxelles	Musicien	\N	69bdb831e0115bb09b2b93782bedf46e	t	2020-06-01 09:30:18+00	2020-06-01 09:33:21+00	\N
5350	61	Stéphanie Van den Bergh 	Brussels	\N	\N	7c2ad99692437159f022681745d64cce	f	2020-06-01 09:34:01+00	2020-06-01 09:34:01+00	stvdberg@gmail.com
5352	60	Zamburlini Maria Giovanna	Schaerbeek	Chargee de projet 	\N	7258a11d0834b2bd001e07f577abffa0	f	2020-06-01 09:37:09+00	2020-06-01 09:37:09+00	mariagiovannazamburlini@gmail.com
5351	60	Lucie Colla	Watermael-Boitsfort 	Étudiante 	\N	d71795a36d5235c91f8a65f31f4caa5c	t	2020-06-01 09:34:27+00	2020-06-01 10:01:52+00	\N
5354	60	Pajor Martine 	Ixelle 	\N	Tramway 	cd8c66c76c4d4cdcc69e12d104cf281a	t	2020-06-01 09:39:55+00	2020-06-01 09:40:49+00	\N
5370	62	Anne	Herent	Bediende 	\N	b8a4d6f1f0c5e601db4a53cdce3718a7	t	2020-06-01 12:23:17+00	2020-06-01 12:23:48+00	\N
5360	60	Jonathan Moskovic	Bruxelles	\N	jon.ajax@gmail.com	d85d9c1915c9a4c5bc1369886f9ebb05	t	2020-06-01 10:15:57+00	2020-06-01 10:16:21+00	\N
5361	60	Tatiana Martinez Fernandez	Bruxelles	\N	\N	7f7d3bf9104cb85c0c16b8239be68667	t	2020-06-01 10:17:48+00	2020-06-01 10:19:18+00	\N
5362	59	Tatiana Martinez Fernandez	Bruxelles	\N	\N	4bec5c9058c5565daf80cbc2046dab77	t	2020-06-01 10:18:33+00	2020-06-01 10:19:45+00	\N
5371	66	Bernard Dehaye	Evere	Pensionné 	Heroes for Zero	8bf20ef57f87e406db663caaf7e7d47e	t	2020-06-01 12:26:38+00	2020-06-01 12:27:08+00	\N
5363	60	Sanne rous	Schaarbeek	\N	\N	650beae3f170ad8cef016fe4841966f2	t	2020-06-01 10:24:35+00	2020-06-01 10:25:02+00	\N
5366	60	Lacaille Guy	Nivelles 	Pensionné 	\N	549644cfdb9739549d2b570746c4b6b6	f	2020-06-01 11:15:18+00	2020-06-01 11:15:18+00	guy.lacaille@me.com
5358	60	Serge Giotti 	Bruxelles 	Photographe 	\N	80e560b7df08365d5dbfb4437192301b	t	2020-06-01 10:01:09+00	2020-06-01 11:24:29+00	giottiserge@scarlet.be
5373	60	Sebastien Mortier	Brussel	bediende	\N	53b799724c0680bad8e922a7f611882d	f	2020-06-01 13:37:29+00	2020-06-01 13:37:29+00	\N
5374	60	Basile museux	Bruxelles	Architecte	\N	aadafb5b4525eacf0e8fd87b9b61b9b1	f	2020-06-01 13:51:57+00	2020-06-01 13:51:57+00	basile.museux@hotmail.fr
5365	60	Pierre Herfurth	Bruxelles	\N	\N	456e745997cb45e7beee00f98534bf73	t	2020-06-01 10:35:14+00	2020-06-01 16:49:17+00	pierre.herfurth@gmail.com
5346	60	Francine Druylandt 	Anderlecht	Retraitée 	\N	8709a1d76076c3502d5bbe9e2006b64b	t	2020-06-01 09:22:16+00	2020-06-02 11:49:19+00	nathmapy@hotmail.be
5359	60	Gérard Anne-Sophie	Bruxelles	Salariée	CPCP	dd05ea98938cfddf80929c8cee202976	t	2020-06-01 10:03:48+00	2020-06-02 14:54:31+00	annesophiegrrd@gmail.com
5369	60	carole aspeslagh	ukkel	architect	\N	e84ccf2cb76b357356296d3a7d035dd7	t	2020-06-01 11:44:42+00	2020-06-01 11:45:05+00	\N
5372	60	De Boeck	Bruxelles	éducateur	\N	10d2ba13e76175c9da8479f48e9529a4	t	2020-06-01 12:39:30+00	2020-06-01 12:43:50+00	xavierdeboeck@gmail.com
3111	60	\N	\N	retraitée	\N	46274afd88b892a394d45ca39d77d2f8	f	2020-05-25 10:18:03+00	2020-06-01 13:57:51+00	\N
5375	60	martialeferauge 	Bruxelles	retraitée	\N	f4bcb987e147335d5ace4fb57324a2ad	t	2020-06-01 13:56:03+00	2020-06-01 13:58:21+00	\N
5377	60	Cyril Mortreu	Bruxelles	Employé 	TEM 	78140754419d064229c998e02a123ba2	t	2020-06-01 14:20:08+00	2020-06-01 14:21:48+00	\N
5378	60	Timothy Cooper	Bruxelles 	Fonctionnaire UE	Commission européenne 	ade2af712b86402dca7283a520671440	t	2020-06-01 14:35:23+00	2020-06-01 14:35:44+00	timothy.peter.cooper@gmail.com
5380	60	Sophie Petitjean	Schaerbeek	\N	\N	26504b1d5b77e702ca5377ee7cb3cef4	t	2020-06-01 15:40:57+00	2020-06-01 15:41:29+00	sophieptj@gmail.com
5403	62	Herlinde cornelis	 Linkebeek	Creative coach	\N	81e1e4a613697b549cb06a643c0969e9	t	2020-06-01 21:48:59+00	2020-06-01 21:49:49+00	herlinde.cornelis@telenet.be
5382	60	Pierre Goffart 	1050	Conseiller 	Gouvernement wallon 	3aa1fd696a6361845d95231b12e18e06	f	2020-06-01 16:06:49+00	2020-06-01 16:06:50+00	\N
5381	60	Hélène SOLDANO	\N	\N	\N	c0ad3f0397e5872f47a1663799c568e3	t	2020-06-01 16:06:20+00	2020-06-01 16:07:46+00	\N
5383	60	\N	\N	\N	\N	6e61db45ef6f5f2b0cb2829928e6a15a	f	2020-06-01 16:39:43+00	2020-06-01 16:39:43+00	\N
5139	60	Martha Jiménez DIaz	Woluwe st Pierre 	Assistant en pharmacie 	Multipharma 	8d22f7ea7f27701a3b6cda231b2d759f	t	2020-05-30 13:57:02+00	2020-06-01 17:04:01+00	marthadesgain@yahoo.fr
5384	60	Fabian baudry	Schaerbeek 	\N	\N	d15447c2a3d60d6de420aed7daa8baf6	t	2020-06-01 17:36:16+00	2020-06-01 17:36:46+00	fbaudry@jaures.be
5402	62	Bea	Brussel	Bediende	\N	b1609fd0fba993f477763098033a5c6f	t	2020-06-01 21:45:15+00	2020-06-01 21:54:18+00	bea.verstuyft@contactoffice.be
5387	61	Itay Mayerovits 	Etterbeek 1040	\N	\N	07e2c58c0a85ad800ae54401017d0a84	t	2020-06-01 17:55:32+00	2020-06-01 17:56:11+00	itay.mayerovits@gmail.com
5388	62	Catherine Vuylsteke	Brussel	Journalist	Knack	612a4b4ee731cf3ce34eedb441a94feb	f	2020-06-01 18:48:47+00	2020-06-01 18:48:48+00	\N
5389	62	Saskia vervoven	Brussel	Producer	\N	fc638b4dfe648a2bb86547a6502a5d24	t	2020-06-01 19:02:34+00	2020-06-01 19:03:42+00	\N
5390	62	Yann	\N	\N	\N	0080710420b43e48834cdbe52499fe1f	f	2020-06-01 19:13:28+00	2020-06-01 19:13:29+00	\N
5391	61	Jessica Ruiz Vargas	Bruxelles	Enseignant	\N	333c42916887a93db17c8d45a19767a4	t	2020-06-01 19:21:34+00	2020-06-01 19:22:06+00	\N
5404	60	Toni Popovski	Bruxelles	Architecte	toni.bt.nov@gmail.com	dc5cf0cbce1f75b51423eb4f1402ccfa	t	2020-06-01 22:24:57+00	2020-06-01 22:25:53+00	\N
5392	60	Yannick	Bruxelles 	Architecte 	\N	51212ace5b9e716dec2bacec50a2e801	t	2020-06-01 19:42:56+00	2020-06-01 19:43:10+00	\N
5394	60	François Seghers	Bruxelles	Médecin 	\N	72525a3ebafcaf388c988601e5dc5505	t	2020-06-01 20:01:09+00	2020-06-01 20:03:59+00	fr.seghers@gmail.com
5395	62	Rita Van Gucht	Londerzeel	Gepensioneerd	\N	4e5430dc8ed4aaaac2ba80677a94289d	t	2020-06-01 20:09:36+00	2020-06-01 20:14:02+00	rita.vangucht@telenet.be
5393	61	Kim Wyns	Laken	\N	\N	2e3f8a1d614d9ac2b1ae50f9a05b3278	t	2020-06-01 19:50:54+00	2020-06-01 20:25:38+00	kaybxl@skynet.be
5397	60	Tiphaine de Portbail	Bruxelles	Juriste	\N	57e5cae8a52e92c63eee885bff4a9e2f	t	2020-06-01 20:46:54+00	2020-06-01 20:47:29+00	\N
5379	60	Defise	Boitsfort	Employé	\N	eb0071ec3a84c8909ad175b68c335123	t	2020-06-01 14:56:04+00	2020-06-01 20:52:15+00	\N
5399	60	Eleonore 	\N	Administratrice 	Solidair.brussels 	0f2520f7ac36654967a0092159f4acda	f	2020-06-01 20:58:28+00	2020-06-01 20:58:28+00	\N
5386	60	gregoire	Bruxelles	étudiant	\N	87a1721cc31727321b8f45a4963d6e88	t	2020-06-01 17:39:27+00	2020-06-01 21:16:11+00	\N
5398	60	Elé Paelinck 	BRUXELLES 	Juriste 	Fonction publique 	1c445d4a40710b9c24b7fe32a0140d5e	t	2020-06-01 20:56:32+00	2020-06-01 21:19:07+00	\N
5413	60	Gilles Hervé	Saint-Gilles 	\N	\N	04bf0580eb99192b698a7a774a7d95a0	t	2020-06-02 05:48:16+00	2020-06-02 05:48:42+00	\N
5405	60	Nazanin Fakoor	Brussels	\N	\N	3cdcda63682df730ab67f64a626c9e6c	t	2020-06-01 22:26:00+00	2020-06-01 22:27:03+00	\N
5400	60	Quentin Stinglhamber	Dilbeek	Employé	\N	bfa31a8829bef096f9d7a0dbbe8838d0	t	2020-06-01 21:26:21+00	2020-06-01 21:27:46+00	\N
5406	60	César callebaut 	Bruxelles 	Employé	ULB	51091278ded5042a2d5eb858afd350a4	t	2020-06-01 22:32:59+00	2020-06-01 22:33:52+00	cecalleb@ulb.ac.be
5409	61	Dedye marc	\N	Enseignant	\N	eb630e981df1b3b112d967b1e8f078d3	f	2020-06-02 04:22:10+00	2020-06-02 04:22:10+00	\N
5417	60	Melanie Ganino	Ixelles	\N	\N	406fcef0acebedc7630e2e9bf6ed4292	t	2020-06-02 07:50:45+00	2020-06-02 07:51:08+00	\N
5412	60	Françoise  Vervoort	Bruxelles 	Musicienne 	\N	3586b018ba3283fde85eeaeda9b4c7e9	t	2020-06-02 05:41:41+00	2020-06-02 05:42:12+00	francoiseverpox@icloud.com
5411	60	Céline Goldbaum	Ixelles	employée	\N	7aa89c669f6a19a7213f7e90f9abf27b	t	2020-06-02 05:41:23+00	2020-06-02 05:51:14+00	acelineetlaurent@gmail.com
5414	60	Chloé 	Schaerbeek	Employée	\N	8425ea6da4f3cedf6d3fb23e0cbe2957	t	2020-06-02 05:57:29+00	2020-06-02 05:58:32+00	chllaurent@gmail.com
5410	62	Stefanie Boeckmans 	Brussel	Bediende	Levi Strauss	a0d4fffb55f065ee3afcf79d72bd3ea3	t	2020-06-02 05:29:22+00	2020-06-02 06:04:44+00	\N
5385	60	Barbara	Bruxelles 	\N	\N	c3c443cf0cd7dd770a9fa18a929e27a8	t	2020-06-01 17:38:35+00	2020-06-02 07:52:18+00	\N
5415	61	Alain Wimlart	Auderghem	fonctionnaire	\N	6eab9bef2d61c1cd1c0958ffce379332	t	2020-06-02 06:37:02+00	2020-06-02 06:37:42+00	\N
5416	61	Chris Mascarello	Brussel	\N	\N	39c6a61c2e2f8a771f5fda213bd484c6	t	2020-06-02 07:07:13+00	2020-06-02 07:07:30+00	mascarellofamilia@gmail.com
5418	60	Geneviève Dewandre	Bruxelles	logopede	RéCI-Bruxelles	8c6dad2f9f2a33dffe65e5b896c28dc6	f	2020-06-02 07:53:59+00	2020-06-02 07:53:59+00	\N
5420	61	David Humphreys	Woluwe-Saint-Lambert	\N	\N	578a8f5ea349a6c8e65cc10a160ee6e1	t	2020-06-02 08:10:15+00	2020-06-02 09:22:59+00	d.humphreys@skynet.be
5419	60	Gosselin	Bruxelles	\N	\N	fdad1a33a22de0b054955dc82ca3f371	t	2020-06-02 08:09:24+00	2020-06-02 12:48:56+00	\N
5422	60	Laura GW	Bruxelles	\N	\N	20a4a4efbc19a154780033e624db9a8d	t	2020-06-02 08:20:36+00	2020-06-02 08:20:58+00	\N
5423	60	Manuel von Rahden	Brussels	\N	Freelancer	ce375eccf52bba18c9e7cc67f99922f8	t	2020-06-02 08:20:53+00	2020-06-02 08:21:12+00	\N
5421	59	Gosselin	Bruxelles	\N	\N	60d3b35c3dd7e03d78a7505657d2d52f	t	2020-06-02 08:14:02+00	2020-06-02 12:51:13+00	\N
5396	60	Marie Carton de Wiart	1030	Enseignante 	\N	b61388de68f87c138553477b568e9903	t	2020-06-01 20:35:59+00	2020-06-03 07:51:25+00	\N
5425	60	Adeline Slosse	Bruxelles	\N	\N	7405843f0e81b8917a4124df305a3e15	t	2020-06-02 08:21:39+00	2020-06-02 08:22:46+00	\N
5448	60	Wahis Jérôme	Bruxelles	Chercheur en neurosciences	\N	4b88f5eaceb7ea1ba8cfd84972ecc4ff	t	2020-06-02 17:52:53+00	2020-06-02 17:53:48+00	\N
5426	59	Laura Gomez	Bruxelles	\N	\N	11dd3934461f36e311b8ffb9e630b7fd	t	2020-06-02 08:23:25+00	2020-06-02 08:23:41+00	\N
5427	60	François Bronchart	Bruxelles	\N	\N	4e38527ca9bf5b4313c5839233bce6d9	t	2020-06-02 08:23:34+00	2020-06-02 08:24:03+00	\N
5428	59	Adeline Slosse	Bruxelles	\N	\N	f31fa1412e1c3a92f2bcda6f99ba2fc4	t	2020-06-02 08:26:27+00	2020-06-02 08:27:00+00	\N
5449	60	Julie Mertens	Uccle 	Employée	\N	93fdc2035ed845c0a677d112b6996fb7	t	2020-06-02 18:40:53+00	2020-06-02 18:44:36+00	\N
5429	62	Andy Heurckmans	Vorst	Bediende	\N	bdb0ead2327a94c561a8d50d3226b0eb	t	2020-06-02 09:28:39+00	2020-06-02 09:29:06+00	\N
5430	60	Max Carakehian	Bruxelles	\N	\N	517057bd33f8dbf01932f0405c18cd2a	t	2020-06-02 09:41:34+00	2020-06-02 09:41:48+00	\N
5431	59	Max Carakehian	\N	\N	\N	f4a879ef49bc12e7f56d1ac7542039d6	t	2020-06-02 09:44:57+00	2020-06-02 09:45:23+00	\N
5432	60	Mike Van De Weghe	Ganshoren	\N	\N	d7c80c9b2eb937cbbe40ea552dc68a93	t	2020-06-02 11:41:36+00	2020-06-02 11:42:37+00	mikevdw@gmail.com
5468	60	Morier emilie	Uccle	\N	\N	c580bb9872b57f5b81e2c33a84947e00	t	2020-06-03 11:16:53+00	2020-06-03 11:17:27+00	\N
5434	60	Suat Donertas	Bruxelles	Etudiant	\N	3b2c0cf1ccd50d65012388a2154f4ef1	t	2020-06-02 11:51:22+00	2020-06-02 11:51:39+00	\N
5435	61	Sofie	Evere	\N	\N	d556c21537f1dfcc555ce88bc3722f28	t	2020-06-02 13:17:24+00	2020-06-02 13:17:47+00	sofiepieret@gmail.com
4813	60	Geoffrey Cristallo 	\N	\N	geoffreycristallo@hotmail.com	bd3212f4bb94c2adfcb1b2b4f3634a69	f	2020-05-27 17:03:22+00	2020-06-02 13:22:01+00	\N
5438	60	Cécile Girboux	Bruxelles	Institutrice	\N	ecda86791f7517e18ddb36e1de196dad	t	2020-06-02 13:33:25+00	2020-06-02 13:33:49+00	cecilegirboux@yahoo.fr
5450	60	Lennert De Taeye	1000	\N	\N	5d2191886c1b81a39437735f5106b811	t	2020-06-02 18:59:58+00	2020-06-02 19:00:26+00	\N
5439	60	greivelding	Bruxelles	employée	\N	3c50016a8e46096f0edde6dc2ddf2c8f	t	2020-06-02 13:47:05+00	2020-06-02 13:47:26+00	\N
5433	60	Sophie Kavadias	Ganshoren	\N	\N	379da94068fa677a56ce9339b6f65b96	t	2020-06-02 11:43:52+00	2020-06-02 13:53:34+00	so.kavadias@gmail.com
5440	60	Socha Cauuet	Forest	Prof	\N	c0693367fab7b449b484f85199b085c6	t	2020-06-02 13:53:30+00	2020-06-02 13:53:46+00	socha.cauuet@gmail.com
5441	59	siska vastesaeger	Sint-joost-ten-node	\N	\N	7cdc84ddd6f18a2ef9bea144418e5436	t	2020-06-02 13:55:33+00	2020-06-02 13:57:48+00	\N
5460	60	Rose	Etterbeek	étudiante	Extinction Rebellion	443da88fb8ea4ec3485762242648eb4b	t	2020-06-03 08:37:52+00	2020-06-03 08:38:39+00	\N
5442	66	Jens De Schutter	Jette	Architect	Art Basics for Children	a86485f41a26c1f89ed3c65378e65fa5	t	2020-06-02 14:00:50+00	2020-06-02 14:12:57+00	\N
5452	60	Johana Svobodova 	Bruxelles 	\N	\N	e97308d56c020d4d6bfdc72e6492355d	t	2020-06-02 19:24:16+00	2020-06-02 19:24:55+00	\N
5443	60	Wouters	Auderghem	retraitée	\N	6b21198e663d15d7e941166cecead3cc	t	2020-06-02 14:41:15+00	2020-06-02 14:41:57+00	\N
5445	60	d'Haillecourt	Evere	Retraitée	\N	9895c35f3c773744d8ae80171d01fcb0	f	2020-06-02 15:12:04+00	2020-06-02 15:12:04+00	ydh36@hotmail.com
5446	61	Ann-Laure Delbecq	Uccle	\N	\N	6246d6236d830ddba4bc26a6bbf6893d	f	2020-06-02 16:54:16+00	2020-06-02 16:54:17+00	\N
5447	60	Laurent Bauwin	Schaerbeek	\N	\N	24891b217316e3a1db48426563b1ded3	f	2020-06-02 17:06:59+00	2020-06-02 17:06:59+00	laurent.bauwin@hotmail.com
5463	60	Vannoye Clement	Brussel	Hairdresser	clementvannoye@gmail.com	20659ec5bb7fe266d63769bf63b05e15	t	2020-06-03 10:04:34+00	2020-06-03 18:07:02+00	clementvannoye@gmail.com
5461	60	Guilhem Donzel	Uccle	\N	\N	947b5fe04760375ccb93b0d2b0f60256	t	2020-06-03 08:59:57+00	2020-06-03 09:00:15+00	\N
5453	60	Franziska Neher	Bruxelles	\N	\N	621ea512d92175e3cc8abc0fc365e119	t	2020-06-02 19:44:17+00	2020-06-02 19:44:44+00	\N
5454	62	Anita Meesschaert 	Koekelberg 	Ambtenaar 	\N	009064b26216c0bc57bcf4b0dad66e6c	t	2020-06-02 20:24:56+00	2020-06-02 20:29:45+00	\N
5444	60	gregory bromey	Bruxelles 	\N	gregorybromey@gmail.com	d4fc7fad1099eb76ba8b6d3f3fda81b3	t	2020-06-02 14:45:09+00	2020-06-02 20:29:59+00	\N
5462	60	Henrik Kjellin 	Ixelles 	Juriste	\N	bd701016c0c6b699d04ec39d8245fd19	f	2020-06-03 09:08:31+00	2020-06-03 09:08:32+00	\N
5457	60	Robert THOMAS 	Bruxelles 	\N	\N	196fc453779dcb4640ecba5ea5e993c7	t	2020-06-03 04:26:33+00	2020-06-03 04:26:57+00	\N
5456	60	Gauthier Limpens	Schaerbeek	\N	\N	a492f9a3a3094aac9e714193eb1b389b	t	2020-06-02 21:09:00+00	2020-06-03 06:36:25+00	gauthier.limpens@uclouvain.be
5437	60	Annabelle 	Auderghem	employée	/	33859b9e8acb259cefcedf25843487b0	t	2020-06-02 13:32:18+00	2020-06-03 07:16:39+00	aboffa3@gmail.com
5458	60	Hollela	Bruxelles	\N	\N	3977d5cba3828ac8e2d7e080283e2f9e	t	2020-06-03 06:50:58+00	2020-06-03 07:37:03+00	\N
5459	60	claudie greene	woluwe saint lambert	étudiante	\N	754919f204277cb453e4ec4b569ab526	t	2020-06-03 07:54:59+00	2020-06-03 07:55:14+00	greeneclaudie@gmail.com
5465	62	Bernadette De Coster	Vorst	\N	\N	d09a4e884c19eeb952ebff7781ed178f	f	2020-06-03 10:27:22+00	2020-06-03 10:27:22+00	\N
5464	60	Zoltán Szeles 	Auderghem	Survivant	\N	9f86f603667b5dd741fcb09da73cbfeb	t	2020-06-03 10:26:59+00	2020-06-03 10:29:18+00	szelezo@gmail.com
5466	61	Edouard del Marmol	\N	\N	Semoulin Packaging	ae904c8800ddc9d033e2515ca3075d57	f	2020-06-03 10:59:50+00	2020-06-03 10:59:50+00	\N
5467	60	Edouard del Marmol	schaerbeek	Sales	Semoulin Packaging	c80d6041f573b8a3f811966440176949	t	2020-06-03 11:04:03+00	2020-06-03 11:04:18+00	e.delmarmol@gmail.com
5472	60	Brigitte Courbot 	Bruxelles 	\N	\N	2bb0e373a6f0fd0371bb5de16b90c389	t	2020-06-04 04:48:20+00	2020-06-04 04:48:48+00	\N
5469	60	B Black	Brussel	\N	SCIC	f611f046bd1bf4b679eec094aa7db630	t	2020-06-03 20:54:35+00	2020-06-03 20:55:47+00	\N
5471	60	KENNETH BELL	Bruxelles	\N	Mr	27d328828e4767bb56b34b170d94019e	t	2020-06-03 22:06:05+00	2020-06-03 22:08:10+00	\N
5473	61	Patrick	Brussels	Director	CKA	7c9c57b16eba9ceb61c3e9ffe15fd0b0	t	2020-06-04 10:17:19+00	2020-06-04 10:17:56+00	rehan@cka.be
5474	61	Ljuba Ferrario	Bruxelles	\N	\N	952b812fe23cba1c1fac1e7331e68ece	t	2020-06-04 10:17:57+00	2020-06-04 10:19:21+00	\N
5478	61	Tom Adlam	Brussles	Consultant	FiscalNote	79d1b045da06be206925ccdb10512ba3	f	2020-06-04 10:31:58+00	2020-06-04 10:31:59+00	\N
5475	61	Cédric Brodin	\N	\N	\N	32b53bd884f03605c5b7b70b307fb3ee	t	2020-06-04 10:22:12+00	2020-06-04 10:24:10+00	\N
5476	62	Ernestas Oldyrevas	Brussels	Programme Manager	ECOS	c8a7b359bbf2a0a065ab4b86f1e81c15	t	2020-06-04 10:23:45+00	2020-06-04 10:45:10+00	\N
5477	61	Marie Gissat	Brussels	COmmunication assistant	FEDARENE	394eb9b52152cc430d6913e8c4d9d1e0	t	2020-06-04 10:25:09+00	2020-06-04 10:25:59+00	\N
5479	61	Blanca Morales	Brussels	EU Ecolabel Coordinator (mother of 3 children!)	European Environmental Bureau	957976b2ad9172585fa98338be5132bc	f	2020-06-04 10:52:33+00	2020-06-04 10:52:33+00	bemoralesb@yahoo.com
5481	60	Blanca Morales	Watermael Boitsfort	\N	European Environmental Bureau	5f15263270d25d281ba6569483711c4a	t	2020-06-04 10:54:33+00	2020-06-04 10:56:15+00	blanca.morales@eeb.org
5482	61	Frederik Hafen	Brussels	Civil Servant	\N	2b009345fd6ea030d7d55e38b717fbc7	f	2020-06-04 10:56:46+00	2020-06-04 10:56:46+00	frederik.hafen@gmail.com
5483	61	Acacia Smith	Brussels	\N	\N	b8f79a93ea49cc57fbd3a9077515bd8b	t	2020-06-04 11:02:15+00	2020-06-04 11:04:38+00	smithacacia@gmail.com
5480	60	Kosmo Devos	Brussels	\N	\N	2314e28d043b1a434bc313c619ff485f	t	2020-06-04 10:54:07+00	2020-06-04 11:07:55+00	\N
5485	61	Wim van Schie	\N	\N	\N	c5bdad229caa73d7559ebbaf45a88b55	t	2020-06-04 12:01:06+00	2020-06-04 12:12:37+00	\N
5486	60	chiara	brussels	\N	\N	6e2adee555e43172969b04f2987c6c8a	f	2020-06-04 12:23:35+00	2020-06-04 12:23:36+00	\N
5487	60	Moreau Nicolas	Bruxelles	Barman	\N	828edc7aaa2c1ca1a96fdd7dacf6a370	t	2020-06-04 12:28:42+00	2020-06-04 12:29:10+00	\N
5484	61	Kristyna Koubkova	Brussels	\N	\N	360edc27befcd791cbc86ec608ac9992	t	2020-06-04 11:53:00+00	2020-06-04 12:41:29+00	kristynka.kk@centrum.cz
5488	60	Amina nmeur	Bruxelles	\N	\N	780ccbc2bfafbb4c09728d3341bf43f4	f	2020-06-04 13:17:30+00	2020-06-04 13:19:58+00	aminanmeur@hotmail.com
5490	61	Yvon Slingenberg	Brussel	\N	\N	6dea3cbf9fa5182949e7077efc600d8b	t	2020-06-04 13:29:50+00	2020-06-04 13:30:17+00	\N
5491	61	Agnese Marcon	Brussels	Communications Coordinator	ZWE	91af4cecf0939eaa3e067697effb913a	t	2020-06-04 13:33:03+00	2020-06-04 13:33:39+00	\N
5492	61	Karl Edsjö	Ixelles	Director	\N	807a8a71e6cefb25d0a511fd0ae53bba	t	2020-06-04 13:36:26+00	2020-06-04 13:36:50+00	karl_edsjo@yahoo.com
5495	60	Maetz Maryvonne	Schaerbeek	Policy Analyst	\N	29f3ef373e2ed84496368c55fc77b596	f	2020-06-04 14:04:13+00	2020-06-04 14:04:14+00	\N
5496	61	Lars Nielsen	Ixelles	\N	\N	df5947e643f38c7c5928dab8571b36d9	t	2020-06-04 14:14:52+00	2020-06-04 14:15:18+00	nielsen56@gmail.com
5497	60	Aurelien Bihr	Schærbeek 	Carpenter	\N	cd884f29d061833890e821df070f5069	f	2020-06-04 14:15:40+00	2020-06-04 14:15:40+00	tamaqa@hotmail.com
5494	61	Tracey Hamill	Brussels	\N	\N	bb284f623507d8bf6ce13ae08ea9db92	f	2020-06-04 14:01:27+00	2020-06-04 14:42:13+00	\N
5499	60	Amandine delacroix	Bruxelles	Employée	\N	d706b09b4872b951d45fa8abd8f0666b	f	2020-06-04 14:42:42+00	2020-06-04 14:42:42+00	amandine.delacroix@belgiantrain.be
5500	61	Nora Lawton	Bruxelles	\N	\N	bd7184524619ef7225b31ee983531f52	t	2020-06-04 14:59:32+00	2020-06-04 14:59:58+00	lawton.nora@gmail.com
5501	61	Gregory Creitz	Brussels	Management Consultant	HumanSourceSolutions	992dee43f5c6650e8cc8dda1e02b097d	t	2020-06-04 15:07:37+00	2020-06-04 15:07:56+00	gregory@humansourcesolutions.com
5502	60	Amaury	Beersel	Etudiant	/	d8c8c23f1943b90596db65aa2e79fc23	t	2020-06-04 15:55:22+00	2020-06-04 15:56:06+00	\N
5503	60	Patrick B.	Woluwe	\N	\N	bccb0a37d8c7456c566439fa76381489	t	2020-06-04 16:05:53+00	2020-06-04 16:06:25+00	\N
5493	61	Costa Lawrence 	Etterbeek	\N	\N	a02345926e6914734c8d2f0a14c15d94	t	2020-06-04 13:59:04+00	2020-06-04 16:51:39+00	\N
5504	61	Jennifer Baker	Brussels	Journalist	Freelance	36f6ba1f4f9ef049d2520fb48a30b970	t	2020-06-04 18:18:11+00	2020-06-04 18:18:42+00	brusselsgeek@gmail.com
5506	61	Justine Maillot	1060	policy officer	ZWE	1738107b61425912e94fa199404c3d08	t	2020-06-04 19:56:09+00	2020-06-04 19:56:45+00	justinemaillot.3@orange.fr
5505	61	Sorcha Edwards	Brussels	Trade association	\N	7548b54402c5bc8cb6fc203cd97ff931	t	2020-06-04 18:37:17+00	2020-06-04 19:58:14+00	sorcha_edwards@yahoo.com
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        3899.dat                                                                                            0000600 0004000 0002000 00000000005 13666255372 0014300 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3901.dat                                                                                            0000600 0004000 0002000 00000000267 13666255372 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	\N	xdamman@gmail.com	c767ede0f42aea76	2020-05-22 09:35:48+00	2020-05-22 09:35:48+00	\N
2	\N	xdamman@Gmail.com	f10810a278462023	2020-05-25 13:52:06+00	2020-05-25 13:52:06+00	\N
\.


                                                                                                                                                                                                                                                                                                                                         restore.sql                                                                                         0000600 0004000 0002000 00000027203 13666255372 0015407 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Ubuntu 12.3-1.pgdg16.04+1)
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE d77m5ah791nk74;
--
-- Name: d77m5ah791nk74; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE d77m5ah791nk74 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


\connect d77m5ah791nk74

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: adonis_schema; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.adonis_schema (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: adonis_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.adonis_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: adonis_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.adonis_schema_id_seq OWNED BY public.adonis_schema.id;


--
-- Name: letters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.letters (
    id integer NOT NULL,
    slug character varying(100) NOT NULL,
    title character varying(100) NOT NULL,
    text text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    locale character varying(5) DEFAULT 'en'::character varying,
    token character varying(255),
    user_id integer,
    parent_letter_id integer,
    image character varying(255),
    featured_at date
);


--
-- Name: letters_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.letters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: letters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.letters_id_seq OWNED BY public.letters.id;


--
-- Name: signatures; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.signatures (
    id integer NOT NULL,
    letter_id integer,
    name character varying(128),
    city character varying(64),
    occupation character varying(64),
    organization character varying(64),
    token character varying(64),
    is_verified boolean DEFAULT false,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    email character varying(255)
);


--
-- Name: signatures_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.signatures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: signatures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.signatures_id_seq OWNED BY public.signatures.id;


--
-- Name: tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tokens (
    id integer NOT NULL,
    user_id integer,
    token character varying(255) NOT NULL,
    type character varying(80) NOT NULL,
    is_revoked boolean DEFAULT false,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tokens_id_seq OWNED BY public.tokens.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(254) NOT NULL,
    password character varying(60) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    name character varying(255)
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: adonis_schema id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.adonis_schema ALTER COLUMN id SET DEFAULT nextval('public.adonis_schema_id_seq'::regclass);


--
-- Name: letters id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.letters ALTER COLUMN id SET DEFAULT nextval('public.letters_id_seq'::regclass);


--
-- Name: signatures id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.signatures ALTER COLUMN id SET DEFAULT nextval('public.signatures_id_seq'::regclass);


--
-- Name: tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tokens ALTER COLUMN id SET DEFAULT nextval('public.tokens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: adonis_schema; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.adonis_schema (id, name, batch, migration_time) FROM stdin;
\.
COPY public.adonis_schema (id, name, batch, migration_time) FROM '$$PATH$$/3893.dat';

--
-- Data for Name: letters; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.letters (id, slug, title, text, created_at, updated_at, locale, token, user_id, parent_letter_id, image, featured_at) FROM stdin;
\.
COPY public.letters (id, slug, title, text, created_at, updated_at, locale, token, user_id, parent_letter_id, image, featured_at) FROM '$$PATH$$/3895.dat';

--
-- Data for Name: signatures; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.signatures (id, letter_id, name, city, occupation, organization, token, is_verified, created_at, updated_at, email) FROM stdin;
\.
COPY public.signatures (id, letter_id, name, city, occupation, organization, token, is_verified, created_at, updated_at, email) FROM '$$PATH$$/3897.dat';

--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tokens (id, user_id, token, type, is_revoked, created_at, updated_at) FROM stdin;
\.
COPY public.tokens (id, user_id, token, type, is_revoked, created_at, updated_at) FROM '$$PATH$$/3899.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, username, email, password, created_at, updated_at, name) FROM stdin;
\.
COPY public.users (id, username, email, password, created_at, updated_at, name) FROM '$$PATH$$/3901.dat';

--
-- Name: adonis_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.adonis_schema_id_seq', 41, true);


--
-- Name: letters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.letters_id_seq', 72, true);


--
-- Name: signatures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.signatures_id_seq', 5507, true);


--
-- Name: tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tokens_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: adonis_schema adonis_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.adonis_schema
    ADD CONSTRAINT adonis_schema_pkey PRIMARY KEY (id);


--
-- Name: letters letters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.letters
    ADD CONSTRAINT letters_pkey PRIMARY KEY (id);


--
-- Name: letters letters_slug_locale_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.letters
    ADD CONSTRAINT letters_slug_locale_unique UNIQUE (slug, locale);


--
-- Name: signatures signatures_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.signatures
    ADD CONSTRAINT signatures_pkey PRIMARY KEY (id);


--
-- Name: signatures signatures_token_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.signatures
    ADD CONSTRAINT signatures_token_unique UNIQUE (token);


--
-- Name: tokens tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);


--
-- Name: tokens tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_token_unique UNIQUE (token);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_unique UNIQUE (username);


--
-- Name: letters_featured_at_locale_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX letters_featured_at_locale_index ON public.letters USING btree (featured_at, locale);


--
-- Name: letters_slug_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX letters_slug_index ON public.letters USING btree (slug);


--
-- Name: signatures_is_verified_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX signatures_is_verified_index ON public.signatures USING btree (is_verified);


--
-- Name: signatures_token_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX signatures_token_index ON public.signatures USING btree (token);


--
-- Name: letters letters_parent_letter_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.letters
    ADD CONSTRAINT letters_parent_letter_id_foreign FOREIGN KEY (parent_letter_id) REFERENCES public.letters(id);


--
-- Name: letters letters_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.letters
    ADD CONSTRAINT letters_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: signatures signatures_letter_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.signatures
    ADD CONSTRAINT signatures_letter_id_foreign FOREIGN KEY (letter_id) REFERENCES public.letters(id);


--
-- Name: tokens tokens_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: DATABASE d77m5ah791nk74; Type: ACL; Schema: -; Owner: -
--

REVOKE CONNECT,TEMPORARY ON DATABASE d77m5ah791nk74 FROM PUBLIC;


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON LANGUAGE plpgsql TO ojjwadywhbpowy;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             