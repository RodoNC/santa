GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�%      �      &�y���ڞu;>��.pD   res://.import/santa_Sheet.png-0933c61de9de198e8de89d4d06414267.stex �      *	      c"��o3ҡ�U�,�   res://Santa.gd.remap0.              U;T7
��^�HHٻ-   res://Santa.gdc 0      �      ��?�D�Q\]`�\J   res://Santa.tscn�
      �
      ��o��ʺ׿-�-��$   res://Sprites/santa_Sheet.png.import�      �      ��+��!�aȔ6�gX   res://TestScene.tscn�!      9      /G�ݟ
[A���W�   res://default_env.tres  �$      �       um�`�N��<*ỳ�8   res://icon.png  P.      �      G1?��z�c��vN��   res://icon.png.import   �+      �      ��fe��6�B��^ U�   res://project.binary@;            \��iK�XyΛfUswh            GDSC         A   Q     ������������τ�   �����Ķ�   ��������������Ķ   ����Ҷ��   ���������Ҷ�   ������϶   �������ض���   �����������ض���   �������϶���   ��������   �����϶�   �������Ŷ���   ����׶��   �����޶�   ζ��   ���϶���   ����������Ķ   �����Ӷ�   �����޶�   ���������������Ŷ���   ��Ķ   ����¶��   ����������������Ҷ��   ϶��   �������������Ӷ�   �涶   ���������������������Ҷ�   �           �              �?  �������?     �>   �      d         idle      slow      run       jump   2                   
   walk_right           	   walk_left                                                                 (   	   )   
   6      C      D      E      L      M      N      O      U      W      X      Y      Z      [      \      c      d      n      v      }      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4     5     6     7     8   $  9   %  :   -  ;   8  <   9  =   B  >   H  ?   N  @   O  A   3YYY5;�  W�  YY8P�  Q;�  Y8P�  Q;�  �  Y8P�  Q;�  �  YY8P�  R�  R�  Q;�  �  Y8P�  R�  R�  Q;�  �  YYY;�  �  T�	  YYYY0�
  PQV�  -YYYYYY0�  P�  QV�  �  &�  T�  PQ	�  V�  &�  T�  	�  V�  �  T�  P�	  Q�  (V�  �  T�  P�
  Q�  (V�  &�  PQV�  �  T�  P�  Q�  (V�  �  T�  P�  Q�  &�  T�  �  V�  W�  T�  �  �  '�  T�  
�  V�  W�  T�  �  YYYYY0�  P�  QV�  ;�  �  �  &�  T�  P�  QV�  �  �  �  &�  T�  P�  QV�  �  �  �  &�  �  V�  �  T�  �  P�  T�  R�  �  R�  Q�  '�  P�  T�  Q	�  V�  �  T�  �  �  (V�  �  T�  �  P�  T�  R�  R�  Q�  �  �  T�  �  �  �  �  �  P�  R�  T�  Q�  �  &�  T�  P�  QV�  &�  PQV�  �  T�  �  YY`        [gd_scene load_steps=9 format=2]

[ext_resource path="res://Santa.gd" type="Script" id=1]
[ext_resource path="res://Sprites/santa_Sheet.png" type="Texture" id=2]

[sub_resource type="CapsuleShape2D" id=1]
height = 36.0

[sub_resource type="Animation" id=2]
length = 0.001
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame_coords")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Vector2( 0, 0 ) ]
}

[sub_resource type="Animation" id=4]
resource_name = "idle"
length = 0.7
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame_coords")
tracks/0/interp = 0
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1, 1, 1 ),
"update": 1,
"values": [ Vector2( 1, 0 ), Vector2( 2, 0 ), Vector2( 3, 0 ), Vector2( 4, 0 ), Vector2( 5, 0 ), Vector2( 6, 0 ), Vector2( 0, 0 ) ]
}

[sub_resource type="Animation" id=5]
resource_name = "jump"
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ 15 ]
}

[sub_resource type="Animation" id=3]
resource_name = "run"
length = 0.8
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame_coords")
tracks/0/interp = 0
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1, 1, 1, 1 ),
"update": 1,
"values": [ Vector2( 4, 1 ), Vector2( 1, 1 ), Vector2( 2, 1 ), Vector2( 3, 1 ), Vector2( 4, 1 ), Vector2( 5, 1 ), Vector2( 6, 1 ), Vector2( 7, 1 ) ]
}

[sub_resource type="Animation" id=6]
resource_name = "slow"
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ 12 ]
}

