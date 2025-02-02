PGDMP  #                    {            siib    16.0    16.0 '               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    33455    siib    DATABASE     {   CREATE DATABASE siib WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE siib;
                postgres    false            �            1259    33456    keluar    TABLE     �   CREATE TABLE public.keluar (
    idkeluar integer NOT NULL,
    idbarang integer,
    tanggal timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    penerima text,
    qty integer,
    namabarang_k text,
    penginput text,
    kodebarang_k text
);
    DROP TABLE public.keluar;
       public         heap    postgres    false            �            1259    33462    keluar_idkeluar_seq    SEQUENCE     �   CREATE SEQUENCE public.keluar_idkeluar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.keluar_idkeluar_seq;
       public          postgres    false    215                       0    0    keluar_idkeluar_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.keluar_idkeluar_seq OWNED BY public.keluar.idkeluar;
          public          postgres    false    216            �            1259    33463    log    TABLE     �   CREATE TABLE public.log (
    idlog integer NOT NULL,
    date timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    usr text,
    method text,
    endpoint text,
    status_code text
);
    DROP TABLE public.log;
       public         heap    postgres    false            �            1259    33469    log_idlog_seq    SEQUENCE     �   CREATE SEQUENCE public.log_idlog_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.log_idlog_seq;
       public          postgres    false    217                       0    0    log_idlog_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.log_idlog_seq OWNED BY public.log.idlog;
          public          postgres    false    218            �            1259    33470    masuk    TABLE     �   CREATE TABLE public.masuk (
    idmasuk integer NOT NULL,
    idbarang integer,
    tanggal timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    keterangan text,
    qty integer,
    namabarang_m text,
    penginput text,
    kodebarang_m text
);
    DROP TABLE public.masuk;
       public         heap    postgres    false            �            1259    33476    masuk_idmasuk_seq    SEQUENCE     �   CREATE SEQUENCE public.masuk_idmasuk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.masuk_idmasuk_seq;
       public          postgres    false    219                       0    0    masuk_idmasuk_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.masuk_idmasuk_seq OWNED BY public.masuk.idmasuk;
          public          postgres    false    220            �            1259    33477    stock    TABLE     �   CREATE TABLE public.stock (
    idbarang integer NOT NULL,
    namabarang text,
    deskripsi text,
    stock integer,
    image text,
    penginput text,
    kodebarang text
);
    DROP TABLE public.stock;
       public         heap    postgres    false            �            1259    33482    stock_idbarang_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_idbarang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.stock_idbarang_seq;
       public          postgres    false    221                       0    0    stock_idbarang_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.stock_idbarang_seq OWNED BY public.stock.idbarang;
          public          postgres    false    222            �            1259    33483    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    role text NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    33488    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    223                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    224            d           2604    33489    keluar idkeluar    DEFAULT     r   ALTER TABLE ONLY public.keluar ALTER COLUMN idkeluar SET DEFAULT nextval('public.keluar_idkeluar_seq'::regclass);
 >   ALTER TABLE public.keluar ALTER COLUMN idkeluar DROP DEFAULT;
       public          postgres    false    216    215            f           2604    33490 	   log idlog    DEFAULT     f   ALTER TABLE ONLY public.log ALTER COLUMN idlog SET DEFAULT nextval('public.log_idlog_seq'::regclass);
 8   ALTER TABLE public.log ALTER COLUMN idlog DROP DEFAULT;
       public          postgres    false    218    217            h           2604    33491    masuk idmasuk    DEFAULT     n   ALTER TABLE ONLY public.masuk ALTER COLUMN idmasuk SET DEFAULT nextval('public.masuk_idmasuk_seq'::regclass);
 <   ALTER TABLE public.masuk ALTER COLUMN idmasuk DROP DEFAULT;
       public          postgres    false    220    219            j           2604    33492    stock idbarang    DEFAULT     p   ALTER TABLE ONLY public.stock ALTER COLUMN idbarang SET DEFAULT nextval('public.stock_idbarang_seq'::regclass);
 =   ALTER TABLE public.stock ALTER COLUMN idbarang DROP DEFAULT;
       public          postgres    false    222    221            k           2604    33493    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223                      0    33456    keluar 
   TABLE DATA           s   COPY public.keluar (idkeluar, idbarang, tanggal, penerima, qty, namabarang_k, penginput, kodebarang_k) FROM stdin;
    public          postgres    false    215   ))                 0    33463    log 
   TABLE DATA           N   COPY public.log (idlog, date, usr, method, endpoint, status_code) FROM stdin;
    public          postgres    false    217   �)       	          0    33470    masuk 
   TABLE DATA           s   COPY public.masuk (idmasuk, idbarang, tanggal, keterangan, qty, namabarang_m, penginput, kodebarang_m) FROM stdin;
    public          postgres    false    219   ->                 0    33477    stock 
   TABLE DATA           e   COPY public.stock (idbarang, namabarang, deskripsi, stock, image, penginput, kodebarang) FROM stdin;
    public          postgres    false    221   �>                 0    33483    users 
   TABLE DATA           :   COPY public.users (id, email, password, role) FROM stdin;
    public          postgres    false    223   �@                  0    0    keluar_idkeluar_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.keluar_idkeluar_seq', 3, true);
          public          postgres    false    216                       0    0    log_idlog_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.log_idlog_seq', 424, true);
          public          postgres    false    218                       0    0    masuk_idmasuk_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.masuk_idmasuk_seq', 2, true);
          public          postgres    false    220                       0    0    stock_idbarang_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.stock_idbarang_seq', 8, true);
          public          postgres    false    222                       0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
          public          postgres    false    224            m           2606    33495    keluar keluar_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.keluar
    ADD CONSTRAINT keluar_pkey PRIMARY KEY (idkeluar);
 <   ALTER TABLE ONLY public.keluar DROP CONSTRAINT keluar_pkey;
       public            postgres    false    215            o           2606    33497    log log_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_pkey PRIMARY KEY (idlog);
 6   ALTER TABLE ONLY public.log DROP CONSTRAINT log_pkey;
       public            postgres    false    217            q           2606    33499    masuk masuk_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.masuk
    ADD CONSTRAINT masuk_pkey PRIMARY KEY (idmasuk);
 :   ALTER TABLE ONLY public.masuk DROP CONSTRAINT masuk_pkey;
       public            postgres    false    219            s           2606    33501    stock stock_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (idbarang);
 :   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_pkey;
       public            postgres    false    221            u           2606    33503    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    223               �   x��ͱ�0 ������$eY$�B��&�*�o�]|?�YGH�IF&�TqJ	�Sh�:/��&ϝv?C� �m-/��!��!��u���4��Ϊ_�eY��X�_I+<6�Ml��UV�ؿ���>��{y)!�`�6�            x���]�%7n��=�bo$\-�% H���]b`�w������B�����R�tQ*鸳�1�z��z(�"U������>�)�ŹK������K?ܿ����������w�?����������������@
��~�I���R;�_m��8z����o��V��*�Ň-@�5�
1l�8�==<>�����x�y��S?�a�o��K��q&������$����U%4*/7�
8|��QI��D���V as1e߅�oF����-0��=��>|��ƴ`�Lt[��3���3Z:u<o���c3��*
-�A�6f�<�(�t�B�Ă��	-Cc��-R��c_fh���[i
���3�K���5�bJf��OFG���ΪB!p�TF��3�����DK��r�`��\���Bx[2w���d�4�`��/`z��iMh�|V�����j�T��AH��i�U�T%xCv!���*��)�2e�81��l�ԑ�Q
ӵR1��F�s"�͠X_$ZU�7/��k6�(�:�� $-q@-��B� 3���hP�GL����/y��������o���˗o_�=��*���\#.�@͜�_>|��t��_~}������Cp?�����Q����������}����O������'��?ʏ���}P^K2`KLⷔ*u�:�Ȓ��π��6�_�N�i�Xħ���f��e|��t�����%0�Cs���m&�u	�x�E�����Z_С��`
�7��t|� (�t�.��#J8*[��x��w�-��
��Zr�.�~/� ��kBK�'?�ţ	-�H�"��>kB�񮀀�L0�%
�����#�faO��ԃ�A0�����f3����\dD�CÏSg,���>�0JJ�[&]w�۩��* ��/ /��-y2���I&{4�%/&H$q�^;����HL���s\�fS���V��.r	�|�~���;���! -p ��䜞"h�"i�k�@`��w0�;�
x����uc���}/����.>ʾ�z��c�$-= �	�
hڻ��%�]3!� a^�!��V@���b?^:�,H}��Rzѕ�EI�u΃���cy�]�貛-B���y/!��!����(���!紞�{op��`��م,z��/8�T���f"}�����e��%Q�&Y�3����J�,�8	S:��� m~��ܽ��L�Ã��W�JUoAUuI�d�;�a��bQG�� ���յzgZ�=��,H|8yill�bh��"��y���Z�u��t��p`2{���t���q�Lu}���]=�Dt�K
�C}��o,L<	`�ޢ�
qs������2�c�P���ۄl��&{�ā��>\��.A���f�Cv�_�$��"�n �����z'��u�"���9���ֵ���(H3ۀ�Ќ�fiN�.a���c���ygr��?=�����veC��g�K��T�$0t��:��N���(Dq�<�-0��X���O���5�&�o$<����xjѠ��q�lļr��р[ �89|�h�������x��ܠ!7i�.�6A7{�ij�I�E�8`/ùM� �%p��w��۴�YS��䥾Z�8�h�)��x����[D<�z���q�\ꑲ�W��d�j��%�~�h��5 Y��'	7iG�w[bȯi�� k�Y������qa
1��h�u�@ɍ��0�ƺ5$����ۺ��Sr�o�fm��?Ub�'���Oo=	�[c������S�-*�g���g����p������yj�꟧�ET1i��jzG�#��!�ˠ�/�L7����ct�GQ�
Z�*��8�l`�Ub�'qԵ�-�P�gRv����y2�'-�Fβy-!O�� ��}�� �����ȸ@[��dh��,�a�w�'�wֳ�A����@2��`���IR��U�gJ<9�n2hg�PS�Q�h�K��p`߭8ڧ0 W���'���6t����E���.:Y;l�8��h;DE@Bɲ����e���4��^Y��|��1t�or��"�p��J0��bs�gH�i�^�̴d�Hޒ'C�篹�R���u��G�4�HYN��l�?�pn�[.U7 ��R�� O�(��;�[,1��q��L��[D1j1�����Yk��Td��>��aV� uj���R}d��}Y�&塗�3�΢�$�󓇹�Z�hԾBAWuc�E%��=�sbP%MM��m\0={L��Y��<g欦n�I�H٩���1!��ᮐ�OWJ����,�A���&8w��cɄ��J��}�K/"��a,��CׯZZ$�p_�y�Mhq|V�VJ��Tc��-�[��������CV���/�D0EC�7�	g��L�Pƣ�����}��WL�P%`�¸�`��-�������ݕ�A�g�L����w��o���Hf�A���`dI}�����n��0��M���m���/(���U���
�j��.�^v�`J~�B�l`�{���v�)����p�T���a���Kɠs��BS�{V���0v��3V�F�O�W��|WdK��8�k7Gl
xU#ks���*�Z^��4ԥi��իLVF���'/�?�)�U�SD�=�}�َ�j�5Z��'����$G:9�j�� K�쳥�r?!��^�PV�ҥ3��*`%4%�'Ž��	�O��0�y�I5��Y���pr�wܪ��Y#��6� �I�Y����}�#��뭄�vYk�!�.^{�������dN�R��Ģ'GNG��@JJ�'^�������tE�h�Ɍ�2�U�����S�+�X��q�I� I$'f\��h�-�5����`'�S�Gl.A>E��c��I@�m�Ә��b?��j�A7��.9O�'��@_��/ۮi��=���\����Ū��^��v��WH��KksԔ��L�=T�U�����(�$z�1�3QlEK�b�x"z\ЪNlu�� &�eƦ��]�S�k��6�(�k?�wi?�[�)we��BKKQl��妙<�p�k�A_ng,�\�>��Ǣf��E]{��H��ض�**!�~�bѶn��Mvz��N0��%}%���ư�ւ^e��&2�ז޾���9�������O�>�&��������_�� �׿|��x/�??}���8H�tə���hj��좼�,N���F��,��Ґd\G��JBǈKZ��q�X���]����'�1��:�ϓ_[)��dƓq����im�9N��e���l��%�%>Ћ�'[y'M�C��I�k�q��Y�@52�x�u�e���R��D(�4M�,9�YCDy�g�S�%
T��^�2���W�ڹ\�"�@�:UـΚ9z��x+ـΚ�$Ҙ���b��!�ęa-���z�|U�.�۩0З*)��/7L����d)f\
ɮ���>8m #M�fI�}Bn�W5�|�0���R�Z�'q�E����>�B�[�C�nH����ʭ�R��ѧ5_:>n���[��҉a� �>m�)���I�̜N���r�
����f����z�h	u�9��d�an�A�Jx������U�;���,.��-��s}��?�?W�g|e��w|���Eʁ��0���$�gܢ5��48�s��G��]ࢻ�p�	�]~��� �N/��'�!��}��	\�'PvT�t��/ �����~x'�,W+;�i��/�pC+}�=�rv��/�J��(OL9�R�>����,�}���je�O��9��(}�[bܲG\t�*��r�U2�%V�l2�����&rt���y�-�4��oY�q����VX:39���K��=��lg0.u�'7;I��_@-F\�]�8A�Τ-u�B��^}ey�[�(�	@˃b���q�`����juo���1jˢ��I��J!�Q+I�_<4��2�nԠ�e�sⅵ�>�������GY�&<��s���Z�KӨ�Jv!�x`Cv�����Ѿ70D��Ȣ�����3��M��nL� �Q�K��[�*f�������z�E�ƭ� �k�a�K,M2l� O  r�'n�n�B�x��چs3�hH����CJ�vC��g��o �Q#��R��w��(�IϢ�� h���M�����^��S�إ�ߖ<	n�=��r-X&9�/����ECs��������)5�R����{�l�a
�"#Ѥ̃���g�t�I�0̒?OZ��)ߪ
�I�~�|��	�T�z}����US��+����lb+�"�Z��>MZ�����fYr�������4kQ>�aM僰�g�^�+<�I�8bL��S��ױ#JB��o
��*B;�24�܇4�v�9پf}��'0|f܁��f��aꫡt�Ȫ�ƭ��PCg�x�#�Z���a�,*Jg�b�}�άG	��v���05O���L�W�M_�r�*h'Rz�|0�O�̍�^c��t�*�ץi�Z�^�n7S
�A���
\ys��C�I�nW�nʝzcZv.�0h�3����l~�̸�p.��2��W.���t�����o���0�}����)aB���[�b>�ʦz�::����$[eZ�Lv�F������h�O'�{�S��r�/xɌO�pݻn�'kQEm�q��~{:u3S���!y;����G�HЃ����ν�� ���G�~pK�o8�
��~K����^���~������.B���sT'5%E(_�� ���I0�D(ii?���`*�:^���SL�P�VO�F�
S���9�󗳆�nJ��?|����rc��P����~IS�
Y���z~��$�R���0a;�h�zPn��K�_�ҝL45<(W~b��G������i�1��o!1�;`	�<�|���Kє� K�]?4ކ_�0�����Cm��<'
B����O�$<�r!MQ�jax.���0l�Ȗ�`�<�FS9	oe3;� ��"ShS��?2�̾�0��"����"NU0��3Y�r�"N��i���)�_��qjMM�dj]�[~��)�����ȋW������ds?8��S'���p��k��7e &m��|�$���Ϧ ������?	���T 7�L�� ���ёx�����
��T���04��*�(�*�î�I4u-M����/�ۛ7o�.u�1      	   �   x�%�=o�0 g�WxG/yϏ�d"��K%$$�b�ԱHj+62ʯoíw�	��	����h[)�y��/p#�moec��b��*��R�����:�qCa�`�L�}t�6�� �3�ۻ1����l	�J���d\a�@ks�3
�	�.��&XԳM��_���x�b�u37wfж=��p� V��gY�y	?�         v  x�m��n�0�����blc�ݒ�n/@�f���zc��9�۾��4�Fi����w�#�~��z�����CQ�P�J7@�w�m�1��z��=��f�A�R�X��)Le4ؖ�{��;�����H�(�(F9ɇ�7P��ܹXy5���LK\9�b*���`��7%G�� ����3�>8��;8<��Oy�ħ{��m��K��8C:�d6w�2�$4!���Y��z��ȍ��0m��P*�����d�*�6��`<W��?#����Ti&eƒ	����s]���4aH�����7�,F�j�]��*���xr\����Vi�r���y��y������Y-���E�l��F$>������(�9�1���L��           x�u�Mr�0 @�5��5$D�v��""�n ���b<};�ƙ�x��@��/v]s���hZ��t����e���0��i����V����徼�/Kꫯ�P�p�g���2e�$OEQ�@�����q���'��E��a��u|�n���5
��f��wKD�?X�3�����{�ϙ��yaT���R�"�f��5�F�[J�����+Ǯ�)ZnP<$����"%Z�Q_�$\��nc~�Iba�����f?�Y�O2dr     