FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ) # iTunes / Spotify track information     � 	 	 F   i T u n e s   /   S p o t i f y   t r a c k   i n f o r m a t i o n   
  
 l     ��  ��    7 1 Copyright � 2012 Jeroen Wesbeek <work AT osx.eu>     �   b   C o p y r i g h t   �   2 0 1 2   J e r o e n   W e s b e e k   < w o r k   A T   o s x . e u >      l     ��������  ��  ��        l     ��  ��      on run this script     �   &   o n   r u n   t h i s   s c r i p t      l     ��  ��    &   1. returns the current track(s)     �   @   1 .   r e t u r n s   t h e   c u r r e n t   t r a c k ( s )      l     ��  ��    1 + 2. writes the album artwork of the current     �   V   2 .   w r i t e s   t h e   a l b u m   a r t w o r k   o f   t h e   c u r r e n t     !   l     �� " #��   " 3 -    track(s). Note that iTunes artwork always    # � $ $ Z         t r a c k ( s ) .   N o t e   t h a t   i T u n e s   a r t w o r k   a l w a y s !  % & % l     �� ' (��   ' . (    overrules other playing applications    ( � ) ) P         o v e r r u l e s   o t h e r   p l a y i n g   a p p l i c a t i o n s &  * + * l     �� , -��   ,       - � . .    +  / 0 / l     �� 1 2��   1 : 4 For efficiency, checks are performed if the artwork    2 � 3 3 h   F o r   e f f i c i e n c y ,   c h e c k s   a r e   p e r f o r m e d   i f   t h e   a r t w o r k 0  4 5 4 l     �� 6 7��   6 8 2 has changed. It writes a 1x1 transparent pixel is    7 � 8 8 d   h a s   c h a n g e d .   I t   w r i t e s   a   1 x 1   t r a n s p a r e n t   p i x e l   i s 5  9 : 9 l     �� ; <��   ; ; 5 there is no artwork, or if no songs are being played    < � = = j   t h e r e   i s   n o   a r t w o r k ,   o r   i f   n o   s o n g s   a r e   b e i n g   p l a y e d :  > ? > l     �� @ A��   @ #  or if the players are paused    A � B B :   o r   i f   t h e   p l a y e r s   a r e   p a u s e d ?  C D C l     ��������  ��  ��   D  E F E l     ��������  ��  ��   F  G H G l     �� I J��   I G A  Licensed under the Apache License, Version 2.0 (the "License");    J � K K �     L i c e n s e d   u n d e r   t h e   A p a c h e   L i c e n s e ,   V e r s i o n   2 . 0   ( t h e   " L i c e n s e " ) ; H  L M L l     �� N O��   N H B  you may not use this file except in compliance with the License.    O � P P �     y o u   m a y   n o t   u s e   t h i s   f i l e   e x c e p t   i n   c o m p l i a n c e   w i t h   t h e   L i c e n s e . M  Q R Q l     �� S T��   S / )  You may obtain a copy of the License at    T � U U R     Y o u   m a y   o b t a i n   a   c o p y   o f   t h e   L i c e n s e   a t R  V W V l     ��������  ��  ��   W  X Y X l     �� Z [��   Z 2 ,  http://www.apache.org/licenses/LICENSE-2.0    [ � \ \ X     h t t p : / / w w w . a p a c h e . o r g / l i c e n s e s / L I C E N S E - 2 . 0 Y  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     �� a b��   a K E  Unless required by applicable law or agreed to in writing, software    b � c c �     U n l e s s   r e q u i r e d   b y   a p p l i c a b l e   l a w   o r   a g r e e d   t o   i n   w r i t i n g ,   s o f t w a r e `  d e d l     �� f g��   f I C  distributed under the License is distributed on an "AS IS" BASIS,    g � h h �     d i s t r i b u t e d   u n d e r   t h e   L i c e n s e   i s   d i s t r i b u t e d   o n   a n   " A S   I S "   B A S I S , e  i j i l     �� k l��   k P J  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    l � m m �     W I T H O U T   W A R R A N T I E S   O R   C O N D I T I O N S   O F   A N Y   K I N D ,   e i t h e r   e x p r e s s   o r   i m p l i e d . j  n o n l     �� p q��   p K E  See the License for the specific language governing permissions and    q � r r �     S e e   t h e   L i c e n s e   f o r   t h e   s p e c i f i c   l a n g u a g e   g o v e r n i n g   p e r m i s s i o n s   a n d o  s t s l     �� u v��   u &    limitations under the License.    v � w w @     l i m i t a t i o n s   u n d e r   t h e   L i c e n s e . t  x y x l     ��������  ��  ��   y  z�� z i      { | { I     �� }��
�� .aevtoappnull  �   � **** } o      ���� 0 argv  ��   | k    � ~ ~   �  r      � � � J      � �  � � � m      � � � � �  S p o t i f y �  ��� � m     � � � � �  i T u n e s��   � o      ���� &0 musicapplications musicApplications �  � � � r    
 � � � m     � � � � � " / t m p / a l b u m A r t . t x t � o      ���� 0 tempfile tempFile �  � � � r     � � � m     � � � � � $ / t m p / s k y p e M o o d . t x t � o      ���� 0 tempmoodfile tempMoodFile �  � � � r     � � � m     � � � � � V G I F 8 9 a       �     �� �       !�           ,                   D    ; � o      ���� 
0 spacer   �  � � � r     � � � m     � � � � �   � o      ���� 0 info   �  � � � r     � � � m     � � � � �   � o      ���� 0 previousapp previousApp �  � � � r     � � � m     � � � � �   � o      ���� 0 previousinfo previousInfo �  � � � r    " � � � m     ��
�� boovtrue � o      ���� 0 clearartwork clearArtwork �  � � � l  # #��������  ��  ��   �  � � � l  # #�� � ���   � #  check if we have an argument    � � � � :   c h e c k   i f   w e   h a v e   a n   a r g u m e n t �  � � � Q   # [ � � � � k   & < � �  � � � l  & &�� � ���   �   use specified file    � � � � &   u s e   s p e c i f i e d   f i l e �  ��� � r   & < � � � c   & 8 � � � c   & 4 � � � c   & 0 � � � l  & , ����� � n   & , � � � 4   ' ,�� �
�� 
cobj � m   * +����  � o   & '���� 0 argv  ��  ��   � m   , /��
�� 
TEXT � m   0 3��
�� 
psxf � m   4 7��
�� 
TEXT � o      ���� 0 artworkfile artworkFile��   � R      ������
�� .ascrerr ****      � ****��  ��   � k   D [ � �  � � � l  D D�� � ���   �   use ~/albumArt.tiff    � � � � (   u s e   ~ / a l b u m A r t . t i f f �  ��� � r   D [ � � � c   D W � � � b   D S � � � l  D O ����� � c   D O � � � l  D K ����� � I  D K�� ���
�� .earsffdralis        afdr � m   D G��
�� afdrcusr��  ��  ��   � m   K N��
�� 
ctxt��  ��   � m   O R � � � � �  a l b u m A r t . t i f f � m   S V��
�� 
TEXT � o      ���� 0 artworkfile artworkFile��   �  � � � l  \ \��������  ��  ��   �  � � � l  \ \�� � ���   �   get the previous track    � � � � .   g e t   t h e   p r e v i o u s   t r a c k �  � � � Q   \ w � � � � r   _ h � � � I  _ d�� ���
�� .rdwrread****        **** � o   _ `���� 0 tempfile tempFile��   � o      ���� 0 	lasttrack 	lastTrack � R      ������
�� .ascrerr ****      � ****��  ��   � r   p w � � � m   p s � � � � �   � o      ���� 0 	lasttrack 	lastTrack �  � � � l  x x��������  ��  ��   �  � � � l  x x�� � ���   �   get all processes    � � � � $   g e t   a l l   p r o c e s s e s �    O   x � r   ~ � l  ~ ����� n   ~ � 1   � ���
�� 
pnam 2   ~ ���
�� 
prcs��  ��   o      ���� 0 mylist myList m   x {		�                                                                                  sevs  alis    �  Macintosh HD               �W�H+   ^�System Events.app                                               �Y˙�k        ����  	                CoreServices    �W��      ˙�K     ^� ^�   g  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   

 l  � ���������  ��  ��    l  � �����     set debug var    �    s e t   d e b u g   v a r  r   � � b   � � m   � � �  l a s t T r a c k :   o   � ����� 0 	lasttrack 	lastTrack o      ���� 	0 debug    l  � ���������  ��  ��    l  � �����   * $ iterate through music applications	    � H   i t e r a t e   t h r o u g h   m u s i c   a p p l i c a t i o n s 	  !  X   �"��#" k   �$$ %&% l  � ���'(��  ' #  is this application running?   ( �)) :   i s   t h i s   a p p l i c a t i o n   r u n n i n g ?& *��* Z   �+,����+ E   � �-.- o   � ����� 0 mylist myList. o   � ����� 0 musicapp musicApp, k   �// 010 l  � ���23��  2   append debug value   3 �44 &   a p p e n d   d e b u g   v a l u e1 565 r   � �787 b   � �9:9 b   � �;<; o   � ����� 	0 debug  < m   � �== �>>  
: o   � ����� 0 musicapp musicApp8 o      ���� 	0 debug  6 ?@? l  � ��������  ��  �  @ ABA l  � ��~CD�~  C , & dynamically address music application   D �EE L   d y n a m i c a l l y   a d d r e s s   m u s i c   a p p l i c a t i o nB F�}F w   �GHG O   �IJI k   �KK LML r   � �NON b   � �PQP b   � �RSR o   � ��|�| 	0 debug  S m   � �TT �UU  :Q 1   � ��{
�{ 
pPlSO o      �z�z 	0 debug  M VWV l  � ��y�x�w�y  �x  �w  W XYX l  � ��vZ[�v  Z , & check if music application is playing   [ �\\ L   c h e c k   i f   m u s i c   a p p l i c a t i o n   i s   p l a y i n gY ]�u] Z   �^_�t�s^ =  � �`a` 1   � ��r
�r 
pPlSa m   � ��q
�q ePlSkPSP_ k   �bb cdc r   � �efe m   � ��p
�p 
nullf o      �o�o 0 albumartwork albumArtworkd ghg r   �iji b   �klk b   � �mnm l  � �o�n�mo c   � �pqp o   � ��l�l 0 musicapp musicAppq m   � ��k
�k 
TEXT�n  �m  n m   � �rr �ss  :l l  �t�j�it c   �uvu n   �wxw 1  �h
�h 
ID  x 1   ��g
�g 
pTrkv m  �f
�f 
TEXT�j  �i  j o      �e�e 0 currenttrack currentTrackh yzy r  %{|{ b  !}~} b  � b  ��� o  �d�d 	0 debug  � m  �� ���  (� o  �c�c 0 currenttrack currentTrack~ m   �� ���  )| o      �b�b 	0 debug  z ��� l &&�a�`�_�a  �`  �_  � ��� l &&�^���^  � 4 . application specific logic to fetch album art   � ��� \   a p p l i c a t i o n   s p e c i f i c   l o g i c   t o   f e t c h   a l b u m   a r t� ��� Z  &�����]� F  &C��� = &/��� c  &+��� o  &'�\�\ 0 musicapp musicApp� m  '*�[
�[ 
TEXT� m  +.�� ���  i T u n e s� l 2?��Z�Y� I 2?�X��W
�X .coredoexbool        obj � n  2;��� 2 7;�V
�V 
cArt� 1  27�U
�U 
pTrk�W  �Z  �Y  � w  Fd��� k  Jd�� ��� r  JX��� n  JT��� 4 OT�T�
�T 
cArt� m  RS�S�S � 1  JO�R
�R 
pTrk� o      �Q�Q 0 frontartwork frontArtwork� ��P� r  Yd��� l Y`��O�N� n  Y`��� 1  \`�M
�M 
pPCT� o  Y\�L�L 0 frontartwork frontArtwork�O  �N  � o      �K�K 0 albumartwork albumArtwork�P  ��                                                                                  hook  alis    N  Macintosh HD               �W�H+     d
iTunes.app                                                        �ˮF4        ����  	                Applications    �W��      ˮ*       d  %Macintosh HD:Applications: iTunes.app    
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  � ��� = gp��� c  gl��� o  gh�J�J 0 musicapp musicApp� m  hk�I
�I 
TEXT� m  lo�� ���  S p o t i f y� ��H� w  s���� r  w���� l w���G�F� n  w���� 1  |��E
�E 
tAwk� 1  w|�D
�D 
pTrk�G  �F  � o      �C�C 0 albumartwork albumArtwork��                                                                                  spty  alis    �  Macintosh HD               �W�H+   �$�Spotify.app                                                     ���͔K�        ����  	                Applications    �W��      ͔/u     �$� ��   h  =Macintosh HD:Users: jeroen.wesbeek: Applications: Spotify.app     S p o t i f y . a p p    M a c i n t o s h   H D  -Users/jeroen.wesbeek/Applications/Spotify.app   /    ��  �H  �]  � ��� l ���B�A�@�B  �A  �@  � ��� r  ����� n  ����� 1  ���?
�? 
pArt� 1  ���>
�> 
pTrk� o      �=�= 0 who  � ��� r  ����� n  ����� 1  ���<
�< 
pnam� 1  ���;
�; 
pTrk� o      �:�: 0 what  � ��� l ���9�8�7�9  �8  �7  � ��� Z  �����6�� = ����� c  ����� o  ���5�5 0 who  � m  ���4
�4 
TEXT� m  ���� ���  m i s s i n g   v a l u e� r  ����� o  ���3�3 0 what  � o      �2�2 	0 title  �6  � r  ����� c  ����� b  ����� b  ����� o  ���1�1 0 what  � m  ���� ���    b y  � o  ���0�0 0 who  � m  ���/
�/ 
TEXT� o      �.�. 	0 title  � ��� l ���-�,�+�-  �,  �+  � ��� Z  �6����� = ����� o  ���*�* 0 info  � m  ���� ���  � k  ���� ��� r  ����� o  ���)�) 	0 title  � o      �(�( 0 info  � ��� r  ����� b  ����� b  ����� b  ��� � o  ���'�' 0 info    m  �� �    (� o  ���&�& 0 musicapp musicApp� m  �� �  )� o      �%�% 0 previousinfo previousInfo� �$ r  �� m  ���#
�# boovtrue o      �"�" 0 
firsttrack 
firstTrack�$  � 	 = ��

 o  ���!�! 0 
firsttrack 
firstTrack m  ��� 
�  boovtrue	 � k  �  r  � b  � b  � b  �
 b  � b  � o  ���� 0 previousinfo previousInfo m  � �  
 o  �� 	0 title   m  	 �    ( o  
�� 0 musicapp musicApp m     �!!  ) o      �� 0 info   "�" r  #$# m  �
� boovfals$ o      �� 0 
firsttrack 
firstTrack�  �  � k  6%% &'& r  0()( b  .*+* b  *,-, b  (./. b  $010 b   232 o  �� 0 info  3 m  44 �55  
1 o   #�� 	0 title  / m  $'66 �77    (- o  ()�� 0 musicapp musicApp+ m  *-88 �99  )) o      �� 0 info  ' :�: r  16;<; m  12�
� boovfals< o      �� 0 
firsttrack 
firstTrack�  � =>= l 77����  �  �  > ?@? l 77�AB�  A %  check if the track has changed   B �CC >   c h e c k   i f   t h e   t r a c k   h a s   c h a n g e d@ D�D Z  7EF�GE l 7>H�
�	H > 7>IJI o  7:�� 0 currenttrack currentTrackJ o  :=�� 0 	lasttrack 	lastTrack�
  �	  F k  A�KK LML r  ALNON b  AHPQP o  AD�� 	0 debug  Q m  DGRR �SS  : w r i t e   a r t w o r kO o      �� 	0 debug  M TUT l MM����  �  �  U VWV l MM�XY�  X   write artwork to file   Y �ZZ ,   w r i t e   a r t w o r k   t o   f i l eW [\[ r  M\]^] l MX_� ��_ I MX��`a
�� .rdwropenshor       file` o  MP���� 0 artworkfile artworkFilea ��b��
�� 
permb m  ST��
�� boovtrue��  �   ��  ^ o      ���� 0 fileref fileRef\ cdc Q  ]�efge k  `yhh iji I `k��kl
�� .rdwrseofnull���     ****k o  `c���� 0 fileref fileRefl ��m��
�� 
set2m m  fg����  ��  j n��n I ly��op
�� .rdwrwritnull���     ****o o  lo���� 0 albumartwork albumArtworkp ��q��
�� 
refnq o  ru���� 0 fileref fileRef��  ��  f R      ��r��
�� .ascrerr ****      � ****r o      ���� 0 errormessage errorMessage��  g r  ��sts b  ��uvu b  ��wxw o  ������ 	0 debug  x m  ��yy �zz  : e r r o r =v o  ������ 0 errormessage errorMessaget o      ���� 	0 debug  d {|{ I ����}��
�� .rdwrclosnull���     ****} o  ������ 0 fileref fileRef��  | ~~ l ����������  ��  ��   ��� l ��������  �   remember current track   � ��� .   r e m e m b e r   c u r r e n t   t r a c k� ��� r  ����� l �������� I ������
�� .rdwropenshor       file� o  ������ 0 tempfile tempFile� �����
�� 
perm� m  ����
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
�� boovtrue� o      ���� 0 clearartwork clearArtwork��  ��  �  G k  �� ��� r  ��� b  ��� o  ���� 	0 debug  � m  �� ��� $ : u n c h a n g e d   a r t w o r k� o      ���� 	0 debug  � ���� r  ��� m  ��
�� boovfals� o      ���� 0 clearartwork clearArtwork��  �  �t  �s  �u  J 4   � ����
�� 
capp� o   � ����� 0 musicapp musicAppH�                                                                                  hook  alis    N  Macintosh HD               �W�H+     d
iTunes.app                                                        �ˮF4        ����  	                Applications    �W��      ˮ*       d  %Macintosh HD:Applications: iTunes.app    
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  �}  ��  ��  ��  �� 0 musicapp musicApp# o   � ����� &0 musicapplications musicApplications! ��� l ��������  ��  ��  � ��� l ������  �   clear artwork?   � ���    c l e a r   a r t w o r k ?� ��� Z  �������� F  0��� = "��� o   ���� 0 clearartwork clearArtwork� m   !��
�� boovtrue� > %,��� o  %(���� 0 	lasttrack 	lastTrack� m  (+�� ���  : : c l e a r e d : :� k  3��� ��� l 33������  � - ' write 1x1 transparent pixel as artwork   � ��� N   w r i t e   1 x 1   t r a n s p a r e n t   p i x e l   a s   a r t w o r k� ��� r  3B��� l 3>������ I 3>����
�� .rdwropenshor       file� o  36���� 0 artworkfile artworkFile� �����
�� 
perm� m  9:��
�� boovtrue��  ��  ��  � o      ���� 0 fileref fileRef� ��� Q  C����� k  Fi�� ��� I FQ����
�� .rdwrseofnull���     ****� o  FI���� 0 fileref fileRef� �����
�� 
set2� m  LM����  ��  � ��� I R]����
�� .rdwrwritnull���     ****� o  RS���� 
0 spacer  � �����
�� 
refn� o  VY���� 0 fileref fileRef��  � ���� r  ^i��� b  ^e� � o  ^a���� 	0 debug    m  ad � j 
 c l e a r e d   a r t w o r k   b y   w r o t i n g   a n   e m p t y   p i x e l   a s   a r t w o r k� o      ���� 	0 debug  ��  � R      ����
�� .ascrerr ****      � **** o      ���� 0 errormsg errorMsg��  � I q�����
�� .sysoexecTEXT���     TEXT b  q| m  qt �  r m   n  t{	
	 1  w{��
�� 
psxp
 o  tw���� 0 artworkfile artworkFile��  �  I ������
�� .rdwrclosnull���     **** o  ������ 0 fileref fileRef��    l ����������  ��  ��    l ������   , & and remember that we already did this    � L   a n d   r e m e m b e r   t h a t   w e   a l r e a d y   d i d   t h i s  r  �� l ������ I ���
� .rdwropenshor       file o  ���~�~ 0 tempfile tempFile �}�|
�} 
perm m  ���{
�{ boovtrue�|  ��  ��   o      �z�z 0 fileref fileRef  Q  �� ! k  ��"" #$# I ���y%&
�y .rdwrseofnull���     ****% o  ���x�x 0 fileref fileRef& �w'�v
�w 
set2' m  ���u�u  �v  $ (�t( I ���s)*
�s .rdwrwritnull���     ****) m  ��++ �,,  : : c l e a r e d : :* �r-�q
�r 
refn- o  ���p�p 0 fileref fileRef�q  �t    R      �o.�n
�o .ascrerr ****      � ****. o      �m�m 0 errormessage errorMessage�n  ! r  ��/0/ b  ��121 b  ��343 o  ���l�l 	0 debug  4 m  ��55 �66  : e r r o r =2 o  ���k�k 0 errormessage errorMessage0 o      �j�j 	0 debug   787 I ���i9�h
�i .rdwrclosnull���     ****9 o  ���g�g 0 fileref fileRef�h  8 :�f: l ���e�d�c�e  �d  �c  �f  ��  ��  � ;<; l ���b�a�`�b  �a  �`  < =>= l ���_?@�_  ?   uncomment to debug   @ �AA &   u n c o m m e n t   t o   d e b u g> BCB l ���^DE�^  D  return debug   E �FF  r e t u r n   d e b u gC GHG l ���]�\�[�]  �\  �[  H IJI l ���ZKL�Z  K   is Skype running?   L �MM $   i s   S k y p e   r u n n i n g ?J NON Z  ��PQ�Y�XP E  ��RSR o  ���W�W 0 mylist myListS m  ��TT �UU 
 S k y p eQ O  ��VWV k  ��XX YZY l ���V[\�V  [ ' ! get current mood text from skype   \ �]] B   g e t   c u r r e n t   m o o d   t e x t   f r o m   s k y p eZ ^_^ r  ��`a` I ���U�Tb
�U .sendskypnull��� ��� null�T  b �Scd
�S 
cmndc m  ��ee �ff * G E T   P R O F I L E   M O O D _ T E X Td �Rg�Q
�R 
scrpg m  ��hh �ii   c u r r e n t l y P l a y i n g�Q  a o      �P�P 0 	skypemood 	skypeMood_ jkj r  �
lml m  �nn �oo 
 T E X T  m n     pqp 1  	�O
�O 
txdlq 1  �N
�N 
ascrk rsr r  tut n  vwv 4  �Mx
�M 
citmx m  �L�L w o  �K�K 0 	skypemood 	skypeMoodu o      �J�J 0 currentmood currentMoods yzy l �I�H�G�I  �H  �G  z {|{ l �F}~�F  } 1 + does the old mood start with a music sign?   ~ � V   d o e s   t h e   o l d   m o o d   s t a r t   w i t h   a   m u s i c   s i g n ?| ��� l �E���E  �   display dialog currentMood   � ��� 4 d i s p l a y   d i a l o g   c u r r e n t M o o d� ��� l �D�C�B�D  �C  �B  � ��� l �A���A  � * $display dialog length of currentMood   � ��� H d i s p l a y   d i a l o g   l e n g t h   o f   c u r r e n t M o o d� ��� l �@�?�>�@  �?  �>  � ��� Z  ����=�� G  /��� C  ��� o  �<�< 0 currentmood currentMood� m  �� ��� &l� A "+��� n  ")��� 1  %)�;
�; 
leng� o  "%�:�: 0 currentmood currentMood� m  )*�9�9 � k  2M�� ��� l 22�8���8  � 0 * yes, fetch the old mood from the tempfile   � ��� T   y e s ,   f e t c h   t h e   o l d   m o o d   f r o m   t h e   t e m p f i l e� ��7� Q  2M���� r  5>��� I 5:�6��5
�6 .rdwrread****        ****� o  56�4�4 0 tempmoodfile tempMoodFile�5  � o      �3�3 0 oldmood oldMood� R      �2�1�0
�2 .ascrerr ****      � ****�1  �0  � r  FM��� m  FI�� ���  � o      �/�/ 0 oldmood oldMood�7  �=  � k  P��� ��� l PP�.���.  � %  no, set oldMood to currentMood   � ��� >   n o ,   s e t   o l d M o o d   t o   c u r r e n t M o o d� ��� r  PW��� o  PS�-�- 0 currentmood currentMood� o      �,�, 0 oldmood oldMood� ��� l XX�+�*�)�+  �*  �)  � ��� l XX�(���(  �   remember current mood   � ��� ,   r e m e m b e r   c u r r e n t   m o o d� ��� r  Xe��� l Xa��'�&� I Xa�%��
�% .rdwropenshor       file� o  XY�$�$ 0 tempmoodfile tempMoodFile� �#��"
�# 
perm� m  \]�!
�! boovtrue�"  �'  �&  � o      � �  0 fileref fileRef� ��� Q  f����� k  i��� ��� I it���
� .rdwrseofnull���     ****� o  il�� 0 fileref fileRef� ���
� 
set2� m  op��  �  � ��� I u����
� .rdwrwritnull���     ****� o  ux�� 0 currentmood currentMood� ���
� 
refn� o  {~�� 0 fileref fileRef�  �  � R      ���
� .ascrerr ****      � ****� o      �� 0 errormessage errorMessage�  � r  ����� b  ����� b  ����� o  ���� 	0 debug  � m  ���� ���  : e r r o r =� o  ���� 0 errormessage errorMessage� o      �� 	0 debug  � ��� I �����
� .rdwrclosnull���     ****� o  ���� 0 fileref fileRef�  �  � ��� l ���
�	��
  �	  �  � ��� l ������  �   update mood text   � ��� "   u p d a t e   m o o d   t e x t� ��� Z  ������� A ����� n  ����� 1  ���
� 
leng� o  ���� 0 info  � m  ���� � I ���� �
� .sendskypnull��� ��� null�   � ����
�� 
cmnd� b  ����� m  ���� ��� , S E T   P R O F I L E   M O O D _ T E X T  � o  ������ 0 oldmood oldMood� �����
�� 
scrp� m  ���� ���   c u r r e n t l y P l a y i n g��  �  � I �������
�� .sendskypnull��� ��� null��  � ����
�� 
cmnd� b  ����� m  ���� �   0 S E T   P R O F I L E   M O O D _ T E X T  &l  � o  ������ 0 info  � ����
�� 
scrp m  �� �   c u r r e n t l y P l a y i n g��  �  W m  ���                                                                                  SKYP  alis    H  Macintosh HD               �W�H+     d	Skype.app                                                       ��83"        ����  	                Applications    �W��      �8%       d  $Macintosh HD:Applications: Skype.app   	 S k y p e . a p p    M a c i n t o s h   H D  Applications/Skype.app  / ��  �Y  �X  O  l ����������  ��  ��    l ����	
��  	 - ' return 'currently playing' information   
 � N   r e t u r n   ' c u r r e n t l y   p l a y i n g '   i n f o r m a t i o n �� L  �� o  ������ 0 info  ��  ��       "�� � � � � � �������������������������������������    ����������������������������������������������������������������
�� .aevtoappnull  �   � ****�� &0 musicapplications musicApplications�� 0 tempfile tempFile�� 0 tempmoodfile tempMoodFile�� 
0 spacer  �� 0 info  �� 0 previousapp previousApp�� 0 previousinfo previousInfo�� 0 clearartwork clearArtwork�� 0 artworkfile artworkFile�� 0 	lasttrack 	lastTrack�� 0 mylist myList�� 	0 debug  �� 0 	skypemood 	skypeMood�� 0 currentmood currentMood�� 0 oldmood oldMood�� 0 fileref fileRef��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   �� |������
�� .aevtoappnull  �   � ****�� 0 argv  ��   ���������� 0 argv  �� 0 musicapp musicApp�� 0 errormessage errorMessage�� 0 errormsg errorMsg y � ��� ��� ��� ��� ��� ��� ����������������������� ����� �	������������=H��T��������r������������������������������������ 468R����������������y����������~+5T�}e�|h�{�z�yn�x�w�v�u��t�s������� &0 musicapplications musicApplications�� 0 tempfile tempFile�� 0 tempmoodfile tempMoodFile�� 
0 spacer  �� 0 info  �� 0 previousapp previousApp�� 0 previousinfo previousInfo�� 0 clearartwork clearArtwork
�� 
cobj
�� 
TEXT
�� 
psxf�� 0 artworkfile artworkFile��  ��  
�� afdrcusr
�� .earsffdralis        afdr
�� 
ctxt
�� .rdwrread****        ****�� 0 	lasttrack 	lastTrack
�� 
prcs
�� 
pnam�� 0 mylist myList�� 	0 debug  
�� 
kocl
�� .corecnte****       ****
�� 
capp
�� 
pPlS
�� ePlSkPSP
�� 
null�� 0 albumartwork albumArtwork
�� 
pTrk
�� 
ID  �� 0 currenttrack currentTrack
�� 
cArt
�� .coredoexbool        obj 
�� 
bool�� 0 frontartwork frontArtwork
�� 
pPCT
�� 
tAwk
�� 
pArt�� 0 who  �� 0 what  �� 	0 title  �� 0 
firsttrack 
firstTrack
�� 
perm
�� .rdwropenshor       file�� 0 fileref fileRef
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
�� .rdwrwritnull���     ****�� 0 errormessage errorMessage
�� .rdwrclosnull���     ****�� 0 errormsg errorMsg
� 
psxp
�~ .sysoexecTEXT���     TEXT
�} 
cmnd
�| 
scrp�{ 
�z .sendskypnull��� ��� null�y 0 	skypemood 	skypeMood
�x 
ascr
�w 
txdl
�v 
citm�u 0 currentmood currentMood
�t 
leng�s 0 oldmood oldMood�����lvE�O�E�O�E�O�E�O�E�O�E�O�E�OeE�O �a k/a &a &a &E` W X  a j a &a %a &E` O �j E` W X  a E` Oa  *a -a ,E`  UOa !_ %E` "O��[a #a l $kh _  �e_ "a %%�%E` "Oa &Z*a '�/F_ "a (%*a ),%E` "O*a ),a * 'a +E` ,O�a &a -%*a .,a /,a &%E` 0O_ "a 1%_ 0%a 2%E` "O�a &a 3 	 *a .,a 4-j 5a 6& #a &Z*a .,a 4k/E` 7O_ 7a 8,E` ,Y #�a &a 9  a :Z*a .,a ;,E` ,Y hO*a .,a <,E` =O*a .,a ,E` >O_ =a &a ?  _ >E` @Y _ >a A%_ =%a &E` @O�a B  _ @E�O�a C%�%a D%E�OeE` EY C_ Ee   �a F%_ @%a G%�%a H%E�OfE` EY �a I%_ @%a J%�%a K%E�OfE` EO_ 0_  �_ "a L%E` "O_ a Mel NE` OO _ Oa Pjl QO_ ,a R_ Ol SW X T _ "a U%�%E` "O_ Oj VO�a Mel NE` OO _ Oa Pjl QO_ 0a R_ Ol SW X T _ "a W%�%E` "O_ Oj VO_ ,a + fE�Y _ "a X%E` "OeE�Y _ "a Y%E` "OfE�Y hUY h[OY��O�e 	 _ a Za 6& �_ a Mel NE` OO (_ Oa Pjl QO�a R_ Ol SO_ "a [%E` "W X \ a ]_ a ^,%j _O_ Oj VO�a Mel NE` OO _ Oa Pjl QOa `a R_ Ol SW X T _ "a a%�%E` "O_ Oj VOPY hO_  a b a c �*a da ea fa ga h iE` jOa k_ la m,FO_ ja nl/E` oO_ oa p
 _ oa q,ka 6&   �j E` rW X  a sE` rY Q_ oE` rO�a Mel NE` OO _ Oa Pjl QO_ oa R_ Ol SW X T _ "a t%�%E` "O_ Oj VO�a q,a h *a da u_ r%a fa va h iY *a da w�%a fa xa h iUY hO� �r�r    � �
�� boovtrue � ^ M a c i n t o s h   H D : U s e r s : j e r o e n . w e s b e e k : a l b u m A r t . t i f f �  : : c l e a r e d : : �q�q , ,  !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGH �II  l o g i n w i n d o w �JJ 
 l d s l m �KK  t a l a g e n t  �LL  D o c k! �MM  S y s t e m U I S e r v e r" �NN  F i n d e r# �OO  L D U s e r M e n u$ �PP  P l e x H e l p e r% �QQ  A R D A g e n t& �RR  1 P a s s w o r d A g e n t' �SS 
 K u v v a( �TT 
 G r o w l) �UU  H a r d w a r e G r o w l e r* �VV  B o x S y n c H e l p e r+ �WW  i T u n e s H e l p e r, �XX 2 M i c r o s o f t   D a t a b a s e   D a e m o n- �YY " X m a r k s   f o r   S a f a r i. �ZZ  G e e k T o o l   H e l p e r/ �[[  D r o p b o x0 �\\  S y s t e m   E v e n t s1 �]] ( c o m . a p p l e . d o c k . e x t r a2 �^^  B o x S y n c E n g i n e3 �__  A p p l e S p e l l4 �`` . I m a g e   C a p t u r e   E x t e n s i o n5 �aa  m d w o r k e r6 �bb " M i c r o s o f t   O u t l o o k7 �cc & M i c r o s o f t   A U   D a e m o n8 �dd  S o u r c e T r e e9 �ee  f i r e f o x: �ff 
 S k y p e; �gg . M i c r o s o f t   A l e r t s   D a e m o n< �hh  N a v i c a t   P r e m i u m= �ii  B o x   E d i t> �jj   p l u g i n - c o n t a i n e r? �kk  R e e d e r@ �ll  S p o t i f yA �mm  S o p h o s U I S e r v e rB �nn  i d e aC �oo  S a f a r iD �pp  T e r m i n a lE �qq  W e b P r o c e s sF �rr  G i t H u bG �ss  q u i c k l o o k dH �tt  P l u g i n P r o c e s s �uu d l a s t T r a c k :   : : c l e a r e d : : 
 S p o t i f y : � c o n s t a n t   * * * * k P S p � �vv D P R O F I L E   M O O D _ T E X T   b a n a n e n   e n   p e r e n �ww   b a n a n e n   e n   p e r e n�� ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ascr  ��ޭ