[node name="Santa" type="KinematicBody2D"]
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )
hframes = 8
vframes = 2

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0, 3 )
shape = SubResource( 1 )

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]
anims/RESET = SubResource( 2 )
anims/idle = SubResource( 4 )
anims/jump = SubResource( 5 )
anims/run = SubResource( 3 )
anims/slow = SubResource( 6 )
             GDST   �            	  WEBPRIFF	  WEBPVP8L�  /��o`�m�"�̡��<�k(j#�;�b;|/E�$5���YF �[A@P��h���)�t�6�z�����&G�l[�D�+��&��h^@"]����6�)4�����s!6+r��e�Ij;��d���3���F�_�#I�$y-�eV/�!�H�T�v}�߁��;��i�&���N~'va������4Ή�~����f�8MA���w�稬\#�s�av��J19�=��*eޣ�	�9�Ϲ�\�l	�3���K=7�g����S�����x�؅�~�}�_~�Pϗ_b'���� s�~��ɉ���~���>�g�n�ûǉR����;)t��n��Q� H��!�������:�`���m��ٝ�=cr/��p�G9&��c|��&�;���^�� |���\��������|2ͩ��q�}����U�p���:���3��dp�|om�'�.�Rx��x�x.��;����(+��y�b�x.��;���(�����mε��v�c�]�lu��L �Ͷ9J���s��3�e)xߜCuwZ�x	Y책�ءft.�0�-�YDvgq���p8ݍ�����;|��v��ii����N������wB���w��Ě��̷1y��9n��-�}Y։]��w��j�\@�؉����n��ʬ9>�)�'�7����̾9�;Ls�n�M���|���}߇6�Vs�p�va�ߑ�^s�ڜ������T�{�.�{ǖ;���:/H���i�W�n���Mu�I�^4'p�=\!,��u�MK}.��!�lv���@�DE9�Հ���v@7��EqZ�t�]�n�sY�Ff��iq����E�0Z�����x�~��92v��W���r��9�_8r#`�߹��� ��`>�-Z�A�=���=Q'�������t�OqBX��������R�{��H��s��A��5b������^n��'�\��_E�=��=�۰��6b��F��s�{ݎ֋;�tXx���Lq.�6��C�����:��9�;jع���f����L:�����VV�z�H�5H}�]u.�v�Kɰf��{���{�a��nj�<���Ή(��w��X�3��n� {�:�չ�m�.g)뻽�:�չ3.�NW�g}��A&�˝���Ii}����/������؁�8�y���n�0��9�;)��v:qvW�����Δ~��NL����x���!�DD��n�P�9o��Q�����Cۓ�������\t����M��:mO'6��E��%�
9�a!�)�"\�Q�efe��=�9m."V��1��g�V>W�;W	��s���s�&�;�в�O�5���Xۥt�c�n'�(�9�ޥ�CKw�{-�]�UoV�;sG��ͨK{l�[�1h����\���6��j��8>3$��%�g�WPs�N��P��s�"ʬ��T�E�A�}��?�2"�h]@xΡ�A���n� ;�'���Q8"�9X`�p`��W����ePܼT��uf�8Ĕ��^F�Y�D����/OqW���+c���Zh�FaQ��Z$��v,���?�N���Z�|Xǔ:0�>g�m�ܼ77���2�����9@oje�(-��VJb���7��쫎������z��0��0���R�o�B�TU��JuQ�"2��;W����X�n�Yq�9�{9�3�xb��_u��*�����<��1G}��_��� ����	�!G����9��Ox����E�WK��럸�0�^�;|��M��LoZ`C���(��@�"o@��3��P�xn�s�O[�M�!ܮH�k�q��#�9@�Q�x�nT�6�|[P� �9	�UL����J�A��{�����i��QW݃�Au3�E��{�N�ã� bChe��NV��H����{�n�lp��f�����-!��2� �{�1���5�S�>@�|T�r��Pu�/�Y��bJw����s���G"y[2�2�7{��]����"��KeM�q��� �LrxT���);�Ø%��'���F(e�"�-+���qg��m�Nɞ��=�Eƕ�ce�MG�>�t���tϼRc���o��Kq�N|��t��Ņ�o�\n�y��][��ڥ�U�!��]
L�g����ql�rk�|T&I|�}���Ɣ�rMn�4;��(�O<�}���?s��)��7�kk�B��Z�l"����ǧEݵ�8�=*|#j����o)7M��2�����>��M|/QO�xa��Y�O˺ك0�G%Lm[�&0DU�ws�5�:idØ�I����宨J����}n��ws��        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/santa_Sheet.png-0933c61de9de198e8de89d4d06414267.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/santa_Sheet.png"
dest_files=[ "res://.import/santa_Sheet.png-0933c61de9de198e8de89d4d06414267.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 [gd_scene load_steps=4 format=2]

[ext_resource path="res://Santa.tscn" type="PackedScene" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 6273.5, 130 )

[node name="TestScene" type="Node2D"]

[node name="StaticBody2D" type="StaticBody2D" parent="."]
position = Vector2( 522, 564 )

[node name="Sprite" type="Sprite" parent="StaticBody2D"]
scale = Vector2( 25, 4.23 )
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D"]
position = Vector2( -7, -1 )
shape = SubResource( 1 )

[node name="Santa" parent="." instance=ExtResource( 1 )]
position = Vector2( 544, 214 )
speed = 700
acceleration = 0.418

[node name="Camera2D" type="Camera2D" parent="Santa"]
current = true
zoom = Vector2( 0.5, 0.5 )
       [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Santa.gdc"
�PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         Santa      application/run/main_scene         res://TestScene.tscn   application/config/icon         res://icon.png     editor_plugins/enabled          +   gui/common/drop_mouse_on_gui_input_disabled            input/ui_leftH              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/ui_rightH              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         input/walk_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      physical_scancode             unicode           echo          script         input/walk_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      physical_scancode             unicode           echo          script      
   input/jump�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script      )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres               