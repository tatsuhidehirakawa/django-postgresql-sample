PGDMP     &                    {            postgres    14.9 (Debian 14.9-1.pgdg120+1)    14.9 (Debian 14.9-1.pgdg120+1) >               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13780    postgres    DATABASE     \   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3357            �            1259    16413    account_attribute    TABLE     �  CREATE TABLE public.account_attribute (
    account_id character varying(100) NOT NULL,
    self_introduction character varying(1000),
    twitter_uri character varying,
    facebook_uri character varying,
    instagram_uri character varying,
    youtube_channel_uri character varying,
    skill character varying(1000) NOT NULL,
    rate character varying,
    status character varying(1),
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone
);
 %   DROP TABLE public.account_attribute;
       public         heap    postgres    false                       0    0    TABLE account_attribute    COMMENT     B   COMMENT ON TABLE public.account_attribute IS 'account_attribute';
          public          postgres    false    209                        0    0 #   COLUMN account_attribute.account_id    COMMENT     Y   COMMENT ON COLUMN public.account_attribute.account_id IS 'Account ID:アカウントID';
          public          postgres    false    209            !           0    0 *   COLUMN account_attribute.self_introduction    COMMENT     U   COMMENT ON COLUMN public.account_attribute.self_introduction IS 'Self Introduction';
          public          postgres    false    209            "           0    0 $   COLUMN account_attribute.twitter_uri    COMMENT     [   COMMENT ON COLUMN public.account_attribute.twitter_uri IS 'Twitter URI:ツイッターID';
          public          postgres    false    209            #           0    0 %   COLUMN account_attribute.facebook_uri    COMMENT     c   COMMENT ON COLUMN public.account_attribute.facebook_uri IS 'Facebook URI:フェイスブックID';
          public          postgres    false    209            $           0    0 &   COLUMN account_attribute.instagram_uri    COMMENT     e   COMMENT ON COLUMN public.account_attribute.instagram_uri IS 'Instagram URI:インスタグラムID';
          public          postgres    false    209            %           0    0 ,   COLUMN account_attribute.youtube_channel_uri    COMMENT     c   COMMENT ON COLUMN public.account_attribute.youtube_channel_uri IS 'YouTube Channel URI:YouTubeID';
          public          postgres    false    209            &           0    0    COLUMN account_attribute.skill    COMMENT     G   COMMENT ON COLUMN public.account_attribute.skill IS 'Skill:スキル';
          public          postgres    false    209            '           0    0    COLUMN account_attribute.rate    COMMENT     B   COMMENT ON COLUMN public.account_attribute.rate IS 'Rate:評価';
          public          postgres    false    209            (           0    0    COLUMN account_attribute.status    COMMENT     O   COMMENT ON COLUMN public.account_attribute.status IS 'Status:ステータス';
          public          postgres    false    209            )           0    0 $   COLUMN account_attribute.create_date    COMMENT     S   COMMENT ON COLUMN public.account_attribute.create_date IS 'Create Date:作成日';
          public          postgres    false    209            *           0    0 $   COLUMN account_attribute.update_date    COMMENT     S   COMMENT ON COLUMN public.account_attribute.update_date IS 'Update Date:更新日';
          public          postgres    false    209            �            1259    16418    account_master    TABLE     #  CREATE TABLE public.account_master (
    account_id character varying(64) NOT NULL,
    account_name character varying(20) NOT NULL,
    mail_address character varying NOT NULL,
    password character varying(64) NOT NULL,
    zip_code character varying NOT NULL,
    barth_date date NOT NULL,
    time_zone character varying NOT NULL,
    language character varying NOT NULL,
    registration_date timestamp(6) without time zone NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone
);
 "   DROP TABLE public.account_master;
       public         heap    postgres    false            +           0    0    TABLE account_master    COMMENT     <   COMMENT ON TABLE public.account_master IS 'account_master';
          public          postgres    false    210            ,           0    0     COLUMN account_master.account_id    COMMENT     P   COMMENT ON COLUMN public.account_master.account_id IS 'Account ID:ユーザID';
          public          postgres    false    210            -           0    0 "   COLUMN account_master.account_name    COMMENT     O   COMMENT ON COLUMN public.account_master.account_name IS 'Account Name:氏名';
          public          postgres    false    210            .           0    0 "   COLUMN account_master.mail_address    COMMENT     ^   COMMENT ON COLUMN public.account_master.mail_address IS 'Mail Addless:メールアドレス';
          public          postgres    false    210            /           0    0    COLUMN account_master.password    COMMENT     P   COMMENT ON COLUMN public.account_master.password IS 'Password:パスワード';
          public          postgres    false    210            0           0    0    COLUMN account_master.zip_code    COMMENT     M   COMMENT ON COLUMN public.account_master.zip_code IS 'Zip Code:郵便番号';
          public          postgres    false    210            1           0    0     COLUMN account_master.barth_date    COMMENT     N   COMMENT ON COLUMN public.account_master.barth_date IS 'Barth Date:誕生日';
          public          postgres    false    210            2           0    0    COLUMN account_master.time_zone    COMMENT     U   COMMENT ON COLUMN public.account_master.time_zone IS 'Time Zone:タイムゾーン';
          public          postgres    false    210            3           0    0    COLUMN account_master.language    COMMENT     G   COMMENT ON COLUMN public.account_master.language IS 'Language:言語';
          public          postgres    false    210            4           0    0 '   COLUMN account_master.registration_date    COMMENT     \   COMMENT ON COLUMN public.account_master.registration_date IS 'Registration Date:登録日';
          public          postgres    false    210            5           0    0 !   COLUMN account_master.create_date    COMMENT     P   COMMENT ON COLUMN public.account_master.create_date IS 'Create_Date:作成日';
          public          postgres    false    210            6           0    0 !   COLUMN account_master.update_date    COMMENT     P   COMMENT ON COLUMN public.account_master.update_date IS 'Update Date:更新日';
          public          postgres    false    210            �            1259    16423 
   offer_list    TABLE       CREATE TABLE public.offer_list (
    offer_id character varying(64) NOT NULL,
    account_id character varying(64) NOT NULL,
    offer_type character varying(1) NOT NULL,
    offer_title character varying NOT NULL,
    offer_severity character varying,
    offer_catagory character varying,
    offer_location character varying,
    offer_status character varying(1) NOT NULL,
    offer_text character varying(140) NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone
);
    DROP TABLE public.offer_list;
       public         heap    postgres    false            7           0    0    TABLE offer_list    COMMENT     T   COMMENT ON TABLE public.offer_list IS 'offer_list:オファー台帳（catalog）';
          public          postgres    false    211            8           0    0    COLUMN offer_list.offer_id    COMMENT     K   COMMENT ON COLUMN public.offer_list.offer_id IS 'Offer ID:オファーID';
          public          postgres    false    211            9           0    0    COLUMN offer_list.account_id    COMMENT     L   COMMENT ON COLUMN public.offer_list.account_id IS 'Account ID:ユーザID';
          public          postgres    false    211            :           0    0    COLUMN offer_list.offer_type    COMMENT     S   COMMENT ON COLUMN public.offer_list.offer_type IS 'Offer Type:オファー種別';
          public          postgres    false    211            ;           0    0    COLUMN offer_list.offer_title    COMMENT     U   COMMENT ON COLUMN public.offer_list.offer_title IS 'Offer Title:オファー題目';
          public          postgres    false    211            <           0    0     COLUMN offer_list.offer_severity    COMMENT     ^   COMMENT ON COLUMN public.offer_list.offer_severity IS 'Offer Severity:オファー優先度';
          public          postgres    false    211            =           0    0     COLUMN offer_list.offer_catagory    COMMENT     d   COMMENT ON COLUMN public.offer_list.offer_catagory IS 'Offer Catagory:オファー・カテゴリ';
          public          postgres    false    211            >           0    0     COLUMN offer_list.offer_location    COMMENT     [   COMMENT ON COLUMN public.offer_list.offer_location IS 'Offer Location:オファー場所';
          public          postgres    false    211            ?           0    0    COLUMN offer_list.offer_status    COMMENT     D   COMMENT ON COLUMN public.offer_list.offer_status IS 'Offer Status';
          public          postgres    false    211            @           0    0    COLUMN offer_list.offer_text    COMMENT     P   COMMENT ON COLUMN public.offer_list.offer_text IS 'Offer Text:オファー文';
          public          postgres    false    211            A           0    0    COLUMN offer_list.create_date    COMMENT     L   COMMENT ON COLUMN public.offer_list.create_date IS 'Create Date:作成日';
          public          postgres    false    211            B           0    0    COLUMN offer_list.update_date    COMMENT     L   COMMENT ON COLUMN public.offer_list.update_date IS 'Update Date:更新日';
          public          postgres    false    211            �            1259    16428    purchase_histroy    TABLE     �  CREATE TABLE public.purchase_histroy (
    purchase_id character varying NOT NULL,
    purchase_date date NOT NULL,
    purchase_time time without time zone NOT NULL,
    payer_account_id character varying NOT NULL,
    payee_account_id character varying NOT NULL,
    amount numeric NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    update_date timestamp(6) without time zone
);
 $   DROP TABLE public.purchase_histroy;
       public         heap    postgres    false            C           0    0    TABLE purchase_histroy    COMMENT     \   COMMENT ON TABLE public.purchase_histroy IS 'purchase_histroy:課金処理用テーブル';
          public          postgres    false    212            D           0    0 #   COLUMN purchase_histroy.purchase_id    COMMENT     H   COMMENT ON COLUMN public.purchase_histroy.purchase_id IS 'Purchase ID';
          public          postgres    false    212            E           0    0 %   COLUMN purchase_histroy.purchase_date    COMMENT     L   COMMENT ON COLUMN public.purchase_histroy.purchase_date IS 'Purchase Date';
          public          postgres    false    212            F           0    0 %   COLUMN purchase_histroy.purchase_time    COMMENT     L   COMMENT ON COLUMN public.purchase_histroy.purchase_time IS 'Purchase Time';
          public          postgres    false    212            G           0    0 (   COLUMN purchase_histroy.payer_account_id    COMMENT     f   COMMENT ON COLUMN public.purchase_histroy.payer_account_id IS 'Payer Account ID:account_idと連動';
          public          postgres    false    212            H           0    0 (   COLUMN purchase_histroy.payee_account_id    COMMENT     f   COMMENT ON COLUMN public.purchase_histroy.payee_account_id IS 'Payee Account ID:account_idと連動';
          public          postgres    false    212            I           0    0    COLUMN purchase_histroy.amount    COMMENT     >   COMMENT ON COLUMN public.purchase_histroy.amount IS 'Amount';
          public          postgres    false    212            J           0    0 #   COLUMN purchase_histroy.create_date    COMMENT     R   COMMENT ON COLUMN public.purchase_histroy.create_date IS 'Create_Date:作成日';
          public          postgres    false    212            K           0    0 #   COLUMN purchase_histroy.update_date    COMMENT     R   COMMENT ON COLUMN public.purchase_histroy.update_date IS 'Update Date:更新日';
          public          postgres    false    212                      0    16413    account_attribute 
   TABLE DATA           �   COPY public.account_attribute (account_id, self_introduction, twitter_uri, facebook_uri, instagram_uri, youtube_channel_uri, skill, rate, status, create_date, update_date) FROM stdin;
    public          postgres    false    209   mC                 0    16418    account_master 
   TABLE DATA           �   COPY public.account_master (account_id, account_name, mail_address, password, zip_code, barth_date, time_zone, language, registration_date, create_date, update_date) FROM stdin;
    public          postgres    false    210   �p                 0    16423 
   offer_list 
   TABLE DATA           �   COPY public.offer_list (offer_id, account_id, offer_type, offer_title, offer_severity, offer_catagory, offer_location, offer_status, offer_text, create_date, update_date) FROM stdin;
    public          postgres    false    211   (�                 0    16428    purchase_histroy 
   TABLE DATA           �   COPY public.purchase_histroy (purchase_id, purchase_date, purchase_time, payer_account_id, payee_account_id, amount, create_date, update_date) FROM stdin;
    public          postgres    false    212   :�       �           2606    16434 '   account_attribute account_attribute_pkc 
   CONSTRAINT     m   ALTER TABLE ONLY public.account_attribute
    ADD CONSTRAINT account_attribute_pkc PRIMARY KEY (account_id);
 Q   ALTER TABLE ONLY public.account_attribute DROP CONSTRAINT account_attribute_pkc;
       public            postgres    false    209            �           2606    16436 !   account_master account_master_pkc 
   CONSTRAINT     g   ALTER TABLE ONLY public.account_master
    ADD CONSTRAINT account_master_pkc PRIMARY KEY (account_id);
 K   ALTER TABLE ONLY public.account_master DROP CONSTRAINT account_master_pkc;
       public            postgres    false    210            �           2606    16438    offer_list offer_list_pkc 
   CONSTRAINT     i   ALTER TABLE ONLY public.offer_list
    ADD CONSTRAINT offer_list_pkc PRIMARY KEY (offer_id, account_id);
 C   ALTER TABLE ONLY public.offer_list DROP CONSTRAINT offer_list_pkc;
       public            postgres    false    211    211            �           2606    16440 %   purchase_histroy purchase_histroy_pkc 
   CONSTRAINT     �   ALTER TABLE ONLY public.purchase_histroy
    ADD CONSTRAINT purchase_histroy_pkc PRIMARY KEY (purchase_id, payer_account_id, payee_account_id);
 O   ALTER TABLE ONLY public.purchase_histroy DROP CONSTRAINT purchase_histroy_pkc;
       public            postgres    false    212    212    212                  x��]YsY�~V����p)7moU�Mw-P��0i)m%�K)oO�l�`0`��0���f56�t�3��,ɞ�����s�Tf�f��pt��RGGR�{���s�d2Wʚ�0R�0����pX�)׭e;��ӵ7��#���l�|�_�ˡ�i拉/�4���m�\�ˌ4�ӯv�����:��ޞ�uyS٢�u����K�@�d��uLQ*�&�}�+~!�;<`�sY��/Z����CbH
