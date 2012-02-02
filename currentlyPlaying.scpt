FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ) # iTunes / Spotify track information     � 	 	 F   i T u n e s   /   S p o t i f y   t r a c k   i n f o r m a t i o n   
  
 l     ��������  ��  ��        l     ��  ��    , & @Author  Jeroen Wesbeek <work@osx.eu>     �   L   @ A u t h o r     J e r o e n   W e s b e e k   < w o r k @ o s x . e u >      l     ��  ��      @Since   20101102     �   $   @ S i n c e       2 0 1 0 1 1 0 2      l     ��  ��      @Description     �      @ D e s c r i p t i o n      l     ��������  ��  ��        l     ��   ��      on run this script      � ! ! &   o n   r u n   t h i s   s c r i p t   " # " l     �� $ %��   $ &   1. returns the current track(s)    % � & & @   1 .   r e t u r n s   t h e   c u r r e n t   t r a c k ( s ) #  ' ( ' l     �� ) *��   ) 1 + 2. writes the album artwork of the current    * � + + V   2 .   w r i t e s   t h e   a l b u m   a r t w o r k   o f   t h e   c u r r e n t (  , - , l     �� . /��   . 3 -    track(s). Note that iTunes artwork always    / � 0 0 Z         t r a c k ( s ) .   N o t e   t h a t   i T u n e s   a r t w o r k   a l w a y s -  1 2 1 l     �� 3 4��   3 . (    overrules other playing applications    4 � 5 5 P         o v e r r u l e s   o t h e r   p l a y i n g   a p p l i c a t i o n s 2  6 7 6 l     �� 8 9��   8       9 � : :    7  ; < ; l     �� = >��   = : 4 For efficiency, checks are performed if the artwork    > � ? ? h   F o r   e f f i c i e n c y ,   c h e c k s   a r e   p e r f o r m e d   i f   t h e   a r t w o r k <  @ A @ l     �� B C��   B 8 2 has changed. It writes a 1x1 transparent pixel is    C � D D d   h a s   c h a n g e d .   I t   w r i t e s   a   1 x 1   t r a n s p a r e n t   p i x e l   i s A  E F E l     �� G H��   G ; 5 there is no artwork, or if no songs are being played    H � I I j   t h e r e   i s   n o   a r t w o r k ,   o r   i f   n o   s o n g s   a r e   b e i n g   p l a y e d F  J K J l     �� L M��   L #  or if the players are paused    M � N N :   o r   i f   t h e   p l a y e r s   a r e   p a u s e d K  O P O l     ��������  ��  ��   P  Q R Q l     ��������  ��  ��   R  S T S l     �� U V��   U G A  Licensed under the Apache License, Version 2.0 (the "License");    V � W W �     L i c e n s e d   u n d e r   t h e   A p a c h e   L i c e n s e ,   V e r s i o n   2 . 0   ( t h e   " L i c e n s e " ) ; T  X Y X l     �� Z [��   Z H B  you may not use this file except in compliance with the License.    [ � \ \ �     y o u   m a y   n o t   u s e   t h i s   f i l e   e x c e p t   i n   c o m p l i a n c e   w i t h   t h e   L i c e n s e . Y  ] ^ ] l     �� _ `��   _ / )  You may obtain a copy of the License at    ` � a a R     Y o u   m a y   o b t a i n   a   c o p y   o f   t h e   L i c e n s e   a t ^  b c b l     ��������  ��  ��   c  d e d l     �� f g��   f 2 ,  http://www.apache.org/licenses/LICENSE-2.0    g � h h X     h t t p : / / w w w . a p a c h e . o r g / l i c e n s e s / L I C E N S E - 2 . 0 e  i j i l     ��������  ��  ��   j  k l k l     �� m n��   m K E  Unless required by applicable law or agreed to in writing, software    n � o o �     U n l e s s   r e q u i r e d   b y   a p p l i c a b l e   l a w   o r   a g r e e d   t o   i n   w r i t i n g ,   s o f t w a r e l  p q p l     �� r s��   r I C  distributed under the License is distributed on an "AS IS" BASIS,    s � t t �     d i s t r i b u t e d   u n d e r   t h e   L i c e n s e   i s   d i s t r i b u t e d   o n   a n   " A S   I S "   B A S I S , q  u v u l     �� w x��   w P J  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    x � y y �     W I T H O U T   W A R R A N T I E S   O R   C O N D I T I O N S   O F   A N Y   K I N D ,   e i t h e r   e x p r e s s   o r   i m p l i e d . v  z { z l     �� | }��   | K E  See the License for the specific language governing permissions and    } � ~ ~ �     S e e   t h e   L i c e n s e   f o r   t h e   s p e c i f i c   l a n g u a g e   g o v e r n i n g   p e r m i s s i o n s   a n d {   �  l     �� � ���   � &    limitations under the License.    � � � � @     l i m i t a t i o n s   u n d e r   t h e   L i c e n s e . �  � � � l     ��������  ��  ��   �  ��� � i      � � � I     �� ���
�� .aevtoappnull  �   � **** � o      ���� 0 argv  ��   � k    � � �  � � � r      � � � J      � �  � � � m      � � � � �  S p o t i f y �  ��� � m     � � � � �  i T u n e s��   � o      ���� &0 musicapplications musicApplications �  � � � r    
 � � � m     � � � � � : M a c i n t o s h   H D : t m p : a l b u m A r t . t x t � o      ���� 0 tempfile tempFile �  � � � r     � � � m     � � � � � V G I F 8 9 a       �     �� �       !�           ,                   D    ; � o      ���� 
0 spacer   �  � � � r     � � � m     � � � � �   � o      ���� 0 info   �  � � � r     � � � m     � � � � �   � o      ���� 0 previousapp previousApp �  � � � r     � � � m     � � � � �   � o      ���� 0 previousinfo previousInfo �  � � � r     � � � m    ��
�� boovtrue � o      ���� 0 clearartwork clearArtwork �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � #  check if we have an argument    � � � � :   c h e c k   i f   w e   h a v e   a n   a r g u m e n t �  � � � Q    O � � � � k   " 2 � �  � � � l  " "�� � ���   �   use specified file    � � � � &   u s e   s p e c i f i e d   f i l e �  ��� � r   " 2 � � � c   " . � � � c   " , � � � c   " ( � � � l  " & ����� � n   " & � � � 4   # &�� �
�� 
cobj � m   $ %����  � o   " #���� 0 argv  ��  ��   � m   & '��
�� 
TEXT � m   ( +��
�� 
psxf � m   , -��
�� 
TEXT � o      ���� 0 artworkfile artworkFile��   � R      ������
�� .ascrerr ****      � ****��  ��   � k   : O � �  � � � l  : :�� � ���   �   use ~/albumArt.tiff    � � � � (   u s e   ~ / a l b u m A r t . t i f f �  ��� � r   : O � � � c   : K � � � b   : I � � � l  : E ����� � c   : E � � � l  : A ����� � I  : A�� ���
�� .earsffdralis        afdr � m   : =��
�� afdrcusr��  ��  ��   � m   A D��
�� 
ctxt��  ��   � m   E H � � � � �  a l b u m A r t . t i f f � m   I J��
�� 
TEXT � o      ���� 0 artworkfile artworkFile��   �  � � � l  P P��������  ��  ��   �  � � � l  P P�� � ���   �   get the previous track    � � � � .   g e t   t h e   p r e v i o u s   t r a c k �  � � � Q   P p � � � � r   S a � � � I  S ]�� ���
�� .rdwrread****        **** � 4   S Y�� �
�� 
file � o   W X���� 0 tempfile tempFile��   � o      ���� 0 	lasttrack 	lastTrack � R      ������
�� .ascrerr ****      � ****��  ��   � r   i p � � � m   i l � � � � �   � o      ���� 0 	lasttrack 	lastTrack �    l  q q��������  ��  ��    l  q q����     get all processes    � $   g e t   a l l   p r o c e s s e s  O   q �	
	 r   w � l  w ����� n   w � 1   | ���
�� 
pnam 2   w |��
�� 
prcs��  ��   o      ���� 0 mylist myList
 m   q t�                                                                                  sevs  alis    �  Macintosh HD               ���`H+   ��`System Events.app                                               ��� lb        ����  	                CoreServices    ���P      � PB     ��` ��S ��R  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��    l  � ���������  ��  ��    l  � �����     set debug var    �    s e t   d e b u g   v a r  r   � � b   � � m   � � �  l a s t T r a c k :   o   � ����� 0 	lasttrack 	lastTrack o      ���� 	0 debug    !  l  � ���������  ��  ��  ! "#" l  � ���$%��  $ * $ iterate through music applications	   % �&& H   i t e r a t e   t h r o u g h   m u s i c   a p p l i c a t i o n s 	# '(' X   ��)��*) k   ��++ ,-, l  � ���./��  . #  is this application running?   / �00 :   i s   t h i s   a p p l i c a t i o n   r u n n i n g ?- 1��1 Z   ��23����2 E   � �454 o   � ����� 0 mylist myList5 o   � ����� 0 musicapp musicApp3 k   ��66 787 l  � ���9:��  9   append debug value   : �;; &   a p p e n d   d e b u g   v a l u e8 <=< r   � �>?> b   � �@A@ b   � �BCB o   � ��� 	0 debug  C m   � �DD �EE  
A o   � ��~�~ 0 musicapp musicApp? o      �}�} 	0 debug  = FGF l  � ��|�{�z�|  �{  �z  G HIH l  � ��yJK�y  J , & dynamically address music application   K �LL L   d y n a m i c a l l y   a d d r e s s   m u s i c   a p p l i c a t i o nI M�xM w   ��NON O   ��PQP k   ��RR STS r   � �UVU b   � �WXW b   � �YZY o   � ��w�w 	0 debug  Z m   � �[[ �\\  :X 1   � ��v
�v 
pPlSV o      �u�u 	0 debug  T ]^] l  � ��t�s�r�t  �s  �r  ^ _`_ l  � ��qab�q  a , & check if music application is playing   b �cc L   c h e c k   i f   m u s i c   a p p l i c a t i o n   i s   p l a y i n g` d�pd Z   ��ef�o�ne =  � �ghg 1   � ��m
�m 
pPlSh m   � ��l
�l ePlSkPSPf k   ��ii jkj r   � �lml m   � ��k
�k 
nullm o      �j�j 0 albumartwork albumArtworkk non r   �pqp b   � rsr b   � �tut l  � �v�i�hv c   � �wxw o   � ��g�g 0 musicapp musicAppx m   � ��f
�f 
TEXT�i  �h  u m   � �yy �zz  :s l  � �{�e�d{ c   � �|}| n   � �~~ 1   � ��c
�c 
ID   1   � ��b
�b 
pTrk} m   � ��a
�a 
TEXT�e  �d  q o      �`�` 0 currenttrack currentTracko ��� r  ��� b  ��� b  ��� b  ��� o  �_�_ 	0 debug  � m  �� ���  (� o  �^�^ 0 currenttrack currentTrack� m  �� ���  )� o      �]�] 	0 debug  � ��� l �\�[�Z�\  �[  �Z  � ��� l �Y���Y  � 4 . application specific logic to fetch album art   � ��� \   a p p l i c a t i o n   s p e c i f i c   l o g i c   t o   f e t c h   a l b u m   a r t� ��� Z  w����X� F  4��� =  ��� c  ��� o  �W�W 0 musicapp musicApp� m  �V
�V 
TEXT� m  �� ���  i T u n e s� l #0��U�T� I #0�S��R
�S .coredoexbool        obj � n  #,��� 2 (,�Q
�Q 
cArt� 1  #(�P
�P 
pTrk�R  �U  �T  � w  7U��� k  ;U�� ��� r  ;I��� n  ;E��� 4 @E�O�
�O 
cArt� m  CD�N�N � 1  ;@�M
�M 
pTrk� o      �L�L 0 frontartwork frontArtwork� ��K� r  JU��� l JQ��J�I� n  JQ��� 1  MQ�H
�H 
pPCT� o  JM�G�G 0 frontartwork frontArtwork�J  �I  � o      �F�F 0 albumartwork albumArtwork�K  ��                                                                                  hook  alis    N  Macintosh HD               ���`H+   ��
iTunes.app                                                      ����        ����  	                Applications    ���P      �k�     ��  %Macintosh HD:Applications: iTunes.app    
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  � ��� = X_��� c  X[��� o  XY�E�E 0 musicapp musicApp� m  YZ�D
�D 
TEXT� m  [^�� ���  S p o t i f y� ��C� w  bs��� r  fs��� l fo��B�A� n  fo��� 1  ko�@
�@ 
tAwk� 1  fk�?
�? 
pTrk�B  �A  � o      �>�> 0 albumartwork albumArtwork��                                                                                  spty  alis    P  Macintosh HD               ���`H+   ��Spotify.app                                                    d~��OV�        ����  	                Applications    ���P      �OH�     ��  &Macintosh HD:Applications: Spotify.app    S p o t i f y . a p p    M a c i n t o s h   H D  Applications/Spotify.app  / ��  �C  �X  � ��� l xx�=�<�;�=  �<  �;  � ��� r  x���� n  x���� 1  }��:
�: 
pArt� 1  x}�9
�9 
pTrk� o      �8�8 0 who  � ��� r  ����� n  ����� 1  ���7
�7 
pnam� 1  ���6
�6 
pTrk� o      �5�5 0 what  � ��� Z  ������ = ����� o  ���4�4 0 info  � m  ���� ���  � k  ���� ��� r  ����� b  ����� b  ����� o  ���3�3 0 what  � m  ���� ���    b y  � o  ���2�2 0 who  � o      �1�1 0 info  � ��� r  ����� b  ����� b  ����� b  ����� o  ���0�0 0 info  � m  ���� ���    (� o  ���/�/ 0 musicapp musicApp� m  ���� ���  )� o      �.�. 0 previousinfo previousInfo� ��-� r  ����� m  ���,
�, boovtrue� o      �+�+ 0 
firsttrack 
firstTrack�-  � ��� = ����� o  ���*�* 0 
firsttrack 
firstTrack� m  ���)
�) boovtrue� ��(� k  ����    r  �� b  �� b  �� b  ��	 b  ��

 b  �� b  �� b  �� o  ���'�' 0 previousinfo previousInfo m  �� �  
 o  ���&�& 0 what   m  �� �    b y   o  ���%�% 0 who  	 m  �� �    ( o  ���$�$ 0 musicapp musicApp m  �� �  ) o      �#�# 0 info   �" r  �� m  ���!
�! boovfals o      � �  0 
firsttrack 
firstTrack�"  �(  � k  �  r  � !  b  �	"#" b  �$%$ b  �&'& b  ��()( b  ��*+* b  ��,-, b  ��./. o  ���� 0 info  / m  ��00 �11  
- o  ���� 0 what  + m  ��22 �33    b y  ) o  ���� 0 who  ' m  �44 �55    (% o  �� 0 musicapp musicApp# m  66 �77  )! o      �� 0 info   8�8 r  9:9 m  �
� boovfals: o      �� 0 
firsttrack 
firstTrack�  � ;<; l ����  �  �  < =>= l �?@�  ? %  check if the track has changed   @ �AA >   c h e c k   i f   t h e   t r a c k   h a s   c h a n g e d> B�B Z  �CD�EC l F��F > GHG o  �� 0 currenttrack currentTrackH o  �� 0 	lasttrack 	lastTrack�  �  D k  �II JKJ r  'LML b  #NON o  �� 	0 debug  O m  "PP �QQ  : w r i t e   a r t w o r kM o      �� 	0 debug  K RSR l ((��
�	�  �
  �	  S TUT l ((�VW�  V   write artwork to file   W �XX ,   w r i t e   a r t w o r k   t o   f i l eU YZY r  (7[\[ l (3]��] I (3�^_
� .rdwropenshor       file^ o  (+�� 0 artworkfile artworkFile_ �`�
� 
perm` m  ./�
� boovtrue�  �  �  \ o      � �  0 fileref fileRefZ aba Q  8icdec k  ;Tff ghg I ;F��ij
�� .rdwrseofnull���     ****i o  ;>���� 0 fileref fileRefj ��k��
�� 
set2k m  AB����  ��  h l��l I GT��mn
�� .rdwrwritnull���     ****m o  GJ���� 0 albumartwork albumArtworkn ��o��
�� 
refno o  MP���� 0 fileref fileRef��  ��  d R      ��p��
�� .ascrerr ****      � ****p o      ���� 0 errormessage errorMessage��  e r  \iqrq b  \ests b  \cuvu o  \_���� 	0 debug  v m  _bww �xx  : e r r o r =t o  cd���� 0 errormessage errorMessager o      ���� 	0 debug  b yzy I jq��{��
�� .rdwrclosnull���     ****{ o  jm���� 0 fileref fileRef��  z |}| l rr��������  ��  ��  } ~~ l rr������  �   remember current track   � ��� .   r e m e m b e r   c u r r e n t   t r a c k ��� r  r��� l r{������ I r{����
�� .rdwropenshor       file� o  rs���� 0 tempfile tempFile� �����
�� 
perm� m  vw��
�� boovtrue��  ��  ��  � o      ���� 0 fileref fileRef� ��� Q  ������ k  ���� ��� I ������
�� .rdwrseofnull���     ****� o  ������ 0 fileref fileRef� �����
�� 
set2� m  ������  ��  � ���� I ������
�� .rdwrwritnull���     ****� o  ������ 0 currenttrack currentTrack� �����
�� 
refn� o  ������ 0 fileref fileRef��  ��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 errormessage errorMessage��  � r  ����� b  ����� b  ����� o  ������ 	0 debug  � m  ���� ���  : e r r o r =� o  ������ 0 errormessage errorMessage� o      ���� 	0 debug  � ��� I �������
�� .rdwrclosnull���     ****� o  ������ 0 fileref fileRef��  � ��� l ����������  ��  ��  � ���� Z  �������� > ����� o  ������ 0 albumartwork albumArtwork� m  ����
�� 
null� r  ����� m  ����
�� boovfals� o      ���� 0 clearartwork clearArtwork��  � k  ���� ��� r  ����� b  ����� o  ������ 	0 debug  � m  ���� ���  : n o   a r t w o r k� o      ���� 	0 debug  � ���� r  ����� m  ����
�� boovtrue� o      ���� 0 clearartwork clearArtwork��  ��  �  E k  ���� ��� r  ����� b  ����� o  ������ 	0 debug  � m  ���� ��� $ : u n c h a n g e d   a r t w o r k� o      ���� 	0 debug  � ���� r  ����� m  ����
�� boovfals� o      ���� 0 clearartwork clearArtwork��  �  �o  �n  �p  Q 4   � ����
�� 
capp� o   � ����� 0 musicapp musicAppO�                                                                                  hook  alis    N  Macintosh HD               ���`H+   ��
iTunes.app                                                      ����        ����  	                Applications    ���P      �k�     ��  %Macintosh HD:Applications: iTunes.app    
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  �x  ��  ��  ��  �� 0 musicapp musicApp* o   � ����� &0 musicapplications musicApplications( ��� l ����������  ��  ��  � ��� l ��������  �   clear artwork?   � ���    c l e a r   a r t w o r k ?� ��� Z  ��������� F  ���� = ����� o  ������ 0 clearartwork clearArtwork� m  ����
�� boovtrue� >  ��� o   ���� 0 	lasttrack 	lastTrack� m  �� ���  : : c l e a r e d : :� k  ��� ��� l ������  � - ' write 1x1 transparent pixel as artwork   � ��� N   w r i t e   1 x 1   t r a n s p a r e n t   p i x e l   a s   a r t w o r k� ��� r  ��� l ������ I ����
�� .rdwropenshor       file� o  ���� 0 artworkfile artworkFile� �����
�� 
perm� m  ��
�� boovtrue��  ��  ��  � o      ���� 0 fileref fileRef� ��� Q  [���� k  !D�� ��� I !,����
�� .rdwrseofnull���     ****� o  !$���� 0 fileref fileRef� �����
�� 
set2� m  '(����  ��  � ��� I -8����
�� .rdwrwritnull���     ****� o  -.���� 
0 spacer  � �����
�� 
refn� o  14���� 0 fileref fileRef��  � ���� r  9D��� b  9@��� o  9<���� 	0 debug  � m  <?�� �   j 
 c l e a r e d   a r t w o r k   b y   w r o t i n g   a n   e m p t y   p i x e l   a s   a r t w o r k� o      ���� 	0 debug  ��  � R      ����
�� .ascrerr ****      � **** o      ���� 0 errormsg errorMsg��  � I L[����
�� .sysoexecTEXT���     TEXT b  LW m  LO �  r m   n  OV 1  RV��
�� 
psxp o  OR���� 0 artworkfile artworkFile��  � 	
	 I \c����
�� .rdwrclosnull���     **** o  \_���� 0 fileref fileRef��  
  l dd��������  ��  ��    l dd����   , & and remember that we already did this    � L   a n d   r e m e m b e r   t h a t   w e   a l r e a d y   d i d   t h i s  r  dq l dm���� I dm��
�� .rdwropenshor       file o  de���� 0 tempfile tempFile ����
�� 
perm m  hi��
�� boovtrue��  ��  ��   o      ���� 0 fileref fileRef  Q  r� k  u�   !"! I u���#$
�� .rdwrseofnull���     ****# o  ux�� 0 fileref fileRef$ �~%�}
�~ 
set2% m  {|�|�|  �}  " &�{& I ���z'(
�z .rdwrwritnull���     ****' m  ��)) �**  : : c l e a r e d : :( �y+�x
�y 
refn+ o  ���w�w 0 fileref fileRef�x  �{   R      �v,�u
�v .ascrerr ****      � ****, o      �t�t 0 errormessage errorMessage�u   r  ��-.- b  ��/0/ b  ��121 o  ���s�s 	0 debug  2 m  ��33 �44  : e r r o r =0 o  ���r�r 0 errormessage errorMessage. o      �q�q 	0 debug   565 I ���p7�o
�p .rdwrclosnull���     ****7 o  ���n�n 0 fileref fileRef�o  6 8�m8 l ���l�k�j�l  �k  �j  �m  ��  ��  � 9:9 l ���i�h�g�i  �h  �g  : ;<; l ���f=>�f  =   uncomment to debug   > �?? &   u n c o m m e n t   t o   d e b u g< @A@ l ���eBC�e  B  return debug   C �DD  r e t u r n   d e b u gA EFE l ���d�c�b�d  �c  �b  F GHG l ���aIJ�a  I - ' return 'currently playing' information   J �KK N   r e t u r n   ' c u r r e n t l y   p l a y i n g '   i n f o r m a t i o nH L�`L L  ��MM o  ���_�_ 0 info  �`  ��       �^NO�^  N �]
�] .aevtoappnull  �   � ****O �\ ��[�ZPQ�Y
�\ .aevtoappnull  �   � ****�[ 0 argv  �Z  P �X�W�V�U�X 0 argv  �W 0 musicapp musicApp�V 0 errormessage errorMessage�U 0 errormsg errorMsgQ a � ��T ��S ��R ��Q ��P ��O�N�M�L�K�J�I�H�G�F�E ��D�C�B ��A�@�?�>�=�<DO�;[�:�9�8�7y�6�5�4����3�2�1�0�/���.�-�,�+�����*0246P�)�(�'�&�%�$�#�"w�!������ ��)3�T &0 musicapplications musicApplications�S 0 tempfile tempFile�R 
0 spacer  �Q 0 info  �P 0 previousapp previousApp�O 0 previousinfo previousInfo�N 0 clearartwork clearArtwork
�M 
cobj
�L 
TEXT
�K 
psxf�J 0 artworkfile artworkFile�I  �H  
�G afdrcusr
�F .earsffdralis        afdr
�E 
ctxt
�D 
file
�C .rdwrread****        ****�B 0 	lasttrack 	lastTrack
�A 
prcs
�@ 
pnam�? 0 mylist myList�> 	0 debug  
�= 
kocl
�< .corecnte****       ****
�; 
capp
�: 
pPlS
�9 ePlSkPSP
�8 
null�7 0 albumartwork albumArtwork
�6 
pTrk
�5 
ID  �4 0 currenttrack currentTrack
�3 
cArt
�2 .coredoexbool        obj 
�1 
bool�0 0 frontartwork frontArtwork
�/ 
pPCT
�. 
tAwk
�- 
pArt�, 0 who  �+ 0 what  �* 0 
firsttrack 
firstTrack
�) 
perm
�( .rdwropenshor       file�' 0 fileref fileRef
�& 
set2
�% .rdwrseofnull���     ****
�$ 
refn
�# .rdwrwritnull���     ****�" 0 errormessage errorMessage
�! .rdwrclosnull���     ****�  0 errormsg errorMsg
� 
psxp
� .sysoexecTEXT���     TEXT�Y���lvE�O�E�O�E�O�E�O�E�O�E�OeE�O ��k/�&a &�&E` W X  a j a &a %�&E` O *a �/j E` W X  a E` Oa  *a -a ,E` UOa  _ %E` !Of�[a "�l #kh _ �I_ !a $%�%E` !Oa %Z*a &�/*_ !a '%*a (,%E` !O*a (,a ) a *E` +O��&a ,%*a -,a .,�&%E` /O_ !a 0%_ /%a 1%E` !O��&a 2 	 *a -,a 3-j 4a 5& #a %Z*a -,a 3k/E` 6O_ 6a 7,E` +Y !��&a 8  a 9Z*a -,a :,E` +Y hO*a -,a ;,E` <O*a -,a ,E` =O�a >  &_ =a ?%_ <%E�O�a @%�%a A%E�OeE` BY S_ Be  (�a C%_ =%a D%_ <%a E%�%a F%E�OfE` BY %�a G%_ =%a H%_ <%a I%�%a J%E�OfE` BO_ /_  �_ !a K%E` !O_ a Lel ME` NO _ Na Ojl PO_ +a Q_ Nl RW X S _ !a T%�%E` !O_ Nj UO�a Lel ME` NO _ Na Ojl PO_ /a Q_ Nl RW X S _ !a V%�%E` !O_ Nj UO_ +a * fE�Y _ !a W%E` !OeE�Y _ !a X%E` !OfE�Y hUY h[OY��O�e 	 _ a Ya 5& �_ a Lel ME` NO (_ Na Ojl PO�a Q_ Nl RO_ !a Z%E` !W X [ a \_ a ],%j ^O_ Nj UO�a Lel ME` NO _ Na Ojl POa _a Q_ Nl RW X S _ !a `%�%E` !O_ Nj UOPY hO�ascr  ��ޭ