�����_R�p8��C�Di8�_��p���4�Oá�<$���B��k�.h������Z���ɽI�S��Q��p)�w����Ӿ?��[��G���?�Ο/��??�?_�фOHQ��Cp�×�Ï�����������k� �C����k�����je�:|�:<Z�ܯVf��������D��j�|�Z~C�k7O�g0�S�3|�Z�S~
���c���]x;�������˕jy��q�Z�Xq�|�"G;:{��w�K��$��[��JCw�@6U�)��9�ۀ5x4_@k�\΄��v��:�����wG��[�o��B�%5	Kȶh�����0Z�r���8R�BdT+s�֮T�'����(�W��p����lT+���&��M��L��R������덓�[+���#��or(#�c[onՆ���E$ލ�)�ع�ꉚR��.{ˊK�#	��ũ��Ӓi#��k���5�1=[��؝�����ɱ\!�F����0�O3���bI�65���#����R��X� E��.G��a�Iq!�$D�|T��б�����M!��v�zJ��w��º��\[���
���	�,�������M����7�i!���V�͵Y��.ssmA��\}��6W7�tns�V2-��<z�^N#¤�66�N�؋����M!ڵ+��l���Y��qh�:�}ў�϶�R8E�HDmq��f��ֳ),���r)��H�'�`"iёD�ئ�Ό�5��dW�v1�5I�V�K� �����1*!�`{��2<jε5a?]%K�yux����{$M����r��j�R�r�Z����;��{���J�h`��>p
���;'`7¶?��|�	ߣ��v��� �^��^�:�9fw��z��2U��h<��y�+id墟�9n��@�SN����~�ь�"��&Fv�������rL@2�	%��
��;�X*�奒���R8'#	���}_�?䋭V寈���ї���g���8v�VLS�@����-���J����>�u��=��!G�-!)��	��a��`�=k+ܤ���4[_Ⱦ���9�AW0�z ��+�^�7w����3bj���R8��H�cq�w���[l� ��{�0������i���ZB���_�s�ئ�~�_I�ùs>�D�w��B��mQ�Z���k2�x�]4�w�O�C�}�O�G�玠۽������:�|���ؙک��s'�������s�`������i$ީ�[���WT����QH*ޢ�R8E�HDeq��S	��C[�'���Z�?ю.W��,��S�u� !�>c	��Ob�cy�|����by}�������i~Iw��C���;��z�:<�t����<���Z���Ȋ����|�9�+��$A���ǁ��۾������G�B/VsK�-���U�`¿ɚ�p�}�ޗ+t�%�D�\����	�	IN����!��c���Zk,��Ö��-9�X�AC4�ʋ��C;��3�stcUF@
`ݧ�7�q� �T<Y��4�ޢ�R8E�HDcq����I�ܯ���?�]+����P�\0����љ�T�w�v�[w�4��ȿӲ(��W�|s������6��ۢ��$إ(Xo�&�C[�׷VV�V�j��`�ܘ���N�����ק��kK'k��j��O�4ޜm\A?��z�qq�PB��x�qv�6y]����M_o�.#JB�%&M-��bz��K�#	�ũi����j�E�hV�/e�aE�{�7���9<��Cޮ���dѮ�%�7h�D/��G-�)�'L�Q��DJ&2N��������F����#�_��GȋD��tR~&OyHR��R+����j����=�v/4�^a� v�u�~���s;�^�W���n�^d��� .C40T���A}z	-G�ߦ^؆2����U����r�Ư��@F�<^[�]��}
s�Vp
�1E��G��QP���Ԗβ��JY	����-0.�S`�$@`'��!	w���8�H����'*W��?�
N�QN�H��I�C��&���B����?��N<$��^] 㣧�\VȖ2z!W*�;�b"h�B�Xz��׍l�T4�^l�EZ'dʹ.tk𡂩'��\w�� ߞ�%!�E�M�Hi�5�ȡ�/w�|+C�&u~x�O���%�'kƣpe�(IP֌q�x��Bs���΂�/q��խF�Y�n#�t�e@��(1 .��$�AjKR �&��0π�(��($^�V�޺�M��3_����hQz{��e���V��ho�l�y^;q�Ӕ�����x+����2l�gh��Ф�M+T�ϰ��1�V�!�B�8��9�_��/��|W�䓹�R8W#	X	'�A��7'F�h/�f^N��6�6�9/��?��2D�a��RC|ǯ��%��?�����Regz����ʖ;�I��w�@�ة���s��l�|y�>r���*L�5�u�S�|;N�_��g�p:}��T8�<^+��t�'{˥p�F�R,NQ5'�&Ro�09���Ōp5D�K�W$)!�	�g"ha\��ے=0ޞ���<d�k�8>��ٝw%ّ\�_"�����HvS�&����B��6�r/�Vǰ�GC�5z�q��:���3{�6q�v1Y�Z�n\:���x}lb��/X��%�h:R44�t/�¥E(I�a�~glA�b>�-"+k16�"�%�>Z5�_S��l' E��^=^��S�O"�Kἃ�$�Z�l!�q-ۙ��R�F;%f��qWY��� "_?�yNp,�)6�!sCi{�)�qз�D"/����{�m���+7^���ě�~���h����o^�V/QJ��K��ױ�wyk�����Ȟ[{�����|���j�|����cR�'F�R8�Hnqjq�9~�%��~)�`�P��h'�PD���!�v"E
pL�i�AsQ��p�=�_s�L��P���Pux��������gR�W^�� ���k�ҝ�L���fq@��˳p(�yB�g���&Ϣ2yC��g*��qyȊ�9&P�	Z�EI�1Kݦ�"�b^O�N�p��
��idȳ�R�}�"
[�4��:�8�A�A�u9"�2�F��AJ��Q�ܾCB����
(��0�C4Q��4�H���h]����^#�����9��L�s�#�"?L*(�vM��^\
�2`$���dτZ)�� $ɡw��A�7,�Մ"'$�#1�	��r��4k5���FO�B����x�1���O��]�:��O7p9�N>#h���=����έY�+�m�x��[ЭfӤs��s����=uf��44�[���M;��jRn��<r)��b$��8�Y�W{��^U���b@b�8F�8eivl���@�����l`_���m�4�n�
,�^'.*�6#�n�m?Y��jɿ`u=��:a�0�.��4���8�U���i�w}���A���S��R8�#	X'ϔ"�1�K����~ӟ�y�o�h������HL[@YCv;�
vX#���e9��r�����0�C֌U�)� ���	Mk ����鵛'c��Hѕƣi��)�.; a�n�S~I��Eף;Ӥ&9�������������	\�q#���>�K�\�$`!X�>2U��c�p�cR[�i��옄�c�
`Yp�QVBG�dgSZ���Z�V@��]�y��6�Pt��hAv�
�b~�<�����K�7
E���@�w9D��W_?�d7���CF+�~��A�9�� ��.-Ϸ�jo��?��&��)MF M��gNcҬuW���$�m������5O�j�A,�c(�m�c��    ؾ��3��N����8���"-+8�����͝��cw��W�Rg�:6^_	V�I5bte}`\
����j�Ϝ��������w�a�$U#�#�H�ǿ��!�Yw�ol����G8���<��Z:-�����V���]����Œ}�y%�S/�Q��E�$�^�8}�L�������B�ZwR�Q.�L���(=��Hg��Q4��+@��V
\���"���mh�O0�!ۑ+d4�� R����dꂙ��
�	P,�螺�9�am�YDQ��>{�K�%	��{q:�-u��QsE	RhK�<79�2i$�\�n�`w��wk&H)�;
�������,�K

C�����I��.� �d� 7M��}M>�O�߱q]ej{�����֚�P�(U{�|r�\
�sDI��#��#r�&W�!v,�b���10�')Cj��x����S�[�6������WQ�ۘZ���ظ���Ԧlm�sӇ�h���ۘ|(�>)=����x?\
��I��,N�D/����q�reD,?�-HG��\�v����Yz7W�$��Mx����.toW�����C�)l�n�B���$`��x�I��iٴ�����|�����28������`���@�#BD_�!d����>�2ֽ�ke��@�1�/l����gI
�F��	f��CD��@� �1K@��2�6��$1t�v ���I?�����.���g.�+�$AQ/�7YL�'���/:�(|t9*�JBR"�֯����sC��78@桊�W�8{
tp3uERГX���A�o�G�w��;/GӒ�����Q����$L�8}j&���.|�M�Ԅ��ߊ���������p~���j�!�$�z��h%���6ޜ�R�aқb�Z�^=,�Hi��.����G�%	���3�M��]mM�ݪ�=-��Ą���r�Ís�.]�0~����_��6�"�������_/\�?f�~��0��Í���wۄ߮\�p�އ���}�Z����F?��L�pu���Ͽ]B�����C�!���z���~xq�K(>�\�;>�����y.�9%	�3N�=He&B�!�n�Š] ��
�b�(��pMv�C����3p�ؑa��U:��Ț\FH�FW��Σp��)I,�q���;�6(��$w�V�킢2�y���1��a����!�֪�^^ r�X�� 7��I{��[��F5?��-#$��2�����,���E\uo��E��bQDH�t�	�̰[)[�4�*.��0����r�qe�4�N����*WL���TC�o|7M�q�З2}��\
W)�������bno/���bB�r��J��YF��Sl��O߯v\������)2F 2��'͇�m1KB��X�Y�x�\���I%�f{��i��R�r$('�8�Ќ�#	�S%������bB�4V���0��h�u�&N����m�V�~���Q���߼�~�@vi�{ԁ�����r)܍�$���r�m~��'�J��ޛ��d�RG1�,v̸�1�j8tp��cҹ�d;�E��d��r��(�"0#�k�5S(B�7��	Z�}�y@Y��R�@�x���s)�����{��.�f ����'��Y!��	E�ר�.�ZY��7�:�`�n@��3�!VYU��X�A�6|�p��e~n�5r���Ɔ�j,����{�K�j0�$A���$n��\����%�HB��U �\�Y�Q���_�N�2�a��@�ÓX�����֍9w{�<�8�e$�����J'[��Jƞt��Yإ�5��j�::}V�µz(I��a�>m�H��5X%Q���H)��s5!CCg�����/��p�+����n��|!m���J:r�R����f;I�U�h/ĵ��n<)����tJǿ���;�錦��x2\
����'~�($Y[0�J̋P�bs(��M�Qw3������{�Fv��i��>�kN(�ǽj�g4�X��,�>��Vn5&<�FEr��i��Q��(IP�) �i ~U�xA\D�$�P8i;U�x��&ED!��q��1���#�����J�R�S��ͣ�����h}�!N��8����N�ǖq��B����(���|�'��R��P��9"��'�8Q[K���*��0��8`"5�:"�i���<�J9�J��M�������M��Rm�kc�!���x>]�B-���Ho�П�qӸ�<2%	�#3N�~&�ŉ!����*�����%SF2�ӂ̥p$�$( a�>���7����
X�
���	������6�6�Z�'���Q����k��樻�.�4 �J���|SV-�-h�Ƶg���3�B�1Y�d�3U���L���%	J�0N���T���2v�ɞQ����
H���m>81|���+߲��-�/�i�5ȅ!.R ���
8Z�<��k>$?��=���3˃K�E(IP,�8�^ܘL�;E2�$��E@�-
�U2���f(Hq�F����1u�J��>f;����0��J��(,��X=xkxJ@����'I�ae�{2s��m:�\"�n���ry���	?`9.�j%�lͥpg�	I`��r��;��IMܵ[��U��B#8'��{[�blv7�O�kR[�
qL3W���}�s:5��h�Y��P>]�{z� R<��8�5:���Ť��mj�Ƴ3�g�Bm��޴O!�K�=%	=����f���B���)v	^��BI����v(��?h�9�}�R�h�5q�-P U�2���΁z�{���c`'������Z�,6��� �9|�aM��]X_LE}z�;�ĳjO����K�R� �(�W�]5-��hs8��r�9t����.����BG�$ؗ˵�,�f/�<��F$��Ec���(9��w%�!k���z�6X|M:�r��Umx�ε���$���4��5��O��1L"��=E��N��>mr��$�X8�=	��ȕ�p9���(�o�\f
�5��g�͵�Mp��<��VFȼ�=�&��Q��ke��z�A�5��@S,��g��S�+@��?�����ڌP�\������xJ4�&��%�b}�͵SI!�~{�D�ѳa���_���hG�gd�µ(I�B`�>;p�� &k��_.%�=���Y��C��:��8&p��y�@�o�S(h�9| 6�ǔ*��}��&HӐ-�f�,�X�CIS�����ϤL?@2��H�$A�d��g]e:x
�+�O�a)a%!s�D�HP�PZL*#�������e�.���jov��9;N.4Sc���<�>ncn�6�ᒉ���x��	!<
v��a�����䦸1dLl&�B�=����]}��������wk�O���[B�*»�wo��'߭�y?�(�����WГ%L>��z����[i�� �g������D���oy��.�7Uޭ�v�~?����Xb������ޭ�{���z?! +�^�[G���m��#��}}����X������G����p�)��?��:~� ֛V�]>��\
�LuB8S�r�̹Th�2���l�^�Ё��Rw���6�Ѓ	��Xx��_!�(w+��@/y�Zh�{�a������m�7V'�W�qg�N��*�lŕ�c�4PecM6�r������Q�� J�0N�9L��3a'J�.�y�� �&�^|�����i|��X@I���a���)�$ZR��#�ݼ����I���\
װcJ4�q���[�nJ+}��Aы"'o��"���˚z6%�����B����V2���x���̒��^?��
�B~�f��t�2���E2~���/�����KBw�c�ktP˧K>.���MH�ߔ�^�(-��6]u�b
�(Cl��6D)��j=���&�o^�fqc�mk�`S�T����#8L�E�ͭڵ�/�t�5R�d ,4�����zBt)wH�fҧs�K�]R� �%��9ҶVh�E몲ıb�������G%�[)��S{n�> C  |�vs��.��W��'>���4����|�)VӤpe����W͌�7蛱�P�3��$0cK9����%ʨK�B%
�����9���K�PB�]�B�i\�̚�R?���cg�w �R�i7��`+��4�7tA�oh�N�̭)��4}k
r��%�{�Rt����p)\�)I�4A�i��x~�. ⑺0�$%4�4�(`�n��������u�^7ך�tE��#]����4�� ��"�#�}�h�4�K��JI�ƹ2N�:�i���s���{�#	��D	�n�[٪{=��r(I�K���~�zc����x��<R��I[�kP��X����n�h�gǥL������Q��TJ�2N{���p��I��!�+YF��#��iR>����y<
�ͣ$A7�qڃ)|1mE��ni)�>��5�(o�������������ѼV�r�qkwgk��vNM:Zؑ]�NL��7�כ@��x���|��U�/��`�?.���P�����A��'��G�АZ����Cd�@�!��$� gc�{��
<Z>: ���jW}-DF� ��~ň��*�O�<��]�!$�5���l������J�B*F%�(�0����4m
%#����#8�'l��B��(������q/μ�n��ߢ�/If�~�q}��.��hWSi9���˥p��)IPi�q��96�9���Ű;����C��˘󴰃���`�C'�Qa'N��n�7� ����vvku���R�$�Puǉ��������Lm�tmny��9�/�ƌ����惁�R�J0N�x^S��H�و&d�k�b�G`jx����(C���lƿ/jƞ���+��'j���\񬩤U�:��U�$Au.��c�j!�Q�}�x�A���2�r�
1)���`����ۇ�2|s�[gѹY\`ȵ���-����<j3��kw!0 �Sl�=GS/�2=>�K�MIHGSRN�+[fEBgߵ�c
N��	vG�VO�W:z�@Ga�t�d��4��R<��4��� �sJ���%��/(r.�q�,�Ǡ���.I��ʥp��$A�~�� @��$��<L�N���i5�=(�����ݮ��ZÇٔ�o����)V�k��q�tۆ�9S���"�b�R8��H�lqڛD��v/��������#��9�W}��9�>𔝸��ԧ��GGYaѓCy�9��ˎ��P����+#�U[��-�@$��f�^����8��2R��Z]�]!�@�1�x{x��]�S��D�z!�t���Y�(\}V�$�ϊq��ɴ��w�� X|����Rb�9���R�'���q)\�J��g�>{��*��ل �,Q��,�����L~����ݝ�
��ҹ��$rE��%��*c5�:�w>`Do@&Ǒ��<�s���:|=�-��A�/��(\a %	
�= �I�ʈ������b�~Ř�!��ud�o��}�lߟ޾c%����k��yj�Y3�,�E����C\
w���(��E�I툍�v'Z��7�79-��T�hh`}�k�+V逶AX�k�Ge�9�c�η���C��|� �n`!	VPN�/0�&l���n9HN#�36b	���!�Nt�R�gվ9s�~:¼�9�kVg��zN�;�_rI��U��X~�B�uޞ\ʴw��d���y�$h����O� �=�Kt�&A΂����59.Z�o�Y���0h���پ��3t�8z��w�v�2|��S[:���c���DJ����$�R��J50N�4�Fs���j��/0�!q�I�9@�8dh��1����wk;"�9Kχ~�3}{g�V�cLc2t
t���	�{l6�Tm�e��I���3ٞ��������&`��Ƌ�Z߀��¥p�ONH�'����F�� hս_�@,dOE����%��^Q@>�>()��ǥpM��$AS���	�"Ini�q�'�?��W�zH3�0���ZG�!����ƃM0�3�I����l?�=�`SXhm�:������;j��K����'3>�"��u%	:
�q���1���������G�)"ו��K"��#L�y|��u�/�T����&�X�b�P��ڹ�x��%pal�"	 3�`yX���zz���'�3O�Kᮧ��z:�WP2���o1>9�2��<4b�S ��m��.���[��K����[2�c�>�nM"'7����T�����p����sB���;�x��=7J����D��%Ǳ@�o볰�e�!���.��1s %w���.h0%	�3N�y5k�sF���!��8��y�ѐ�o�l�����W��R�����9���m�Ƌ+�W��/�y-��Cl.��e�fy������d���������7h�w�>5I��&II�j���g����,���VК�g��蕻pb!�$�$2W�;�ܝ�'�v�ȼB(tS��I�˙��r=Π��@�(��bHr<��}z���1w�$h���<�Z qw�]�)�>�/Ν��y�" (��fUgXx΋�[���7����仲RjW��/��yn|!	ķPN����	�u�=(E�J���~�p8�<��.`�"�7�@�G��4���C�}���KL>޾?�3Η�C5}�����sXz#R�G���[��؜�����t�7��8O:�O�UZ��bX��3r�ѡ�����.[LI�l1�GG��:\�8N�U�~n���0�e�.��?��yh�u����gA�ޘ7��>�L2�����Zg��������苭���T{�˟��]+�}
R{gD��wȥp.F�,N��G���ހ��-ܜ#����C��HKykM7�m���j��W\��qr����~�=A!�l)[>��F�F��О<��>ͥpa�)I��qڛT��</�%����eB�5q'��d�sg�.'������8D:�jo&HSm3�f��$�)Ol���^��~=5�Bbh�������T����񁎾����R��)IP�<��y��1&S��h��$C#s��aWG=Pi�9w�����G8����&�~�z}�!i�8�á��!h�gi��ݰ*Q��ޛ�gGS%=����ǥp�vJd��O����V�g���`#��6k�s�	S�k��B����R���%$�G�RN�/���:�M�Z������s8� '�l���ΝǙ�Ew����f�ȱ�����f�{�� �<�q�SҪ��_���Vp)\[JT�e�>%�/fm��/)�A�� +�c���y}����y�39��@�sm��\�ʫi<{��6A"�����ؓ�wG�K�K=�O#�µ�)IЦg���yֽDk1@��F`������?|D}�            x�}[iO�J����ẄE�01�n�>���˰�I�IL�,6�	!��_Uuۆ�y��U37�TW�:�8�t�i6�K�w���ܹ�e���u�6z�89�|�n�ߚ\�㝿�)�n$�Q�ܠ�C�9N���'�����$c��Q˕-�s�u.�]�Ȃo����q���hݓ�\�R��A�%�<I�y��sR.x/g���0?�-7��Q�\�>ЯL㵿�p��������ƽu!�U��<����� ��j	��U�^��*�f��q:��F>���|H��&?�^�eqz}�O�\7��p����|!稘�)<��y�\P�%o��d|]��$����ύ~>�o���;Hfi�`0L���Ck�x����:��q1��S���}TA�u��id��ۅ�󌽼���y.ݢ���q1�[�����8׊���Uq/W7oN��+�I4XHn#��7)�8�O.����B�`]#��%B�I�����b�t��bxpy��ig�O���Uk��|�睱0����u�:C2����B{�5�/�k\�īS�D �(h�+�vn��ge\���~8�e�m�ҧ��;����I��0�颖�7�&Z`�O�&�$���Tp_��)O/\���I
ny]��V�mpH����a\f�����Vw�����:!��X�S�{-�~C�ㅍ���KRX�5��!<��Y��#�I9������(���h։ˉ�%6܍��q_�E�y𙮫PC��9T�G��=�G����hR4�B!�c� �E#p�N?NF��ഋ|��e���)��n�W��_7���O`��)�q�b����	�62�e�@�BKsPGZ,�Ӎ����g�|(�����������Qp���� �hvޏ�^?N�K__B���J����
 p��8@Ybư(�Y�_��L?�vQ��Gr��qwv2�����7�
�IY�P�sj�@��}ЧD#����R�Pǣo\��`�[Brd�H�l���.)6�/I��d�o�x�{9H�X?S
��X���3��WJ2'�E�,�ۓ�!%�(�	�%�=Kr@�����:8�+۝�(o�#
	���ȝK�ۗ�X?'�[�Bx�֜�� �r4�h�EA&0*d�."�>%:�Άǐ�I֥�dYz��_�����g��Vz~�{r�{���$�	���[L�縍��Dh42�8�F�\��H�b���Ҭ���r�Y�v�	뼾��mo��(����~A3K��	)�N���`�r� 
'���,���!����ה��$���(�3*��_�������I@V@WC0�,�UT��R��	T FF�e- ܐ�,�Ip�e	�3��8ϋ ��.u������Ϟ�<�X�E-��QKր��i�� � (a��)�
<����v�K0�$�tAOg�O'�F^ ~%�}�d�#�ۿ��ؿ��q��*���K�.|#$�5���9l`�L�Hc���eq֙�����`�F{�f�� ������.�
��@�Z�0Ƅ�/u-�R�1GALp��E�e�6��?������2���ĝ��tF 1��d���$ڽ{�<J�,��_�1E7k/%<B[M���F��\��_�sB���pW� TOg���1X1N�S2�fq�_p/�8�~ՎW]qD�j!z��P��OW\S�Q�)��g
)��!���.���;CD.|���p?������PW�߸�`�Y�5u�y#�T�
5YWdS��6��(��O�]�d��()���p4��&y@��-�ON����N����o�����[j2�h�t
2)�2��q,O�i������+`�>H��46O�K�+5͝t�..~<��������
�ڰ ��j����y\�C6.��Qm�3����^U�]�w�^ma,�Ԁp�' 2���� +7(��`�!�9��ȕqt�{�),D�Y�ҩ�6{�ӣ"#hd�Ps{ᕿBa�[I)��n��Ɉ�'h7HCڝ��g��s���9 !2*}���-��JM��8���	��&�D4̀�6B�����әţ!��r8��x������v��0)���&��QF�yX`"�S��]���%�H(:���"��ꠣ�H���}]�?��Dk�U�{�B&� Mh�����
Eڻ��¬&+�vIGeP�{�<�ʋ"���ә�?�mLZ&��'t;��a�<�x`@H�<!r�*�}
YNyd���	� �ޕ�iN�~���=(;�,u���SP/�����r���L���g���2��ၭ���.Be�F&�=PO4�Y~�v����'�`��<�Y���������R��~{��pyr��� Q_S�ES
�����MT#��C}��NX$����騯	�t��!�m��Kٮ���;a�>����+��u��_Q�� ��V"ׅ#\v�+��Xvj�U	���������|2�H�6�?�ݯǣ��٫��1?�Ta%��{�y��$�:�9ܪ�����@�2�BS�*׮�ǆ�S���0���]���P��O�������N?2��*"1_�2��X\D�(Y���U�FA��Q�@}n>��r�<%Y�<�v���M�y�u)4����ޭ�-���2F^�ӊ4����*w`�h�M�� �`�:w�!�-w��R��MV��h�[Um�?�*�����+L��K��mQ���*��x��LSB�U7H�S�8[����E/阧ӡ�V���vJ\������y��|��a�˚��苢k���Q?Cx��u��X�[J7/d�$+�`<:8I��l��x��?i8N��G��k�q_�r���𨹟g8���F���>pg����z+�q������%}(7�uF�����kuꅻm(>084�
	���gj7�#�FF�!�]=�9l����Av��h���6~��ݘ�e'�H�­ku�=��i|�DZt��Q���D� �@02�J��d�w��
2ig�=����шxp���G�CM�~��t��u�y�����G}f[/�2!�����ǄH
�:>��@�i�,K;C�����:	Zo�!�[�����6,xŞ���@���#�h����Il�bqɛڈ�Gb�X���!���s������пQ�[~7�����������͡�`��m�3>���B6���e�|�r46Pm��1��$=�"I�9��#�<=r��8^� PF��h�����^>�4U;�o@D�BBCi2U��'���x�9���00W>��9�򼫋������xu �!���Ă�hф�S���6#��̐ٸ�90�K	k7�����a���C�{��Y�F��=���t_ė��R/��%V��˭YM�ԧ���j�ԩ�B�
"_�P~b�"W?��x��7&�hZ��n�����ҹ����87��ټ��b�WR���,�F}QpGӌ�4���<uQXq�Vh>: 1HG�|j��l� ޻��|�����]����/8��|����ڔ��[�j]r�uج�A:�10��)�xC0��B�(�/
�����TQ�ԏ[�.�(�ci0��&��z�f�z#���l��Z���y���7�n����h���>/�,���W�p�1rD���i��y5xCh'��8��|;o�����U�(��N�ܿ�7�s�� ٔFgj��S�f�Xkc/��qBl���9�>Z�I_��@6�+�����s�uڻ��ta��/��c*uu�B^(��ف�MWH������n�E4(��08죥��<~�?\{Ny�������boW; q^�0�s��q���(�*Y���g7hU�~�8�,M�~:��E=?����zg�a�y-�![@Mnk���g��B5F#����fkҌTe�dl���0��[����g6>�]{6�&[W��g	L戬�,Q�co�F��������A=@gas<�u��H
� JP��`<ۚ.��lH���q�V����Y�]�, f�|Fznd�l�NU�A��l�wTbo%�������?��O����}�˔T���>n��&��d�i�cŔ��)�8���nd���G��ԍ$aQ2dݤ�����y�G�g&���ݻB�i�. I
  X �:����ϱ�6&iA�jV�e4i@��k�Ä�Җ��#=ݝ��� ��d�ʭ��-/^����ӓ�,��s��B��M�N��ڨ��A����4\ж��8IM�[z:���~F�s����Nv�u����k\щ�NKUU�q,ɼf��%c󱩅�5M�U�:P�7�&3�t�iUO��A�׺�sS�� K!)i�K�b���t�L�U��G

6�����n�U�b�u Sл�C���8Ъg��7Wk�����{t�x ��K�~��A�͉��.�hd4sSU!��q�)�=.��h')yup&�5�?��O��nݴ��^�0/��^�����PA/�pr,��FF;"^%��*ݒT��A@�#���N<J�10����Uzpwė�޹�l�N��-��a���Us_-��h�	�Y7�t$�$���^0��4<8�C�,�������������SK
_3Y��}}�=Z�~-CB�K/u[Ro��4˴�m�����P�ͳ|�-��y"�㋷KwzJ�Jv55��M�|�h�k:�F�r
gZBKbVº_��H�-�N	:��zd�}ry�w-v/�e�M���uIo�!`p�,��"�r�Fg��% �ذK��v�����y�Z�Z�z����hRU���+��)kX.�Ah<LP�PAM]Z��u��E�$)�y:����ٿC�'���������U�B�i�r)MVB��ad;��6���Mn�1t�`�M'�����rR�Y���O_ܭ��/��^~�V>����%+�6�;p�EU����A�����!��d2���k
��݌��ikk�ܹ�n����XQZ�
�f4�?��d]�`�������2�����£��{����v)�L�]&��!I��d_���֣�̬(4k����ku͍+3Ӵ�CڱJG�_pqc����8m?o���g����\{ߗ�V�)V=���" ��\WozY1�����~Z��yY�?f�h38?�_Z}�݊�?���h��3�'�VL���f6)h��}��ZK�[V�� �h̅>8��_>��H����*�Av[R�mp�eضtêa���5od!]5�e1�MT�Md��C�16ssnN^Lҗss����x�v]0?R�j:�l�i3�l�H]����Y10C�����Z�V�s�8��P=�'�R����v{�8Z^�ZU86Gz��%��l���f���saC�9V��C$*���S�l]�C���{��xp����3�'�'O�ʛ�p��D.DMG�/�ıvqwMSf-�J�'�c��k���#c�I��F�r���y����ݵ�7&��]��G�݊��ػU��`d4��z.U}6�"$�+�vu�M�|X��_��7�����e�
l�G,�j�ګ�jGë��"ͪ�G�]dZ�t���g�x
�wL4!X�l�w��.�q����UC�=QUD� Z��F^��r��W��k���~P�q1��/윝���w&ћ�:6���`��!m�T6�����h���TȒC"�!I/���P5���y���� ���ȗ� �� �uH�A.��*L�ܜS��uk��,�G��4����I:�Ɛ� +�gv����U��}o�7i�ĭ�OYKM�z�Eк�z/zu� �^Q�w(�\�X?��W(4{}��O����{��[�]\7�W�dWW�ʪ��P�Ƃ_����N%�mh��,�.�q��22Og�D�L�o�����np����d�J�>��j.l����X;�<��h��f�ӧ���~�%}DTy�!����3�����B8ȶ����g�aA��5�Pw֬��/!����2k����ڸ[�a"�ڪ�(�=J�"x(�m�Nj5Bθ������������[�p�%
TE�u_eҼ�ī&9�"��EJĆ��/<�V�搃�pe�	v��,W�9��~k�w��t�@1`V%�˱��XA�y��~Z<	mȡ�CpN��y:�$˒���]$[���x�$�W4v%��	~��*�&�D��I�պ�̞U/�q=+T�<��Oig��:ĺ�U��wWw����?�HV��=�%����ev�3ZFo��Ґ�"!�!�I��w�3�1RҸg�N/'/����x�&���'��Y.�z�[^X��dV�52E�4��j����9s��C@d*�� ���n|��s�Wo��$ؾ[f����V��Q��R�)�FF/N��6���Uz�Ǣ��7゛�cV���VC�yy�r~|p��Wo�����~�Qm�z�Q��7�{j�"2/�6�~)EP��O�|�>��7�
t��?I�(�9��h�H*@ ��W?y����u<n'�wC�����电):,�rW�+Ho���@$#��8K?yl����//{b�y
S1�l����(cG�@%>cd�]p�U�&zg��
T��*a���)�YY���g��h�w��.�~3�ߞ�5��Lomi�fZ�����i���'�U��s!ǡ�P��YLS��4}eagg|r�\�Я���b�k��>���U�a7Vo�Q�$q��s�h���4���H����H�N�k�j0c�D2^�/���s��>�`'YD�\@�R���;��������v��!            x��]Ysɑ~����E�$�6�z7���Y����ǆ=�p�Ê�c���$H�"�S<$�"E�����1@7�'����:����j�5�Y]G�_����������w����?���T������ӏ�g�������v�]�k�n��W�뙶�l���y�]X��|��͍�_�۽݉�x)��龜
fW��~��s;�l�4z�ﻳM��W�~�/���&��������yg�]Z���ۅ��σg�o����$F _�Xk�m������Ï�ׂ�����uog6������r��p2�'������z�]�tj�'��w�R�]^k��ۥ~�7��`>l�[�}��$4���{u _�S�Գ�س��H�PL�3�,<��#�h1�-fs_�0�%mY�-�T�|�.=�y���y�\��ʍ��e0��vnk�c��~#ؾm��x���2��	�nq�J���I8�/Ho��=�k�+��,���_�lu��l5����I���m�E|���]~C��⌔jb5�	��q���ك��r#�\1�-f<bl�2����q�J'��a���.OwZ��ʥ�v����c����YڣOV���r�.*]���3��&�6�^�����i�-=�^>/,F�fa�6�nP�P�e8�3��C<�#܀�]�~�V�����`a6\/����ǯ�&�!��|I������5Z�ft�iww����`kg���#i�����5�y��/]̦��Tl���+�h��x���wWb1>�[,��˭p���k��t������o�lӠYm�f�qF�F�"n��/�����N���L�8G]Z��ȁ�ć���D�O�O�//I�\��#�����;�}YQ����(�`i�*ivJi��xMo���6Xґt
��7f;o9�r��{��;�&�ۥz�j���?���~+t���;R�7��J���fg�5�.�.q�����d�4�3�����[�K����妨h?a�����+���D���08	CF]7��y�D����!weo�>X��d��m���^3�:;����m�i6 �|�Z�������R���R�l���������b΋�mޢK=2<��졲~O�|��߂���A�|O*�[����fv��j�ǯ�ʻ ]YW��_]�3W�#�L�/?�R�{��,�sX�Y�>��u�l�p�*X(��H?��[�g�s��g������' ɈO��.�
�u|�����^���v-�0��R�ds�PBxEЩ ,���ҩhF��ҩ<��NwaG��r�5������n�������B��+B��YQm̘L<.���ϐRDt��*��
�mo��>�2��P�2�7^��ފZ��m�>9�x&���ۨ��R��+�P�4%�$��n��<���ݡ�F,\�7է�e&�Ri~s�bF��,|<�����g�%��E��s8��g�'$�D�-����ۨ����9-l�6�y@��52p�`�^tO���h��ܔ}]�ڹ4��'8�'0����3{G1������n������a���Nm��z�t�u�4��giРjUo�p�Ie��h��J�YV��7��Z���;a�Ey6���l��:Gd��n�����xo�l:Ncp�!8�Ǔ�	�#���<�%&�U\����$�\&΂�<��88���T�%_O(u���)U:�[0*\���v?z���	�������Y����,@�{ڛo��k;�ށ��"xG�*�a��]�6�ٕ�aB���ח�Ss��U}]4Y��	�Τ����2��*�����ؘA�A�{2�A������	h1x8�j~]�|0��-���5,�nD������:�ϭ8�ˣW�F<��9ۢY�	Z4rpV���d�9���<���h�� �r��aku����Np�?�W��?���~��m�W�ͮ�w�u� ��C����������������~�����}�����?��G��_���?�x�?o�y�����.=X3c)�����<
��7���N��e�~ؽ���1���{��4j�N5��D �w4����Zc�<ϼ�xZ�Ν�4B�(ڄ�p���c�������'qJ�6I��t�|����4K�Fj�C�Š�f�FMHT�}Թ����$���;���α��|0ͧbg�rPBĸ�Q'�@�� �vRjJ9Q�#���o,[���*d'|��;�~HbE��I$,w��=���9�[i�X�̈�*�l~�g�$�BM�7�H{�)�3���A8B/o�K]�<3��� H/.�Zp[^�p��X�/�vB�*�|
�`�4\���gEs���g�r'�#sS�Y��/ó�z�<ؕ!�Ӑ����GR�Y��i#�<q�&��\n�8�喧Ac5p��B漢Цr�/&�oI�^�~��� ��Fσä�q*�7p���r8��}4�S�k�i����NgG�B1�3k�m�+϶�9�M;��m�	�4�h������o�z7-�~��_��?I�X�{"-�ӠT������ф_ �� diQ����6V&�� 25������9˂���f��o���[����̛�Tc��{{S�ʩ&J�`�2��1��<'�?5�
T�U�~��C���Wߴ���?�CV�D���
͌\@�8r�T��lf9Fb
��>�Yx���+R�G
�U�~��%B�g����Xm�۽V�0��s�J����3�]��<� �ڽ�w��ݭ���o�����o8����" s��5�0�\�3�yҪ��۵^u�<��6z�� �l!	�D$?1׽oƃ�J�aA�u�����l^"�Yn{��wXS�*ȗ�$Ov��e�V[�.g�m�5��pa�~�4o9FM�<#h��U��]o�
0���)2hI��PE!�[�0�^�$�n��L<0��H�}��7�M�t/E�;_L�9�A���Wx_1�3��_q�D�>U�}��]|u��+�
�7��}�p�����Q䬋|ﯾ�@���ӝ`�51�	��0/��yz1�ZL���-w��1� ���3��wq�̃u��o��jC�bB��˕2@��U%�gT5�N�Fԑ�ʐ�*�#]�R<��L1��"�i#B�N��F�"3M���o`����6xx�����d���"��(�2�	���` '<H��\�d�gΌ�� !x������VN3�O�]������]a��e�Q��)<X�1��7�X\6[̎��Й���W40
��<�[�XQ����4����Ղ�*A�(A	L0��6��%n�C�4�L	��OA�L3��A�Wpn'�C�Y�~��m΁ml��O�qB�Ђ�o�!iq3KЌ�R��5 ;�R=��%g�D-���ׄ����dI��q�;'��F~A���^����íJ�)J�xw���8���nxvk@���R0����<ɟV�`S{������/�i�7�pW��F36�E��r=�0j�4j��X1��P0]@t�0��-�����)bV�&S�R	��"-e��n.p���g�
z�<����!���詀�\?*_ ��V��w=&�D�;��=�?P���S*F�j!�x%6t�+����ĭy��CZNb6%-�Q�j����8YhQ����Sš�TM���r34�k��Ո��D\�O���mp�����ǅ�����[��eD�'��3	�u�N�i�4M��G��,�ؠtHd�s����[&�) ��E���5��5
�m �R�K�7a1� ��D;��M^v���͛�.*��$8�\�-�V%p�׻�=hn�`�1���y�[��c>ڐ�f`3�=�T�+��]��pE������Ԫ�	c47­�(��L(�^��M�����t�����z�j���!��C�C��)M:��J�-�e�M8���%Eګ���͂e�_�$ʠ�s�Mc��W�-�K ��d���2�y�E_�0�������ls��v7�u�0�;���tw����M��%r�\b��個�;�7HY/�Q�4es�E�-kg!���Ӹh�|$���w�n��		I�����!�@#�    �vK〒�"T�h���(݋g/���esҙY~�ҹ��wu���6�=+���(���ߵ�+���b��N[�)ֳ�#��J�;܀���w��_�2���d����QS��*��&<x��zLJ��?</�(�X��3fρֱ�9x@XK9�<m/�����Ie1#�Y�Ͱ-#/��<��iD#��^�ѣe�S�\�;H�v����M'�x����j�!��`$>�(�_8	�K��1K>R��:d��9�f�&��� SG*�B�*� 3��G�_�|�X*�賌7�N�"	f
��|!|,�&�b2t&��䜗�q���k�5����v���5��i�83aI�U����d����Q,��O�ԭP]�in��P������zŬ�
�ؘ��5��!*tn���G�F���z�=��Xh3��	��Vt��xR��^�-�l��Ao>����%cH��[j�o�5�ݜ��>���2�0��{�u&%]�|�X�c��&qny{gE*$�ML-��yzw��9�J;̓�T���Mf,l��!)Ӓt7w)����"	��o��:ҢT���~>Ƅ]�!FS��G���@�_���\;܍Vho4�
Md�ؤ����A�7͔\�]�{���a�8��EW�Ϭ�$��X>��26���q��(���藍+�|��rb.�h�a�h�r��c���J���a��ɾO�-��VB�"�0��@ڜi2�nT�eP<�U�E\-r�٢'�Wyy�sE #����q���9R<S��Ra���#���n�r5e�S�0,P��c��0ɶqpw�%��2$����#��n>�� ��^�~L9�b�Q�l(�s�2�\��0	=���sn	p���6,�K�\� }Z�N��(:��}�@�=\�]L�v2����)P�X�Ҟw')���p)�ւ�S��m<��`���";���Y����G�"3*-JSh3[C�F$�D���E�{�;��Q���"m�g�y�f��+�?�(�D5�O��thm�e����"����p�Q2dFe^1l�.�,|9��t�n2�{�9�g���T�X�<)�Ѣ�c0����9���2�8�,���st��'��G�O�!y'��������bK�ɈO�l�D�(��Y`�
���m������w|[��%wP%������T�%ln�Q�(w,������C!b""^g	б8��� �~:�����( y� {�Q�Tg�R#�����e���劥��_��s�ڇ��F8E�$�p�����u}\�4��ڱӘ����t�@~��M���v0�FC�a�8�e#S����ϳՎNE��C��U{�����u�������G;���X�Wn��u�GN�P�d���#$#�@z�M�-���;8�H�۠{�M\�<���*�W�MP�s�Tq�dz�'�A{Y����\���r8Zݿ�1)K�<�Nk�U�rT+݋�z�E�>MR�0�[�"#^�m�!�,���D��(C�pf�V���W���(�H�r���2�͠x��5�-���\�Nw:׫��.����(�;P���8�vf��K�< �V��+HH��M>�~��͛�Լ�+p� �ҧBK�o�F�-+K����2O�0u`�x)t�s9�8�b6�#o�QUO�F^��+Src<G�D�pLa��"(�Uf{���iF8܃eF��Z���c
8�9l�έ��Zx���؎�[�; ��`�P�"a�>�R���Pr8H���C���ʼ��%"�O�����2h�X���X94�	����e2x�]*�L�)΂��a��_�$�߹�C老h��RMfw�y.
� W��O� ��dZ�Ҝ�H�ȃY��6Я�97F��?i[�V�Fxm�T��b/Nh�ݍ8q��2�����mq��Ǡâ�e2�n	�v�_�oWZ�����`͐����P޵��3��e��hB�W#����J4h�)hD����|}֙W��U���$�J_�f������YL�"����B�,vN�hJ�";����]D�.o���4o����$�/��T���?AԲ̝ ��7����Op�oJ^F�N����bǯ�� �`��E�uxyl*�el����SR�G�R0)%W:��������ÕKL���ӡ������Y��(��܈7��-z{$6���n"R���%�������E*�����Õ�ք��t��+�5�������j=Y����SOB ��n�c���Y`A DzqY<�r��R��%@T���×;H8s~��t��T[	`���,�K?P6����Q�)e{�o��J)i*'��a\�c��<��D"2 �CJN4����x�fd0��I#3WNrO
�kD�f��g���6Z�Yx�2V#:���`�*��4ʖc�bJ��eH}r@��=���RJ�XZ��l�!R��`e�r>b�O����XCs_N�1
sp�/7i8�rqO���c�r@m��DlSf�Z�'�D��:qaI�!�e���R�r6�<�j�bK
�}N�w?c�F���ڶ"a�T�Z�a(a�l��U�a�,Z#�B�\(���N�v� �Q�&� ,m#Br6���֍�ib�%�9�����M��.��nbC�Ϩ�����Y������e
o�>@x�ݣ����/V��zI��Vx��Y��VȂP6
|>�OL�"��N�V��+���i���I/f
��-���#мA����9�v�V��R"1��},�dv<�R���*���7=N��yw.��l��S��5uje���GaQ�P��� �!hZ5�B喞�����EAȈ����F�r��%R���`����k4���PD��Rw���}԰���&1r(�����D뿩�6�����❌�c��Em�؝�6O���2�N�Y�uAtG���	��Э�v<j	fG��O]���ǁ��Ck�'�����^��xY�l�y��)��z�FQk��8	�l�]�S%����s�&����T�N2(3��"�b���o�'����EI �A/�(BBJ��xI�i��k�B!4�����z�,<�h�5���1�d�3&:~P,�'m�c�u.�d���~c�Z8F�郭�������>�߫5��� �G�O��\�������hK/�V���1:��V�w�AsB95�R#�AV�5�
/��\��)�Ve>Q�3!�~�EΖ���c��/Ǻ97v������?��������V������J�nƶ�dM�I��@5kR�$Ed��N<XMo3�� �b���c�h�#�kW�Č\13fW�yW-���@��u�A��&PJf˱���� �)Zyt��)��Ag�V�ɹ�qg �m���_�RF�����p��jP��N<z��(�L`7E�dy	fҔ���*1�7os����ѫደ"{�?��]�~��oq?���u���ځҧ���?M��4�4W3��L�����/�T��_W:_�5gWn���uqȝ�SY{�B��;�W����#�IW O��7��qC�2Zq9xY��bhv]����Տi;492/U�ɵ�������)�d�U�l�!Ú��Ny��K�a��	r#J�v�/~�;���e���}��&B�
�=���<�a$�j:9��o�W���&��y
s�R4nTv@`�m���i[��z X��h�e�F-*�w��i�Q��'�d���=&؏A���(�&�(Jm��E2��D]/s��a�)�N�̠>+�e�)�ϻ��-�{)4H��s8�|� h,��lN ('�|��;�>��_뢯��у��<u�Ò[�Vpy��>tZ�OG<ko<j^��*�p9�i`��5Dc�3�H��4�=~
L���hͦ���Z0�p���<=����J���U0�?EqP�[m)Ş#u��6_��c?�9���+���U�&تI�Q�ˢX�/�Ƭ�ԑ�2(^�[����rR�;����Ó��]�S�<崩sK�٦����Gl�X1e�G[$���$EM�C;�Q��(ͦ]�!Q��%v%M� �T��.����j�M_ �	  n3�x�7��}yMp�&(bԒ�c�hm�6%Vp%�&Gl{����%�n����hR���l#��?%8<XC�<Z�THR�[���j·b��{S�������pZ����E��	��03'���lƽ`�Uf�X%e�)�C<�}*�Ic�~��ގ��?A2Sk�uJWqf@�J�e�r5��Ro�9U8������� �@���OS�����!.��wyMKuBM���&� gڕی�$�߉S�6�`HQ�?8��ܙO��[�������Y����Ibc���vbs_�Ed�tg��+��>����V��3��Ԣ�@�v�K��N��6W�����^�כ@虑�x���4?��E*��c!$�x���^�l������!6�x��L�`�e��BV�k�c�%�gTZ��Gq^,��k��$�!Eǯ`Nد�-�
U�����h`	���/�� �~�e����O���`
#Z[�l��f��k���6���<Q�^M�~*v�v�{�I��;A�����T���6��2QZ��b�,�$�C�/1�x�M?زx��6���Ig�Uw�Z(�s�ߊ~I�z?���O�I����q5�J�~��xۘ�t�]��Y�䙧Mn\��3�>�̅��R#�����W4��ǜЕ�����t�~D��w�(4ĝ�Ҹ�5�HSd�1Ұ���{�(�e���j��܉
4��|�U���6�~�K��4U�UV��:�l�1�mty��lN$�~ťCL+�K4�]���~��v�`q��L�Y��I�- �%I�X8Q�G���Xo�(M��ל�hU�їaa�-ޝ�mi��@<|��fZa��jg���A�c�%kC����u&�-ys���~b5t��w��OX���o��B�z��~_k3A��W����h�m�!ӓ��<_#L�ɳ��XQ*�F)���c�f��S�-�^���R���(=b=l���<�C���]�nx�~,/�m
���_�RW3���V,��KjG���;�m^p���!d9����o�Y�9��/�D�8�OÜj��5�
F}��%ʋ)*��&���G˓b�&�Q���w��jrG��SB�%�QfW���^�>�.J���uK�gp=�y��v9w��^vƯ�ێ���4���"h"lw��f��}�J��@K�����j�z׍]_,P0���WC��^��K���Z���Q��]��r��n�X5���F[f��gc�b/k)�]v�Qopn߼g񍪣����qի��q��iO�v�+��3��䝋��i.N&[fѬ��~���X��5U{�/�J��1�a,vH�('M5@V-h�����B4�2f��w7e��>�+Nْj/#�ܝ^�T��TCA��৩��c��6��w�����DCv�2;T,8E�z�@aw)[娛�u6qvYҲ���Jv&e\�v��H�X�o�U[%;�>Eaw�xT �]9����d1�|�J�snlW���L�� �������T��j%�7FW��,]�,�wFRԺ�mlA�R�	k��j}�@���xjU���� s��]��Ǖ_�l����1P^LY��+�AS��HE<&�_��+��o��ԅ�ޠ�$1L�^B�i�EjQ�Z�[#K\$�=*���$oȗ2i�:�"
�afz4�?�n��e�,�2f���iS�"cY���J�x�������8�ִv�C��'Q³qj�'k)��X%��XF���Kǟ6e��Hh?QZ�g�?9-s�9f�6Ql�9��f��7Qy�4���p����mR�[�1��7Kf���)��(��jY����/s�������?��`r|�^�*3aYi ]U= ����	�	6��Z��`�%�܌D��5��5yf̙����Fgwp��	��DQj}�EaNE�ȴ%�)�P-1VTTqN}��3�_�cQWo��y�Y�#k^�,c��ax��Lc6�7V����aEW �4s�Ў�����xG��ݣ���j!gP�0�c8P�m�?���R_����Iu$f+�b{�2o���9s��D���U7
�/�7V��jbD�$&aڳ¾H�i��^���.�qī�V��}ބl=�����Z�h��82ɬf��-G]��;�u1^�y���I6r�3Iޝ!����r�5�$�b��-�'�&�<��,���?�����ASSyi����7�[D�����6� ��!Ʋ66��;z�=�[D-����j�m�t�{�ǧ[R�٧"Xo�Y�n����$�}�aڃ0 ��zEč�o�0�B���^�%z�B%��9|�t�j���i՜��z�c�8U	�0�ى�����(������W����d5���c�Z�L��p��eY'���'���`��)�1s���$!��v����v�^�U�P�$����K\3�5[_�JK��a������%Vy�	��XP�����8I=%��i��t�h��Ă�t��-ԟ	�� �Zi	�貰��U��z�R�#�9Z��*iÇ�;�U�\������_���_������         �
  x��ZK���\�O�.P��̏����7���s�aPz��+(�W�W��OD������?������������I��|H>��b��������?��,}��"���� �#���Y�q���o�����)}H����?t��-W����T�$������7�2~�?�~�z�;˧4bx��ǰty�^�O��V�'S�Hz�����x�,����L�-/�jg����z(<�Ƀ@�����aY�<�����Y��[���i����-g����e(/TY��m������o�௒W#�ڡ6��2!/�3�7��]Q^����2�RhE|n Ot��Ji^h//�l��3q�v������y�����{��3��6ޮ@^N��L�ϖY$~�e�d����$i`�7\?K=nTV&vԖ�\�%���,v��,с'K�@��1�(Y$���2-hy�@poyV��[%%�2�[�Gͥ���ӂ�8Rpo�C�H������9��ВU�	y<laYm✷|ſ��^�M�X��lx`�h��U�2Єx+��QR	\�,Hy�n�[�p��]s����� ���=�(�,x�|Ȇ��d��4o�ωe���G{6Y&�ˡ���끻w�S����B��	�99��:[N?��u,��.=�'�弊YMt&��P�� ��S6/��U�o9��A�1rH���V��CD�yKw���l�v:�\���$2-�4 ���N�E�
Ԃ'.3`fU���B�to�G�P4[�������M9#�KH�8�7/�%����������L�И^�$��b=:Ny�,x�8���7��t����!��x��S=�nrԍ _Үn��҂�=�C'�t��#Mbh�I �Gh���V��� ����:�i�L�Y�劺���;�6�h(ٻ��G���P;��o �@�Ppaj���&Ay9d*�sO	6��H��<�Ur�HpW�i;w���wx���Q���ĠY�X��\Բ���'/8�`&���o�PDR����Dyaڦ�N���JϞ��$����ƢX���.��~3$�
3�t��?�B�e�ꝷz��K>���@�)1�l�ɲ��rh�M��v��"�EH?V�L�z\�f� &����>)d���D��|�ciZq�L�P�q��Ҵ	��D&մ�&���ȵS��^�,�WC{2U�R�IhU<mTΛv+�R���">�T�٧�r&1C����R�z�B��o�nc�h}�,��S�k��';]䝹�k������oCD�.�K��.&x��d�/�2���8�[i��,(q�vC	�<�M]#밡�|���F��F�|�A�Δ�8jZ-PP%X�so��z�7FdF/��||��2M����J���0�kla��=�u�L)$��}�<�"�f��Yz�cߚ{���"w��5��KW;��9����[q�{[��*Ŷ{K��d^�XeJ<�j��w󢄜��n��U��0
�{8,�.{k ����w�b�Sf��d�E��f��4ne���C���2{7�K.�?`yD�`Q��f�[,������e�[��@� iyK����q�D�0���aM�b��e���&��3�\�z�I'`/�.ӄZ ��e�<)%�EJ�g�}�OU�,\|�@[�ۘ��Y��΀���w�.y�7�SϚn������(��RD��몦��h�a��i��wر��b����q��{�^&�%JMS4� T�)l`d�ӎ��M�q�c�k�U�{C��zu~�Zz{QVY&�&��{�r+k��0q�Iw�|���V�.Xv���d}H�BP��gA��C���z��˵�ۤ���`�)[y��e�j�2�o����ꓻkw�c� �!M-J����x�H@e�-T�>��8�]�x��Ĩ�'��V�1pJ�en�Y.�n����0[��L��TՁ&;!�X�� ���&��܃�e!�*�ڲ�&Mg$�rv
��R:�n�y�4�N���[��0b�=�U��࠶"9b�u=�&[^[���	.]l��l�r��L����R�;�V��A��X���9�T}��������U���tfJ�G�<��Y��Z]I.(�T��{�갶�D��v���%�%�y�r��[?J��+����ںl����b@�hzx��:=���A�R�$����Wv�z`���Y��T,���u6o�q��%�e]oo,z�i�d99��?.Uyo��/�(H,&�V��t�_�A ��f��FHg�Z�=��h�}���y�3�u�cicX6|ȱ�16�Z�CN�L��@�5���؁��ʹ��M:[6�m.3�J��+u~l��Z����%�.mu�!n+�蕌-�dL��J����,(l�B���2k �@}̼���0΍|������C��$�D�az�8����=$�1�W���q)�E�[Ie�e�,m�m�*r�����dp~ՖR}��6&�/��ڿB�*�b���]}��}��689�Թ8cT�-�J��Ӎ�R��r��G>��7q�^�	s�ڊΓ@�q_�ݢt���m��_肏Rr\��"��ϔM��H����~�1և()6����zv��lLo�'{��Apo���VhXj�/~`�� �ܖ�t��*�`����ݮ1��� }v�>ְ�r�3������ve�o(8�{�_���:B��/��{�el?�oxi�n�ne��zCC�G�R��L;0�y�(���P�~�7�Vֱٰ��`\��qo���۷o3�:U     