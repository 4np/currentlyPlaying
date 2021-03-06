FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ) # iTunes / Spotify track information     � 	 	 F   i T u n e s   /   S p o t i f y   t r a c k   i n f o r m a t i o n   
  
 l     ��  ��    7 1 Copyright � 2012 Jeroen Wesbeek <work AT osx.eu>     �   b   C o p y r i g h t   �   2 0 1 2   J e r o e n   W e s b e e k   < w o r k   A T   o s x . e u >      l     ��������  ��  ��        l     ��  ��      on run this script     �   &   o n   r u n   t h i s   s c r i p t      l     ��  ��    &   1. returns the current track(s)     �   @   1 .   r e t u r n s   t h e   c u r r e n t   t r a c k ( s )      l     ��  ��    1 + 2. writes the album artwork of the current     �   V   2 .   w r i t e s   t h e   a l b u m   a r t w o r k   o f   t h e   c u r r e n t     !   l     �� " #��   " 3 -    track(s). Note that iTunes artwork always    # � $ $ Z         t r a c k ( s ) .   N o t e   t h a t   i T u n e s   a r t w o r k   a l w a y s !  % & % l     �� ' (��   ' . (    overrules other playing applications    ( � ) ) P         o v e r r u l e s   o t h e r   p l a y i n g   a p p l i c a t i o n s &  * + * l     �� , -��   ,       - � . .    +  / 0 / l     �� 1 2��   1 : 4 For efficiency, checks are performed if the artwork    2 � 3 3 h   F o r   e f f i c i e n c y ,   c h e c k s   a r e   p e r f o r m e d   i f   t h e   a r t w o r k 0  4 5 4 l     �� 6 7��   6 8 2 has changed. It writes a 1x1 transparent pixel is    7 � 8 8 d   h a s   c h a n g e d .   I t   w r i t e s   a   1 x 1   t r a n s p a r e n t   p i x e l   i s 5  9 : 9 l     �� ; <��   ; ; 5 there is no artwork, or if no songs are being played    < � = = j   t h e r e   i s   n o   a r t w o r k ,   o r   i f   n o   s o n g s   a r e   b e i n g   p l a y e d :  > ? > l     �� @ A��   @ #  or if the players are paused    A � B B :   o r   i f   t h e   p l a y e r s   a r e   p a u s e d ?  C D C l     ��������  ��  ��   D  E F E l     ��������  ��  ��   F  G H G l     �� I J��   I G A  Licensed under the Apache License, Version 2.0 (the "License");    J � K K �     L i c e n s e d   u n d e r   t h e   A p a c h e   L i c e n s e ,   V e r s i o n   2 . 0   ( t h e   " L i c e n s e " ) ; H  L M L l     �� N O��   N H B  you may not use this file except in compliance with the License.    O � P P �     y o u   m a y   n o t   u s e   t h i s   f i l e   e x c e p t   i n   c o m p l i a n c e   w i t h   t h e   L i c e n s e . M  Q R Q l     �� S T��   S / )  You may obtain a copy of the License at    T � U U R     Y o u   m a y   o b t a i n   a   c o p y   o f   t h e   L i c e n s e   a t R  V W V l     ��������  ��  ��   W  X Y X l     �� Z [��   Z 2 ,  http://www.apache.org/licenses/LICENSE-2.0    [ � \ \ X     h t t p : / / w w w . a p a c h e . o r g / l i c e n s e s / L I C E N S E - 2 . 0 Y  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     �� a b��   a K E  Unless required by applicable law or agreed to in writing, software    b � c c �     U n l e s s   r e q u i r e d   b y   a p p l i c a b l e   l a w   o r   a g r e e d   t o   i n   w r i t i n g ,   s o f t w a r e `  d e d l     �� f g��   f I C  distributed under the License is distributed on an "AS IS" BASIS,    g � h h �     d i s t r i b u t e d   u n d e r   t h e   L i c e n s e   i s   d i s t r i b u t e d   o n   a n   " A S   I S "   B A S I S , e  i j i l     �� k l��   k P J  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    l � m m �     W I T H O U T   W A R R A N T I E S   O R   C O N D I T I O N S   O F   A N Y   K I N D ,   e i t h e r   e x p r e s s   o r   i m p l i e d . j  n o n l     �� p q��   p K E  See the License for the specific language governing permissions and    q � r r �     S e e   t h e   L i c e n s e   f o r   t h e   s p e c i f i c   l a n g u a g e   g o v e r n i n g   p e r m i s s i o n s   a n d o  s t s l     �� u v��   u &    limitations under the License.    v � w w @     l i m i t a t i o n s   u n d e r   t h e   L i c e n s e . t  x y x l     ��������  ��  ��   y  z�� z i      { | { I     �� }��
�� .aevtoappnull  �   � **** } o      ���� 0 argv  ��   | k    � ~ ~   �  l     �� � ���   �   configuration    � � � �    c o n f i g u r a t i o n �  � � � r      � � � m     ��
�� boovtrue � o      ���� 0 useskype useSkype �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   �   application variables    � � � � ,   a p p l i c a t i o n   v a r i a b l e s �  � � � r    
 � � � J     � �  � � � m     � � � � �  S p o t i f y �  ��� � m     � � � � �  i T u n e s��   � o      ���� &0 musicapplications musicApplications �  � � � r     � � � m     � � � � � " / t m p / a l b u m A r t . t x t � o      ���� 0 tempfile tempFile �  � � � r     � � � m     � � � � � $ / t m p / s k y p e M o o d . t x t � o      ���� 0 tempmoodfile tempMoodFile �  � � � r     � � � m     � � � � � V G I F 8 9 a       �     �� �       !�           ,                   D    ; � o      ���� 
0 spacer   �  � � � r     � � � m     � � � � �   � o      ���� 0 info   �  � � � r     � � � m     � � � � �   � o      ���� 0 previousapp previousApp �  � � � r    " � � � m      � � � � �   � o      ���� 0 previousinfo previousInfo �  � � � r   # ( � � � m   # $��
�� boovtrue � o      ���� 0 clearartwork clearArtwork �  � � � l  ) )��������  ��  ��   �  � � � l  ) )�� � ���   � #  check if we have an argument    � � � � :   c h e c k   i f   w e   h a v e   a n   a r g u m e n t �  � � � Q   ) a � � � � k   , B � �  � � � l  , ,�� � ���   �   use specified file    � � � � &   u s e   s p e c i f i e d   f i l e �  ��� � r   , B � � � c   , > � � � c   , : � � � c   , 6 � � � l  , 2 ����� � n   , 2 � � � 4   - 2�� �
�� 
cobj � m   0 1����  � o   , -���� 0 argv  ��  ��   � m   2 5��
�� 
TEXT � m   6 9��
�� 
psxf � m   : =��
�� 
TEXT � o      ���� 0 artworkfile artworkFile��   � R      ������
�� .ascrerr ****      � ****��  ��   � k   J a � �  � � � l  J J�� � ���   �   use ~/albumArt.tiff    � � � � (   u s e   ~ / a l b u m A r t . t i f f �  ��� � r   J a � � � c   J ] � � � b   J Y � � � l  J U ����� � c   J U � � � l  J Q ����� � I  J Q�� ���
�� .earsffdralis        afdr � m   J M��
�� afdrcusr��  ��  ��   � m   Q T��
�� 
ctxt��  ��   � m   U X � � � � �  a l b u m A r t . t i f f � m   Y \��
�� 
TEXT � o      ���� 0 artworkfile artworkFile��   �  � � � l  b b��������  ��  ��   �  � � � l  b b�� � ���   �   get the previous track    � � � � .   g e t   t h e   p r e v i o u s   t r a c k �  � � � Q   b } �  � r   e n I  e j����
�� .rdwrread****        **** o   e f���� 0 tempfile tempFile��   o      ���� 0 	lasttrack 	lastTrack  R      ������
�� .ascrerr ****      � ****��  ��   r   v } m   v y �   o      ���� 0 	lasttrack 	lastTrack � 	
	 l  ~ ~��������  ��  ��  
  l  ~ ~����     get all processes    � $   g e t   a l l   p r o c e s s e s  O   ~ � r   � � l  � ����� n   � � 1   � ���
�� 
pnam 2   � ���
�� 
prcs��  ��   o      ���� 0 mylist myList m   ~ ��                                                                                  sevs  alis    �  Macintosh HD               �W�H+   ^�System Events.app                                               �Y˙�k        ����  	                CoreServices    �W��      ˙�K     ^� ^�   g  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��    l  � ���������  ��  ��    l  � �����     set debug var    �      s e t   d e b u g   v a r !"! r   � �#$# b   � �%&% m   � �'' �((  l a s t T r a c k :  & o   � ����� 0 	lasttrack 	lastTrack$ o      ���� 	0 debug  " )*) l  � ���������  ��  ��  * +,+ l  � ���-.��  - * $ iterate through music applications	   . �// H   i t e r a t e   t h r o u g h   m u s i c   a p p l i c a t i o n s 	, 010 X   �*2��32 k   �%44 565 l  � ���78��  7 #  is this application running?   8 �99 :   i s   t h i s   a p p l i c a t i o n   r u n n i n g ?6 :��: Z   �%;<����; E   � �=>= o   � ����� 0 mylist myList> o   � ��� 0 musicapp musicApp< k   �!?? @A@ l  � ��~BC�~  B   append debug value   C �DD &   a p p e n d   d e b u g   v a l u eA EFE r   � �GHG b   � �IJI b   � �KLK o   � ��}�} 	0 debug  L m   � �MM �NN  
J o   � ��|�| 0 musicapp musicAppH o      �{�{ 	0 debug  F OPO l  � ��z�y�x�z  �y  �x  P QRQ l  � ��wST�w  S , & dynamically address music application   T �UU L   d y n a m i c a l l y   a d d r e s s   m u s i c   a p p l i c a t i o nR V�vV w   �!WXW O   �!YZY k   � [[ \]\ r   � �^_^ b   � �`a` b   � �bcb o   � ��u�u 	0 debug  c m   � �dd �ee  :a 1   � ��t
�t 
pPlS_ o      �s�s 	0 debug  ] fgf l  � ��r�q�p�r  �q  �p  g hih l  � ��ojk�o  j , & check if music application is playing   k �ll L   c h e c k   i f   m u s i c   a p p l i c a t i o n   i s   p l a y i n gi m�nm Z   � no�m�ln =  � �pqp 1   � ��k
�k 
pPlSq m   � ��j
�j ePlSkPSPo k   �rr sts r   � �uvu m   � ��i
�i 
nullv o      �h�h 0 albumartwork albumArtworkt wxw r   �yzy b   �{|{ b   �}~} l  ��g�f c   ���� o   � ��e�e 0 musicapp musicApp� m   � �d
�d 
TEXT�g  �f  ~ m  �� ���  :| l ��c�b� c  ��� n  ��� 1  
�a
�a 
ID  � 1  
�`
�` 
pTrk� m  �_
�_ 
TEXT�c  �b  z o      �^�^ 0 currenttrack currentTrackx ��� r  +��� b  '��� b  #��� b  ��� o  �]�] 	0 debug  � m  �� ���  (� o  "�\�\ 0 currenttrack currentTrack� m  #&�� ���  )� o      �[�[ 	0 debug  � ��� l ,,�Z�Y�X�Z  �Y  �X  � ��� l ,,�W���W  � 4 . application specific logic to fetch album art   � ��� \   a p p l i c a t i o n   s p e c i f i c   l o g i c   t o   f e t c h   a l b u m   a r t� ��� Z  ,�����V� F  ,I��� = ,5��� c  ,1��� o  ,-�U�U 0 musicapp musicApp� m  -0�T
�T 
TEXT� m  14�� ���  i T u n e s� l 8E��S�R� I 8E�Q��P
�Q .coredoexbool        obj � n  8A��� 2 =A�O
�O 
cArt� 1  8=�N
�N 
pTrk�P  �S  �R  � w  Lj��� k  Pj�� ��� r  P^��� n  PZ��� 4 UZ�M�
�M 
cArt� m  XY�L�L � 1  PU�K
�K 
pTrk� o      �J�J 0 frontartwork frontArtwork� ��I� r  _j��� l _f��H�G� n  _f��� 1  bf�F
�F 
pPCT� o  _b�E�E 0 frontartwork frontArtwork�H  �G  � o      �D�D 0 albumartwork albumArtwork�I  ��                                                                                  hook  alis    N  Macintosh HD               �W�H+     d
iTunes.app                                                        �ˮF4        ����  	                Applications    �W��      ˮ*       d  %Macintosh HD:Applications: iTunes.app    
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  � ��� = mv��� c  mr��� o  mn�C�C 0 musicapp musicApp� m  nq�B
�B 
TEXT� m  ru�� ���  S p o t i f y� ��A� w  y���� r  }���� l }���@�?� n  }���� 1  ���>
�> 
tAwk� 1  }��=
�= 
pTrk�@  �?  � o      �<�< 0 albumartwork albumArtwork��                                                                                  spty  alis    P  Macintosh HD               �W�H+     dSpotify.app                                                    3�mΫ��        ����  	                Applications    �W��      Ϋ�p       d  &Macintosh HD:Applications: Spotify.app    S p o t i f y . a p p    M a c i n t o s h   H D  Applications/Spotify.app  / ��  �A  �V  � ��� l ���;�:�9�;  �:  �9  � ��� r  ����� n  ����� 1  ���8
�8 
pArt� 1  ���7
�7 
pTrk� o      �6�6 0 who  � ��� r  ����� n  ����� 1  ���5
�5 
pnam� 1  ���4
�4 
pTrk� o      �3�3 0 what  � ��� l ���2�1�0�2  �1  �0  � ��� Z  �����/�� = ����� c  ����� o  ���.�. 0 who  � m  ���-
�- 
TEXT� m  ���� ���  m i s s i n g   v a l u e� r  ����� o  ���,�, 0 what  � o      �+�+ 	0 title  �/  � r  ����� c  ����� b  ����� b  ����� o  ���*�* 0 what  � m  ���� ���    b y  � o  ���)�) 0 who  � m  ���(
�( 
TEXT� o      �'�' 	0 title  � ��� l ���&�%�$�&  �%  �$  � ��� Z  �<����� = ����� o  ���#�# 0 info  � m  ��   �  � k  ��  r  �� o  ���"�" 	0 title   o      �!�! 0 info    r  ��	
	 b  �� b  �� b  �� o  ��� �  0 info   m  �� �    ( o  ���� 0 musicapp musicApp m  �� �  )
 o      �� 0 previousinfo previousInfo � r  �� m  ���
� boovtrue o      �� 0 
firsttrack 
firstTrack�  �  = �  o  ���� 0 
firsttrack 
firstTrack m  ���
� boovtrue � k    r   !  b  "#" b  $%$ b  &'& b  ()( b  *+* o  �� 0 previousinfo previousInfo+ m  ,, �--  
) o  �� 	0 title  ' m  .. �//    (% o  �� 0 musicapp musicApp# m  00 �11  )! o      �� 0 info   2�2 r  343 m  �
� boovfals4 o      �� 0 
firsttrack 
firstTrack�  �  � k  !<55 676 r  !6898 b  !4:;: b  !0<=< b  !.>?> b  !*@A@ b  !&BCB o  !"�� 0 info  C m  "%DD �EE  
A o  &)�� 	0 title  ? m  *-FF �GG    (= o  ./�� 0 musicapp musicApp; m  03HH �II  )9 o      �� 0 info  7 J�J r  7<KLK m  78�
� boovfalsL o      �
�
 0 
firsttrack 
firstTrack�  � MNM l ==�	���	  �  �  N OPO l ==�QR�  Q %  check if the track has changed   R �SS >   c h e c k   i f   t h e   t r a c k   h a s   c h a n g e dP T�T Z  =UV�WU l =DX��X > =DYZY o  =@�� 0 currenttrack currentTrackZ o  @C� �  0 	lasttrack 	lastTrack�  �  V k  G[[ \]\ r  GR^_^ b  GN`a` o  GJ���� 	0 debug  a m  JMbb �cc  : w r i t e   a r t w o r k_ o      ���� 	0 debug  ] ded l SS��������  ��  ��  e fgf l SS��hi��  h   write artwork to file   i �jj ,   w r i t e   a r t w o r k   t o   f i l eg klk r  Sbmnm l S^o����o I S^��pq
�� .rdwropenshor       filep o  SV���� 0 artworkfile artworkFileq ��r��
�� 
permr m  YZ��
�� boovtrue��  ��  ��  n o      ���� 0 fileref fileRefl sts Q  c�uvwu k  fxx yzy I fq��{|
�� .rdwrseofnull���     ****{ o  fi���� 0 fileref fileRef| ��}��
�� 
set2} m  lm����  ��  z ~��~ I r���
�� .rdwrwritnull���     **** o  ru���� 0 albumartwork albumArtwork� �����
�� 
refn� o  x{���� 0 fileref fileRef��  ��  v R      �����
�� .ascrerr ****      � ****� o      ���� 0 errormessage errorMessage��  w r  ����� b  ����� b  ����� o  ������ 	0 debug  � m  ���� ���  : e r r o r =� o  ������ 0 errormessage errorMessage� o      ���� 	0 debug  t ��� I �������
�� .rdwrclosnull���     ****� o  ������ 0 fileref fileRef��  � ��� l ����������  ��  ��  � ��� l ��������  �   remember current track   � ��� .   r e m e m b e r   c u r r e n t   t r a c k� ��� r  ����� l �������� I ������
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
�� .rdwrclosnull���     ****� o  ������ 0 fileref fileRef��  � ��� l ����������  ��  ��  � ���� Z  ������� > ����� o  ������ 0 albumartwork albumArtwork� m  ����
�� 
null� r  ����� m  ����
�� boovfals� o      ���� 0 clearartwork clearArtwork��  � k  ��� ��� r  ���� b  ����� o  ������ 	0 debug  � m  ���� ���  : n o   a r t w o r k� o      ���� 	0 debug  � ���� r  ��� m  ��
�� boovtrue� o      ���� 0 clearartwork clearArtwork��  ��  �  W k  �� ��� r  ��� b  ��� o  ���� 	0 debug  � m  �� ��� $ : u n c h a n g e d   a r t w o r k� o      ���� 	0 debug  � ���� r  ��� m  ��
�� boovfals� o      ���� 0 clearartwork clearArtwork��  �  �m  �l  �n  Z 4   � ����
�� 
capp� o   � ����� 0 musicapp musicAppX�                                                                                  hook  alis    N  Macintosh HD               �W�H+     d
iTunes.app                                                        �ˮF4        ����  	                Applications    �W��      ˮ*       d  %Macintosh HD:Applications: iTunes.app    
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  �v  ��  ��  ��  �� 0 musicapp musicApp3 o   � ����� &0 musicapplications musicApplications1 ��� l ++��������  ��  ��  � ��� l ++������  �   clear artwork?   � ���    c l e a r   a r t w o r k ?� ��� Z  +�������� F  +>��� = +0��� o  +.���� 0 clearartwork clearArtwork� m  ./��
�� boovtrue� > 3:��� o  36���� 0 	lasttrack 	lastTrack� m  69�� ���  : : c l e a r e d : :� k  A��� ��� l AA������  � - ' write 1x1 transparent pixel as artwork   � ��� N   w r i t e   1 x 1   t r a n s p a r e n t   p i x e l   a s   a r t w o r k� ��� r  AP��� l AL������ I AL����
�� .rdwropenshor       file� o  AD���� 0 artworkfile artworkFile� �����
�� 
perm� m  GH��
�� boovtrue��  ��  ��  � o      ���� 0 fileref fileRef� ��� Q  Q��� � k  Tw  I T_��
�� .rdwrseofnull���     **** o  TW���� 0 fileref fileRef ����
�� 
set2 m  Z[����  ��    I `k��	

�� .rdwrwritnull���     ****	 o  `a���� 
0 spacer  
 ����
�� 
refn o  dg���� 0 fileref fileRef��   �� r  lw b  ls o  lo���� 	0 debug   m  or � j 
 c l e a r e d   a r t w o r k   b y   w r o t i n g   a n   e m p t y   p i x e l   a s   a r t w o r k o      ���� 	0 debug  ��  � R      ����
�� .ascrerr ****      � **** o      ���� 0 errormsg errorMsg��    I �����
�� .sysoexecTEXT���     TEXT b  � m  � �  r m   n  �� 1  ����
�� 
psxp o  ������ 0 artworkfile artworkFile��  �  I ������
�� .rdwrclosnull���     **** o  ���� 0 fileref fileRef��    l ���~�}�|�~  �}  �|    !  l ���{"#�{  " , & and remember that we already did this   # �$$ L   a n d   r e m e m b e r   t h a t   w e   a l r e a d y   d i d   t h i s! %&% r  ��'(' l ��)�z�y) I ���x*+
�x .rdwropenshor       file* o  ���w�w 0 tempfile tempFile+ �v,�u
�v 
perm, m  ���t
�t boovtrue�u  �z  �y  ( o      �s�s 0 fileref fileRef& -.- Q  ��/01/ k  ��22 343 I ���r56
�r .rdwrseofnull���     ****5 o  ���q�q 0 fileref fileRef6 �p7�o
�p 
set27 m  ���n�n  �o  4 8�m8 I ���l9:
�l .rdwrwritnull���     ****9 m  ��;; �<<  : : c l e a r e d : :: �k=�j
�k 
refn= o  ���i�i 0 fileref fileRef�j  �m  0 R      �h>�g
�h .ascrerr ****      � ****> o      �f�f 0 errormessage errorMessage�g  1 r  ��?@? b  ��ABA b  ��CDC o  ���e�e 	0 debug  D m  ��EE �FF  : e r r o r =B o  ���d�d 0 errormessage errorMessage@ o      �c�c 	0 debug  . GHG I ���bI�a
�b .rdwrclosnull���     ****I o  ���`�` 0 fileref fileRef�a  H J�_J l ���^�]�\�^  �]  �\  �_  ��  ��  � KLK l ���[�Z�Y�[  �Z  �Y  L MNM l ���XOP�X  O   uncomment to debug   P �QQ &   u n c o m m e n t   t o   d e b u gN RSR l ���WTU�W  T  return debug   U �VV  r e t u r n   d e b u gS WXW l ���V�U�T�V  �U  �T  X YZY l ���S[\�S  [   is Skype running?   \ �]] $   i s   S k y p e   r u n n i n g ?Z ^_^ Z  ��`a�R�Q` F  ��bcb E  ��ded o  ���P�P 0 mylist myListe m  ��ff �gg 
 S k y p ec o  ���O�O 0 useskype useSkypea O  ��hih k  ��jj klk l ���Nmn�N  m ' ! get current mood text from skype   n �oo B   g e t   c u r r e n t   m o o d   t e x t   f r o m   s k y p el pqp r  �rsr I ��M�Lt
�M .sendskapnull��� ��� null�L  t �Kuv
�K 
cmndu m  ww �xx * G E T   P R O F I L E   M O O D _ T E X Tv �Jy�I
�J 
scrpy m  
zz �{{   c u r r e n t l y P l a y i n g�I  s o      �H�H 0 	skypemood 	skypeMoodq |}| r   ~~ m  �� ��� 
 T E X T   n     ��� 1  �G
�G 
txdl� 1  �F
�F 
ascr} ��� r  !-��� n  !)��� 4  $)�E�
�E 
citm� m  '(�D�D � o  !$�C�C 0 	skypemood 	skypeMood� o      �B�B 0 currentmood currentMood� ��� l ..�A�@�?�A  �@  �?  � ��� l ..�>���>  � 1 + does the old mood start with a music sign?   � ��� V   d o e s   t h e   o l d   m o o d   s t a r t   w i t h   a   m u s i c   s i g n ?� ��� l ..�=���=  �   display dialog currentMood   � ��� 4 d i s p l a y   d i a l o g   c u r r e n t M o o d� ��� l ..�<�;�:�<  �;  �:  � ��� l ..�9���9  � * $display dialog length of currentMood   � ��� H d i s p l a y   d i a l o g   l e n g t h   o f   c u r r e n t M o o d� ��� l ..�8�7�6�8  �7  �6  � ��� Z  .����5�� G  .E��� C  .5��� o  .1�4�4 0 currentmood currentMood� m  14�� ��� &l� A 8A��� n  8?��� 1  ;?�3
�3 
leng� o  8;�2�2 0 currentmood currentMood� m  ?@�1�1 � k  Hc�� ��� l HH�0���0  � 0 * yes, fetch the old mood from the tempfile   � ��� T   y e s ,   f e t c h   t h e   o l d   m o o d   f r o m   t h e   t e m p f i l e� ��/� Q  Hc���� r  KT��� I KP�.��-
�. .rdwrread****        ****� o  KL�,�, 0 tempmoodfile tempMoodFile�-  � o      �+�+ 0 oldmood oldMood� R      �*�)�(
�* .ascrerr ****      � ****�)  �(  � r  \c��� m  \_�� ���  � o      �'�' 0 oldmood oldMood�/  �5  � k  f��� ��� l ff�&���&  � %  no, set oldMood to currentMood   � ��� >   n o ,   s e t   o l d M o o d   t o   c u r r e n t M o o d� ��� r  fm��� o  fi�%�% 0 currentmood currentMood� o      �$�$ 0 oldmood oldMood� ��� l nn�#�"�!�#  �"  �!  � ��� l nn� ���   �   remember current mood   � ��� ,   r e m e m b e r   c u r r e n t   m o o d� ��� r  n{��� l nw���� I nw���
� .rdwropenshor       file� o  no�� 0 tempmoodfile tempMoodFile� ���
� 
perm� m  rs�
� boovtrue�  �  �  � o      �� 0 fileref fileRef� ��� Q  |����� k  ��� ��� I ����
� .rdwrseofnull���     ****� o  ��� 0 fileref fileRef� ���
� 
set2� m  ����  �  � ��� I �����
� .rdwrwritnull���     ****� o  ���� 0 currentmood currentMood� ���
� 
refn� o  ���� 0 fileref fileRef�  �  � R      ���
� .ascrerr ****      � ****� o      �
�
 0 errormessage errorMessage�  � r  ����� b  ����� b  ����� o  ���	�	 	0 debug  � m  ���� ���  : e r r o r =� o  ���� 0 errormessage errorMessage� o      �� 	0 debug  � ��� I �����
� .rdwrclosnull���     ****� o  ���� 0 fileref fileRef�  �  � ��� l ����� �  �  �   � ��� l ��������  �   update mood text   � ��� "   u p d a t e   m o o d   t e x t� ���� Z  �������� A ����� n  ��   1  ����
�� 
leng o  ������ 0 info  � m  ������ � I ������
�� .sendskapnull��� ��� null��   ��
�� 
cmnd b  �� m  �� � , S E T   P R O F I L E   M O O D _ T E X T   o  ������ 0 oldmood oldMood ��	��
�� 
scrp	 m  ��

 �   c u r r e n t l y P l a y i n g��  ��  � I ������
�� .sendskapnull��� ��� null��   ��
�� 
cmnd b  �� m  �� � 0 S E T   P R O F I L E   M O O D _ T E X T  &l   o  ������ 0 info   ����
�� 
scrp m  �� �   c u r r e n t l y P l a y i n g��  ��  i m  ���                                                                                  SKYP  alis    H  Macintosh HD               �W�H+     d	Skype.app                                                      �\�q�A        ����  	                Applications    �W��      �q�!       d  $Macintosh HD:Applications: Skype.app   	 S k y p e . a p p    M a c i n t o s h   H D  Applications/Skype.app  / ��  �R  �Q  _  l ����������  ��  ��    l ������   - ' return 'currently playing' information    � N   r e t u r n   ' c u r r e n t l y   p l a y i n g '   i n f o r m a t i o n �� L  �� o  ������ 0 info  ��  ��       "�� !��" � � � � � ���#$%&'()*+����,-�������������������     ����������������������������������������������������������������
�� .aevtoappnull  �   � ****�� 0 useskype useSkype�� &0 musicapplications musicApplications�� 0 tempfile tempFile�� 0 tempmoodfile tempMoodFile�� 
0 spacer  �� 0 info  �� 0 previousapp previousApp�� 0 previousinfo previousInfo�� 0 clearartwork clearArtwork�� 0 artworkfile artworkFile�� 0 	lasttrack 	lastTrack�� 0 mylist myList�� 	0 debug  �� 0 albumartwork albumArtwork�� 0 currenttrack currentTrack�� 0 who  �� 0 what  �� 	0 title  �� 0 
firsttrack 
firstTrack�� 0 fileref fileRef�� 0 	skypemood 	skypeMood�� 0 currentmood currentMood�� 0 oldmood oldMood��  ��  ��  ��  ��  ��  ��  ��  ! �� |����./��
�� .aevtoappnull  �   � ****�� 0 argv  ��  . ���������� 0 argv  �� 0 musicapp musicApp�� 0 errormessage errorMessage�� 0 errormsg errorMsg/ z�� � ��� ��� ��� ��� ��� ��� ����������������������� �����������'������MX��d������������������������������������������ ��,.0DFHb��������������~��}�����|�{�z;Ef�yw�xz�w�v�u��t�s�r�q��p�o��
�� 0 useskype useSkype�� &0 musicapplications musicApplications�� 0 tempfile tempFile�� 0 tempmoodfile tempMoodFile�� 
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
� .rdwrwritnull���     ****�~ 0 errormessage errorMessage
�} .rdwrclosnull���     ****�| 0 errormsg errorMsg
�{ 
psxp
�z .sysoexecTEXT���     TEXT
�y 
cmnd
�x 
scrp�w 
�v .sendskapnull��� ��� null�u 0 	skypemood 	skypeMood
�t 
ascr
�s 
txdl
�r 
citm�q 0 currentmood currentMood
�p 
leng�o 0 oldmood oldMood���eE�O��lvE�O�E�O�E�O�E�O�E�O�E�O�E�OeE` O �a k/a &a &a &E` W X  a j a &a %a &E` O �j E` W X  a E` Oa  *a -a  ,E` !UOa "_ %E` #O��[a $a l %kh _ !�k_ #a &%�%E` #Oa 'Z*a (�/L_ #a )%*a *,%E` #O*a *,a + -a ,E` -O�a &a .%*a /,a 0,a &%E` 1O_ #a 2%_ 1%a 3%E` #O�a &a 4 	 *a /,a 5-j 6a 7& #a 'Z*a /,a 5k/E` 8O_ 8a 9,E` -Y #�a &a :  a ;Z*a /,a <,E` -Y hO*a /,a =,E` >O*a /,a  ,E` ?O_ >a &a @  _ ?E` AY _ ?a B%_ >%a &E` AO�a C  _ AE�O�a D%�%a E%E�OeE` FY C_ Fe   �a G%_ A%a H%�%a I%E�OfE` FY �a J%_ A%a K%�%a L%E�OfE` FO_ 1_  �_ #a M%E` #O_ a Nel OE` PO _ Pa Qjl RO_ -a S_ Pl TW X U _ #a V%�%E` #O_ Pj WO�a Nel OE` PO _ Pa Qjl RO_ 1a S_ Pl TW X U _ #a X%�%E` #O_ Pj WO_ -a , 
fE` Y _ #a Y%E` #OeE` Y _ #a Z%E` #OfE` Y hUY h[OY��O_ e 	 _ a [a 7& �_ a Nel OE` PO (_ Pa Qjl RO�a S_ Pl TO_ #a \%E` #W X ] a ^_ a _,%j `O_ Pj WO�a Nel OE` PO _ Pa Qjl ROa aa S_ Pl TW X U _ #a b%�%E` #O_ Pj WOPY hO_ !a c	 �a 7& a d �*a ea fa ga ha i jE` kOa l_ ma n,FO_ ka ol/E` pO_ pa q
 _ pa r,ka 7&   �j E` sW X  a tE` sY Q_ pE` sO�a Nel OE` PO _ Pa Qjl RO_ pa S_ Pl TW X U _ #a u%�%E` #O_ Pj WO�a r,a i *a ea v_ s%a ga wa i jY *a ea x�%a ga ya i jUY hO�
�� boovtrue" �n0�n 0   � �
�� boovtrue# �11 ^ M a c i n t o s h   H D : U s e r s : j e r o e n . w e s b e e k : a l b u m A r t . t i f f$ �22  : : c l e a r e d : :% �m3�m .3 . 456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`a4 �bb  l o g i n w i n d o w5 �cc 
 l d s l m6 �dd  t a l a g e n t7 �ee  S y s t e m U I S e r v e r8 �ff  D o c k9 �gg  F i n d e r: �hh  L D U s e r M e n u; �ii  A R D A g e n t< �jj  1 P a s s w o r d A g e n t= �kk 
 G r o w l> �ll  H a r d w a r e G r o w l e r? �mm  i T u n e s H e l p e r@ �nn  B o x S y n c H e l p e rA �oo 2 M i c r o s o f t   D a t a b a s e   D a e m o nB �pp " X m a r k s   f o r   S a f a r iC �qq  G e e k T o o l   H e l p e rD �rr  D r o p b o xE �ss 0 V M w a r e   F u s i o n   S t a r t   M e n uF �tt  B o x S y n c E n g i n eG �uu ( c o m . a p p l e . d o c k . e x t r aH �vv  A p p l e S p e l lI �ww  S y s t e m   E v e n t sJ �xx . I m a g e   C a p t u r e   E x t e n s i o nK �yy " M i c r o s o f t   O u t l o o kL �zz & M i c r o s o f t   A U   D a e m o nM �{{  m d w o r k e rN �||  M a i lO �}} . M i c r o s o f t   A l e r t s   D a e m o nP �~~  S o u r c e T r e eQ �  S a f a r iR ���  W e b P r o c e s sS ���  P l u g i n P r o c e s sT ���  i d e aU ��� 
 S k y p eV ��� $ A p p l e S c r i p t   E d i t o rW ���  S o p h o s U I S e r v e rX ���  m d w o r k e r 3 2Y ���  S p o t i f yZ ���  S p o t i f y   H e l p e r[ ���  S p o t i f y   H e l p e r\ ���  S p o t i f y   H e l p e r] ���  S p o t i f y   H e l p e r^ ���  S p o t i f y   H e l p e r_ ���  T e r m i n a l` ���  M o ua ���  q u i c k l o o k d& ��� d l a s t T r a c k :   : : c l e a r e d : : 
 S p o t i f y : � c o n s t a n t   * * * * k P S p �'   +�TIFFMM * �D7$?2:-7*6)6)7*7*@5!>1G8%C2 B1D3!<-?0F7$>/;,:+:+=.=.8)A2?0@1B3A2=.<->/G8#F7"A2:+9*=.=.:+A2B3A2@/=,<+>-@/A1@0A1E5F6E5D4E5B2;+A1I9"C3=-A1D4B2D4E5E5H8!J:#H8!E5E6E6E6F6E5E5E5E5F4G5G5G5G5H6 J8"L:$J:!H8H8J8 J8 I7J6J6K9!J8 I7I7I9 H8!G7 E5E5C3B2C3E5F6E5D4E5D4E5E5F6F6D4B2D4C3D4F6F6E5E5G7 E5F6G7 G7 F5!E4 F5!G6"F5!F5!E4 E4 D3D3C2B1B3C4D5 D5 D5 C4C4C4C4D5 E6!C4B3B3A2?0C4C4D5 F7"H9$G8#E6!B3D5 H9$G8#E6!G8#E6!A2?0D5 F7"D5 D5 H9$G8#E6!F7"B5"@3 A4!A4!>1?2B5"B5"?4">1=0</=0@1A2A2@1=.=.=.<->/;,4%9*<->/</:-8+7*5*3(3(4)7,7,5*4)4)5*3(2'1&0%/$/$0%0%0%/$.#.#0%.#+ )!+#+#+#-%1)0(+#-&-&,$*"*".#-"**+ + ))+ + + ))*(&	%&	'
*('
'
'
&	$#%$""##"!!!!";.9,5(1$2%8+</</?4 </<-;*>-C2 =.:+?0:+:+=.=.@1@1<-B3@1?0?0<-7(6'9*?0B3A2=.=.A2B3@1C4@1<-=,?.@/?.=,;+<,?/C3E5D4E5G7 C3A1D4E5A1>.A1C3F6B2A1E5I9"H8!G7 F6E6E6E6F6E5E5E5E5F4G5H6 G5G5H6 J8"K9#J:!I9 I9 K9!L:"J8 I7L8 I7H6H6H6G7G7 E5D4G7 E5D4E5F6G7 G7 F6D4D4D4E5F6F6E5D4F6E5E5G7 G7 F6F6G7 F6G7 H8!G7 F5!F5!F5!G6"D3D3D3D3D3C2B1A0B3C4C4C4B3B3C4C4E6!F7"E6!C4C4C4B3?0A2C4E6!F7"F7"E6!D5 C4A2D5 B3?0B3C4B3C4D5 F7"D5 B3D5 D5 D5 H9$B5"@3 A4!B5"A4!B5"D7$A4!?4">1=0</=0@1@1@1A2=.=.>/>/>/=.7(;,<-=.;.:-8+7*5*5*4)5*7,6+4)3(3(4)3(2'1&1&1&1&2'0%0%/$-".#0%0%.#*",$,$+#,$/'-%)!-&.&,$)!)!-",!+ + ,!,!**+ + *))('
&	%%&	'
&	&	&	&	&	&	&	$$#$$%%$$	#	 
 :-;.9,5(5(:-=0=0:/@3 ?0=,;*=,@1=.?0;,<->/=.?0@1=.B3@1@1?0<-9*;,?0:+>/@1>/>/@1A2@1C4@1=.>-@/A0?.=,=-?/A1C3C3B2C3E5E5H8!E5A1?/@0A1C3I9"@0>.D4I9"G7 E5G7 E6F7 G7 F6E5D4E3F4F4G5G5G5G5H6 I7!J8"J:!H8H8K9!L:"K9!J8 K9!H6H6H6H6G7F6D4C3G7 E5C3C3D4E5E5E5D4D4D4E5F6G7G7F6G7 F6F6H8!H8!G7 F6H8!H8!H8!H8!G7 F5!F5!G6"H7#D3C2D3D3D3D3C2B1B3B3B3B3A2B3C4E6!D5 D5 C4C4E6!G8#E6!B3A2D5 F7"G8#E6!C4B3C4@1B3@1>/B3D5 C4E6!C4F7"E6!B3B3A2B3G8#E8%@3 @3 A4!A4!D7$D7$A4!?4">1=0=0=0@1@1@1B3 <-<-?0>/=.=.;,>/=.<-9,9,8+7*5*7,6+6+6+5*3(2'3(2'1&1&0%0%1&1&2'2'1&/$-".#0%0%/$*"-%-%+#+#-%,$)!+#+#*")!)!-".#.#-".#.#,!,!,!+ )*('
&	&	&	%$'
&	%$$&	'
'
%%&	&	%%&	&	%
% 		
</=0?2?2=0;.;.</9.F9&D5"B1<+:)A2<-A2=.=.<-:+<-?0>/A2A2B3B3@1>/A2E6!>/?0?0=.<-;,;,;,?0@1A2A0?.>-?.@/A1B2C3D4D4C3C3D4E5I9"E5@0B2A1@0F6H8!B2@0E5H8!G7 F6G7 G7 G7 G7 F6E5E3E3F4D2E3E3F4G5H6 I7!I7!J8 H6H6J8 K9!J8 I7J8 H6I7I7J8 I9 G7 E5D4E5C3B2B2B2C3C3C3D4D4E5E5F6G7H8H8F6E5F6H8!H8!G7 G7 H8!H8!H8!G7 F6F5!F5!G6"G6"F5!E4 D3D3D3D3D3C2B3B3B3B3B3C4D5 E6!D5 C4B3B3E6!G8#F7"B3C4E6!F7"F7"D5 C4A2A2?0B3B3B3E6!D5 A2A2A2E6!E6!D5 E6!B3A2D5 F9&A4!@3 ?2>1A4!D7$B5">3!>1=0=0>1@1A2A2B3 ;,;,?0=.:+;,<-?0=.;,8+8+8+7*5*8-6+5*5*4)2'1&2'0%0%0%/$/$0%0%0%2'1&/$/$0%0%0%.#)!,$-%+#+#,$,$+#,$,$,$+#*"*"+#+#-"/$/$.#-".#,!**('
&	'
'
&	%('
%$%&	%#%&	'
&	%$$%$	%"</:-</A4!@3 :-9,>1?4 E8%>/?.?.>-A28)>/;,<-<-:+<-@1?0?0@1A2B3@1>/?0B3C4@1=.<-;,;,;,<-;,=.?0@/?.>-?.A0A1A1A1B2E5G7 F6D4D4E5B2B2E5A1@0H8!D4E5E5E5F6H8!G7 F6F6G7 G7 F6F4E3E3F4C1C1D2E3F4G5H6 H6 J8 H6H6J8 K9!I7I7I7H6I7J8 K9!I9 G7 F6E5F6E5D4D4D4D4E5E5E5F6F6G7 G7 G7G7H8F6E5F6H8!H8!H8!H8!I9"I9"H8!G7 F6E4 F5!F5!F5!G6"F5!C2B1B1B1C2C2A2B3C4C4C4C4C4D5 F7"D5 B3A2C4E6!C4@1D5 D5 D5 D5 E6!D5 C4A2?0A2A2B3E6!B3>/>/C4E6!D5 C4F7"D5 B3C4E8%B5"B5"A4!>1?2B5"A4!>3!>1>1>1?2B3B3B3B3 ;,;,?0<-8):+<-?0=.;,8+8+8+7*5*7,5*4)4)3(2'1&3(0%1&1&/$/$0%0%/$1&0%/$0%1&1&0%.#+#,$-%,$+#,$,$,$/'0(0(.&*"'&'+ -".#.#-".#,!**)'
'
()(&	)'
$#&	(% $%&	&	$##$#	%#	!!		>1:-;.?2>19,:-?2@5!C6#A2@/?.>-?0<-<-:+=.?0=.=.=.:+;,<->/@1A2@1@1@1?0:+8)9*<-<-=.?0;,:+9*=,@/B1@/=,B2A1?/@0C3F6D4@0C3B2A1D4F6B2B2H8!C3F6G7 F6E5G7 H8!F6F6F6F6G5F4F4F4F4C1B0C1D2F4G5H6 H6 J8 I7I7J8 K9!I9 H8I9 H6I7J8 J8 H8F6E5E5F6E5E5E5E5E5F6F6F6G7 H8!H8!G7 G7G7H8F6E5F6H8!H8!H8!H8!I9"I9"H8!F6F6F5!F5!E4 E4 F5!D3B1@/@/@/A0A0@1B3C4C4C4C4B3C4B3B3A2@1C4E6!E6!B3D5 C4B3C4E6!F7"E6!D5 B3C4A2A2D5 B3@1C4G8#G8#C4@1D5 D5 D5 F7"C6#B5"E8%E8%A4!@3 A4!?2>3!>1>1>1?2A2A2A2A2=.=.?0;,9*;,<->/=.;,8+8+7*7*5*6+5*4)4)4)2'2'3(2'4)4)1&1&2'2'/$/$.#.#1&3(2'0%/$.&-%-%,$,$+#+#*"/$0%1&.&+#'( *"+ ,!-"-"-"-",!*+ *))))(('
'
$#&	)&	 "#$$$### #	! !			
	
=0=0</</</=0=0</?4 @3 G8%F5#A0=,9*<-=.;,>/@1>/>/=.9*<-<->/@1B3C4B3A2;,7(7(;,=.;,=.@1>/=.<-?.B1B1?.<+B2A1@0?/A1C3B2?/C3A1C3D4C3C3E5D4F6E5D4E5F6F6F6G7 E5F6G5G5F4F4H3I4E3D2C1D2E3G5H6 G5K7G5H6J8 K9!I9 H8I9 H6I7J8 I7G7E5E5E5C3D4E5E5E5E5E5E5F6G7 I9"I9"H8!G7G7H8H8!G7 H8!I9"I9"H8!G7 I9"I9"H8!G7 F6G6"F5!E4 D3D3B1A0@/@/@/@/@/A2A2B3B3A2A2A2B3@1@1@1@1B3E6!F7"E6!E6!D5 C4C4C4E6!F7"G8#E6!D5 A2A2D5 C4B3F7"F7"G8#C4@1B3C4D5 H9$C6#A4!B5"C6#A4!A4!B5"@3 >3!?2>1>1>1@1?0?0>/<->/>/:+9*<-;,<-<-<-9,8+7*7*6+7,6+5*6+5*3(2'3(3(5*5*2'2'4)3(0%1&.#.#1&2'0%/$/$.&,$+#+#,$,$+#*"+ ,!.#,$)!'*".'-"/$/$.#-".#,!*,!,!+ *('
'
(&	'
&	$%('
###$$%%$# ""! 	4':-;.9,</B5"A4!:-A6";.E6#H7%H7%D3!2#1";,8);,>/>/A2B3 ?0A2@1@1@1B3B3@1=.<-:+=.A2@1;,;,?0A2C4D5 D3A0?.>->-=-?/@0?/A1D4E5D4C3B2E5C3?/D4G7 @0J:#C3@0E5G7 D4D4H8!E5E5G5G5F4F4I4I4G5F4D2D2F4G5G5G5I5G3F4H6I7H8H8I9 H6I7J8 I7G7F6F6F6C3D4F6G7 G7 F6F6F6E5G7 I9"J:#I9"H8H8H8J:#I9"I9"J:#J:#H8!G7 H8!J:#H8!G7 G7 H7#G6"E4 D3B1B1B1B1B1B1A0@/A2A2A2@1?0?0@1A2D5 D5 D5 B3A2B3C4B3F7"F7"E6!C4B3B3E6!G8#C4B3@1A2D5 B3@1D5 B3F7"E6!C4C4B3C4G8#E8%?2=0>1=0A4!D7$B5"?4"?2>1=0=0>/=.<-;,;,>/<-8)9*<-9*:+;,=.:-8+7*7*6+8-7,6+7,6+3(2'3(2'5*5*2'1&4)3(0%4)1&/$0%0%.#,!-",$*")!*",$,$+#+#-"-".#*"'$	' -&0%2'2'0%/$/$.#,!-"-"-"+ (&	&	'
%))$"%'
&	&	%%%&	&	$"%&%#"
	?2=0:-:+;,=.?0A0B3>/<-=.?0?0<-9*6'8)7(>/B3B1B1<+=,=,C2G8#F7"E6!C4>/?27*=0=1=1;/4(;/?0C4A2;,;,A0@/:)@08(;+@0E5E5@0D4B3C4E5E5F6G7 I7!H6 E5F6G7 F6F6H8!H8!G7 B2G7 H8!E5D4F6G7 E5H6G5G5F4F4F4F4G5I7I7I7I7I7I9 I9 I9 L<#M=$N>%N>%M=$L<#K;"J:!F6G7 I9"I9"G7 F6E5F6H8J:!K;"K;"J:!I9 J:!K;"H8!H8!H8!H8!H8!H8!I9"J:#I9 H8H8!H8!I9"I9"G6"F5!G7 F6C3B2B2D4F6G7 D5 D5 B3@1@1A2B3C4B3E6F7"B3A2D5 E6#D5">/C4F7"D5 D5 E6C4?0A2@1A0C1C2C4C7!C8"E6E6B3@1C4C4A2B3A2A2?0>/@1D5"E6#C4!B3 B3 @1@1?0?0>/=.;,>/@1>/;,9*;,>/>/=.;,;,:-9,7*5(8+7*7*7*6)3(3(5*4)4)5*4)3(1&1&1&4)1&.#/$1&1&/$,!-".#/$.#,!,!-".#' -"2&0$&"
(!3(,$.&.&+#*"+#)!$	+ + + + + **))!%
"#&'%
"%%%$#"!!'
%	#	#&	%
 		?2</9,;,@1E6!D5 A0G8#D5 B3?0>/;,7(5&8)<-:+;,9*8'?.@/@/E4 F5!=.<-G8#I:%?0@3 9,=0<0=1>29->2>/B3C4?0=.@/@/<+<,7'<,@0D4E5?/A1A2C4E5E5F6G7 G5F4G7 H8!H8!G7 G7 H8!H8!G7 C3G7 G7 D4D4F6G7 E5D2D2E3F4G5H6I7J8 I7I7J8 J8 K9!K;"K;"K;"M=$L<#M=$M=$N>%M=$L<#J:!H8!H8!H8!H8!G7 G7 G7 H8!I9 I9 I9 J:!J:!I9 I9 H8I9"J:#K;$K;$J:#I9"J:#K;$I9 I9 H8!I9"I9"I9"G6"F5!H8!G7 F6D4D4D4G7 H8!E6!D5 B3A2A2B3D5 E6!@1C4D5 @1?0B3C4!B3 A2D5 D5 @1?0B3D5B3C4D5 F5!H7#H7#F7"C7!B6 H9"H9"C4A2D5 E6!E6!H9$>/;,9*8):+<->/>/A2@1@1?0@1@1@1?0>/>/>/>/<-;,;,<-;,;,;,;,9,8+6)5(7*6)7*8+7*3(3(4)2'3(4)3(2'1&1&1&3(0%.#.#/$0%.#,!/$/$/$.#.#.#.#/$*#,!-!	-"*#'")"-"( +#.&-%+#+#,$,$+ + + + **))( &$	$	%
%
$	"##$$$$$%%%	$
$%#	9,;.</=.@1D5 B3=,?0?0?0>/>/=.;,:+4%:+:+;,8)4#9(9(@/>->-<-;,?0C4A2B5">1?2<0=1A5?3A5?0C4E6!D5 A2B1A0@/?/=-B2B2D4G7 B2B2B3D5G7 F6G7 G7 G5E3H8!I9"H8!F6F6G7 G7 E5D4F6F6D4C3F6G7 E5F4F4F4F4F4G5G5G5H6H6I7J8 K9!K;"L<#L<#M=$L<#K;"L<#N>%N>%M=$K;"K;$J:#H8!G7 G7 H8!I9"I9"K;"I9 I9 J:!K;"J:!H8F6J:#L<%M=&L<%K;$I9"J:#K;$J:!J:!J:#J:#J:#I9"H7#G6"H8!I9"I9"G7 E5D4F6H8!E4 D3B1A0@/A0B1D3C4E6E6A2?0A2C4B3D5 F7"E6!A2?0B3F7 F7 D5 F5!G6"H7#G6"E6!A5?3C4C4@1>/A2A2A2C4B3 =.;,=.>/<-=.?0A2@1@1@1@1@1@1A2@1>/=.=.>/=.<-:+9*:+<-<-:-8+7*6)7*6)7*8+8+5*3(4)2'3(4)3(3(2'2'2'2'1&/$.#.#.#.#.#/$.#-"-"-".#.#-"+$,!, 
-"*#("(!+ 0(0(/'/'-%)!''+ + ***)))&%
%
%
%
%
$	#&	&	&	%##$$#%	%#!!	.!8+?2?0=.?0?0>-?0?0>/<-<-;,9*6'8)9*5&9*;,9(9(3"9(7&=,A2<-8)9*;,A2A2@1=.>/B3A2@1?0A2C4D5 C4C2B1A0E5D4F6A1B2H8!E5F6D5F7 G7 G7 G7 G7 G5F4F6G7 F6D4D4E5E5D4D4F6E5C3C3E5F6E5H6H6G5G5F4F4E3E3I7I7J8 K9!L:"L<#M=$M=$M=$K;"I9 J:!M=$N>%M=$K;"L<%I9"G7 F6G7 I9"I9"I9"K;"J:!J:!K;"L<#K;"I9 H8I9"K;$L<%K;$I9"H8!J:#L<%K;"K;"K;$K;$K;$J:#I8$H7#H8!J:#K;$H8!E5C3D4F6F5!D3A0@/?.?.@/A0H8!I9"H8!D4B1B1D3C2A2E6!F7"D5 B3C4F7 F7 F5!F5!F5!D3B3C4C4@4B3D5C4B3E6!C4@1A2C4!>/>/B3 B3 =.;,>/B3 A2A2@1?0?0?0?0@1?0=.=.>/>/<-9*;,<->/=.9,8+8+9,8+7*7*8+8+6+5*5*3(4)5*5*4)3(3(3(2'2'1&0%/$/$/$0%0%.#,!,!-".#.#-"( -"0%,$% &/$0(+#)!-%0(.&+#*"+ + ***)))%
%
&&&%
%
%
'
'
&	$###$$	#	#	"!#	".!7*</<-:+=.A2C2<-<-;,:+<->/;,6'A2>/5&7(9*:)<+8'4#=,D3?08):+;,5&:+>/=.<-=.?0@1<-?0>/>/?0A2C2B1@/C3C3E5?/@0G7 E5E5E6F7 G7 E5E5F6G5F4E5F6E5C3C3D4E5D4E5E5D4C3C3E5F6E5E3E3F4F4G5H6I7J8 K9!K9!L:"L:"M;#M=$M=$M=$L<#J:!H8J:!L<#N>%L<#J:!J:#I9"G7 F6G7 I9"I9"H8!K;"L<#M=$M=$M=$L<#L<#L<#J:#K;$K;$J:#I9"I9"L<%N>'L<#L<#L<%L<%K;$J:#I8$I8$I9"K;$L<%J:#F6C3D4E5H8!E5C3B2B2A1B2D4G7 H8!H8!E5B2C2D3D3?0B3D5 C4B3C4D5E6F5!G6"G6"D5 D5 F7"G8#E6!C4F7 E6D5 E6!B3?0A2@1;,;,>/=.9*7(:+@1A2A2@1?0=.=.>/?0?0?0?0>/=.<-;,=.>/>/<-8+7*8+:-:-7*6)7*7*5*5*5*4)4)5*5*3(2'2'2'2'2'2'0%/$/$0%1&2'0%/$/$0%1&0%/$)!.#1&*# 
&1&0(,$+#-%.&+#)!*",!,!+ *****&'( '&%
%
%
$$$$$$&	'
#!" #$
 


9,9,7*7(7(;,=.?.9*9*8)9*>/A2?09*<-?0:+:+7(5$8'7&5$8'=,<-7(9*>/>/5&<->/@1A2A2D5 @1A2@1>/>/A2E4 D3@/?/?/C3A1D4I9"E5D4D5E6E5C3C3D4F4E3F6G7 F6D4D4F6G7 F6F6E5D4D4E5F6F6E5E3E3F4G5H6I7J8 K9!J8 J8 J8 K9!K9!J:!J:!J:!K;"J:!I9 J:!L<#M=$L<#J:!I9"H8!G7 F6G7 H8!H8!H8!K;"M=$N>%N>%L<#L<#M=$N>%L<%L<%K;$K;$K;$L<%N>'O?(L<#M=$M=&M=&K;$J:#I8$I8$J:#K;$L<%J:#G7 F6F6F6F6B2A1B2C3B2D4G7 G7H8H8!G7 F6E5G6"G6"B3B3B3A2B3C4E6G8!E3G6"G8#E6!F7"H9$G8#E6!E6F7 C4A2A2@1?0B3C4!?0=.=.=.;,<-?0<-=.?0?0>/=.=.>/=.?0A2@1>/<-<-=.>/=.<-:+7*7*8+9,:-7*5(5(5(3(3(4)2'3(4)3(2'1&0%0%0%1&1&0%/$.#/$/$0%0%/$0%0%0%/$/$-%/$+#' &/$1)2*3+0()!##'-",!+ *****)!)!( '&$	##%%%$$$%&	   "%
$
!?2</9,;,:+8)8);*>/?0=.;,;,<-8)2#6'<-=.>/8)2!5$4#7&/
3";,;,8);,?04%=.@1F7"E6!A2G8#E6A2C4B3?0@1F5!D3>-B2?/C3C3F6J:#E5D4D5E6E5D4D4E5G5F4G7 H8!G7 E5E5G7 H8!G7 G7 F6E5F6G7 G7 G7 F6H6H6H6H6H6H6I7I7I7I7J8 J8 J8 I9 I9 I9 K;"K;"L<#L<#M=$M=$L<#J:!H8!H8!G7 G7 F6G7 H8!I9"M=$L<#L<#L<#K;"K;"L<#L<#M=&L<%L<%L<%M=&N>'N>'M=&L<#M=$N>'M=&K;$I9"I8$I8$H8!I9"J:#I9"H8!H8!H8!H8!E3B0A/C1D2D2F4J8"I9 J:!J:!J:#H8!G7 G7 H7#G8#D5 C4B3D5 E6F7 G8!E3G6"F7"A5B6 D8"F7"D3H9"J;$G8!D5 D5 C4C4F7"B3 B3 A2@1?0?0?0@17(:+>/?0>/=.=.=.<->/@1@1>/=.=.=.>/=.;,:+8+8+9,9,</8+6)6)6)4)3(3(1&2'3(3(2'1&0%1&0%0%0%0%0%0%/$.#-".#/$/$.#.#-"-"/'/$*"% %.#)!,$.&,$*"*"+#,$,!,!+ *))**( ( '&%
$	##'
'
'
&	%$$$   !#	#	""9,;.@3 E6#A2:+:+@/7(;,<-9*:+<-:+5&:+>/:+:+7(5$:):)6%6%9(:+;,=.9*.
5$>-@/G6"F5!@/G6"F6=.B3B3=.=.B1A0:)G7 A1B2A1E5H8!C3D4D5F7 G7 F6F6G7 H6 G5H8!H8!G7 E5E5G7 H8!G7 H8!G7 F6H8!I9"I9"H8!G7 H6H6H6H6I7I7J8 J8 L:"L:"L:"M;#M;#L<#L<#L<#K;"L<#M=$N>%N>%M=$L<#K;"H8!H8!H8!F6E5F6H8!K;$N>%L<#J:!I9 J:!K;"K;"J:!M=&L<%L<%M=&O?(O?(M=&K;$L<#M=$N>'M=&K;$I9"I8$I8$F6F6G7 G7 H8!H8!I9"H8!H6 D2C1F4F4E3G5L:$I9 J:!J:!J:#G7 E5D4E5F7"D5 B3C4E6!E6D5C4I7#I8$F7"?3?3C7!F7"F5!A2E6D5B3C4@1?0A28);,>/>/=.<-:+7(6'9*=.?0>/<-<-<-=.>/?0@1?0>/=.=.>/=.;,;,:-;.;.:-=0:-8+8+9,6+4)3(1&2'3(3(2'2'2'2'1&1&1&1&2'1&0%.#-"/$1&1&/$.#.#.#,$-%-%'!	$/$.&-%*")!,$/'-%',!+ *))))*&%
$	$	$	%
%
$	%%&	'
&	&	'
'
!"  "	!!  $A0A0@/>-<+:);*>-?2=0:-5&0!4%;,;*F5!>-9(6%3"5$7&5$4'.!/"5(4',- 4'=,9(?.;*<+A0=,B1A0?.=,=,>->-<+:)=,C2H7#F5!@0C3E5A1B2F6G7 H6 J8"M;#L:"G5F6F6E5C3D4G7 H8!G7 E5G7 G7 E5E5H8!I9"I9"J5 I5G5I7J8 H8I9J: K9!H6H6L:"O=%M=$L<#L<#M=$M=$N>%N>%N>%N>%M=$L<#H9"H9"G8!G8!G8!I:#J;$K<%L<%K;$K;$J:#J:#K;$L<%M=&L<#J:!K;"N>%P@'O?&L<#K;"N>%M=$M=$L<#L<#L<#K;"J:!G7 G7 H8!H8!I9"I9"G7 E5F6F6F6G7 H8!H8!F6D4B2E5I9"I9"G7 F6F6G7 J:#M=&L<%F6D4F6G7 E5E4 G6"H7#G6"D3B1C2E4 >/E6!F7"F7"B3=.A2?0:+:+:+9*;,>/=.9*<->/?0>/?0A2A2?0@1@1@1?0>/=.<-;,?0;,:+<->/?0>/=.:+;,;,:+9*8)9*:+1$2%4'5(4'3&3&2%1&/$.#0%3(3(1&.#/$.#/$0%/$.#.#0%.#/$2'% %-$-"-"-",!+ *+ ,!,!*))+ + + *( &%
$	%
%
$	#('
'
&	&	'
((%#"  

8);,?0?0=.:+9*:+3&3&6)7(5&7(;,;*6%7&;*=,=,>-;*1 3&5(3&- - 5(:-9,>-<+A0?.?.B1<+?.@/C2C2@/@/B1>-7&;*?.F5!F5!D4G7 J:#G7 C3E5F6G5J8"M;#L:"G5C3F6I9"H8!F6F6E5D4F6H8!H8!F6F6G7 H8!H8!K6!H6G5H6H6G7G7I9I7H6I7L:"M;#K;"K;"L<#M=$M=$M=$N>%O?&O?&M=$K;"J<"I;!I;!I;!I;!J<"K=#K=#K;"K;"K;"K;"K;"L<#L<#L<#M=$K;"K;"N>%P@'O?&N>%N>%N>%M=$M=$M=$M=$L<#K;"J:!G7 H8!I9"I9"I9"I9"H8!G7 H8!G7 F6E5F6G7 G7 F6B2D4G7 H8!G7 F6F6G7 G7 I9"I9"G7 F6F6H8!H8!H7#G6"F5!E4 E4 E4 E4 E4 C4D5 ?0B3C4?0?09*<-=.<-<->/?0>/;,;,=.=.<-=.?0?0>/?0?0?0?0?0>/>/=.=09,7*9,;.;.;.;.;,<-<-<-:+9*9*:+2%2%4'4'3&2%2%2%/$/$0%0%0%0%/$/$0%/$/$0%/$-"-"/$-".#2'%  '!.&.#-"-",!,!,!,!-"-",!+ + + **)&''&$	###$$$%%&	&	'
(	'
#"!!!	!	

>/>/=.:+8)8):+<-5(4'8+@1@1A2D5"D3!;*:)=,@/?.=,9(2!1$6)3&+.!9,>19,>-<+@/?.@/B1?.A0?.D3E4 @/?.C2?.7&>-?.D3H7#F6G7 I9"G7 C3E5E5F4I7!L:"K9!G5D4H8!K;$I9"F6D4D4D4D4F6F6E5E5F6F6F6I7!G5G5H6H6F6G7I9I7J8 K9!L:"K9!I9 J:!M=$N>%M=$M=$N>%P@'P@'N>%K;"M=$M=$L<#L<#L<#L<#L<#L<#J:!K;"K;"L<#L<#L<#L<#K;"O?&M=$L<#N>%O?&O?&O?&O?&N>%N>%M=$M=$M=$M=$L<#K;"H8!I9"J:#J:#I9"H8!I9"J:#I9"H8!G7 F6G7 G7 F6F6D4E5F6G7 H8!H8!G7 G7 G8!G8!H9"H9"F7 C4C4E6I8$F5!B1B1E4 F5!E4 C2C4A2;,>/A2>/>/7(9*9*9*9*:+;,9*6';,<-<-;,<->/>/>/?0>/>/>/>/?0?0?0<18-6+7,9.9.8-9.=.=.=.=.<-;,:+9*5(6)6)5(4'3&3&4'.#1&2'2'/$.#/$0%1&/$/$/$.#,!,!-",!-"0%% '!0%0%.#-"-"-".#.#-"-"-"-",!+ **+ &'( '$	""#"#$%%%%%(&	$"""! !A2?0:+6'6'8);,<-8+3&5(=.>/@1D5"F5#I:%?0?0D5 @19*7(8)7(6'7(:+=.=.=.>/@/>->-<+=,@/A0C2?.B1A0=,=,@/>-9(A0?.C2G6"F6D4E5D4B2E5F6G5H6 J8 J8 H6I9"J:#I9"E5C3D4F6F6C3E5G7 F6E5G7 G7 F6G5G5G5J8 J8 J9J9K: K9!L:"M;#M;#L:"K;"L<#M=$M=$L<#L<#N>%QA(QA(O?&L<#M=$M=$M=$M=$L<#L<#K;"J:!K9!L:"M;#N<$N<$N<$M;#L:"P>&O=%N<$O=%P>&P>&O=%O=%N>%N>%N>%N>%N>%N>%M=$L<#K;$K;$M=&L<%J:#H8!I9"L<%G7 H8!I9"J:#I9"H8!F6D4H8!G7 G7 G7 I9"I9"H8!G7 H9"G8!I:#K<%H9"C4B3D5G6"D3A0A0D3D3C2@/>-@/=,@/>-:)>->-=.<-;,;,;,;,;,:+;,;,<-<-=.>/?0?0>/>/=.=.=.>/?0@1;09.7,9.:/9.8-7,=.=.=.=.=.;,9*8)7*7*7*6)4'4'4'4'1&3(5*4)1&/$0%1&1&/$.#/$.#,!,!,!,!,!/$$
!(!.#2'/$-"-".#.#-",!+ ,!-",!+ *+ -"''( '%
#""$%%&	%%$$%$#""!7(7(8):+>/@1;,6':-4'4':+;,<-A2D3!C4?0B3F7"C4A2?0<-@1;,<-D5"G8%B3 A2E6#B1A0>->->->-A0A0A0@/?.?.?.=,<+<+@/?.C2G6"E5D4F6E5A1E5H8!H6 G5G5I7K9!L<%K;$G7 C3D4G7 H8!G7 F6H8!I9"H8!G7 H8!I9"H8!H6 H6J8 M;#N<$L;!L;!L;!M<"M<"M<"M<"M<"M=#M=#L<"M=$L<#L<#M=$P@'P@'O?&N>%M=$M=$M=$M=$M=$L<#K;"J:!K9!L:"N<$O=%O=%N<$L:"K9!O>$O>$O>$O>$O>$O>$N=#L;!O?&N>%N>%N>%O?&N>%N>%M=$N>'M=&N>'N>'K;$H8!I9"L<%H8!I9"J:#J:#I9"H8!F6E5K;$I9"G7 F6G7 H8!G7 F6E6E6H9"K<%J;$F7 E6H9"F5!E4 D3C2C2B1@/?.=,@/>-@/=,8'>-A0?0>/<-;,:+:+;,<-:+:+;,<-=.>/?0@1?0>/=.<-<-=.>/?0;09.9.;0<1:/8-7,<-<-=.<-;,:+8)7(6)6)5(3&2%1$2%2%3(3(3(3(2'1&0%0%1&.#-".#/$-",!-".#.!/$%"
(!.#2'0%-"-"-".#,!*+ ,!,!,!**+ -")!'&&'&# &	&	%%%%%%#$$#!	6)7*8+:-?2@3 :-2%9,6)9,>/=.>/A2B17(<-?0;,:+C4D5 :+>/=.<-=.?0B3 D5"F7$<+?.=,@/A0@/C2A0B1@/A0E4 C2>-;*=,B1B1E4 F5!C3D4F6E5B2F6I9"J8"H6 H6I7K9!K;$J:#G7 E5G7 I9"H8!E5G7 I9"I9"G7 F6G7 G7 F6J:#J:!L<#O=%P>&N=#L;!M<"M<"N=#M<"L;!M<"M=#M=#L<"M=$L<#L<#M=$N>%N>%O?&N>%M=#M=#N>$N>$M=#M=#L<"L<"M<"N=#N=#N=#N=#M<"L;!L;!N=#O>$P?%O>$O>$O>$N=#L;!O?&O?&N>%O?&O?&O?&O?&N>%O?(N>'N>'O?(M=&I9"I9"L<%J:#J:#I9"H8!G7 G7 H8!I9"J:#H8!E5D4D4E5E5D4F7 G8!I:#J;$I:#F7 F7 G8!E4 F5!G6"F5!D3B1@/?.B2A1<,?/?/;+?/>.?0<-:+9*9*8):+;,:+9*;,=.>/>/>/?0?0>/=.<-<-=.>/>/;0:/:/<1=2:/8-8-;,<-=.<-:+9*8)8)6)6)5(4'2%2%2%3&2'1&1&1&1&1&/$.#0%.#-".#/$.#-"-"0#/"1$&$! )".#2'0%.#-"-"-",!*-"-",!+ ***+ *"'%
%
''# $$$$$%%%$	$
$
"  !
=0</9,6)7*;.:-5(3&4'9,=.:+<-=.;*7(8)8)4%3$:+=.8)7(:+;,9*:+>/A2?08'<+:)?.A0>-C2@/>->-A0C2B1@/>-=,@/B1F5!D3@0C3G7 E5D4F6H8!K9#K9#J8 J8 K9!J:#J:#I9"G7 H8!I9"H8!E5G7 H8!H8!G7 F6H8!I9"H8!L<%L<#M=$P>&P>&O>$N=#Q=$M<"O>$P?%M<"M<"M=#O?%O?%N>%N>%N>%L<#K;"K;"L<#N>%O>$O>$P?%P?%P?%P?%P?%P?%P?%O>$N=#N=#M<"L;!L;!L;!O>$Q@&Q@&O>$O>$P?%Q@&P?%O?&O?&O?&O?&P@'P@'O?&O?&O?(M=&M=&P@)O?(K;$J:#L<%K;$J:#I9"G7 F6G7 I9"K;$I9"G7 E5C3B2C3D4D4H8!K;$K;$I9"G7 G7 F6E5F5!F5!F5!E4 D3B1A0@/C3@0:*?/A1=-?/>.B3@1?0?0?0=.>/@1;,;,<-?0?0>/=.>/@1?0>/=.=.>/>/?0</;.;.=0=0;.:-;.;,=.?0>/:+9*:+<-7*7*6)5(4'3&3&4'0%/$/$0%0%0%.#-"1&.#-"/$0%/$.#-"/".!0#'%"!*#/#0%/$.#-"-",!,!-".#-",!,!,!+ + *)!'%
%
&&$	"##$%%%$$"	     !8+9,6)1$1$6)8+7*3&6);.=.9*<->/;*<-3$5&<-:+4%6':+6%:)?.B1B1@/>-=,<+?.9(<+;*8'>-:)9(<+=,<+<+@/A0?.9(>-C2A0>.E5K;$J:#G7 F6G7 K9#M;%M;#K9!I7K;$K;$J:#G7 F6G7 H8!G7 H8!J:#J:#I9"I9"L<%N>'N>'M=&K;"L<#O=%P>&P?%S?&UA(M<"Q@&SB(P?%M<"M=#P@&RB(O?&P@'O?&L<#I9 I9 K;"M=$P?%Q@&Q@&RA'RA'SB(SB(SB(Q@&P?%O>$M<"L;!L;!L;!L;!P?%RA'RA'O>$P?%RA'TC)SB(O?&O?&O?&O?&P@'P@'P@'O?&N>'K;$L<%P@)P@)L<%K;$L<%H8!I9"J:#J:#H8!H8!I9"J:#I9"G7 E5C3B2C3E5F6E5I9"J:#G7 F6H8!I9"H8!F5!E4 D3C2C2B1A0@/?/?/<,A1@0;+@0B2?0=.>/?0>/<-<-=.>/=.>/A2A2?0>/?0@1?0?0>/>/?0?0@1?0=.<-=.=.<-=.?0;,>/@1?0;,9*;,>/5(5(5(4'3&2%2%3&/$/$0%0%0%/$.#.#2'/$-"/$0%/$.#-"- +.!%
$!!)#."
/$/$/$.#-"-".#/$.#,!+ ,!-".#-",!( '&%
%
%
$	$	$%&	'
&	%#"   	"<,6)8+.#,!4'4'<,@-:):+;.;.9,</1$)#,$7,5*5)(.'0)7&>/8,8,>2:+D3B0=.<-C48):+B3D5 B3E56&?/:*F67'=-?/A1<,?/C3@0C3I9"I9"H9"E6H8!D4H8K;"M;#L:"L:"L:"L:"L:"K9!I9 I9 J:!I7!F4F4J8"L:$K9#J8"K9#M;#K9!L:"N<$M;#O=%Q?'N<$O>$P?%Q@&Q@&O>$N=#O>$O>$N>$O?%N>$K;!J:!L<#K;"I9 M=$L<#K;"L<#N>%O?&P@'P@'N<$L:"K9!K9!M;#O=%P>&P>&P?%P?%O>$P?%RA'TC)VE+WF,R@(P>&O=%P>&R@(RB)QA(O?&QA(O?&N>%M=&M=&M=&L<%K;$N<$M;#K;"L<#M=$M=$J<"G9J:#I9"F6C3D4G7 G7 E5F6F6H8!J:#G6"C2B1D3!E4 C2B1A0B1C2B1A0C3B2A1@0?/>.?/@0<-<-<-;,;,<-<-<-;,=.>/?0>/>/>/?0?0?0>/=.>/@1@1>/>/=.<-=.?0?0=.;,<-?0A2>/<-:+9*7(6'7(8)5(3&1$2%2'0%1&1&0%1&3(2'0%0%/$.#/$.#-".#0%+ +#)$#!!
% *".#1&0%/$,!+ + -".#-"-",!,!,!,!,!,!*)'
&	&	%%%'
%$##$$$!
 "! <-3&5(2'4)8+5(<->-A2<-4'?4 @3 3&0#/"5)2#;*A0@06'."
8';*=.>2."A2B39(?0<-D5 C48)C4:+<-6&=-A1E5C3A1:*:*<,>.F6F6C3J:#A1F6D5K;$C3G7F6O=%J8 O=%K9!L:"L:"L:"L:"J:!J:!J:!J8 H6I7K9!L:"J8 J8 K9!O=%M;#N<$O=%M;#N<$P>&O=%M<"O>$P?%Q@&P?%P?%P?%P?%M=#N>$M=#K;!K;"L<#L<#K;"M=$L<#L<#L<#N>%O?&O?&N>%N<$M;#M;#L:"L:"N<$P>&R@(N=#O>$Q@&SB(UD*TC)TC)SB(Q?'Q?'P>&Q?'R@(QA(P@'O?&QA(P@'O?&N>%N>%M=&M=&L<%N<$O=%N>%O?&O?&N>%L>$K=#J:#J:#I9"E5E5G7 H8!H8!H8!G7 G7 F6D3B1C2F5!G6"F5!E4 D3D3E4 D3C2@0@0@0?/?/?/A1B2>/>/=.<-<-=.>/>/<-=.?0?0>/>/>/?0>/>/=.<->/@1@1>/?0>/=.>/?0>/<-;,9*<-=.<-;,;,:+8)7(8)8)5(3&2%2%2'0%1&1&0%1&2'1&/$0%/$/$/$.#,!-".#+ +#*#% #
&+#.#1&0%/$.#,!+ + + -"-",!+ + ,!,!-"-"+ )('
'
'
&	&	%$$%%$$!	 $#!<-1$3&7,<1</7*=.B3 :+</;0-"1%0$# L:&wbO�wb��p��o�{f�~h�~h�nZQ?+;*A2B3A22#?0<+=,;*4#9(;*9(=,:*>.0 	B2G7 =-E5E5?/D4B2;+<,:*D4C3C3L<%B2N>%A1>,H6P>&H6I7J8 K9!L:"K;"K;"K;"K9!J8 K9!K9!J8 I7J8 K9!Q?'O=%Q?'Q?'M;#N<$P>&O=%N=#N=#O>$P?%Q@&Q@&P?%O>$N>$N>$M=#K;!K;"L<#M=$M=$M=$L<#L<#M=$N>%N>%M=$M=$N<$O=%N<$M;#L:"M;#Q?'TB*SB(RA'P?%P?%P?%Q@&SB(UD*Q?'Q?'R@(R@(R@(QA(P@'O?&QA'P@&O?%O?%O?&O?&N>%M=$L:"N<$O?&O?&N>%M=$L>$M?%J:#L<%K;$I9"G7 H8!J:#K;$L<%K;$J:#J:#H7#G6"H7#K:&H8!G7 F6E5E5E5D4C3?/?/?/?/?/@0B2C3A2?0>/=.=.>/?0A2=.>/>/>/=.=.=.>/=.=.=.<-=.@1@1>/A2?0>/>/>/>/<-:+:+;,<-;,;,<-:+8)7(8)8)5(3&1$2%1&0%1&0%0%0%1&0%.#.#.#.#/$.#,!,!.#+ +#*#&!% ' +#/$.#.#.#-",!***.#-",!+ + ,!-".#.#-"+ )(('
&	%%%%&	&	%$#!!#	!! :+4%4'9,>1>1<-<-:+8+:-2'=21%1"ufQ��s��p��v��n�xc�}e��w��l��p��umWE5?0B3<->/@/D37&RA-I8$<+D3;*@0hXAXH1[K4D4E5]M6WG09)C3QA*SC,I9"]M6^N7^N7dT=F6E5R@(cQ9fT<G5Q?'E3F4H6K9!L:"L<#L<#L<#K9!K9!K9!K9!I7I7J8 L:"P>&P>&R@(R@(M;#M;#P>&P>&Q@&P?%O>$O>$P?%P?%O>$N=#N>$N>$M=#L<"L<#M=$M=$N>%M=$M=$M=$M=$M=$M=$M=$M=$N<$N<$N<$M;#M;#O=%Q?'R@(SB(RA'O>$N=#M<"O>$RA'UD*P>&Q?'R@(R@(Q?'P@'P@'P@'QB%QB%P@&P@&P@&P@&O?&N>%K9!M;#N>%N>%M=$M=$L>$M?%L<%L<%L<%J:#I9"I9"K;$L<%H8!I9"K;$L<%K;$I9"G7 G7 I9"H8!G7 F6E5E5D4C3A0A0@/@/?.?.A0B1A2@1?0>/>/?0@1A2@1@1@1?0>/>/>/?0=.>/>/=.=.?0@1>/@1?0>/>/>/=.<-:+=.>/=.<-=.=.;,7(7(8)8)4'2%1$1$1&1&1&0%0%0%/$.#-",!+ -"/$/$-"-"/$,!-",$)"(!*".#0%*+ ,!,!+ ***-"-",!+ ,!,!-".#-"+ *(('
&	%%%$%%&	%$$$%%#!!$"! 9*9*6)8+;.</>/<-5(</9,5)1%6'��r��q�~f��w�s[K9#=+:*=-�s\��x��k��t��rH6 6%D5 ;,B1>-8'�}im\H9(?.@/��waO9G5�oYZH2?-WE/���}kU6$vdNF4D2p^H��l?-qaJZJ3B2�~fI7weM\J2I5H6H6I7L:"N<$M=$L<#K;"K9!L:"M;#L:"K9!K9!M;#N<$P>&O=%R@(Q?'M;#M;#P>&P>&RA'P?%N=#N=#O>$P?%P?%O>$P@&O?%N>$M=#M=$M=$M=$N>%P>&O=%O=%N<$M;#M;#N<$O=%O>$N=#M<"N=#Q@&RA'Q@&O>$L;!O>$Q@&RA'RA'Q@&P?%P?%O>$P?%Q@&Q@&Q@&P@&P@&P@&QB%QB%P@&P@&P@&P@&O?&N>%M;#M;#M=$O?&O?&O?&N@&N@&M=&L<%K;$K;$K;$K;$K;$J:#H8!K;$M=&N>'N>'L<%J:#H8!H8!H8!H8!G7 F6E5D4D4B1B1A0@/?.?.@/A0@1@1@1@1@1@1@1@1C4!C4!B3 A2A2A2A2@1?0@1@1>/>/?0@1?0?0>/>/=.=.=.<-<-?0?0>/=.=.=.;,8)9*9*8)5(4'3&3&2'1&1&1&1&0%.#.#.#,!,!-"/$/$-"-"/$.#.#/$,$,$.#/$1&,!,!-",!+ + + + ,!-"-"-"-"-",!,!+ *)(('
&	&	&	%$#$$%%'
%$$#!!""! :)=.:+8,8,;,>/;*8)A25).
*�h��o��m��r�wa0 	G8!E6<-L=(9*~jR��n��u�|g��pK9%4#:+:*5%@0�qZ��n7'4$eU>��n<*<*G5;)@.M;%p^H��r[I3P>(M;%5#cQ;��o`N8RB+B0F4�|d��kcO7K7I5M;#M;#M;#M;#O=%M=$L<#J:!L;!N=#N=#M<"M<"O>$P?%O>$O=%N<$P>&Q?'M;#N<$Q?'P>&Q@&O>$N=#M<"N=#P?%Q@&Q@&P@&N>$N>$O?%N>%M=$M=$N>%P>&P>&P>&O=%N<$N<$O=%P>&P?%N=#M<"O>$SB(TC)Q@&N=#M<"O>$Q@&Q@&Q@&P?%Q@&RA'Q@&Q@&Q@&Q@&Q@&P@&P@&P@&QA'QA'P@&P@&P@'O?&N>%L<#L:"M;#M=$N>%O?&O?&M?%M?%N>%L<#J:!K;"M=$L<#J:!I9 J:#L<%L<%L<%L<%L<#L<#J:!F6F6F6F6D4C3C3C3B1B1B1A0@/A0B1C2@1@1A2A2A2A2@1@1B3 A2A2@1A2@1@1?0?0A2A2?0>/?0?0?0>/>/=.=.=.=.=.>/=.>/>/<-<-=.<-9*;,:+:+7*6)6)5(4)2'2'2'2'1&/$.#/$.#.#/$0%0%-"-".#0#/$/$0%/$.#/$1$0%0%0%/$.#,!,!,!-"-".#.#.#-"+ + + *)))('
&	&	%$##$$$(%#"""! ;*=.9*;/;/9*<-:)A22#5&.	�v_��s�h��m��uVD.B2B3;/D8"2#7(O>$��v�~f��r��r�o\1C2<*:(aO9TB,��u]K5;)ucM��j:(ZH2�v`o]G>,E3L:$VD.����t^>,D2bP:�|fcQ;aO9>,F4R@(vdL��xnZBJ6P>&N<$M;#M;#N<$M=$K;"J:!M<"N=#N=#N=#N=#P?%P?%N=#P>&N<$P>&P>&N<$O=%Q?'O=%O>$O>$O>$O>$O>$O>$P?%Q@&O?%N>$N>$P@&P@'N>%N>%O?&P>&Q?'R@(R@(Q?'P>&P>&Q?'Q@&P?%P?%Q@&SB(TC)RA'P?%RA'RA'Q@&O>$N=#O>$SB(VE+UD*SB(RA'Q@&RA'QA'QA'P@&QA(QA(P@'P@'O?&N>'L<%K;$K9!M;#N>%N>%N>%M=$L>$M?%N>%L<#L<#M=$M=$J:!I9 I9 F6F6F6D4E5G7G7F6E5F6G7G7E5D4D4D4C2C2C2B1A0A0B1C2A2A2A2A2A2A2A2A2@1?0?0?0@1@1>/=.>/@1@1>/>/>/?0?0?0?0?0>/>/>/>/?0<-=.>/<-;,<-<-;,;,:+:+7*7*7*7*5*3(2'3(3(2'/$/$1&0%0%0%1&0%.#-"/$1$0#0#1$1$/"/"0#1&1&2'2'0%.#,!+ .#.#.#.#-",!+ + ,!+ *))('
&	'
&	%$$$$#%	%	$##"! "! 
=,<+7(>2?38);*9(>-<+<+P?+��o�|g��t�|g�|g;&A/8'C4=.?0H7%@0�u[��p��k��k��x[F36$<*>,�oYO='{iS�~hA/K9#��xM;%9'��zeS=8&VD.aO99'kYC��qC1B0o]G��nA/bP:o]GJ8"�rZA-�zbvbJI5N<$L:"K9!L:"M;#M=$K;"J:!L;!M<"M<"L;!N=#P?%O>$L;!R@(O=%P>&P>&O=%P>&Q?'N<$O>$P?%Q@&Q@&O>$N=#N=#O>$N>$M=#N>$P@&QA(O?&N>%P@'O=%Q?'SA)TB*SA)Q?'Q?'P>&RA'RA'RA'RA'SB(SB(SB(SB(Q@&RA'TC)SB(RA'Q@&SB(TC)XG-UD*RA'Q@&RA'RB(QA'O?%QA(P@'P@'P@)O?(M=&K;$J:#L:"O=%RB)QA(O?&M=$N@&PB(M=$M=$N>%O?&L<#I9 H8J:!H8!J:#J:#I9"I9 K;"K;"I9I9 J:!K;"K;"I9 H8H8I9 E4 E4 D3C2A0A0B1C2B3B3A2A2A2A2B3B3A2A2A2A2B3 B3 @1>/=.?0@1>/=.>/?0?0@1@1@1?0>/>/?0@1<->/?0=.;,;,<-;,9*9*8)6)6)6)6)4)3(3(3(4)3(0%0%2'0%0%0%1&1&/$/$0%1$/"/"1$0#.!- /".#0%2'2'1&.#,!+ 0%/$.#-",!+ + + ,!+ *)('
%$'
&	&	&	%%#"!""!!  9*;,<-;,:+;,;,9*=0C48(zfN��m��p��n��ryiR<,A1?.<+?09*?0<-tdM��q��n��k��l�u_9'9*bR;o_H<*k[B|lUPA*9*O?(~lVq_IiWAO='A/o]GrbKA2>/l\EE5K;$saKvdNo]G}kUXF0E3aO9m[EueNI:#K<%L<#M=$M=$N<$M;#L:"M;#O=%P<#O;"O;"O;"O;"P<#Q=$Q=$P@&O?%N>$N>$P@&P@&O?%M=#P<#R>%S?&R>%S?&T@'S?&Q=$T@'R>%R>%T@'UA(T@'S?&S?&O?%N>$O?%SC)UE+TD*RB(RB(Q@$Q@$P?#O>$O>$RA'TC)TB*RB)P@&QA'SB(Q@&T@'VB)VB)WG-SC*N@&M>'L=&L>$P@'UE+XC(VA&T>&Q=%O=%N>'K;$H8!K<%M=$O=%O=%N<$N<&L;'K:(N@&OA'N?(L=(J;(I:'K:(L;+F7$F7$G6"K9#K9#I7H8H8J:!G9F8H:I; I9I8K7G6"G6"F5!E4 C2 @/B1E4"E4"D3!D3D3D3D4B2A1C4C4C4D5 C4C4B3B3A2A2@1?0>/?0@1A2?0?0?0?0@1@1@1@1>/>/=.=.=.=.<-<-<-<-:+5)5)6*5)1&1$1$1$1$1$0%/$/$0%0%/$/$1&2'0%,!0%/$/$/$/$.#,!+ .#1&1&.#,!,!,!-".#-",!,!-".#+ ',!,!+ **)(&	%%&	&	%%%	$!"#	"!  !@1B3 B3 ?0=.=.<-;,</C4D4�{c��l��o�j��wn^G<,@0>-=,?0;,?0<-jZC��o��j��i��m�~hJ8"?09)5%<*13#>/>/;)9'8&;)G5C1:(7%=.E6=->.<,E34"=+:(>,B0B-?-?/B2J;$I9 J:!L<#M;#L:"K9!L:"L:"Q=$Q=$P<#Q=$R>%S?&T@'UA(RA'TC)VE+UD*SB(RA'Q@&P?%R>%S?&S?&R>%R>%S?&S?&R>%S?&R>%R>%T@'VB)UA(T@'T@'Q@&P?%O>$Q@&RA'Q@&P?%P?%P?#RA%RA'Q@&RA'TC)TB*SA)P@'M=#P?%P?%N=#O>$Q@&R>%QA'N>%L=&K<%J;$J;$M=$P@&XD+YE,YE-UC+R@(O?(L<%K;$K;"QA(VD,TB*Q?'N>'L;'I:'I='G;%D8"B6 C7!F7 G8!G9D8 G8!I9"K9#K9#J8"L:$N>'M=&K;$I:#I:#J;$M=&N<&L:$J:#H8!H8!G6"E4 C2E4"G6$E4"D3D3E4 E4 E5D4C3D5 D5 D5 D5 D5 D5 C4B3A2A2@1?0?0?0A2B3 A2A2A2A2@1@1?0?0?0?0?0?0>/>/>/=.<-<-:+6*6*7+6*2'1$1$2%2%2%1&1&1&/$0%1&0%0%1&0%.#/$/$.#/$/$/$-",!-"0%0%/$-"-",!+ ,!-".#,!,!,!+ )
,!+ *))('
&	%%%$#""!!""    ?0@1@1=.<-=.=.<-=0?0O?(��t��j��o�~i��z`P9=->.<+>->/=.=.?0_O8��r��j��k��n��s[I3J;&RC,TD-VD,P>&\L5YI2ZK6N<&6$G5TB,7%bP:WE/SA+P@)^N7]M6`P9UE.WE/L:$A/I9"YG1UC-]H3YG1bP:YI2I:#H8I9 K;"L:"L:"K9!K9!K9!M9 L8L8M9 O;"Q=$R>%R>%R>%WC*[G.YE,T@'R>%R>%Q=$S?&S?&S?&Q=$Q=$S?&T@'S?&R>%Q=$R>%UA(WC*VB)UA(VB)TC)Q@&P?%P?%P?%O>$O>$P?%O>"Q@&SB(SB(SB(SA)R@(P>&P?%O=%Q?'R@(N<$L<#M=$J:!I9 J:!J;$J;$L=&O@)QA(RB)O?&P@'QA(P@'M=&K;$N>'RB+QA(WE-WF,P>&K9!J:#J;&H;(@3#@3#>1 :-6*6*:.=3:0=1B3E4 D3D2F5!J9'N<(N<(K:&I:%J;&O>*N=)K:&K;$I9"G7 H8!G7 F6G6"H7#E4 E4 E4 E4 F5!F6E5D4D5 D5 E6!E6!D5 D5 C4B3B3 B3 A2?0?0@1B3 C4!B3B3B3B3A2@1?0>/?0?0?0>/=.=.<-<-<-<-;,8,8,8,7+4)2%2%2%2%3&2'2'2'.#1&2'1&0%0%0%/$/$.#.#/$/$/$.#-"-"/$/$.#.#.#,!*+ -".#-",!,!,!+ ,!+ *)(('
&	&&%%$#""""" =.>/=.<-;,<-<-=.@3 9*SC,��v�g��p��l��wXH1@0@0=,@/?0@1=.@1WG0��u��k��l��k��vbP:5&�v_��w��p��x|jT�w`��r��k�iA/@/E4 n\F��o��w��}�xa~lV�oY�~h��zeS=:(QA*{iS��r��w��q��jq_ID4I9 I9 J:!L:"L:"K9!K9!K9!N:!N:!N:!P<#R>%T@'S?&S?&S=%YC+\F.XB*T>&R<$Q;#P:"S?&T@'S?&Q=$Q=$S?&T@'S?&Q=$Q=$S?&VB)WC*UA(UA(UA(TC)RA'Q@&RA'RA'RA'RA'TC)P?%RA'TC)SB(SA)SA)R@(P>&UA)R>&N<&K9#E5G7 J;$I:#I9 K;$I:#H9$H9$K<%L<%J:!K<'K<'L=&L=&H9"E5H7#L;'K;"R@(TB*P>&K;"F7 >16). +'
$$#"$
4+6-;0>1 ?0<->-A1I7#K:&M<(J9%I:%L=(K<'G8#K;"H8G7H8H8G7G7 H8!G6"F5!F5!F5!F5!F5!E4 E4 D5 D5 D5 D5 D5 C4B3B3B3B3A2?0?0@1B3D5 C4C4B3B3A2A2A2A2?0?0>/>/=.<-;,;,<-<-<-9-8,7+6*3(3&3&2%2%2%1&1&2'.#0%2'1&0%0%/$,!/$/$/$/$/$/$.#-".#.#-"-".#/$-"*+ -".#,!,!-"-",!-",!**))(((	''
&	&	&	&
&
###" C4!B3 A2?0>/<-<-=.@3 9*[K4��t��i��m��p��sZJ3C3D4A0D3B3C4A2@1SC,��t��i��j�h��waO9=.3$yiR��m��tE31	zhT��k��uqaJ<+J9%3#`N8��j��s_M7@.E3=+�}gvdND2D49'�nX�}h��qO:%D2M;%J:!J:!J:!J8 K9!K9!K9!K9!N:!N:!O;"R>%T@'T@'R>%P<#WA)[E-\F.XB*U?'U?'T>&R<$S?&T@'T@'R>%R>%T@'T@'S?&Q=$Q=$S?&VB)VB)T@'S?&T@'TC)SB(TC)UD*UD*TC)TC)VE+TC)UD*UD*SA)SA)TB*SA)Q?'N:!M9!M;%K9%F5#F7"H9$B6L<%J:#E6!A2>/>/>.;+<-<-@1E6D5B3E6#M<,O>*O?(M=&J:#G7 C49,0#& 	 
 
   	,"6-<1=1>2>/E6!K<'K<%K<%K<%K<%G;#N>%K;"J:!K;"K;"I9 H8H8I8$H7#G6"F5!F5!F5!E4 E4 D5 D5 E6!E6!D5 D5 C4B3B3B3A2@1?0@1B3D5 C4B3B3A2A2B3C4D5 A2A2@1?0?0>/=.=.<-<-<-9-7+5)4(3(4'4'3&2%2%0%0%0%/$0%1&1&2'1&.#)
0%0%0%0%/$.#-"-"0%.#,!+ -"0%/$,!-"-",!+ -"/$.#+ -",!+ **))((	(	'
&	&	&	&
&
!"""!	@1?0?0?0=.<-<-=.>1>/]M6��t��l��k��p��s`P9?/B2A0B1B3B3C4A2XH1��s�h��j��i��z`N8B33$hXA��o��wWB-?*bP<��v��hnZ>/G8#?._M5��v��tiT?A/M;%:(Q?)ZH28&E55#�mX��k��y]H3J5 H6 J:!I9 H8I7J8 J8 K9!J8 L8M9 N:!Q=$S?&S?&P<#M9 YD)\G,[F+VA&U@%WB'WB'S>#S?&T@'T@'S?&S?&T@'T@'S?&R>%R>%S?&UA(UA(S?&R>%S?&VB)VB)WC*XD+XD+VB)VB)WC*SB(TC)R@(P>&O=%P>&P>(O='WC+O='I7#?.<+C3#M>+MA+A1=,9*9*;,<->-@01 -	.
1"1"0!8(C3&F9(F6&G6$H7#F5!A0:+4'*))( 	           ' ,$4)>1C6#E9#E9!G;#H<"M>'L=&M>'N@&M?%J<"H: H: K;$I9"H8!G6"G6"G6"F5!F5!F7"G8#G8#G8#F7"E6!D5 D5 B3B3B3A2A2A2C4D5 B3B3A2A2B3C4D5 E6!@1@1@1?0>/>/=.=.=.<-;,9-7+4(3'3(5(4'3&2%1$0%0%0%0%0%0%0%2'2'.#)
0%1&1&1&/$.#-"-"0%/$-"+ -"0%0%.#.#-",!+ -"/$.#+ + ****)('
(	'&	$##"" !!	<-;,<->/>/<-=.?0>1@1N>'��n��n��k��n��uiYB:*A1@/?.A2>/C4A2bR;��s��k��l��j��xVD.>/2#~nW��w��jN9$4
ydQ��p��tXG3>/F7$<+aO7��q��tkVA2XF0mW=+=+J8"O?(A/zeP��s��o[E0I4S>)I9 H8H8J8 L:"M;#L:"L:"S?&R>%R>%UA(WC*XD+UA(S?&VB'YE*YE*T@%S?$VB'VB'R>#T@'UA(T@'R>%R>%T@'T@'T@'S?&S?&T@'UA(UA(S?&S?&UA(UA(UA(WC*XD+WC*UA(UA(WC*RA'R@(P>&M;#L:"M;%N<&M;%E3G5I8&G6&@. =-9*1"2!-+	1"7(9*>-D3>+:(8(6&* 
 $"
)8(C2"B17&1 2!3"7&=+;(+ 	              #."5(7*:.=3F7"G8!K<%M>'M>'K=#J<"K=#L<%K;$J:#I8$I8$I8$H7#H7%G8#H9$H9$H9$G8#F7"E6!E6!B3C4C4C4C4C4D5 E6!B3B3B3B3C4C4C4C4?0?0?0>/>/=.=.=.=.<-;,9-6*3'3'4)6)5(4'3&2%1&1&1&1&1&0%/$0%1&1&.#0%1&1&1&/$.#.#.#/$/$.#-".#0%0%/$.#.#-",!-".#.#+ *****)(&	(	'%$#"""   B3 A2B3 C4!B3 ?0?0A2@3 >/9)�~f��l��n��l��vueN:*D4B1?.B3=.E6!>/gW@��s��m��l�h��qG5>/5&ueN��i��t�oZ�t_��x�pXM9!@/@1>/E4 cO7��q��q�mXxcN��qsaK8&L:$@0C3A/}hS��s��rU?*O:%L7"H8H8I9 L:"N<$O=%N<$M;#R>%Q=$P<#R>%UA(WC*UA(S?&T@%YE*ZF+UA&S?$VB'VB'S?$VB)VB)T@'Q=$Q=$S?&UA(UA(S?&S?&T@'VB)UA(S?&T@'VB)UA(UA(VB)XD+WC*VB)WC*YE,TB*TB*R@(O=%N<$O='O='N<&L<"D48')	 !'&-% " )	-,
/
6%A,F1O='Q?)?.#     #"  ,	=,E4"D2H3L7"D31$ 	              "&	*/$<-?0E6!J;$K<%J;$J<"M?%M=&L<%J:#J9%J9%J9%J9'J9'G8#G8#G8#G8#G8#F7"E6!D5 C4D5D5D5D5D5E6E6B3C4D5 D5 D5 B3A2@1@1@1@1?0?0?0?0?0=.;,;,9-6*3'4(6+6)5(4'3&3&2'2'3(1&2'1&/$.#1&3(4)/$0%1&1&/$.#.#/$.#/$/$.#/$1&0%/$-"/$/$-",!,!-"-"+ + + ,!,!+ ('
(	(	&	%%%%	%	   ##"
!	B1A0>->-A0D3@/;*<-F64$q_I��u�}e��w�h�r]B0F7 9-A5J;&G4#E04&yiP��v��l��i��tzhR>.H<$/ 	ueN��w��oeU>WH1|pX�~f�rZA1G7B2;+fT<��r��o|jT^L6�oY}kU@.D2C1E09$�lW��j��r`L4E1Q=%F4J8 K9!K9!L:"N<$F4P>&O>$M<"M<"Q@&UA(T@'S?&S?&UA(UA(\H/[G.WC*UA(Q=$UA(Q=$T@'T@'P?%P?%TC)TC)RA'VB)UA(WC*ZF-XD+T@'T@'XD+T?$\G,XD)UD*UD*RB(TD*TD*RC0SB.WC+WB'VA&XD+UC-L;)J8$:)&   
     ,6!G-O9">,+	           #,5%D4$D3!:))
  "                  !3(>2F7 E5D2I7!K;$J:#L:"L<#L=&J>&H<$I:#J:#L<%I9"I9"J:#I9"I9"G7 E5D4C4B3D5 F7"D5 @1A2F7"@/D3F5!D3C2C2D3B1D5"C4!B3 A2A2@1>/=.:.<-=.=.;,5(4'5*5*7,7,4)2'2'2'1&4'4'2'1&1&1&/'0(0%0%0%1&2'2'0%.#4'1$1$3&3&1$/"/"-"-"-"-",!,!,!,!**)))('
%%%%&	&
%	#!!"$#!  !! C2B1?.>-?.B1B1@/D5B2C3G5��u��p�ya��t��rB29-C9 9.<0<+D2C3�{c�w_��q��t��mYI2:+?3:+zhR��m��pP>(4%F:"��o��p�x`8(A1<*XF.��t��tjXB2 
UC-�oY6$H6 F4N9$F1ydO��n��rO;#T@(N:"G5F4J8 Q?'F4M;#P>&O=%N=#M<"M<"Q=$R>%R>%T@'WC*\H/VB)VB)UA(VB)WC*Q=$Q=$T@'S?&R>%Q@&Q@&Q@&RA'SB(UA(T@'UA(VB)T@'P<#Q=$UA(VA&\G,WC(WC(VE)TC'XG+XG+SA)Q@&WF,YH,RA'I7G5D31 #           &	8&G3M6&C.)       	     	  /?.E3I7!L:&E2!8&(
                   	  +"=2 H9&K:&L<%L<%K;$O='O?(M=&G8#G8#K<'L;'I8$G7 H8!I9"J:#J:#I9"H8!G7 D5 D5 D5 E6!C4B3B3D5 B1D3D3B1A0B1B1A0B3 B3 A2A2A2?0>/=.8,:+;,;,:+5(5(5*4)6+6+4)2'2'2'1&4'3&1&1&1&1&/'/'0%/$0%1&3(4)2'1&2%0#0#2%3&1$0#0#-"-"-",!,!,!,!,!*))(('
&	%&	%$##$$$#"!  !?.@/?.=,=,?.@/@/D3@/E55#{iS��m��s�g��waR;>2I?&B7!J>(A2=,]K3��w��q��o��m�oY2"A2A27'zhR��q��uSA+D45&��h��i��s^L4D2A/jV>��p��qhV@D2@.>,;)��pSA+D/;&�q\��q��lS?'N:"K7S?'L8 �x`K7O;#K7K7WC+N=#O>$P?%S?&S?&S?&UA(ZD,\H/UA(UA(T@'XD+ZF-UA(UA(XD+S?&R>%T@'RA'O>$P?%UD*XD+VB)VB)WC*UA(R>%S?&VB)YE*]H-YD)\G,[G,XD)\H-\H-XC$WF(UE+J>&D8"B6 8'#  
  	 	         #<*V@(Q;-C0%  
          9$G2Q;$V@)S=(I4#;%  	                        .%B5%M>+N>'K;"J5 L:$N>'M<(I:%F7"H7%J9'H8!I9"J:#K;$K;$K;$J:#I9"F7"F7"E6!C4C4D5 D5 C4H7#G6"D3B1A0B1C2B1@1@1@1@1@1?0>/<-9-:+:+;,:+5(5(6+4)5*5*3(2'2'2'1&3&2%1&0%0%0%.&.&0%0%0%2'3(4)2'1&1$0#0#1$2%1$0#0#-"-"-"-",!,!,!,!*)(('
'
&	%'
%$###""#!  :);*<+=,>->-=,<+<+9(@/F6=+�wa��n��s��n��qI9"@1>/<,I7!>,�u]��m��k�yd�|gD4>/?3K;$/wbM��w��uL7"6$G7 ��l��k��vR@*H6 :(`K6��w��wkYC:(D2?-R@*��oVD.R=(B-s^I��q��pT@(J6M9!A-r^F��mVB*T@(M9!J6Q=%M<"Q=$T@'VB)VB)V@(V@(WA)VB)T@'YE,XD+VB)VB)S?&WC*WC*T@'S?&T@'T@'P?%Q@&SB(XD+WC*XD+YE,XD+VB)VB)XD+XD+ZF+ZE*]H-ZE(WB'[G,YE*^I*Q@$H<&>7%(" #                 
  
 6$P:"O8&K6%&     
 	         -@*N6\D*gO5cJ4W>*C,4!&                       !3'A4!K<%I7!G5H8N>%M=$F7 G8!M>)K;$L<%L<%L<%L<%K;$J:#I9"F7"H9$F7"C4C4F7"F7"C4J9%H7#E4 C2C2D3C2B1?0?0?0@1@1?0=.<-=1=.<-<-:+6)6)6+4)5*5*3(3(3(3(2'2%2%1&1&0%0%.&.&2'1&1&1&2'2'0%.#1$1$0#0#0#/".!.!.#.#-"-"-"-",!,!+ *('
'
'
'
&	%%%%$"  !""  ;*:):)=,?.@/=,;*8'=,A0>-H8!A/�r\��q��n��r��k`K6P;&\G2^I4��m��o��k��y��nE3?.<-?3G5VD.��m��l��tzhRP>(�oY��y��{p^HC1E3SA+�oZ��n��n�zd_M7WE/m[E��p��xYG1E0ZE0�~i��s��o�rZ_K3dP8zfN��p��kUA)Q=%O;#O;#J6P<#Q=$S?&UA(XB*YC+WA)U?'VB)VB)[G.WC*R>%O;"L8R>%T>&V@(UA(S?&S?&T@'RA'O>$UA(UA(WC*YE,YE,XD+WC*XD+VB)VB)WB'YD'U@%S?&YG/UC+J:#C6#/'   
                     

*>,N8 O7N5!5	   -1       #4M8#WA*[C+`F-aG.Z@)Z?*X?+;%%    	                            (?4"N?(J;$H8K;!N?"N>$M?$M?%M=&M=&M=&M=&L<%K;$J:#J:#G8!H9"G8!D5D5G8!H9"E6H7#F5!D3D3D3C2B1A0?0?0?0?0@1?0>/<-=1=.<-<-;,7*6)6+5*5*5*4)4)5*5*3(3&2%1&1&1&1&.&.&3(2'1&2'2'1&/$-"1$1$1$0#/"/"/".!.#.#.#.#.#-"-"-",!+ )((('
'
$$$%$# !$$! @/=,<+>-@/A0@/@/B19(G6"A0?.E5E5iYB�j��q��x��u��v��n��r��o��w��r_M7>,?.@/J;&E6!D2�q[weOzhR�oYzhR�wa~lVgR=P>(A1?/;+~nW{iS�lWmW|jT�wa�u_�nX�oYzhRK9#P;&�wb�lW�mU{gO�oW�g�qY�ya~jR�nVO;#N:"M9!T@(L8 T@%T@%T@%VA&YD)\G,\G,[F+[G.VB)XD+T@'R>%R>%P<#T@'Q;#U?'V@(R>%Q=$T@'S?&O;"S?&T@'WC*YE,ZF-YE,WC*WC*UD*WC(WB'XC(S=%SA)WF2K<)0&                               
5$I6%T>'T<"A(7 1& :$K5 / 	      #8!J5"XC.\F/]E+S9 I/R9#^E1^G5H3"/
   
                              "6+E:&OC+M?$L>!PB%OA&I; L<%L<%L<%L<%L<%L<%K;$K;$G8!H9"G8!F7 F7 G8!H9"G8!H7#F5!F5!F5!F5!D3C2C2A2@1?0?0?0?0>/=.;/;,:+;,;,7*6)6+5*6+5*4)4)6+5*3(3&3&3(2'2'2'/'/'3(2'2'3(4)3(2'0%/"0#0#/".!/"0#0#.#.#.#.#.#-"-"-",!+ *))(('
$#""##$$!#%	" $
?.=,=,?.@/?.@/A0C2 =,E4 D3A0D3B25%B0YG1zhR�xb�|d�x`�zb~lThV@>.6&C3@/C2F5!D3I9"8(=-7'-:*1!
7'5#>.B2;,B36&0 	7%:(9'>,3!>,7%?-G5G2G26!B.E1G3F2I5>,G5A/VD,M;#L:"VD,I7UA&WC(WC(XC(YD)\G,]H-]E+ZF-UA(XD+VB)VB)XD+VB)ZF-V@(V@(V@(U?'S?&S?&R>%Q=$VB)WC*XD+YE,YE,YE,WC*VB)XD+YE*ZE*ZE*T@(Q@,H;**!                                 #=*S=(VB)7"
 	 # =)H4-       !:)H6"N9$Q;#K36&   '
1 - 
  	                             &:1 E9#J;$L>$L>$I:#K;$K;$K;$K;$K;$L<%L<%L<%H9"H9"I:#I:#H9"F7 G8!I:#I8$H7#H7#H7#G6"D3D3E4 C4B3@1@1?0?0?0?0;/;,:+<-<-8+6)5*6+6+5*4)4)6+5*3(4'4'4)4)3(3(0(0(2'1&2'3(4)4)3(1&/"1$1$/".!/"1$0#.#.#.#-"-"-"-",!+ **))('
&	%$#"#$$$"#$"!$
	:);*>-@/@/<+<+>->-?.C2F5!=,E4 F7"D5D5?09*:+D6C58*:,9)E5<,8'E4 @/E3F4 D4C3@1?0;,@1?/A1B2<,B3H<$@4>/D4?/B0L:$K9#E3M;%F4B0G5F1J5 O:%R>&H4K7P<$R>&P>&K9!P>&F4TB*P>&I7M;#Q="VB'ZE*YD)XC(XC(YA'W?%VB)VB)\H/ZF-XD+WC*T@'YE,\F.XB*WA)YC+WC*S?&R>%UA(XD+XD+XD+WC*WC*VB)UA(S?&WC*XD)[F+\G,R@(J;(3*
                             	   4!T=+SC*E4$  -;+>,=(%      	 1 A/O9"T>'R<%Q;&M6$         
                                         	 ."G8%M>)L=(M>+K;$K;$K;$K;$K;$K;$K;$K;$I:#H9"I:#K<%I:#D5E6I:#I8$H7#G6"G6"E4 B1B1E4 D5C4A2@1@1@1@1?0=1=.<-=.=.9,6)4)6+6+5*3(4)5*4)2'5(5(5*5*4)4)1)0(1&1&1&2'3(3(2'0%0#2%2%/".!/"0#/"-"-"-",!,!,!,!,!**)))(&	%$$%%%	$" !"#"!   >->/?0?0?0>/?0?0J9%=,=,;)?-@.H6"9'>,@.?-D2B0D2F4A/?0A1C3:(C1A1B2<-=-9)A1;+=-A18(@0>.5%C3E5:*>.L<%A1?/F4G5E3G2E0F1C.I4@+G2D2I7H6H8H8J5 I4K7N:"N:"Q=$R>%J6S?&Q=$S?&XD+ZF-WC*R>%N:!WC*WC*YE,ZF-WC*R>%P<#Q=$VB)R>%Q=$UA(WC*T@'S?&UA(WC+T@'UA(YE,XD+VB'WC(YF(RA#ZG)XC$ZE*VF/0&                                             $>+SA+aF1Q8$- 2J5"Q8": 	&     .<%C+X: [=#X: T6T8 O5L3S=(M<"<,&	                                                       ?3#N=)M8#N?*K<'J;&M<(O>*K;$J8"M;%H8!H8!H8!H8!H8!H8!I9"I9"H8!H8!H8!F5!D3B3B3B3G8#E6!B3@1?0@1@1A2?0?0>/>/>/<-9*6'9,9,7*5(3&2%2%4'6+4)4)7,6+2'2'5*4)5(4'4'3&5&5&4%2%2%1$1$0#/".!.!.#-",!+ ,!,!,!,!**+ *('
'
($#!  !""9*:+;,<->/?0@1@1<+A0gVB�p\ucOR@,^L8�o[D2�nX[I3L:$�q[TB,Q?)�|fQB+F6;+�xbD2bR;ueNA2?/o_H6&C3m]Fm]F{kTK;$4"�pZXF0?-mWm[E4"UC-l\E{iSO='C1weOp[FH3�kV>){fQ~iT:(R@(ygOn^E_O6N9$q\GmYAVB*O;#L8O;"R>%M9 N:!R>%VB)WC*S?&P<#O;"WC*VB)VB)WC*VB)R>%Q=$R>%VB)S?&S?&VB)WC*T@'T@'VB)WC*UA(YE,ZF-VB)[G,]I.T@%TF,XH/ZJ1O@+/#                                              !
0H3"V@+]G0Y>)V=)>)'6!I3]D.X>';",$/N7%iQ9wY?~`Fz\BoQ7cG/U;$L3N8#?)3$	                                                   ,#C4!L<%N>'N>'O?(N>'M=&L<%L<%L<%J:#J:#I9"H8!G7 H8!H8!I9"H8!H8!H8!F5!E4 C4C4D5 A2A2B3B3B3A2?0>/=.<-;,<-=.=.;,:+9,9,8+6)4'4'5(6)6+4)4)7,6+2'2'5*3(4'3&3&3&5&4%4%2%2%1$1$0#/"/".!.#-",!+ ,!,!+ *+ **)('
&	&	&	%#""""" C4A2?0>/>/=.:+8)A05$WF2ziU�q]iWC>,�~jG7 �w`O?(9)�~g?/C3�h;,>.8(�ycUC-rbKl\E:+H6 ��qYG1=+bP:tbLtbL[I31	kYC�}gC1�yc[I3C1��mJ8"K9#�zd:(fT>��o`K6jU@C.s^IeS=F4�|dO=%R@(aO7T@(�}er^FK7O;#K7N:!R>%O;"R>%WC*ZF-WC*S?&S?&T@'UA(T@'T@'UA(UA(T@'S?&S?&T@'S?&T@'VB)VB)S?&S?&VB)YE*Q="XD)[G,T@'WC*`L3]I1VI67,!
                                       
 	 	 %* A&S8#aE/[@+I09#9$F/I0`D.lP8\C-?(*	 ! =&[B,tV<vX>qS9eJ/^B*P7!>(3B(5'	 
                                                          0$F:$K;$M=&QA*O?&K;$M=&N?(L=&M=&K;$J:#H8!G7 G7 H8!I9"I9"I9"H8!G6"E4 D5 D5 D5 @1A2C4D5 D5 B3?0=.?0=.<-;,;,;,:+9*7*8+8+7*6)5(6)6)5*4)5*7,6+3(2'4)2'3&3&3&3&5&5&5&2%2%2%1$0#/"/".!/$-",!,!-"-"+ )
,!+ )(('
&	$&	%$##""!#
A2?0>/>/?0@/>-<+@1?.[J6�zfJ9%>,H6"�s_:*}mVRB+;+�w`=-I9"��m>/D4>.�oYN<&gW@p`I.]K5ygQ�pZ1	gU?xfP�wa8&>,TB,�xbkYCweO^L6A/��lH6 M;%��o<*cQ;H6 ��rucM;)weOfT>C1�}eQ?'XF.SA)Q=%fR:�~fgS;F2]I1O;#N:"N:!Q=$UA(T@'Q=$N:!O;"Q=$T@'S?&S?&T@'VB)VB)UA(T@'O>$P?%T@'UA(T@'R>%R>%UA(XD)T@%T@%WC(XD+WE-R@*I7#                                  
   14!9$D-I0Y>)\@+[?)[B,X?)M4 D+S:$fJ4uW?hH/ZB*<&-#	 	 +?&Q5eJ/sX=lP8Y?(F-6.%                                                                 6/F7 H8!N>%P@'L<#L>$O@)K?'M=&L<%J:#I9"H8!H8!H8!I9"J:#I9"H8!F5!E4 C4C4D5 E6!E6!D5 C4C4B3@1?0?0>/<-<-<-;,:+9*6)6)7*7*6)6)5(5(5*5*6+8-6+3(2'3(1&2%2%3&3&5&5&5&3&2%2%1$0#0#/"/"0%.#,!-".#.#,!)
-"*(()(&	$$#####"!   !>2<0<-=.>/?.=,;*:+8)iZE}lX9(@/TC/�s_9(}lXVE1<+�t`TC/G6"�xd[L5xhQ;+�|fI7!^N7�pYC4zhRYG1�|fF4n\FhV@cQ;zhRA/r`JYG1cQ;saKkYC5#lZDsaKr`J]K5=+m[EWE/\L5~nWA/{iSucME3]K3xfNkYAfT<[G/lX@t`H]I1H4K7L8 I5O;"Q=$Q=$P<#N:!N:!P<#R>%R>%R>%T@'UA(WC*XD+VB)T@'N=#O>$RA'UA(T@'S?&T>&V@(UA&ZF+T@%R>%[I1SA-4!	                                          /6!<'H2J4]D0eJ7eJ7I0N5O4K0[?)rT<�cJvT;cI2L3=(1,3D+V;&\B)]A)^B*[A(V;&I31 	                                                            >2D5 K;$P@'O?&L>$L=&K?'K;$K;$K;$K;$J:#J:#I9"I9"J:#J:#H8!F5!D3B3C4C4G8#E6!D5 B3B3B3A2A2<-<-<-=.>/>/=.<-7*7*8+8+7*6)5(4'6+6+7,8-6+3(2'2'2'3&3&3&4'6'6'6'3&2%2%1$1$0#0#/"0%/$.#.#/$/$-"*-"+ ))**(&	$$$$$#"!  !A5@4@1?0?.>-;*9(@1D5 4%=.E4 09(7&>-?.?.<+@/>-A08'D59)G7 1	D2@02"A2B0C1A/I7!?-B0B0>,A17'@0E5>.@0I9"?/G5G5H6 H8!C3=-B2>.D2H6 E3J8 H6Q?'K7WC+J6A-M9!Q=%M9!UA)R>&I5P<#Q=$P<#O;"O;"R>%UA(VB)R>%S?&UA(VB)WC*WC*UA(S?&N=#P?%RA'VB)VB)WA)WA)WA)UA&VB'S?$RA'N<&1                                           
  0D/Q<)P:%^E1dI6eJ7_F0R8!T:#bF.qQ:sQ8�]CZ@_C-N3K2K5 P:%X?)X>'[?'^D+`F-fL3fL5\C-K4"4   
                                                                  		1%?2!J;&N>%QA(N>%I;!J>&K;$K;$L<%L<%L<%K;$J:#I9"J:#I9"H8!E4 D3B3C4D5 C4C4C4C4C4B3A2@1>/=.=.=.>/>/<-:+:-9,9,9,9,8+6)5(6+6+7,7,6+3(2'2'2'3&3&4'4'6'6'6'3&2%2%2%1$0#0#0#/$/$.#.#.#.#-",!,!+ ))**('
(	'&	%%$"!   !!;/;/<0@1B1C2D2D2C46'<-9*@/>-F5!?.8)F7"E6!A2?0=.=.B3;,<,8(C1D2A1;+A2@0@08(<,F6A1?/H8!E66'@1B3D5D5@1B3B0N<&?-J:#D4I9"I9"O@)E5I9"E3O=%SA)L8 Q=%A-N:!]I0E1K7O;#@,N9$P;&L8M9 N:!L8L8O;"S?&T@'R>%UA(VB)UA(UA(UA(T@'R>%M=#O>$Q@&UA(WC*YC+XB*WA)UA(P<#S?&N<$3    	  
                           	 !(6;&?*J5 S=&jP9lP:gI1H/D*N2`B*yW>�eK�rX�_EmN9M1>#?&O7bH/jN6qS9v\C_E,L2B(=$<%5"(	                                                                                   8/ H;*I9"P>&P>&J:!L=&L<%L<%L<%L<%L<%K;$K;$J:#I9"I9"G7 F5!D3C4D5 F7"C4C4C4D5 D5 C4A2@1A2?0>/=.=.<-:+9*;.:-9,9,9,9,7*6)5*6+7,6+5*4)4)4)2'3&3&3&3&5&5&5&3&3&2%2%1$1$0#0#-".#.#.#-",!-".#,!+ + *)('
'
(	'&%%$#"    	<0=1>2@1@/?.@.A/;,G8#;,:+;,A0?.?.@1D5 =.A2?0=.A2A2A2D4;+C1D2?/H8!<-=-9)D4H8!?/C3G7 =-9*A28)>/C4;,I:#B3D2A/F4F6F6>.G8!H9"?/G7 G5I7B0O;#J6Q=%Q=$H4M9 P<$P<$T@(P;&I4M9 Q=$S?&P<#O;"Q=$T@'VB)S?&VB)WC*T@'R>%S?&S?&R>%L<"M=#P?%T@'WC*ZD,YC+YA)S?'T@'YE-B0                         
      &6A+M7"[E.bJ2qU=pP7gE*P7!I/X<$rR9�bH�eK�nT�aGvUB^?+W;%]C,fL3mR7pR8vW;_G-U;"N4C+0#                                                                          3+G:*C2M;#Q?'K;"L>$M=&M=&L<%L<%K;$K;$K;$K;$I9"H8!G7 F5!E4 D5 F7"G8#H9$F7"E6!C4C4B3B3A2?0=.;,;,;,<-<-;,:-9,8+8+8+8+7*6)4)5*6+5*5*5*5*5*2'3&3&3&3&5&5&4%3&3&2%2%1$1$1$0#,!-".#-"+ + -"/$+ + + *(&	&	&	'&%$$$##   	@1?0@1@1A2@1?0>/A2?0=.=.@1B3@1<-?0=.=.>/@1@1<-8)8)9*:+;,<-=.>/?0F7"D5 B3B3D5 D5 B3@1=-A1A1<,=-C3B2=-8(E5D4H8!E5F6@0J:#@0F4L:$N<$K9!I5J6M9!K9!M;#N<$K9!J8 K9!K9!I7N:!T@'R>%P<#R>%P<#O;"T@'S?&T@'UA(S?&S?&S?&R>%Q=$Q=$VB)T@'XD+UA(R>%ZF-S?&N>N=#O>,/"        	                   ';&N8#]G2]C,lR7_E*]G/rZBgH3mK2^D-\@(bB)~Z@�x^�}c�oU�hM~V=oK3]>)T9$[@+hL6uU>}[BtR9bB+Q5D,6"-%   	                                                                          @3"O?&G7P@)Q<+V?/I:%H9$N?*E6!M>'M=&L<%N>'J:#J:#J:#I9"G6"D5 E6!F7"@1B3D5 D5 C4A2A2B3A2?0>/=.=.=.<-:+:.8,7+7+:-9.7,4)4)6+8-8-7,7,5*2'5(3&2%2%3&3&3&2%4'2%0#0#2%2%1$/"/".!,!,!-".#,$+#+ + + + + ( &%
'
))&	###""""""#%	%	 >/>/>/>/?0?0?0?0B3@1=.<-?0B3A2>/A2@1?0?0@1A2A2@1?0?0>/>/>/>/@1A2@1A2B3B3C4B3B3B3A1@0?/=-=-?/@0A1:*B2B2D4E5D4@0E5A1F4K9#K9!H6I5K7N:"L:"N<$N<$K9!J8 L:"M;#L:"O;"Q=$P<#O;"R>%R>%R>%T@'R>%R>%T@'UA(S?&P<#R>%VB)O;"T@'S?&VB)UA(VB)\H/R>%J9O=%<*	                  	          	 
  
            	 0?)W>*eK4oT9eK0ZB(ZB*Y=%^<#aG0hL6wU<�bH�lR�mS�kN�mR�fL|X@kK4bF1aF1gK5uU>�_F�^CrR;eI1\D*O:A-3'                                                                         	 6+B3N@&M>'Q?)O;#I:%G8#M>)G8#O@)O?(L<%L<%K;$K;$J:#I9"G6"E6!D5 D5 C4D5 D5 C4A2?0?0@1B3A2?0>/>/>/=.;,:.8,7+7+9,8-6+4)4)6+7,7,6+6+4)2'5(4'3&3&4'5(5(4'4'2%0#0#1$2%1$/"/".!,!,!-".#,$+#+ + ***'%
$	&	'
(%$$$#!!  !"#$?0?0?0?0?0?0?0?0D5 B3?0>/@1D5 D5 B3B3A2@1>/>/?0B3D5 B3@1?0=.=.>/?0@1<-?0B3C4B3A2B3C4E5B2A1B2A1?/A1F6>.@0A1@0F6D4B2B2C3I7!K9#H6F4J6N:"O;#L:"M;#M;#K9!J8 L:"N<$N<$Q=$N:!N:!P<#P<#R>%T@'R>%R>%P<#S?&VB)S?&N:!R>%[G.WC*XD+UA(T@'R>%R>%S?&G3I9"?.$	        	            
   
      
   
 " - 7"A&[?)iK1w\Aw]DiQ9oS;eE,cG2hI4wU<�aG�jM�rU�uX�sV�nT�`FqQ:iJ5cG1fH0sS:�bIzX=sS:mO7`F-M5;%2	+     	                                                                           A8)H;(OC-B6K=#N=!K<'G8#L=(I:%O@)O?(L<%K;$K;$K;$J:#I9"H7#E6!C4B3G8#F7"E6!D5 B3A2A2A2B3A2?0>/>/>/=.<-9-8,7+7+8+6+5*5*5*6+7,5*5*5*4)2'6)5(4'4'4'4'4'4'3&2%1$1$1$2%1$0#0#/"-"-"-"-"+#*",!+ *))&%
$	$&	&	%$%&	%#""""#$$ 	B3B3B3A2@1?0?0?0C4B3@1>/@1C4C4A2B3@1=.;,;,<->/>/?.>->-=,>->-?.?.>/@1C4D5 B3@1@1A2B2B2E5F6E5B2C3F6B2@0C3?/G7 C3E5B2G7 M;%M;%H6F4M9!P<$O;#J8 K9!K9!K9!K9!L:"M;#N<$S?&M9 O;"Q=$M9 O;"S?&P<#Q=$R>%T@'VB)S?&Q=$T@'ZF-Q@&O>$N=#O>$N=#O>$P?%J9C2""                 
   &	,	07!	A)P4eG/jK/y[?}bGmS:z\DoP4kL8kK4yU=�cI�oS�}^��`�wW�kR�`EuS:iI0dF.hH/wU<�aG�iNxV=eE.[?'V<!K37
 #                                                                                   ,=0 J=*K=#H9M>)F7"K<'K<'K<%M=&K;$M=&K;$J:#I9"I9"I8$F7"D5 A2F7"F7"E6!D5 D5 C4C4C4@1?0>/=.=.=.=.=.9-9-8,8,7*6+6+6+6+6+6+4)3(4)3(1&6)5(4'3&3&3&3&3&3&2%1$1$1$1$1$0#0#/".#-",!,!)!( -",!*)(&%
%
$%&	%%&	&	&	######$$B3C4D5 C4B3@1?0?0A2A2@1>/>/?0?0=.B3?0<-;,;,;,9*7(>->->-?.A0@/?.>-@1@1A2B3B3A2?0=.=-A1D4C3B2C3D4D4D4A1E5A1F6B2G7 E5I9"N<&N<&I7G5M9!O;#M9!I7J8 L:"M;#M;#L:"L:"M;#R>%M9 P<#R>%L8M9 R>%R>%R>%UA(VB)T@'T@'VB)VB)T@'R@(L:"N<$R@(P>&N<$N<$O=%.                      !  	 	           %-4?&I1Q6!eG/vT9]AaGnR:xX?tR7tQ=xT>�aG�jQ�oQ�wX�|\�vV�pW�jP�`FxV;sT8zX=�]C�bH�_C}[ByYBuU>jL2]C(Q7 D+1$	                                                                        	     &@2%I:%I;!G8#A2I:%N?*J;$M=&K;$N>'K;$J:#I9"I9"I8$G8#E6!C4C4C4C4C4C4C4A2A2?0>/>/=.=.>/?0@1:.:.9-8,8+6+6+7,6+6+5*3(2'3(3(2'5(4'4'3&3&3&3&4'3&2%1$1$1$1$1$0#0#0#.#-"+ *''.#,!*))&&&%&	&	%%&	&	%""""!!!"$@1A2B3B3A2@1@1@1A2B3A2?0>/?0>/=.C4@1=.=.>/=.:+6'>.>.@0A1B2A1>.<,@1?0>/?0B3A2?0<-?/B2C3A1A1E5G7 G7 D4A1D4C3B2B2H8!F6I9"L:$L:$I7H6L8 M9!K7K9!K9!M;#O=%O=%M;#L:"M;#O;"M9 P<#R>%O;"M9 Q=$UA(T@'WC*VB)S?&T@'YE,VB)P<#WE-O=%SA)UC+P>&M;#I7J8            	   !	 # % & '&!
    "
 ' /;"G-V<%dF,|Z>�_C�gKtT;oM4c@$lH0rM3�X>�dH�kM�rT�yY�yY�kO�hL�`EzW;vS7yV:zW;xS8wU9oM2lI3lJ1jK/gI-X>#I/:&.!                                                                              
 1 A0>/8)D5 QB-L=&O?(K;$M=&K;$J:#J:#J:#I8$G8#F7"E6!E6!E6!E6!E6!E6!C4A2@1@1?0?0>/>/?0A2B3<0:.9-8,8+7,7,6+5*6+5*3(2'3(3(2'3&3&4'3&3&4'5(6)3&2%2%1$1$1$1$1$0#0#/$.#,!*''.#,!*))''&&	'
&	%%&	&	$###"""!!#
@1A2A2@1?0>/@1B3A2B3B3?0>/?0?0?0A2?0=.<-=.=.=.<-?/?/@0B2C3B2>.;+B3@1?0@1B3B3@1=.C3B2B2C3D4E5G7 H8!E5A1B2E5?/D4H8!G7 I9"J8"J8"I7J8 L8 M9!M9!M;#L:"M;#O=%N<$L:"K9!M;#P<#P<#O;"R>%S?&P<#P<#VB)VB)VB)T@'S?&T@'VB)T@'P<#M;#I7Q?'P>&N<$Q?'H6C1 	                   	  & ,/0--,,-04?%J0P8 [=#jH,pM1�_E}[B�cI~V<tO4vN4{R6�]@�mP�wY�|_��d�rW�nR�gJ�_B�[>�]A�]B�^C�fG�dI�cM�^EtR7iL.`E(X>%F.9 
,#                                                                       %3,*3 F4 <-2#=.O@+J;$P@)L<%L<%L<%L<%L<%K;$I8$F7"F7"F7"I:%H9$F7"F7"F7"E6!C4A2@1@1@1>/>/>/@1B3<0:.8,7+8+8-7,5*5*5*5*3(2'4)4)3(3&4'4'3&3&3&4'5(2%2%2%1$1$0#0#1$/"/"/$.#-"+ )!)!,!+ *))''&'
'
&	%%&	%#$$$$##""!! B3B3B3?0=.=.@1B3?0@1?0<-:+<->/>/=.<-;,:+:+<->/@1@0@0A1C3D4D4@0=-E6!D5 B3B3C4C4A2?0B2>.@0F6H8!C3B2F6G7 B2@0F6>.G7 J:#H8!J:#I7!I7!J8 K9!M9!N:"P<$N<$L:"L:"M;#L:"J8 J8 L:"S?&S?&P<#Q=$WC*R>%O;"UA(XD+T@'R>%S?&T@'S?&R>%R>%J:!J:!QA(I9 F6L<#=-/
                	    
 ' /5556 9#>&?'B(K2T;WA)jO2xW8{V9�dJ[C�pV�eL�jM�hK�cE�gJ�sV�wY�|_��k�rW�kO�bE�]@Z=�[>�aF�iN�eF�aF�aK�dL�dH`CmR5[@%W;%J.>"3%                                                                
 
 A+18$2K6#@11"8)J;&G8!P@)L<%K;$M=&N>'M=&K;$H7#F7"F7"G8#H9$G8#E6!D5 D5 D5 C4B3@1@1@1>/<-=.>/@1=19-6*6*8+8-6+4)4)5*5*3(3(4)4)3(4'4'4'2%1$0#1$2%2%2%2%1$0#0#0#1$.!/"/$/$.#-"+#,$+ *)))''&'
'
&	%%'
%#####"!! B3A2A2A2@1@1@1@1<+>-@/?.=,=,?.A0:)<+>->-<+:)9(:);*@/B1A0@/B1@/=,A1C3C3A1B2F6H8!F6A1@0A1C3D4C3B2C3F6D4C3C3F4H6I7J8 G7 H6 G5G5I7N:"M9!I5O;#N:"M9!L8 L8 N:"O;#Q=%Q=%Q=%R>&Q=$Q=$Q=$R>%S?$T@'UA(T@'R>%Q=$S?&S?&R>%O9"I7!K<'D5J8 D03"    
                 %/8 5>$F,N2U9!]?%^@$]>"^@&lI-�T7�cF�rW�jN�qQ�rO�lL�rR�tV�tU�zZ��d��h��b�wW�iK�aC�Y=~W:�Z@�]C�gN�lJ�pP�hJ�bG�aH�`G~_CsT8U8&O3G+<"0$                                                          
  B+=#
A'7@&E4 5$>/<-J;&Q@,L:$O=%J:!K;"K;$H8!G7 H8!H7#G6"E6!E6!E6!E6!D5 C4B3A2A0A2A2@1?0>2=1;/>/=.;,7+7+:.9-5*7,6+5*4)4)4)4)4)5(4'4'3&3&2%2%2%2%2%2%1$1$1$1$1$/$.#.#-"-"-"-"-".!- + + *)&''
'
&	%$##"$###$#"!""""B3A2@1?0?0?0?0?0A0C2D3D3A0?.>-?.<+>-A0B1@/=,;*;*?.A0B1B1A0B1B1@/D4D4C3A1@0@0?/=-D4B2B2C3D4C3C3D4C3C3B2C3F4H6I7J8 H8!I7!H6 H6K9!P<$O;#K7M9!M9!M9!M9!N:"O;#Q=%Q=%P<$Q=%Q=%Q=$Q=$R>%S?&S?$R>%UA(UA(T@'S?&T@'T@'R>%T>'L:$F7"G8!=+:&9$      
                        & 19O3X<$aE-hJ0nN5vW;]B�`D}[?�cF�fF�uV�z_�~b�~^��a�yX�}\�~]�|]��c��m��o��l�xX�nN�kM�kM�oS�qW�iO�fL�sQ�mM�aC�^CxX?oO6mO5jL0hN7[A(J0>$3&     	                                            	    ,B*H.F,>#9(3"@1=.B3N>'L<%N<$J:!K;"K;$H8!G7 G7 H7#G6"H9$H9$G8#F7"E6!E6!D5 D5 A0A2@1?0>/=1>2<0>/=.;,6*7+9-8,4)6+5*4)4)4)4)4)3(4'4'3&3&3&2%2%2%0#1$1$1$2%2%1$1$/$.#.#-"-"-"-"-".!,**)'
%
&&	&	%%$$$$$####""!!!!!D5 C4B3A2@1@1@1@1>-@/B1D3D3D3B1A0>-A0D3E4 D3A0?.?.C2B1C2D3C2A0B1C2E5D4E5F6F6D4C3B2D4B2A1B2C3C3D4E5@0B2F6J:#L:$K9!H6E3G7 H6 H6 I7K9!O;#M9!J6L8 M9!N:"O;#P<$P<$P<$P<$O;#P<$Q=%R>%R>%S?&T@'T@%S?&UA(VB)T@'R>%S?&S?&S?&UA(O='E6C35!>(P:%(	 	         
         '-5@&J.Y9 gG.vT9{Y>~[?�aE�gI�kM�qT�xX�uT��a�~a��q��e��m��g��i��f��d��i��q��r��l��e�{[�sU�hJ�gI�nR�pT�tX�wX�oP�_D{W=pN3cC*aC)]B'Q7I/@&6,! 
                        	    <&@(O5I-.0
A0@19*J:#L<%L:"K;"L<#L<%I9"H8!H8!I8$H7#H9$G8#E6!C4B3C4C4D5 A0@1?0>/=.=1>2=1>/=.;,7+7+8,7+4)6+5*4)3(4)4)3(3(4'3&3&3&3&3&3&3&1$1$2%2%2%1$0#0#/$.#.#-"-"-"-"-".!,**)&	$	%
%%%%%&	&	&	%$#"""!!!!!"C4B3B3B3A2@1@1?09(:)<+@/D3E4 E4 C2A0B1D3E4 D3C2C2C2E4 B1C2E4 D3@/@/C2?/<,>.B2E5C3C3E5A1?/?/A1C3C3D4E5F6H8!J:#K;$M;%K9!H6F4G7 H6 H6 I7K9!M9!K7I5N:"O;#P<$P<$P<$O;#N:"N:"N:"O;#Q=%S?&S?&T@'UA(UA&UA(VB)UA(R>%O;"O;"P<#R>%Q=$I9 ?02"	5 L4_G/1       	
       
)4;!
E)U7bB-vS7�aE�nR�pS�pS�rS�wX�z[��e��g��b��i��f��u��h��n��m��m��j��f��l��r��q��k��i��f�~^�kK�aD�dF�bD�cE�^@�dF�`D�[@vR8gH,[=#I.G-C)<"	3&                                          ,3I0W</-=+B14%F7 K;$J:!K;"M=$M=&K;$J:#J:#J9%J9%F7"E6!C4B3A2A2A2A2@/@1@1>/>/=1=1<0>/=.;,8,7+7+6*4)5*4)3(3(3(3(3(2'3&3&3&3&3&3&3&3&2%2%3&3&2%0#/".!/$/$.#-"-",!,!,!- +)*)'
$	%
%%%%&	&	'
'
&	$#""""""""#>/?0@1@1@1>/=.<-=,=,=,?.A0C2B1A0C2C2B1B1B1C2E4 G6"D3B1C2E4 C2?.>-@/@0<,<,@0B2A1@0A1C3B2B2D4F6E5E5E5N>'L<%I9"G7 G5H6J8 L:"H8!I7!J8"K9!M;#O;#N:"M9!P<$P<$P<$P<$O;#N:"N:"M9!N:"O;#Q=%S?&T@'UA(VB)VB'UA(UA(UA(T@'Q=$P<#P<#P<#O>$:*5$$ E-S8W=$6    
     " 
 #*6	B&M/\=!qO6�]G�oO�wW�}]�{\�{\��a��h��j��q��q��l��g��i��m��j��j��l��n��m��l��pÖwv��p��e��`�|Z�qQ�pP�uU�lL�dD�gJ�lO�fI�cG�]@xU9mN2^@&M1C':4/
'
 
                                                                    !3: Y>#9#.4"A07(D5I:#K;"I9 K;"L<%J:#J:#J:#K:&J9%F7"F7"E6!D5 C4B3B3A2@/A2A2?0?0=1;/9->/=.<-9-8,7+6*5*5(4'4'4'4'4'4'3&3&3&3&2%2%3&3&3&2%2%3&2%2%0#/"- /$.#.#-"-",!,!,!- +)*)(%
'&	&	&	&	&	&	&	&	&	%$##$#####$=.>/?0@1@1>/=.;,B1A0@/@/A0B1B1A0D5 B3@1?0?0A2D5 F7"B1B1C2D3B1@/?.?.B2@0?/A1C3B2A1@0G7 F6F6H8!I9"G7 F6F6H8!H8!H8!H8!H6 H6I7J8 F6F4H6 K9!M;#O;#O;#O;#P<$O;#O;#O;#N:"N:"N:"N:"N:"O;#Q=%R>%S?&T@'UA(VB'S?&T@'UA(WC*WC*T@'Q=$P<#RA'-'/]C,Z<"M2C+        
   
         
2:H,W9fD(wT6�gL�w\��b��h��k��m��o��u��y��y��x��u��n��f��o��h��q��p��q��s��s��suŚxėv��s��g��c��a�zY�zY��`�~]�|[�xY�nO�`B�_@�X;tM0mJ.jH-^>'T4G'<1$     
                                                                   +) Q7 D,00<,=,A2H9"J<"H8J:!J:#I9"I9"I9"I8$H7#F7"F7"F7"F7"E6!C4B3A2@/A2B3A2@1=1;/8,=.<-<-:.9-7+7+6+4'4'4'4'5(5(4'3&3&3&3&2%2%2%2%2%0#1$1$2%2%1$0#0#/$/$.#-",!,!,!,!- +***(&( ('
'
&	%%%%&	%$$%%$$#$$$?0?0?0?0?0>/=.<-@/?.?.@/A0B1C2C2D5 C4A2@1A2A2B3C4A0B1C2B1A0B1B1B1?/?/>.?/B2D4B2>.G7 E5E5G7 H8!G7 G7 H8!A1D4H8!J:#K9#I7G5F4F6F4G5J8 K9!M9!M9!O;#N:"N:"N:"N:"O;#O;#O;#O;#M9!N:"O;#P<#Q=$R>%T@'UA&UA(S?&T@'WC*XD+UA(R>%Q=$N>%,! C,hL7[=%J,A'           
 
       +
@$K/]?%pN3}Z>�gJ�wX��c��g��n��v��zß}ǣ�Ƣ�ß}ƣ�ͧ�ǜy��vŞ��pʟʝ|Ǜxɝzɞ{ǜzƛyƛyęw��s��o��p×t��l��d��a�{Y�{Y�zY�tR�kJ�oN�jI�X;vO2lG,a=#[7S/J'>
4-,                                                             B(H.5.8&@0>/F7 K=#I9 K;"K;$J:#I9"I9"H7#G6"F7"F7"F7"E6!D5 C4A2@1A0A2B3@1?0=1<0:.<-;,;,:.9-7+6*7,4'4'4'5(5(5(4'3&4'3&3&2%2%2%2%2%0#0#1$1$1$1$1$1$/$/$.#-",!,!,!,!- ,***(&'('
'
&	%$$$$$$$%%%$""""?0?0>/=.<-<-;,;,=,=,>-?.@/@/A0B1D5 D5 C4C4C4B3A2@1@/C2C2A0A0D3F5!D3D4F6F6E5H8!J:#G7 A1C3A1A1C3E5E5F6H8!E5F6F6E5F4G5I7K9!J:#I7!J8"L:"L:"M9!M9!O;#M9!N:"N:"O;#O;#N:"N:"M9!L8 M9!N:"N:!O;"Q=$S?&T@%ZF-UA(R>%S?&T@'S?&R>%R>%H8!0! N7'aE0U5B$
/                   )8
U7aC'uU<�fK�pU�z[��d��k��s��x }Ģǥ�˩�̩�ʧ�̩�԰�ɡ~̤�ʣ���nǜ|Ƙwʞ{͡~΢ˠ}ɞ|ʟ}ɞ|ĜyØu��p��p��l��k��k��b��`�}[�zX�nK�kJ�jI�eG�bE�Y<�Y<uN1gB%^;V7J/=%3)!
 
                                                               	 1
G-714"A1<-F7 J<"K;"M=$M=&K;$J:#J:#I8$G6"G8#F7"F7"E6!D5 C4B3A2A0A2A2@1?0>2=1<0;,:+:+:.9-6*6*7,4'4'4'5(5(5(4'3&4'4'3&2%2%2%1$1$1$1$1$1$0#0#0#0#/$/$.#-",!,!+ + .!,**)(%
&('
&	%$$#####$%%%$!!!!=,A0D3!C2 >-:);*=,;,<-=.?0A2A2@1?0C2@/=,<+=,?.B1C2D3D3B1@/A0D3F5!E4 E5D4E5G7 E5A1@0C3A2C4E4 B1@0B2F4G5C3@0F6B2C3H8!E5K;$K;$J8 J8 K9!L:"L8K7L8P<#O;"N:!L8K7K7M9 P<#O;"M9 M9 O;"Q=$Q=$R>%S?&U?(U?'UA(WC*TC)O=%J:!J:#I8$  G2M4X9'S7"3                    	    " :	X9nD+�_C�cF�kK�\��f��l��u��uŞ}ͦ�Ϊ�Ϫ�Ϭ�ͫ�̪�˨�Ь�ҫ�Ϧ�ҩ���tˤ�ĝ~ʟ}Ϥ�Ϥ�ʟ}ɜ{͠�У�Ϣ�Ȝɝ�ėxvƙx��s��j��l��j��_�\�\�|Y�yT�xS�wR�mL�hG�bBV8oJ-eA'Y7K+;%' &   	                                                   	>&<$4<#C-A,F6N?(K;!M=#N>%M=$L<#L<#J:#H8!H8!G7 G7 E5D4C3C3C3?0A2A2@1@1A2?0<-@1=.;,9,;.;.9,6+6)5(4'4'4'4'4'3&3&3&3&3&3&3&3&2%2%1$0#/".!.!.!.!,!-"-",!*)
)
*,!**,!,!)'
'
%%&	&	$""$'
%#!  !" "!>/@1A2A2@1?0?0?0?0?0?0?0@1@1@1?0;*=,?.@/@/A0B1C2C2D3D3B1C2D3C2A0@0@0@0A1@0>.>.?/>/A2C2B1A1B2C1B0E5A1E5A1A1F6E5K;$K;$J8 J8 L:"L:"M9 K7L8L8M9 O;"O;"N:!L8L8L8N:!M9 N:!Q=$R>%R>%T@'VB)WA*T>&R>%T@'RA'O=%G7A19*  \F/_E$S2J.%                   !8T4hE'�_C�rU�zZ��e��n��l��o��uĝ|ɢ�Χ�Ϊ�Ϭ�Ѯ�Ю�ϭ�Ϋ�Ь�Ϩ�̣�Ч���uˤ�ĝ~ÛxʢѦ�Х�Ϥ�Х�Ѧ�΢�ѥ�ѥ�ɞ~ŘyǚyÖu��rǛxėv��k��g��h��f��d��`��]�\�yX�uS�nN�dG�\AxT:nJ0]?'G+4" 	  
                                                   
  3?'3=$>(<*D4J;$K;!M=#M=$K;"J:!J:!I9"G7 H8!H8!G7 F6E5D4D4D4?0@1@1?0?0@1?0=.>/=.;,8+8+8+7*5*7*5(4'4'4'4'4'4'2%2%3&3&3&3&3&3&1$1$0#0#0#/"/"/".#/$/$.#-",!,!-",!*)**)))'&&	&	%""#""#$$$$#!"#	$
?0>/<-=.?0@1?0>/@1>/=.<-<-=.=.=.:)=,A0B1A0@/@/B1B1B1B1A0A0A0@/>-C3B2A1@0@0A1A1@0>/@1B1B1B2C3D2B0E5C3E5B2A1D4D4I9"I9"J8 J8 L:"M;#N:!L8L8K7M9 O;"P<#O;"M9 L8K7M9 N:!O;"Q=$Q=$Q=$R>%T@'V@)R<$Q=$R>%Q@&R@(M=$F6&)jP9oN-`<$G(                    
    %9V3uP6�`B�tW�}]��e��q��t��o��xƢ�ɢ�̥�Ϊ�Ы�ү�Ա�Ӱ�Ю�Ѯ�Ы�Χ�ɢ�Ϧ���yͦ�Ǡ�ȟϦ�ԫ�լ�ԭ�ծ�ԭ�ҫ�ˢ�Υ�ͤ�Σ�Σ�ɞ|ǚyʝ|͠Öu��q��r��r��q��n��g��d��^�~\�{[�tV�lP�gJ�`FzU8tQ5^:"B"8+                                                  ( ='- 6 	<(9'D4D5L<#M=$M=$K;"J:!J:#J:#I9"H8!H8!G7 F6F6E5E5E5@1@1?0>/>/?0?0=.<-=.<-9,7*6)6)5*7*5(4'4'4'4'4'4'2%2%3&3&3&2%2%2%0#0#1$1$1$1$0#/".#.#.#.#-"-"-"-".#+ )))()*(	&%&	&	#"!#$%%&	%%%!  !@1=.:+:+<-=.=.<-=.<-<-;,<-<-<-<-?.A0B1B1A0A0B1D3C2B1@/?.?.@/@/?.A1A1?/;+<,@0@0=-?0?0?.>-@0C3E3E3C3C3E5D4C3D4E5G7 G7 I7J8 L:"N<$O;"N:!M9 M9 N:!N:!M9 L8L8M9 O;"N:!N:!P<#Q=$O;"M9 M9 P<#T>'R<$S?&S?&N=#R@(QA(I9" F0#fH0iE%wP3N/ 	                       (N4jH/~V<�iL�xY�{Y�]��gu��u��sʣ�ͩ�Ȥ�̨�Ѭ�Ա�ֳ�ղ�ү�ϭ�ү�Ѯ�Ϊ�̥�Ϩ�Ɵ~Ϩ�ʦ�ʣ�ͦ�Щ�Ω�ͨ�Ω�Ϋ�Ϭ�ˢ�ͦ�Щ�ҫ�ҩ�͢�ǜzƙx̟~ėvtŘwřvřv×t��p��k��e��b��b�~\�wW�qT�mP�aC�gI�\?kF,X5? * +                                             	   % 9$( 1?+7%H8D5K;"M=$N>%L<#K;$K;$K;$K;$H8!G7 F6F6F6E5E5E5A2A2?0=.=.>/>/=.<-=.<-9,7*6)7*6+6)5(4'3&3&3&3&3&2%2%2%2%1$1$0#0#0#0#1$2%2%1$/".!-"-"-"-"-"-"-"-"/$,!*)('
'
((	&%&	&	$""$##"#$&	'
" A2?0=.<-<-=.>/>/@1?0?0@1@1@1?0>/C2B1B1B1C2D3E4 E4 C2A0@/@/A0A0A0A0A1A1?/<,=-A1A1>.;,<-<+<+>.B2D2D2B2D4C3D4C3D4G7 H8!F6H6J8 L:"M;#P<#O;"N:!N:"N:"N:"L8 K7L8 N:"P<$O;"P<#R>%R>%P<#M9 N:!P<#V@)S=%T@'S?&M<"Q?'L<#;+ N7'eG/`9Y5]?'                      9 `B&Z=�dG�lM�sR��_��f��sˣ�Ɵ~Ş}ͩ�ʦ�˨�Ϭ�ղ�״�ֳ�Ա�Ӱ�Ӱ�Ӱ�ү�Ү�Щ�Ϩ�ȡ�˧�̨�Χ�ͦ�˦�˦�ʧ�ʨ�̪�ϭ�ڳ�Ӯ�Ѭ�ϫ�Χ�ˢ�ʟɜ}ɜ{ŘwƙxțzǚyǛxǛxřvt��l��h��g��b�}\�yX�vW�pR�kM�gH�aDuQ7^>'B&' &                                              	 #0',>,/K;$J;$J:!M=$O?&N>'K;$K;$J:#I9"H8!F6E5E5E5E5D4D4B3B3@1=.<-=.=.<-<-;,:+8+8+8+7*6+5(4'3&2%2%3&3&2%2%2%3&3&2%2%2%2%0#1$1$1$1$0#.!- /$.#.#.#/$/$/$.#.#+ **)'
&	'
'%$&	'
%##!!!"#$&	'
%
$	"!>1=0=0</;.</=0>1A2A2B3C4C4B3@1>/C2B1A0A0A0?.=,;*=,=,?.A0B1@/>-=,A1A1@0?/A1C3C3C39*;,>-?.A1C3E3D2D4E5A1B2B2C3J:#L<%F6H6J8 J8 L:"P<#O;"M9 L8 M9!N:"N:"M9!M9!M9!N:"Q=$Q=$R>%T@'S?&R>%S?&UA(WA*Q;#S?&T@'Q@&WE-K;"/ I3sU=_:~X1lN4        	 
 
 	  8!X<$nK-�[<�iL�sT�{Z��g��pÝyȤ�š�Ȥ�Ү�̨�ү�Ա�״�ص�ղ�Ӱ�ղ�ٶ�ӱ�Ա�ԯ�Ӭ�Ϩ�ɢ�Ȥ�ʥ�Ч�Χ�Ϩ�Ϫ�Ϭ�ͫ�̭�а�ڵ�Ӯ�Ϭ�Ϋ�˨�ͦ�Ϥ�͠�ȝ}Śxǜzȝ{ŚxƛyǜyŚw��s��l��i��h��c��_�}\�yX�|^�oQ�lN�qR�dGzV<aA*9." 	                                        	    $"'2 
& E6J;&J:!M=$O?(M=&J:#H8!F5!E4 G7 F6D4D4D4D4C3B2B3B3@1>/=.>/=.;,;,:+9*7*7*8+7*5*5(4'3&2%2%3&2%2%2%2%3&4'4'5(5(5(1$1$1$0#0#/".!.!.#-"-"-".#.#.#-"+ *)**)(('%%&	&	%$%	%&	'
'
&	%#""!!!=0</</</</</</</@1@1A2B3C4B3A2?0B1B1B1@/>-;*9(8'<+;*=,A0A0?.<+<+<,;+<,=-=-;+<,=-;,?0B1C2C3E5G5G5B2F6B2E5E5C3K;$J:#G7 I7J8 J8 K9!N:!N:!L8J6K7M9!N:"M9!L8 L8 M9!P<#O;"P<#S?&T@'T@'UA(WC*U?(Q;#VB)VB)P?%XF.P@'3#&W?#sW?\:�a8nP4(     
  
  " K/eF*oJ-�Y;�jL�vV��b��l��s��wġ�ģ�ɨ�ղ�Ӱ�ִ�ճ�״�״�ֳ�Ա�ֳ�ٶ�ִ�Ա�ԯ�Ү�Щ�̨�Ȥ�ʥ�ͤ�ˢ�̥�Ω�Ϋ�˩�ɪ�˭�ԯ�ͪ�ά�Ѱ�ͪ�Χ�Ҧ�Ρ�̡�ȝ}ȝ}ȝ{ŚxŚxŚx��s��r��o��n��m��i��g��c�~\�~^�vV�sR�xV�lL�dG}Y?[9 /(                                             && +@1A2J:#M=&N>'L<%H8!G6"F5!F5!H8!F6D4D4D4D4C3A1@1A2@1?0?0?0>/;,;,;,;,8+7*6)7*6+6)5(4'3&3&3&3&3&3&3&4'4'4'4'4'4'3&2%1$0#/"/"0#0#.#-",!,!-"-",!+ + ))**)()(	&&	&	%#$&
)))(&	# >1=0</</=0=0</;.>/>/@1A2C4C4C4B3@/B1C2B1?.?.@/B1A0?.?.A0B1@/?.@/>.=->.@0>.9)9)<,>/@1C2A0@0C3G5I7!?/F6C3I9"I9"E5J:#G7 H8!J8 J8 I7J8 M9 M9 J6J6K7L8 K7K7K7L8 N:"O;"M9 M9 P<#R>%S?&T@'VB)T>'U?'[G.VB)I8Q?'QA(:*& lU6eI1R2�lCgJ,2      	   
  	  < X:"fC'uN1�lP�z^�|]��d��m��u��|ɨ�ˬ�ά�ճ�ֳ�ִ�Բ�ճ�׵�ص�ղ�Ա�ղ�׵�Ա�Ӯ�ӯ�ҫ�Ь�˦�˨�ԩ�Ϧ�Χ�Ѭ�Э�̪�ʫ�ͯ�׳�Ю�Ұ�б�ʩ�ʦ�Ϧ�Ϣ�ҧ�̡�ʟȝ{ƛyƛyŚx��r��o��o��o��m��j��i��d�}[�|[�xV�qM�uQ�rO�lJ�fIqL1. )  	                                              )" 9(@19*I9"L<%N>'K;$H8!H7#I8$J9%I9"G7 D4D4D4D4C3A1>/@1@1@1@1@1?0<-;,=.>/:-7*5(7*8-7*5(4'4'4'4'4'4'4'4'4'3&3&2%1$1$3&2%0#/"/"0#1$2%0%/$.#.#/$/$.#-",!*)))('
()
''
&	$"$'#"!  </=0>1?2>1=0=0=0>/=.=.?0?0?0?0A2E4 E4 E4 D3B1@/>-=,<+=,=,>->-?.A0C2B2?/;+;+=-@0A1@0B2B2D4E5E5F6F6F6B2C3E5F6E5E5G7 H8!E3H6 K9#L:$M8#M9!M9!N:"L:"K9!K9!K9!M9!M9!M9!N:"P<#N:!N:!P<#S?&UA(T@'R>%R>%\H/VA&UA&S?&QA(QB+1":%
lQ<fE2V3�iCaG$7"      
    	 A+U7hC(�\<�vS��\��h��p��|�ȥ�˨�Ϋ�ү�״�ٶ�ٷ�ض�۹�׵�״�ٶ�Ӱ�Ӱ�Ӳ�ղ�ҭ�ܵ�Ӭ�װ�̥�ֱ�Ѯ�Ϋ�ͪ�Ϋ�Э�ϭ�Ю�Ұ�Բ�ճ�ֳ�Ӱ�Ы�ͩ�̥�ˤ�Ѫ�̣�ˠ�̡�ɞ~w��t��w��n��m��m��j��h��g��e��a�|\�~^�^�yX�qP�oP�hK�]?N01!

                                                        
 5 ;&<*>1 G7 I:#C7A5G;#J;$H8!K9#D4E5G7 G7 F6D4B2B2@1?0?0?0?0>/=.<-9*:+:+9*5(5(7*9,7*6)5(5(6)6)6)6)7(5&4%5&6'6'5&3$2'1&1&/$.#-"-".#/$.#-"-"-"-",!,!,!*))))(&	)%#$#""$#! "!!!  =0=0>1>1=0</;.;.>/=.>/?0?0=.=.=.A0A0B1B1B1B1A0A0>->->-@/B1C2B1B1C3A1@0@0B2D4D4D4@0@0A1A1A1A1A1A1B2B2B2C3E5F6G7 H8!H6 I7!J8"K9#K9#M9!K7K7I7I7J8 J8 M9!N:"N:"O;#O;"P<#R>%S?&S?&S?&S?&S?&RA'YE,WC(ZF+UA(Q?'N>'6'?'eI3dA-b?#�c@V</	         $9 
^>'uM3�bB�~[��a��i��yġ�ʧ�Ϭ�Ѯ�Ӱ�ֳ�ڷ�۸�ض�׵�ڸ�ִ�ղ�״�Ѯ�Ѯ�Գ�ֳ�ֱ�֯�Ѫ�Ӭ�ɤ�Ы�Ա�Ѯ�Ϭ�Э�Ѯ�Ұ�ճ�ٷ�ӱ�Բ�ղ�ү�Ϫ�˧�ˤ�ˤ�Χ�ʣ�ȟɞ~ǜ|��v��t��u��s��p��n��k��j��i��f��a�~^��`��_�{Z�tS�rS�lO�aCkI.:	 	                                                        !8#:&9'4'J:#I:#E9!E9!H<$I:#H8!I7!G7 G7 G7 H8!G7 F6D4C3A2@1?0?0?0>/=.<-8)9*9*:+8+8+7*7*7*6)4'4'4'5(5(5(5&5&6'5&5&4%4%4%1&1&0%/$.#-"-"-".#-",!,!,!,!+ *+ **)))(('
$###"#$#! !  !!!;.;.</</;.:-9,8+>/=.>/@1@1=.<-<-?.>->-@/B1C2C2C2B1A0A0C2E4 E4 C2@/@0@0@0@0A1A1@0@0C3C3D4D4D4D4D4C3E5C3B2C3F6I9"J:#I9"I9"I7!H6 I7!K9#M9!L8 J6I7I7J8 K9!N:"O;#O;#P<$N:!Q=$UA(UA(S?&R>%R>%T@'UD*RA'YE*\H-WC*P>&J8"<+N5iM5hE/pK0�^>]@":#

           1
B&nK5�X?�iI��d��i��n~˨�Ϭ�Ӱ�Ա�ղ�״�ٶ�ڷ�ڸ�ٷ�ܺ�ش�״�ص�ү�Ѯ�Ѯ�ү�հ�Χ�Щ�Щ�˦�Ω�Ӱ�Ѯ�Э�Э�Ѯ�ѯ�Բ�׵�Բ�ִ�״�Ա�Ы�̧�ͦ�Χ�Ϩ�ͦ�ˢ�ʟȝ}ƛ{Øx��wŘyt��p��m��m��k��g��c��c��a��`�}\�wV�uV�pS�fH|Y=Y9$1
                                                          $9$6 	4$(H9"D5F7 J;$K<%J;$K;$J8"H8!F6E5E5E5E5D4C3B3A2@1?0?0?0>/=.=.;,:+:+8+8+6)3&7*5(4'3&4'4'5(5(4%5&6'6'4%3$3$5&0%0%0%/$/$.#-"-".#-",!,!,!+ + *+ + *))))*'
$##$##$$"! !!  !#=.<-=.=.=.=.<-<-?.>->-@/@/>->-?.@/>-=,?.A0B1B1A0D3C2C2D3E4 D3B1@/D4E5E5E5C3A1A1B2?/@0B2C3C3C3B2A1F6D4C3C3E5H8!J:#K;$G7 G7 G7 J8"K9#L:"L:"N:"L:"L:"M;#M;#P<$P<$P<$P<$M9 Q=$T@'UA(S?&R>%T@'VB)UE+O?%WF*ZF+VB)T@(I7!>,U<nP6dB)kF+nK-_A'A'         
   ;]>){W?�_D�qQ��j��s��x�ͪ�Ѯ�Ա�Ա�ղ�״�ص�ش�۹�ٷ�޺�ٵ�״�ص�ԯ�ԯ�Ѯ�Ѯ�ҭ�Ω�ͨ�Ϫ�ʧ�Э�Ϭ�Э�Ѯ�Ѯ�Э�ϭ�ϭ�Ю�Ӱ�ղ�״�ղ�Ѭ�Ω�ͨ�Ω�Ω�Щ�Ϧ�ʡ�ʟʟɞ~Ûxǚ{ėv��r��o��n��k��h��f��h��c��a�~[�xW�uT�qQ�hJ�]@xV=T7%+  	                                                  	   
  &9$26&&H9"B3G8!N?(K<%J:#L<%K;$I9"F6D4C3D4E5D4B2A2A2A2A2@1?0>/<->/<-:+8)6)6)5(5(6)5(4'4'5(4'4'3&2%3&4'3&2%1$1$1$0%/$/$/$/$.#-",!.#-"-"-"-"-",!+ *+ + *)(*+ '
%$$$$$$$#####"!  !"?0>/>/>/?0?0>/=.?.>-=,>-=,<+=,>-?.>->->-?.@/@/?.C2C2C2C2C2B1B1C2D4E5E5D4A1@0A1B2A1B2C3E5E5D4B2A1D4D4C3B2B2D4G7 I9"F6G7 I9"K9#L:$L:"M;#O=%L:"L:"M;#N<$Q=%Q=%Q=%Q=%P<#Q=$R>%R>%R>%S?&T@'VB)WG-RB(XG+XD)UA(YE-M;%>,^C&uW;iG,nK/fD(^@(E+	      ,M.oO8}X>�dI�|\��j��s��á�Ϭ�ү�ղ�ֳ�ֳ�ش�ڶ�ٵ�ٵ�ش�۷�׳�ֳ�ٴ�ԯ�ԯ�ص�ղ�Ѭ�ײ�Ы�Ӯ�Ȥ�ӱ�Э�Ѯ�ү�ү�Ѯ�Ю�ϭ�ϭ�Ϭ�ү�Ա�Ա�ҭ�Ϫ�ͨ�Ω�̩�Ω�Χ�ɠ�ʞ�ˠ�ɞ~Ûxǚ{ŘwÖu��q��n��j��i��i��h��c��`�\�xU�sR�oO�hJ�dF�\BiJ5O4#4	 	                                                  	  
 '
9$1>.,H<$F7 L=&PA*K;$I9"J:#I9"K;$H8!E5D4F6F6E5D4A2A2A2B3B3@1=.<-9*:+:+9*6)6)6)7*5(5(6)6)6)5(3&2%3&2%2%2%2%2%1$0#/$/$.#/$/$/$-",!-",!,!-"-"-",!,!*+ + *)(*+ ('
&	%%%%$$########	"!@1>/=.=.=.=.;,:+@/=,<+;*:)9(9(;*=,=,>->->-?.?.?.?.@/A0@/@/A0C2E4 @0A1A1@0?/?/@0B2F6F6G7 G7 G7 E5D4C3C3D4E5C3B2C3F6I9"G7 I9"L<%L<%K;$L:"M;#N<$J8 K9!L:"M;#P<$Q=%Q=%Q=%T@'S?&R>%Q=$R>%S?&S?&S?&XG-XG-[G,XD)VB)XF.Q?):)R7hJ.a?#nL0a?$N2<#)        6[?)mM4{V<�kN��f��j��pâ�Ƥ�ͪ�Э�Ӱ�Ա�ֲ�ٵ�ڶ�ڶ�ڶ�ش�۷�ֲ�ײ�ڵ�ֱ�ײ�ֳ�ү�ͨ�ڵ�Ѭ�ӯ�Ƥ�ճ�Ӱ�ү�Э�Ϋ�Ϭ�ѯ�Ұ�ѯ�Ϭ�Ѯ�Ա�Ա�ԯ�ҭ�Ы�Ы�ͪ�ͪ�Χ�ʡ�˟�ˠ�ɞ~ĜyƙzŘwÖu��r��n��i��i��k��i��d��`��]�xU�qP�nN�iI�cF~Y>pP9bF0K0(                                                      	  "7".?.,=1A5K<%N>'J:#G7 H8!G8!J:#H8!F6E5E5E5D4D4A2A2A2B3A2@1=.;,9*;,=.=.8+5(4'3&5(5(6)6)6)5(3&1$4'3&2%2%3&3&1$/"/$.#.#.#/$/$-",!+ + + ,!,!,!+ ***+ *))))(('
%%%%###""""####! ?0=.;,;,<-<-:+8)@/=,<+<+;*9(9(:):)<+>->->-=,>-@/?.>->->-@/B1C2D3B2B2C3C3C3C3D4E5D4C3B2A1@0@0@0@0D4E5E5E5F6G7 H8!H8!I9"J:#K;$L<%L<%L:"L:"K9!J8 K9!L:"M;#P<$P<$P<$P<$T@'T@'S?&S?&S?&S?&T@'T@'WF,^J1[G,[G,WC*SA)O?(6'T:!gL/^?"oP3fF-K1;%7&        $ =$\D*gG.�[@�qT��g��l��s���ǥ�˨�Ϋ�Ѯ�ү�ձ�ش�ڶ�ٵ�۷�ٵ�۷�س�ײ�۶�س�ٴ�Ӱ�Э�Ы�ֱ�ԯ�԰�ɧ�ѱ�ղ�Ӱ�Э�Ϋ�Э�Ұ�Ұ�Ю�ԯ�ԯ�հ�ֱ�ղ�Ա�Ӱ�ү�ά�Ϋ�ͨ�ͤ�ˢ�̡�ʟ}ȝ{ǜ|ęwu��s��o��i��h��i��h��b��a��_�yV�rQ�pP�nN�`E�Y?wU<gI/P4:#"                                                        7",:)!-!	<0I:#L<%J:#I9"G8!I:#H8!G7 F6E5D4D4C3C3B3A2@1@1@1?0=.<->/>/>/<-8+6)4'3&6)5(5(5(5(4'3&1$4'3&3&3&2%2%1$0#0%.#-"-".#/$.#,!,!,!,!,!,!,!*)
*****)('
&	'
&	$$%%#$##"!!"#!""#A1?/=-=-?/?/>.=-?.=,=,>-=,;*:);*9(<+?.?.=,<+=,?.@/>-=,>-@/B1A0@/@0@0@0A1A1B2A1A1F6D4B2@0@0A1C3D4C3B2C3D4G7 H8!G7 F6H9"H9"I9"K;$M=&M=$K9!I7M;#M;#N<$O=%Q=%P<$O;#O;#R>%S?&T@'UA(T@'T@'UA(UA(WC*^J1ZE*^J/WC*L<#K<%2#Z@)lQ6Z=eF)aC)G-41      1
A(T@%gI-�eI�sV��a��o��w���Ƣ�˨�Ϋ�Ѯ�ӯ�ֲ�ٵ�ڶ�ڶ�۷�ش�ڶ�ֱ�հ�ٴ�ײ�ڲ�ֳ�ղ�س�հ�׳�԰�̪�ͭ�ֳ�ղ�Ӱ�Ѯ�Ӱ�ճ�Ұ�ͫ�ֱ�ԯ�Ӯ�ԯ�Ա�Ա�ӯ�Ү�ϭ�ͪ�̧�ͦ�̣�ˠ�ɞ|ɞ|Ɲ}w��t��s��p��k��h��h��g��b��b��a�{X�sR�sQ�sS�cH�\B{Y>lL3T6B)-                                                     9#,6% (?3M>'N>'O='K;$G8!I:#H8!H8!I9"H8!F6E5D4D4C4A2@1?0>/>/=.=.?0<-9*8)7*9,:-:-7*5(4'3&3&3&2%2%2'3(4)3(1&0%0%1&0%.#,!,!.#/$.#-".#.#.#-"-",!*)
**)*+ *'
%%&	%#$%%"&
%	$#""#$""##<-<-=.>/=.;,<-?0>-@/A0@/=,<+=,>-:)<+>-?.?.=,<+<+>-?.@/?.@/A0A0@/A1A1B2C3D4F6H8!J:#G7 H8!H8!H8!J:#L<%K;$H8!C3E5G7 G7 G7 F6F6G7 H8!K;$M=&M=&K;$J:#L<%N>'O=%O=%N<$M;#N<$O=%Q?'R@(M;#O=%Q?'R@(R@(R@(SA)SA)VB'WC(ZI-UD*TD+M>'M>)7(S7)jM-kM)P1O5$E06!5  
   
 5
@%W<'mK0�bG�pS��a��n��uà�ġ�˧�ͩ�ѭ�ձ�׳�ش�ڶ�ݹ�ཡٶ�״�״�ղ�ֱ�ײ�հ�ֱ�ԯ�ײ�״�ص�ѯ�ʨ�ѯ�Ѯ�Э�Ѯ�Ա�Բ�Բ�Բ�Բ�Ұ�ѯ�Ұ�ӱ�ִ�ִ�Բ�Ұ�ί�Ұ�Ѯ�˦�ɢ�ʣ�ɢ�Ɵ�ǜzęwØvu��s��o��i��e��i��d��b��_�yW�sR�pO�kL�jJ�_BuQ7nN5Z@%;%)"                                               4"'. 	  &F;)F:"J<"J:#J9%J9%H9"H9"F7 E6E6!E6!E6!C4!A2A5B6 C4B3A2B1@/=,;,;,;,;,;,;,=.>/9,8+7*5(4'6)5(4'4'3&1$/"/"/"/"/"- .!.!/"/"/".!.!.!.!,!,!,!+ )!)!*,!,!+ **(%##%%# ###"!!"#$#	" =.;,:+;,<-<-=.>/=,>-?.>-<+:):);*?.=,<+<+=,?.@/@/?.@/@/?.@/B1C2B1C3C3D4D4E5F6G7 H8!K;$K;$K;$J:#J:#K;$H8!E5E5F6G7 G7 F6G7 H8!J:#J:#K;$L<%L<%L<%K;$K;$K;$M;#O=%R@(R@(Q?'P>&P>&P>&P>&P>&P>&Q?'SA)TB*TB*TB*VB'YE*[J.YH.YI0TD-N?*3$Q7*dI+rU3O3=$A,@++   4	>#S9"rP5�fK�uX��d��o��và�ġ�ʦ�̨�ѭ�ձ�׳�׳�ٵ�۷�ܹ�ֳ�ղ�ֳ�Ա�հ�ײ�հ�۴�ر�ײ�հ�ֳ�Ա�ά�Բ�Ӱ�Ա�Ա�Ա�ӱ�ӱ�ӱ�ӱ�Բ�ӱ�ӱ�Բ�ճ�ճ�Բ�ӱ�ί�ѯ�Э�Χ�ˤ�̣�ʡ�Ɲʟ}ǜzØv��t��s��p��l��i��j��e��c��_�yW�tS�pO�kL�gG�aDwS9mM4\B'B,,	                                                 #,-	$  B7%F:"L>$H8!F5!G6"G8!H9"G8!F7 E6!E6!D5 B3A2@4C4B3A2A2B1@/=,>/=.=.<-;,<-<-<-7*7*5(3&4'6)7*6)5(4'2%2%2%2%2%2%.!.!/"/"/"/"/"/"- - ,!,!,!,!)!)!)*)((('
$&
%%%$"#	&$#"""#$$%	$#">/:+8)9*<-=.>/@1>->->->->-=,<+;*?.;*8'8'<+>-?.?.A0B1A0@/@/C2D3D3F6F6F6F6F6F6E5E5G7 H8!H8!H8!J:#K;$J:#G7 G7 G7 G7 F6E5G7 J:#L<%L<%K;$K;$L<%M=&M=&L<%J:#M;#P>&SA)SA)R@(P>&O=%P>&R@(P>&O=%P>&R@(TB*SA)R@(XD+XG-ZI-XG-ZJ0YI2QB-3$D.!]E+gL.]A+47!	6 ,	   	 2<!R8!vT8�jM�x[��e��n��và�Ţ�ȥ�˨�Ѯ�ֳ�ص�ص�ص�ڷ�ڷ�Ա�Ӱ�Ա�Ӯ�ԯ�հ�ԯ�ڳ�ٲ�ٱ�Ӯ�ֱ�ֳ�ѭ�ձ�Ա�״�״�Ա�Ұ�Բ�ճ�Բ�ճ�ճ�Բ�ӱ�Ұ�Ұ�Ұ�ӱ�Ұ�Ӱ�Ѭ�Ϩ�Υ�Ф�ˢ�Ǟ�͢�ȝ{Øv��r��p��o��n��l��l��f��d��_�yW�tS�pO�kL�eE�cFwS9jJ1]B'H23                                                 /"% 6# B7#F:"L>$J:#G6"H7#H9"G8!F7 F7 E6!E6!D5 C4B3A2B3B3A2A2B1A0>-@1>/=.<-=.=.=.<-7*6)5(3&3&6)6)5(3&2%2%1$2%3&2%2%0#0#/"/"/"/"/"/".!.!,!,!,!+ )!)!*+ )(()(&	&	%%&&%%	&
%$$##$$%###"<-9*8)9*:+;,=.?0>->->-?.@/?.>-=,<+;*:);*=,>->-<+A0B1B1@/A0C2D3C2E5F6F6F6E5D4C3C3B2D4E5F6H8!K;$J:#H8!G7 G7 G7 E5D4F6I9"K;$K;$K;$L<%N>'O?(O?(O?(N>'O=%P>&Q?'Q?'O=%N<$P>&SA)SA)SA)R@(R@(SA)SA)SA)R@(WF,XG-VE+TC)TD*ZJ1UD09*$[F1U;"jP91/$ -      0;!
S9 uS7�jM�x[��c��m��uġ�Ǥ�ɦ�̩�Ѯ�ֳ�ٶ�ٶ�ڷ�ܹ�ڷ�ղ�Ա�հ�ҭ�ҭ�Ӯ�ҭ�ԭ�װ�ڲ�ԯ�ֱ�״�Ү�ձ�Ա�ص�ٶ�Ա�Ұ�Բ�׵�ִ�ճ�ִ�ճ�ӱ�Ю�ϭ�ѯ�ӱ�ղ�Ա�ӫ�Ѩ�ӧ�ӧ�Ф�̠�ʟǜ|w��p��o��o��o��l��l��g��d��_�yW�uT�pO�iJ�eE�cFyT:gG.Y>#I16!                                              
 5%  6%  &D9%C7H: K;$L;'J9%F7"E6!E6!E6!E6!E6!E6!D5 D5 B3B3B3A2@1A2@1=.?0=.;,<->/?0>/<-7*7*6)4'4'5(4'2%2%2%1$1$2%2%2%1$1$1$0#/".!.!.!.!/".!-",!+ + ( ( + + + ))*)'
#$%(	(	'%#$$$$$$$$ !!!8)8)8)9*9*8):+=.>->->-?.?.>-=,;*=,>-?.@/@/?.?.?.A0B1B1A0A0B1B1A0C3D4E5E5E5D4C3B2D4E5E5E5G7 H8!G7 D4F6F6F6D4D4D4F6H8!J:#L<%M=&N>'N>'N>'N>'O?(P>&O=%P>&P>&O=%N<$Q?'UC+TB*UC+WE-VD,TB*SA)SA)TB*VD,ZI/WF,SC)P@&WG.UE.@/ R?0P7!hP62%$&   /;!T:tR6�jM�zZ��d��n��vŢ�ɦ�Ϋ�Ϭ�Ӱ�״�ص�ص�ڷ�ܹ�ڷ�ղ�ֱ�ֱ�ҭ�Ѭ�ԭ�Ӭ�ҫ�װ�ܴ�ֱ�ֱ�״�԰�ض�ղ�ٶ�ٶ�ֳ�Ұ�Բ�ִ�ִ�ִ�׵�׵�Բ�ѯ�Ю�Ұ�Բ�ֳ�Ӱ�ӫ�Ѩ�ӧ�ӧ�ѥ�΢�ƛ{ƛ{Øx��t��q��p��o��k��k��f��c��^�yW�uT�qP�iJ�eE�cFzU;jJ1X="B*2#                                              + -   %C8$A5G9I9"J9'H7%D5 D5 D5 E6!E6!E6!D5 D5 D5 C4D5 C4A2@1A2@1=.>/<-:+;,=.>/=.<-7*8+7*5(5(5(3&0#4'4'3&3&3&3&3&2%1$0#/".!.!.!.!.!.!.!-",!+ + )!( *+ + ***(%$%&&''%#$$$$$###!!""9*9*;,=.<-:+;,>/@/@/@/@/?.>-=,<+?.@/@/?.>->-@/B1@/B1B1A0B1B1B1@/B2C3D4D4E5D4D4C3G7 G7 G7 G7 H8!I9"H8!E5D4E5E5D4C3D4F6G7 J:#K;$L<%L<%K;$K;$L<%M=&O=%O=%P>&TB*TB*R@(R@(TB*Q?'TB*VD,VD,R@(P>&Q?'R@(UC+ZI/XH.YI/P@&UE,TD-D37%K4"[C)<( &     /=#
X?!uS7�lO�|\��g��o��uƤ�˨�Ѯ�ү�ղ�״�ص�״�ص�ڷ�ٴ�հ�հ�ֱ�Ӯ�ԭ�֯�ծ�ԯ�ֱ�ڵ�ղ�ֳ�׵�ճ�ݻ�״�ص�ٶ�״�Բ�ӱ�ӱ�Բ�ִ�׵�ض�ִ�Բ�Բ�ճ�׵�Բ�Ӱ�Ѭ�Щ�Ч�ѥ�ͤ�ˢ�ƛ{ǜ|ƛ{w��u��r��o��k��i��e��b�]�yW�wV�rQ�jK�dD�cG~Y?rP7Z?$?'-                                              	! #   C8$F: K=#I9"G6$G6$F7"E6!E6!F7"E6!D5 C4C4C4D3D3C2@1@1@1?0=.>/=.<-<-<-<-;,9*5(7*7*6)6)6)4'1$5(4'3&2%2%2%2%1$/"/".!.!.!/"/"/",,,!,!,!,!*"*"*+ + **)'
$&
&
&	$$%&	%##$$$#"!!!!";,:+;,>/>/>/>/@1@/A0B1A0?.>->-?.@/?.=,<+=,>-@/A0@/A0B1A0A0C2C2B1C3C3D4E5F6F6F6F6G7 H8!H8!H8!J:#L<%J:#H8!D4E5E5D4D4E5H8!J:#K;$J:#I9"J:#K;$K;$L<%K;$P>&N<$P>&UC+WE-SA)Q?'R@(O=%Q?'SA)SA)Q?'P>&Q?'SA)RB)WG.VF,[K1P@&TD+UC-K9#5*!B+E-F4         .?%\C%tR6�mM�~^��h��o��vǥ�̩�Э�Ѯ�Ա�״�״�ղ�ֳ�״�س�ԯ�հ�ֱ�խ�ծ�װ�װ�ٴ�ֳ�ص�״�ٷ�ַ�ҳ�ٺ�״�ղ�ֳ�ٶ�׵�ӱ�ѯ�ӱ�Բ�ճ�׵�׵�ִ�ִ�׵�׵�Ӵ�ӱ�Ӱ�Ӭ�Щ�Υ�ˢ�ɠ�ɝ�ˠ�ȝ}Øx��u��r��o��j��h��d��b�]�yW�yX�tS�kL�eE�cG~Y?tR9`B(C+.                                              %   E:$I=#N@&J:#G6$G6$H9&E6#F7"F7"E6!D5 C4C4C4C2C2B1?0?0@1?0;/?0>/>/=.;,:+9*8)6)6)6)5(5(6)6)4'5(4'2%1$1$2%2%1$0#0#0#0#/"/"/".!- - ,!,!,!,!*"*"+ + + )((&	#"$
%	$#$%$"#$$$#"!!   :+8)7(:+=.>/>/>/<+=,?.?.=,=,>-@/A0?.=,>-@/B1B1A0@/A0A0@/A0D3E4 E4 D4D4E5F6G7 G7 H8!H8!I9"I9"I9"I9"J:#K;$I9"G7 E5E5E5D4D4F6J:#M=&L<%I9"G7 H8!L<%N>'N>'L<%R@(N<$N<$SA)UC+R@(P>&Q?'R@(R@(SA)SA)SA)TB*UC+VD,QA(TD+RB(ZJ0O?%UC+WE/P>(:/ =&* I7

      -?%\C$rQ2�kK�}]��h��o��vȦ�ͪ�ͪ�Ϭ�Ӱ�״�״�ղ�ղ�ֳ�ײ�ԯ�հ�ֱ�խ�ծ�װ�װ�ٶ�Ա�ճ�ض�ۼ�׸�ΰ�ӵ�ֳ�ү�Ա�ٶ�ٷ�ӱ�ѯ�ӱ�ѯ�ӱ�ճ�ִ�׵�׵�ִ�ִ�Ե�ִ�ֳ�հ�Ӭ�ͦ�ɢ�ȡ�̠�͡�ɞ~w��s��s��n��j��h��d��b�]�zX�zY�vU�lM�fF�cG}X>qO6`B(H02                                                  %    'G<&F: J<"I9"H7%G6$E6#C4!E6#F7"E6!D5 C4C4D5A0A0@/>/>/?0=1;/>/>/>/=.;,:+9*9*7*7*6)4'4'6)6)5(7*6)4'3&3&4'4'4'2%2%2%1$0#.!- ,/"/"-",!+ *( '
))'
%$$"  %	%	$$" ##$%$#"!"!!!9*8)9*:+8)6'9*>/?0@1@1?0=.;,;,;,>/<-;,<-=.>/=.;,<-<-?0B3C4A2B3D5 C4C4C4D5 E6!F7"H9$H9$C4G8!K<%K<%I:#H9"G8!E6E4 F5!H8!H8!G7 G7 I9 K;"H8!J:#K;$J:#L:$N<&N<&M;%O?&N>%O?&O?&QA(RB)RB)QA(SC)SB(Q@&Q@&TC)YE,WC*S?&ZF-XG-WG-VF,UE+UE+VE+YE,C4! ,/C.        
   ->"_D'vS7�jM�_��h��pvĠ|ǥ�ġ�ȥ�Ϋ�ү�ղ�ղ�ֳ�ֳ�ٯ�ڰ�ڲ�ٱ�հ�Ա�ղ�״�׵�ڸ�ڸ�ٷ�ض�Ӵ�ҳ�׸�ֳ�ֲ�ٵ�ڸ�ٷ�ִ�ճ�׵�ٹ�׸�׵�ִ�ִ�ִ�ֳ�ղ�մ�մ�Ա�ҭ�Щ�Υ�ͤ�ϣ�ɠ�Ɲ}Úz��v��t��s��r��q��h��g��b�]�{Y�wV�sR�oN�fI�aFW=oL0`C%O55 
                                       	  " %   	'9-I=%K="H8G7 I7#H5$C4D5 E6!D5 C4B3C4D5E4 C2A0?0>/>/>/>/<-<-<-=.=.;,9*7(8+7*6)6)8+7*5(3&3&3&3&2%2%3&3&3&1$/".!/"/"- +,-"+ + -",!)
)
*+ *((('
%$&	&	&	$##$%%%%%$#""""""8):+<-<-:+8);,?0=.=.<-<-=.=.<-<-@1>/<-=.?0A2A2@1@1@1A2C4C4A2A2B3D5 D5 E6!E6!D5 C4B3A2D5F7 H9"H9"I:#I:#H9"E6H7#H7#I9"I9"I9"I9"I9 J:!G7 I9"J:#J:#L:$M;%M;%L:$M=$M=$N>%O?&P@'P@'P@'O?&P@&SB(SB(SB(TC)YE,YE,XD+ZF-VE+TD*TD*VF,WG-YH.\H/A0 .-8#    
  	  />"]B%wT8�mP��d��l��p��uzƤ�ʧ�ͪ�Ѯ�Ա�ղ�ղ�ֳ�ֳ�ٯ�ٱ�ٱ�ֱ�ԯ�Ӱ�Ա�ֳ�׵�ڸ�ٷ�ٷ�ٷ�Ե�ն�ڻ�ص�ش�ٵ�ڸ�ٷ�ִ�ճ�׵�ֶ�ն�Ե�׵�׵�׵�ճ�ղ�մ�մ�ղ�ԯ�Ѫ�ͦ�ˢ�ʡ�ɠ�Ɵ~ĝ|��y��w��t��r��o��f��f��d��a��^�zY�sR�lK�gJ�bG�Y?qN2bE'R88!"                                       	 *"  1$?3J>&L>$K;"K;$L:&J7&D5 D5 E6!D5 C4B3C4D5D3C2B1@1@1?0?0>/<-<-<-<-<-<-:+9*6)5(5(6)7*7*6)4'4'4'4'3&3&3&3&3&3&1$0#1$1$/".!.!/$-",!.#-"+ *+ )))('
'
'
('
'
&	%#"#$""##$##"$$$$5&9*;,9*6'6'8):+<-:+9*:+<-?0?0>/C4@1>/>/@1B3C4D5 E6!D5 E6!E6!D5 C4C4D5 C4D5 F7"G8#G8#E6!D5 C4F7 F7 F7 F7 I:#K<%J;$G8!I8$I8$I9"I9"I9"I9"H8G7G7 I9"J:#J:#L:$M;%M;%L:$K;"L<#M=$N>%O?&O?&M=$L<#N>$RA'UD*TC)TC)WC*YE,ZF-\H/WF,SC)TD*VF,XH.YH.ZF-G6" %)0+	         -;	X= {V;�qT��h��o��q��t��zţ�˨�Ϋ�Ѯ�Ա�Ա�Ա�ղ�ֳ�ٱ�ڲ�ڲ�ײ�հ�Ա�ղ�ֳ�ض�ڸ�ڸ�ٷ�ڸ�ն�׸�ݾ�ڷ�ش�׵�׵�׵�ִ�ӳ�ӳ�Դ�Դ�յ�ض�ٷ�ض�ִ�Բ�ճ�մ�ֳ�հ�ҭ�Ϩ�ͤ�ˢ�ɢ�ȡ�Ɵ�ĝ|��y��v��p��n��g��f��d��b��`�}\�tS�lK�jJ�dHW=nL0aC'S9<&(                                          	 ,    ;.C7!K<%J<"K;"L<%K:&G6$E6!E6!E6!E6!D5 C4D5D5C2C2B1A2A2A2?0>/>/=.<-<-<-<-;,:+6)5(5(5(7*7*6)4'6)5(5(4'3&3&3&3&3&2%1$2%2%0#/"/"/$-",!-".#-"+ + ()*)'
&	(*'
'
'
&	$###&	%%'
(('
%$###=.A2A2=.<->/>/<-:+9*:+;,>/@1A2A2D5 C4A2@1A2B3C4C4E6!E6!E6!D5 D5 D5 E6!F7"C4D5 F7"G8#H9$H9$G8#F7"F7 G8!F7 F7 G8!J;$J;$I:#H7#G6"G7 G7 H8!H8!G7F6G7 H8!I9"J:#L:$M;%M;%L:$L:"M;#N<$O=%P>&O=%M;#K9!N>$RA'TC)SB(SB(VB)XD+XD+ZF-VE+TD*TD*VF,XH.YH.ZF-P>(.  +-9(         +>"[@#Z?�sT��h��n��q��t��{Ţ�ȥ�˨�Э�Ա�ղ�ֳ�״�״�ٱ�ײ�ײ�ײ�ղ�ղ�ֳ�״�ڸ�ܺ�۹�ڸ�ڸ�ַ�׸�ݾ�ٷ�׵�ճ�ճ�ִ�Դ�ӳ�Ҳ�յ�յ�ֶ�׷�ٷ�ض�ִ�Բ�ճ�ճ�ֳ�ղ�Ӯ�ҫ�Ϩ�ͦ�ˤ�ʣ�Ǡ�ĝ|��y��s��o��m��j��g��c��`��_�~]�xW�qP�lL�cGzU:iG,^@$S9?).                                           (    "?3D8"J;$I;!I;!K;$J9%F5!F7"F7"F7"E6!E6!D5D5D5C2B1B1A2A2A2@1?0@1?0>/=.<-<-;,:+8+7*6)6)6)6)5(4'5(5(4'4'3&3&3&3&2%1$0#0#0#0#/"/".#,!+ ,!-"-"+ *)***('
'
(&	&	&	&	%$$$%$"#$$" ""!!<-=.;,8)9*=.<-8):+<-?0@1?0@1B3C4D5 C4C4D5 D5 D5 D5 C4C4C4C4B3B3C4D5 E6!G8#G8#F7"F7"E6!E6!D5 D5 E6G8!G8!E6D5F7 H9"H9"H7#G6"G7 H8!J:#K;$J:!I9 J:#J:#J:#J:#K9#K9#K9#K9#N<$N<$O=%P>&P>&O=%M;#K9!P@&RA'RA'SB(UD*YE,XD+VB)UA(TC)TD*UE+VF,XH.ZI/\H/SA)D3!$0( 6$(          -	B&bG*�]@�rT��d��j��q��wß}Ƣ�Ǥ�˨�Ѯ�ֳ�ص�ٶ�ڷ�ڷ�ֱ�ֱ�ֱ�ղ�ղ�ղ�ֳ�ֳ�ٷ�ܺ�ܺ�۹�۹�׸�׸�ݾ�ڸ�ض�ִ�ճ�Ե�յ�յ�Դ�׹�ظ�ظ�ظ�ֶ�׵�ִ�ճ�ִ�ճ�ղ�Ӱ�ҭ�Ы�Ω�Χ�̧�ˤ�Ǡ�Ü{��w��q��n��k��k��g��b��_��_��_�{Z�tS�mM�dHzU;iG,^@$S9B)/
                                          
!	      )"E6!I:%L=&K<%J;$L<%K:&I8$F7"F7"F7"E6!E6!E6D5D5C2B1A0?0?0@1@1@1>/>/>/>/>/=.;,:+9,8+8+7*7*6)6)5(4'4'4'3&3&3&3&3&2%1$0#/"/"0#/".!-"-",!,!-"-",!**))**)(&	$$%%&	&	%%'
%#"""!!##""?0?0>/>/@1C4B3@1<-?0C4C4A2@1A2D5 B3C4E6!F7"G8#F7"F7"E6!E6!F7"F7"D5 C4D5 E6!E6!I:%H9$G8#F7"E6!E6!E6!E6!C4E6F7 C4B3C4E6F7 I8$H7#I9"J:#K;$M=&N>%N>%M=&K;$J:#J:#J8"I7!I7!J8"O=%O=%O=%P>&Q?'Q?'P>&O=%QA'Q@&Q@&SB(WF,\H/[G.WC*WC*VE+WG-WG-VF,UE+WF,ZF-XD+P?+"($ /	,        &<!_D)�^B�qS��`��h��q��yĠ�Ƣ�ƣ�ʧ�Э�Ա�״�ص�ص�ٶ�ص�ص�״�״�״�״�ص�ص�׵�ڸ�۹�ܺ�ܺ�ع�ع�ݾ�۹�ڸ�ٷ�ն�ն�ֶ�׷�ֶ�׹�׹�׹�׷�ֶ�յ�Ե�׵�׵�ճ�Ա�Ѯ�Ϭ�Ω�̧�˦�̧�ɤ�Ɵ�z��v��p��m��k��i��g��e��c��c��a�|[�uT�nK�fG|W=lJ/bD(V<!B*-%                                       
       -'G8#J;$M>'L=&J;$J;$J;$I:%G8#F7"E6!E6!E6!E6D5C4D3B1@/?0?0@1@1@1<-<-=.=.>/>/=.<-8+8+8+7*7*7*7*7*4'4'3&3&3&3&3&3&3&3&2%0#/"0#0#.!-".#.#-",!-"-"+ )(()+ *(&	$$$$%&	&	%&%
$	#""##"""":+:+<->/?0=.=.=.?0A2C4B3@1@1A2B3A2C4E6!F7"F7"F7"E6!E6!F7"G8#G8#E6!D5 E6!F7"E6!F7"F7"F7"F7"F7"G8#H9$H9$C4D5D5C4B3D5D5C4G6"G6"H8!H8!I9"K;$N>%O?&K;$I9"G7 G7 H6 H6 I7!K9#O=%N<$N<$O=%Q?'R@(SA)SA)QA'RA'RA'SB(XG-\H/ZF-VB)\H/YH.WG-VF,VF,VF,WF,YE,]H-TB.$ ! ,(	           	 6^C(�_D�rT��`��h��szĠ�Š�Ǥ�ʧ�Ϋ�Ѯ�Ӱ�Ա�ֳ�ص�۸�ڷ�ٶ�ص�ص�ص�ص�ص�ճ�ڸ�ܺ�ݻ�ݻ�׸�ַ�ۼ�۹�ܺ�ٺ�ն�Ե�յ�ֶ�շ�Զ�շ�ָ�ֶ�յ�յ�յ�ַ�׵�ճ�Ӱ�Ѯ�Э�Ϋ�̩�˨�ʥ�Ǣ�Ş��y��v��q��m��l��j��j��i��f��e��b�}\�wV�nK�fG{V<lJ/cE)Y>!E-3,                                       
  		   	
92I:#K<%K<%I:%I:%J;$J;$I:#G8#F7"E6!E6!E6!E6D5C4D3C2B1@1@1@1@1?0=.=.<-<-=.=.=.<-8+8+8+7*6)6)7*7*5(5(4'4'3&3&3&3&4'4'2%0#/"0#0#.!+ .#/$-"+ ,!,!,!*))(((('
&	%##$$$# "!   !:+<-@1D5 A2;,;,>/B3A2A2@1@1@1@1A2B3C4D5 E6!D5 C4C4B3B3D5 E6!C4B3D5 D5 C4E6!E6!D5 D5 D5 D5 E6!E6!D5E6D5C4E6F7 E6C4C2D3E5E5E5G7 K;"M=$H8!E5D4E5G5H6 K9#N<&N<$M;#M;#N<$Q?'TB*VD,WE-QA'RA'RA'SB(VE+ZF-XD+T@'[G.WF,SC)TD*WG-ZJ0]L2_K2]H+XF02"
  & #           :
gL1�_B�sS��b��j��s|ßğ�ɦ�˨�Ϋ�Ѯ�ү�ղ�ص�ڷ�ٶ�ص�ֳ�ղ�ղ�Ա�Ա�Ӱ�ִ�ڸ�ݻ�޼�ݻ�ַ�Ե�ع�ڸ�۹�ٺ�ն�ҳ�ӳ�ӵ�ӵ�ѳ�Ҵ�Զ�շ�ֶ�յ�ֶ�׷�ִ�ճ�Ա�Ӱ�ү�Ѯ�Ϭ�ͪ�ȣ�ơ�ßz��w��r��n��l��m��m��k��g��d��a�~]�yX�nK�dExS9hF+aC'Z?"I19 
0	                                       	  	    	F=N>'L=&J;&I:%I:%K<'K<%I:#G8#F7"E6!D5 E6!E6D5B3D3C2C2B3B3A2@1?0@1?0=.;,;,;,;,;,9,9,8+7*5(5(5(6)7*6)5(4'4'3&3&2%4'4'2%/".!/"/"- )
-"/$,!)
*+ + + + *(&	%&	((&	$###"!"$	$	!   !;,<-=.>/>/=.<-<-A0B1D3E4 E4 D3C2B1C4A2?0@1B3D5 D5 C4C4C4C4D5F7 G8!G8!G8!I8$I8$G6"F5!G6"I8$H7#F5!D5 A2?0A2E6!H9$H9$G8#F6H8!H8!F6F6H8!J:#I9"F6F6F6E5D4F6J:#M=&M;#M;#M;#N<$O=%P>&P>&P>&P>&P>&R@(TB*VE+VE+UD*SB(XH.YI/WF,WF,ZI/\H/[G.]I0[M0VF/1'          >"kN.�aA�pN��`��o��uÜ{š�Ǥ�ʧ�Ϭ�Ϭ�Ϭ�Ӱ�ֱ�հ�հ�س�հ�հ�ײ�س�ײ�ײ�ٴ�ٵ�߻�ྣྣݽ�ں�ָ�غ�ݺ�޻�ٶ�ղ�ִ�׵�ִ�ض�ٷ�׸�׸�Զ�Ե�Դ�׵�ڶ�ү�Ա�Ӱ�Ϭ�̩�ͪ�̩�ʧ�ġ���~��y��x��u��q��o��o��q��q��o��j��i��l��e�tV�nN�aE{V;nL3`A,T8"F+8( 
                                           ' MD'J;$K<%L=&K<%J;$H9"H9"H9"G6"H7#G6"G6"F5!E4 E4 E4 C2B1B1A2@1?0=.<-=.=.=.<-;,:+:+:+8+8+7*7*7*7*8+8+6)4'4'5(4'2%3&5(3&2%0#0#1$1$0#/".!- + *)
*)!*"**+ + *)('
%$##$$#"  !"
!	 !!"#A2@1>/=.<-<-=.>/>/@1C4E6!E6!E6!D5 D5 B3B3B3E6!G8#G8#F7"D5 F7 E6E6E6F7 F7 F7 E6A0C2D3C2C2D3D3C2E6!D5 C4D5 F7"F7"E6!C4C3E5F6E5F6I9"K;$K;$J:#J:#I9"H8!H8!I9"K;$L<%SA)Q?'M;#K9!L:"N<$Q?'SA)N<$O=%Q?'SA)UD*UD*UD*TC)VF,XH.WF,VE+ZI/]I0\H/^J1\M0TD--        
 B&lM0�cC�oO��]��j��rĞzȤ�ͨ�˨�Э�Ϭ�ͪ�Ϭ�Ѭ�ҭ�հ�հ�ҭ�Ы�Ѭ�ҭ�ҭ�Ӯ�հ�Ա�׳�׳�ٷ�ܽ�ۻ�ֶ�Զ�۸�ܹ�ص�Ա�Բ�ճ�Բ�ִ�Բ�ҳ�Ӵ�ҳ�ҳ�ӱ�ӱ�ձ�ճ�Բ�ϭ�ɧ�ǥ�ɦ�ʧ�ɦ���}��}��z��v��p��j��k��o��p��m��n��p��k��d�^�yX�rR�aCuP5fF-]A)W=&H06& 	                                         81!L@&M>'N?(N?(L=&I:#G8!F7 F7 F5!G6"H7#G6"F5!E4 D3D3E4 D3C2B3A2A2?0>/>/=.<-;,:+:+:+;,7*7*6)6)5(5(6)6)6)5(4'4'3&1$1$3&4'2%1$1$1$1$0#.!0#/",!+ *)
'
'
(())**))%$##%%$#""""
!	  !E6#C4!A2?0?0?0A2A2C4D5 F7"F7"E6!D5 C4C4A2A2C4E6!G8#G8#F7"D5 E6D5D5D5D5C4B3A2@/C2F5!E4 D3E4 F5!F5!D5 D5 D5 D5 E6!E6!F7"F7"F6H8!G7 F6E5F6G7 G7 J:#I9"H8!H8!I9"I9"I9"I9"N<$M;#L:"K9!K9!L:"M;#M;#L:"N<$P>&R@(RA'SB(TC)UD*VE+WF,VE+VE+ZI/[J0\H/^J1aN0WE-0  	 
       *F*jK.�cF�nN�}[��g��qĜyˤ�ͨ�ɧ�ά�Ϭ�̩�ͪ�Ω�Ϫ�ҭ�խ�Ҫ�Ш�Ш�ѩ�Ҫ�ҭ�ԯ�ԯ�ղ�ղ�ش�ݻ�ݻ�ַ�ַ�۸�ݺ�ٶ�ղ�ֳ�ճ�Բ�ִ�Բ�ճ�Ӵ�Ӵ�ҳ�ӱ�԰�԰�ͮ�ϭ�ϭ�ά�ͫ�ʧ�à���}��u��m��j��l��q��q��m��i��h��j��i��b��^��c��b�yW�rS�jL�^CoP4]A)Q9B,2$ 	                                         J>.H: PA*PA*N?(L=&I:#G8!F7 E6F5!G6"H7#H7#G6"F5!D3D3D3C2B1@1@1@1?0?0@1=.;,:+:+;,;,;,8+7*6)6)5(5(5(5(6)4'4'3&2%0#1$2%3&2%1$0#1$0#/".!1$0#-",!+ )
'
&	'
'
()))))%$#$%&	%$     !   A4!A4!A4!A4!B5"B5"B5"B5"F7"F7"F7"E6!D5 C4B3C4C4B3B3C4D5 E6!E6!E6!B3B3B3B3C4B3B3A2C4F7"G8#F7"F7"H9$H9$H9$D5 E6!E6!D5 C4D5 G8#I:%I9"I9"H8!G7 F6E5F6F6G7 F6F6G7 I9"J:#I9"G7 H6I7J8 J8 J8 J8 J8 J8 K9!N<$P>&Q?'P?%P?%SB(UD*UD*WF,UD*VE+ZI/ZI/YH.[J0aL/\K18+          6O1jK/�`B�kK�|Z��h��rŝzȡ�ˤ�ţ�ʨ�̩�̩�Ω�̧�ɤ�̥�Ѩ�Χ�ͦ�Φ�Ш�ӫ�խ�ׯ�ׯ�ڵ�۶�ڷ�۸�ض�׵�ڸ�۶�ݸ�ٶ�ղ�ֳ�ֳ�Բ�ճ�ӯ�ճ�ִ�ճ�Ұ�Ѯ�Ѯ�ԯ�ү�̩�ƣ�ġ�Ġ�ß��}��{��m��k��h��c��`��a��c��e��n��b��d��q��o��a�yZ�yZ�gG�fH�aFpQ5X>#K3@+4 ! 	                                         .%M@/F6QB+PA*N?(L=&J;$H9"H9"H9"F5!G6"I8$H7#G6"F5!E4 E4 D3C2B1@1@1?0?0>/?0=.:+:+;,<-;,:+8+8+8+7*7*6)6)6)4'4'4'3&2%1$2%3&2%0#/"/"0#0#/"- /"/"-"+ + + )!)!*)))((('
&	%$%&	&	&	%!!  A4!@3 @3 A4!B5"C6#C6#B5"E6!E6!D5 C4C4C4E6!F7"E6!D5 D5 D5 E6!E6!E6!E6!A2B3C4D5 D5 C4C4C4E6!E6!D5 B3D5 F7"G8#E6!F7"H9$H9$G8#C4B3D5 F7"G7 G7 G7 H8!H8!H8!I9"J:#I9"H8!H8!J:#K;$L<%K;$I9"M;#L:"K9!I7I7J8 N<$Q?'L:"O=%Q?'P>&O>$O>$RA'VE+UD*WF,UD*UD*YH.YH.XG-ZI/_G-_N4F:$
  	       
 G.V8lM1�^@�jJ�|Z��h��sǜzɠ�ʣ�ȥ�ʧ�ɦ�ʥ�Χ�ʣ�Ŝ~ě}ɝ�ȟ�ʡ�̣�Ч�Ӭ�խ�֮�ر�ܵ�ܵ�س�س�ղ�ղ�ٶ�ֱ�ڵ�س�Ӱ�Ӱ�Ӱ�Ѯ�Ӱ�ϫ�ү�Ұ�Ю�̪�˨�ͨ�Ѫ�ҫ�ʣ�Ü{��y��x��t��p��o��m��d�zX�tR�uS�xY�yZ�wX�jM�iL�fI�`C�`C�lP�vZ�uY�kM�hK�`DmO5W=$I4?+3  	                                          @7(D7$M=&QB+O@)N?(L=&K<%J;$J;$I:#H7#I8$I8$H7#G6"F5!F5!G6"F5!E4 C2A2A2A2@1@1>/<-;,;,=.=.;,8)8+8+8+8+8+8+7*7*4'5(4'3&2%2%3&3&1$0#/"/"0#0#/".!0#.!,!**+ *"*"+ + *)(('
'
'
&	%%&	&	%$$	#! C6#A4!>1>1?2A4!A4!B5"C7!C7!B6 A5@4@4B6 C7!B3C4E6!F7"F7"E6!C4A2A2B3C4D5 C4C4B3B3D5 C4@1?0A2D5 D5 B3C4F7"J;&J;&G8#D5 C4D5 G7 G7 H8!I9"I9"H8!H8!J:#K;$J:#J:#K;$K;$K;$K;$J:#M;#N<$N<$N<$M;#M;#N<$O=%O=%P>&Q?'P>&O>$P?%SB(WF,YE,ZF-VE+UD*XG-XG-XG-ZI/^F.cO4VH-,   
        R8![< mK2�^B�iL�{Y��g��qƛyɠ�ͤ�Ω�̨�ǣ�Ǡ�ɠ�ǜ|��t��t��tØxǜ|ɠ�Υ�ҫ�ԭ�ԭ�ٰ�ٰ�ծ�ծ�س�س�հ�Ա�ԯ�س�ײ�Ӯ�Ӱ�ү�Ѯ�Ӱ�Ѭ�Ѯ�Ѯ�Ϭ�̩�ɤ�Ȥ�ɢ�w��q��q��t��u��m��g��d�`DsQ5fC'hE'vQ4|W:uN1g@#e@%e@%sN3�\B�X>yQ7�X>�eK�]@�]B]BmR7W=$E/;%2
 
                                        0*>6!;/PA,PA*O@)M>'L=&K<%J;$I:#H9"I8$I8$I8$H7#G6"F5!F5!G6"E4 D3C2A2@1?0>/=.<-<-<-<-=.<-:+9*7*7*7*7*7*7*7*7*6)7*6)3&2%2%2%1$3&1$0#0#1$1$0#/"0#/",!+ **)!)!+ + *)((((('
&	%&	&	%$&	&	%#""!!    E8%B5"@3 ?2@3 A4!A4!@3 D8"D8"D8"C7!B6 @4@4@4@1B3D5 F7"E6!D5 B3A2@1B3C4D5 C4B3B3B3C4D5 C4A2A2D5 D5 C4B3E6!H9$I:%G8#F7"F7"G8#H8!G7 H8!I9"I9"G7 G7 I9"J:#J:#J:#J:#I9"J:#K;$L<%H6L:"P>&R@(Q?'N<$M;#M;#P>&Q?'Q?'P>&P?%RA'UD*YH.[G.\H/YE,UD*YH.YH.XH.[K1`J5bN3`P/F7              V<!Z;jH/�^B�iL�zX��e��m��rƛ{ɠ�Ǡ�Ş}��x��t��s��m��h��i��k��n��sęwǞ~ͤ�Χ�ͦ�Ԩ�Ӫ�Ӫ�ԫ�ٲ�ײ�ԯ�Ӯ�ҭ�ײ�ֱ�Ӯ�ԯ�ү�Ѯ�Ӱ�ԯ�ҭ�Ϋ�̩�ɦ�Ġ���x��p��m�~^�kM}[?kL0Z<"O3M1B$E'F&H&J&P+V.W/g>"pG+xO3rI-h?#f=!i@$g>"a>"b@%eE,^B*K3=%7!	6   
                                       ;4$>3;/L=(N?(M>'L=&K<%K<%J;$I:#G8!G6"H7#H7#H7#G6"F5!E4 F5!D3C2B1@1?0=.<-:+<-<-<-<-<-;,;,:+7*7*7*8+7*7*6)6)5(6)6)2%1$1$1$1$3&2%0#0#0#0#.!- /".!-",!+ *'
&	+ *)((((('
&	%%&	&	%$$$$##### !!"C8$A6"A6"B7#C8$C8$@5!>3@4A5D8"E9#D8"C7!B6 A5C4D5 E6!E6!E6!E6!E6!E6!A2C4E6!E6!E6!D5 D5 D5 B3E6!F7"D5 C4D5 E6!F7"H9$H9$H9$F7"D5 D5 E6!G8#D4C3E5H8!I9"H8!I9"L<%H8!I9"J:#J:#I9"J:#M=&O?(K9!M;#O=%O=%O=%O=%Q?'SA)Q?'Q?'Q?'Q?'Q@&TC)WF,ZI/]I0]I0ZF-VE+YH.ZI/ZJ0]M3`K8]J,bO.TD*	         	 " ZA#Z;jH/�[?�hK�{[��d��j��m��rØx��m��n��j��i��g��^�|X�~Z��c��f��k��n��tŜ|ǠƟ~ʞ�ѥ�Ӫ�ԫ�ծ�Ӭ�Ы�Ӯ�ѩ�ԯ�ԯ�Ѭ�ҭ�Э�Ϭ�Ѯ�Ӯ�ͨ�ƣ�ġ���w��g�{[~[=nL0^?#T6G-:!4	5 B'I-O0R2[8"pJ3�cJ�t[�}`�{^�|_�y\�pS�iL�fI�cFmK0^>%U7L2A(9 
53   	                                    70C9 A7E8%K<%J;$J;$J;$K<%J;$I:#G8!F5!G6"H7#H7#G6"E4 D3D3E4 D3C2A2@1>/<-;,<-=.=.<-;,:+;,<-8+8+8+8+8+7*6)5(3&5(4'1$0#2%2%1$3&1$/"/".!.!,*
,- -"-",!*'
%+ *)('
'
'
'
'
%%%&	&	&	$$$$#"!  !"C6#B5"A4!@3 @3 A4!A4!A4!B3 D5"E6#E6#F7$G8%G8%F7$I:'I:'H9&E6#D5"D5"D5"B3 E6!@1@1F7"H9$D5 A2B3F7"E6!D5 C4B3C4D5 E6!J:#J:#K;$J:#I9"I9"K;$L<%G6"G6"G6"H7#I9"J:#K;$L<%H8!J:#L<%L<%L<%K;$K;$L<%J<"K=#N>%N>%O=%N<$N<$P<$P>&R@(SA)O=%N<$Q?'VD,YG/]I0[G.[G.[J0[J0ZI/YI/ZJ0`L3]L2dT:O@)-	         	   Y;#dE)iK/�V9�jL�xX�~^��g��j��e�|_�}]�}]�~`�rS�gJpM1tR7�dH�pL�iE�\�^�wV��_��c��kǚ{ƛ{ˤ�Ь�˨�Ǥ�ͩ�֯�˨�Ϋ�Ϫ�ͨ�Ω�ҭ�Ӯ�Ы�ͨ�ƥ���}��r��k��c�jLuN-b8C! 7&	   ( . H)_>+vS?�jV�v_��f��j��u��w��p��p��l�~b�}b�uX�bHnK/Y7?$	' ( 1'  	                            C;(I>(=2C8$<4!B:'G<(I<)K<'M=&J:!E3G8!G8!G8!F7"E6!D5 C4B3C4B3@1>/>/>/=.=.8+:-</;.8+7*9,</=,;,9*7(6'4(4(2&3(3(2'2'2'1&0%0%1&0%/$.#.#-"+ *.#,!**,!,!+ )
****(%$&	$&	%#$&	'
%%%%$#""! !!!@3 @3 ?2?2@3 @3 @3 @3 E6#E6#E6#D5"E6#G8%G8%E6#?0A2B3 A2@1@1?0<-@1@1A2C4C4B3A2A2C4D5 D5 C4B3B3D5 E6!D4F6J:#L<%K;$J:#I9"I9"I8$H7#H7#H7#H8!I9"J:#J:#J:#J:#K;$L<%L<%M=&L<%L<%I9 J:!K;"K;"L<#N<$O=%Q?'O=%P>&R@(SA)R@(R@(SA)TB*ZF-YE,ZF-YH.YH.WF,XH.[K1`L3WG-XJ/G8!6&      	  Y:%dB'gH,yQ7�bE�sT��c��d�kK�]@�kN�dFwN0jC&]6Y4M*O-_="eC'[< fG+bD*bB)pP7sQ6xV;�mM��`��sŞ}ǠǠšƢ�ɦ�̩�ͪ�̧�Ω�Ҫ�Ѫ�Χ�˦�ƥ���|��m��e�~`�oP�Y:dB)F&8- % ' ( -=P0[7oG-�W>�iN�pS�x[�~d��h�e��h��h�|c�|`�pU�iOyU;bC'I-2,)	                                        1*=58-/$1)1)5*:/A5H9"N>%QA(H9"H9"G8!E6!D5 D5 C4C4C4B3A2@1>/=.=.<-9,9,:-8+7*6)7*9,9*:+9*8)8)7+6*4(3(3(3(2'2'1&0%0%.#.#.#.#.#.#-",!.#,!+ + + + + )
****(&	%&	%&	&	$$&	'
&	$$##""""  C6#C6#C6#C6#D7$D7$D7$D7$F7$F7$E6#C4!D5"D5"A2=.F7$G8%H9&F7$F7$F7$E6#D5"?0C4D5 B3A2C4D5 C4E6!F7"G8#F7"D5 D5 E6!G8#C3F6I9"K;$K;$I9"G7 F6I8$I8$H7#H7#H8!I9"I9"J:#K;$J:#I9"J:#L<%M=&L<%K;$K9!J8 I7H8I9 L<#O?&QA(P>&N<$P>&UC+VD,UC+TB*VD,[G.\H/[J0[J0YH.XG-[J0_N4]L2YI/VK/D8 4'        Z;&dB)gE,sO7�`F�jO�sT�tV�`@yL-|O2_3S*c:mE+tL2iD)^: _;!A%;D*D,E-J0G-P4]9{T5�nQ��d��tĜyĞzǣƥ�ʨ�ͪ�Ω�Ϫ�ҫ�Ϩ�̣�Š���|��q��f�|\�y\�nP�^>dI4S4G$?>=$-
"*'-6S2!Z5#hB/vP=�`F�kQ�qW�v\�v\�v\�u[�jP�fN|ZAgI1Q7 @'2'                             81!&	)!9.5-&*	<0H9"H9"G9I:#H9"G8!E6!E6!D5 D5 D5 C4B3A2?0=.<-<-<-;.:-9,7*6)6)6)6)8)9*9*8)7+7+6*4(3(3(3(2'2'1&1&0%-"-"-".#/$/$.#.#.#-",!+ + ***))*+ *'
&	'
%'
'
%$$%%%$##"####	" ?2?2?2>1>1?2@3 @3 C4!D5"D5"E6#G8%F7$A2;,E6#D5"B3 >/=.?0@1@1A2C4D5 D5 D5 E6!E6!D5 F7"G8#H9$F7"D5 C4E6!G8#H8!H8!H8!G7 G7 F6F6E5G6"G6"G6"G6"H8!J:#K;$L<%K;$J:#I9"I9"K;$K;$K;$K;$O;#K9!I7H6I9 K;"M?%N@&Q?'N<$O=%TB*VD,UC+WE-]K3\K1[J0[J0\K1[J0ZI/\K1_N4XH.VH-QF*D8 '	            \=(gC+iE-fH0bB)[7^7wN0�mP�|]�z[�|_�nQ�iN�rW�w[�rV�lR�]ChD*R0G%A!B"	@!C$Z8\:mH+�W<�mQ��e��g��h��tá�ɧ�Ϋ�Ϭ�Ѭ�ԭ�Ѩ�ˢ�~��p��c�{\�qU�gKZ=pM1_CN0E&	F&;        ! (/3	09
I&]9#iE-sM6~Y?�\B~ZB~ZBpP9jL4Y='H/:#)  !                          /'/'/'7/5-4,9.<0>2D5H9"H9"H9"G8!F7"F7"E6!D5 D5 B3B3@1>/<-;,<->/=0;.9,8+8+8+7*7*9*9*9*5)5)5)4(1%3(3(3(2'2'1&0%0%.#.#.#.#.#.#.#-"-"-"-",!*)
**)()+ *('
(&	'
(&	$#$%&	%%$$$$%! C6#C6#C6#A4!A4!A4!C6#D7$B3 B3 C4!E6#I:'K<)H9&D5"K<)J;(H9&D5"C4!D5"F7$E6#D5 @1A2E6!G8#D5 C4D5 D5 D5 D5 C4A2B3D5 G8#K;$J:#H8!G7 F6F6F6F6F5!F5!F5!G6"H8!J:#K;$L<%J:#K;$K;$K;$J:#J:#K;$M=&P<$M;#K9!J8 K;"L<#L>$M?%Q?'N<$P>&TB*TB*R@(WE-^L4\K1YH.WF,XG-YH.YH.ZI/ZI/\L3UG-L@&I=%% 
           !_?*jF.lH0iM7Z<$gC)�[A�oQ��e��k�_��b��h��d��l��h�z^�z^�cIhE/X5!K+K+N.L,N,Z8[< d@&oE,�\?�z\��e��i��t���Ǥ�ͪ�Ѭ�Ӯ�֯�Ѫ�ˤ�ǣ���m�|^�qT�^CnK/_="X6R/Q0D%.   "	4S0mJ6yYD�u`�r]��r}_GdF.F)8A!S3]:$^;%cC,mN9\=(Z>(L1<&1	!   !                             1)-%/'@5#7/<4B7#@5@4A5C7F7 G8!G8!G8!G8#F7"E6!D5 C4C4B3@1>/=.=.?0@1=0;.8+8+9,9,8+7*:+:+6)4'3&4'2'0%2'2'2'2'1&1&0%0%/$/$.#.#.#.#-",!-"-"-",!*)
**)((**)(((()(&	$$%&	%%$####</=0=0;.:-:-</>1C4!C4!B3 A2D5"H9&H9&F7$E6#F7$E6#D5"C4!D5"D5"C4!H9$B3A2G8#J;&F7"C4F7"C4C4C4C4C4E6!G8#I:%I9"H8!H8!H8!H8!H8!G7 F6G6"G6"G6"G6"H8!I9"J:#J:#J:#L<%M=&M=&K;$K;$L<%N>'N<$M;#L:"K;"M=$N>%N>%M=$O=%O=%R@(UC+SA)P>&R@(XF.[J0WF,UD*WF,YH.YH.[G.ZF-\J2WI/RD*QB++!
 	   
 ! `@)nI/qL2fG2^>'yU;�rU�uX�|_��e�~^�b��k�vZ�tZ�cIsO7a?&A$ !    $ 7D*U7a?&iD*xO3�gJ�zZ��_��c��yà�˦�Ϫ�Ӯ�ԯ�Ь�ʦ�Ƣ~��m�wZ�aHlH.V8R4T4Z0S.:&+K1$nR<z[?�n_y\Ly]Ou`OfUEdTDPC3H;+vdVubSZC16=!U6!N2I-L1K0@'5!	.#  '% %!                                   3(=24)@5!@3 >1>2E9#M>)I:#A2F7 F7 G8!G8#F7"E6!C4B3E6!C4A2@1@1A2B3B3:-9,8+8+8+9,8+7*8+8+6)4'4'4)4)2'2'2'2'1&1&0%/$/$/$.#.#.#/$/$.#-"-"-",!+ + + **)(()*)()*)()(&	$%####"!! ;.=0>1>1=0</=0?2@1A2@1?0@1B3 C4!A2C4!D5"E6#D5"D5"F7$F7$D5"J;&G8#E6!G8#H9$F7"F7"H9$F7"E6!E6!F7"H9$I:%I:%I:%G7 G7 G7 I9"J:#J:#H8!G7 I8$H7#H7#H7#H8!H8!I9"I9"K;$K;$L<%L<%L<%L<%L<%L<%N>%L<#K;"L<#N>%P>&O=%N<$P>&R@(TB*TB*SA)R@(R@(SA)YI/VF,VE+XG-ZI/\H/\H/]I0WE-VF-RD*M=&6%      
  " `@'pK0wO5lN4uS:�bG�lP�mP�qR�uU�pS�iO�cLnK5N.- ) ,:#;):)@/%A/%." " $
 ?!	L,\:jG+}V9�jL�~^��i��r|ɥ�Ω�ҭ�ԯ�Э�ʧ���u��e�lOxN5^<#V:"\@(`@)aA,H'<
V5$oP<|]H�hN�bFn_X           "$eUF�mZR9%5B'P5"A(<#30,& ( 12-% $	 &	                            	  0$,>2J>(G8%K<)N?*M>)I:%H9$L;'N=)G8!F7 F7 E6!D5 D5 C4C4E6!C4A2B3C4C4A2?08+8+8+8+8+8+7*6)7*7*6)4'4)5*4)2'1&1&1&1&0%/$/$.#/$.#.#.#/$/$.#.#-",!+ + ,!,!+ **('
()((()&	%&	'
%#"!!"""! 6)8+</</;.:-:-;.8);,?0@1B3 D5"C4!A2G8%G8%E6#C4!D5"F7$H9&H9&H9$H9$G8#C4B3D5 G8#G8#G8#G8#G8#H9$J;&J;&G8#E6!H8!G7 F6G7 H8!I9"I9"H8!I8$H7#H7#G6"H8!H8!I9"I9"J:#I9"I9"J:#L<%L<%J:#H8!OA'M?%L<#L<#O=%P>&O=%O;#SA)TB*TB*SA)SA)UC+UC+SA)UE+UE+WF,YH.ZI/\H/]I0_K2bM8\J2SC*L<%P=.          a?&rK.xP6mN2wU:W=�^A�iL�eF�[;�Z<`@+<	) 3
S=/jXLC2(8*E05 A,bK9fM9X=(U6!S3D$J,Z<"gH,lI-{T7�pS��k��qÝyˤ�Ω�ҭ�Ա�Ѯ�ʩ���p��`�`Dj@(X8`H.iO6eG/O:\B!lI)�]?�oS�u_wZJ:   
:6+
     	 5$r\GY@,$ A(H/>(6"	5$
5$
14 ;&?+6!+' +!                           #=0H9"K<%H9&G8#I:%M<(K:&G6"G6"K:&G8!F7 E6C4C4C4D5 D5 C4A2@1B3D5 C4?0;,8+9,:-9,9,8+7*6)5(6)6)4'3(3(2'/$1&0%0%0%0%/$.#.#/$/$/$/$/$.#.#-"-"+ **,!-",!*+ (&	'
(((('
#!#%#  !"##"! ?2>1=0>1=0</=0?2@1>/A2D5 D5 F7"H9$E6!E6#@1B3 E6#D5"D5"D5"B3 B1C2D3D3B1@/B1F5!F7"G8#G8#G8#F7"E6!E6!F7"B3H9$L=(K<'H9$G8#I:%J;&I9"I9"I9"H8!G7 G7 G7 H8!E4 F5!I9"J:#J:#K;$M=$N>%J:#J:#K;$M=&O?(N>'L<%I9"R@(SA)TB*TB*TB*TB*TB*TB*VF-VD,VD,XG-YH.[G.]I0^J/]L2ZL1YK1SC*K;$4'  
	   *c?)|R9{S9vS=sP:iG.rP7rP5wU<oK3^:$5 B'TA30&$      	  $N9(mP>xXAiG.\8fD(wX;zX<�bH��h��yÞ�ʥ�ͨ�Ѭ�ԯ�Ӯ�Ω���t�z_~ZBcC.nO;oN;oL6mG0oP4�^B�|c�{b�w^�hQ;%8'$5-"KD<���  
 
  D7.;$<F-C*G-L2K/E)J+T5#R6 71* * *                           >1 D9'L?,D8 F7"I:%K<'I:%E6!D5 F7"I:%H9$F7"E6!E6!F7"F7"D5 C4C4?0?0?0;/</=0:-9,9,8+7*6)5(5(5(6)6)5(4'3&3&4'5(1&0%0%/$/$/$/$/$.#/$0%0%0%/$-",!,!+ )*+ ,!*)+ *)))('
%)&	##%	$" "#	#	!	!	B5"@3 ?2>1=0:-:-;.?0>/@1A2?0?0@1=.D5"=.9*7(5&9*?0A2@1?0@1B3B3B3D5 F7"D5 E6!G8#G8#G8#F7"E6!E6!F7"I:%K<'J;&H9$G8#F7"D5 F6F6G7 G7 F6F6F6G7 C2E4 G7 I9"J:#K;$M=$N>%K;$L<%M=&N>'N>'N>'N>'N>'Q?'SA)UC+UC+UC+TB*SA)SA)UE,VD,WE-XG-XG-ZF-[G.^J/ZI-ZJ0WI/UE,P>(=-  
  
   +gC+�V=S8xT<zV>nJ0fD)b@'fC-X8#=6!P>2+    #$$  ,bF1�fP�oW�]CxU9|[<�`A�oU�y`��s��}ȥ�̩�Ϭ�Ӱ�ү�ͪ���u�{_}YAoO:qR>sS>tP:}X>�mQ��l��k��h�^FO/v`IsbN0(XRF !  .+"20$	1)
      +Z>(Y='Q5O3W9!^>'_?(aA,fC/X8#>"4, + (                        	 #E8'D9'L?,J;$K<'L=(L=(J;&H9$G8#H9$I:%G8#E6!D5 C4E6!E6!D5 C4D5@1@1@1<0=0>1;.8+8+7*6)5(5(4'4'6)5(4'3&3&3&3&3&/$/$/$/$/$/$/$/$-"-".#.#-",!+ *-"+ **+ ,!+ )+ *))('
%$&	%$$$$" @3 >1=0=0</;.;.</A2@1D5 E6!C4C4E6!D5 D5"?0>/=.:+;,?0@1?0=.=.@1C4D5 E6!F7"C4D5 F7"G8#G8#F7"E6!D5 B3D5 E6!F7"I:%J;&G8#C4C3D4F6F6F6F6G7 G7 F5!G6"H8!H8!H8!I9"I9 J:!J:#L<%M=&L<%K;$K;$M=&O?(N<$P>&Q?'SA)TB*VD,XF.YG/UE,VD,XF.YH.XG-YE,[G.]I.\H-\K1WG.ZH0VD,I8&"        7iC,�U:�^D�^D�^DzU:kG-fD+aA*U6"7.#   FB63/#$80#��u���XRB?7$ N3}ZD�xa�y`�|a�wY�kM�v\�y`��p��}ɨ�ͬ�Ϯ�Ұ�ѯ�ͫ�w�{^Z@\F}ZF~[E�^G�t[��y��z��p�kQxN6�pY�����r?6'ogZ70&   MMA@@4("]QCD4$&# % A$sP:nL3mK0sO5zV<|W=xR;tN7d@*O/>2. +
                	  
&1 G8%@3 F:$I:#M>)L=(K<'J;&I:%I:%G8#G8#G8#E6!C4B3C4D5 D5 D5 C4?0?0?0:.:-</9,8+8+7*6)6)5(4'4'6)5(3&2%2%2%2%1$/$0%0%1&1&1&1&1&.#.#/$/$.#-",!+ -",!**+ + + *(((()('
&	$$$$$#"! !""!!  !""=0;.;.</</;.;.</<-<-@1B3?0A2E6!E6!?0>/A2C4!>/;,<-;,?0>/>/A2C4D5 D5 F7"C4D5 E6!F7"E6!D5 D5 D5 @1A2C4F7"I:%L=(J;&F7"D4E5G7 H8!H8!H8!H8!H8!G6"H7#H8!H8!H8!H8!I9 I9 J:#K;$L<%K;$K;$L<%M=&N>'O=%O=%O=%P>&Q?'UC+YG/\J2TD+WE-ZH0[J0ZI/ZF-\H/_K0`K0_N4YI0\J2[G/T?,:*   
  "	@%lG-�U;�bG�aD�_B�aBZ?vT9Y;#B&#      0&RK;mfT-&ME:71! D>2 >;,d]K;,u_Jd@(�kT��o��z��p�~a��e��j��p��έ�Ѱ�Ѱ�ӱ�ѯ�ͫ���w�{\�bG�fN�fP�gP�t[��v̠���j�[A�X>�rZ���������peSsjY�xkIB884)geY}{n;9*VJ:yhVmT@U9$L1 ( -H+kF,uP5�\B�eH�gK�fJ�`G�ZArH2_:'G&:2.$                     .9'C4@4F:$K<%M>)M>)L=(L=(K<'I:%G8#E6!G8#F7"D5 D5 D5 D5 C4C4B3?0?0?09-:-:-8+9,9,8+8+7*6)6)5(6)4'2%2%3&3&2%0#0%0%1&2'2'2'1&1&/$/$0%0%0%/$.#.#.#,!+ *+ + + *(((()(('
#$$#"!!"!!"!!!!""@3 =0</=0=0</;.;.>/=.?0?0;,<-A2A2C4!@1A2A2=.;,>/>/B3B3C4D5 D5 C4C4E6!D5 D5 D5 D5 C4C4D5 D5 E6!G8#H9$H9$I:%J;&I:%F7"F6G7 H8!I9"I9"H8!H8!H8!G6"F5!G7 H8!I9"J:#K;"L<#L<%L<%L<%M=&O?(O?(O?(N>'R@(R@(Q?'P>&P>&Q?'SA)UC+UE,WE-[I1\K1[J0\H/^J1bN3bM2`O5[K2^L4[G.VA,F5%    :sN4�Z>�[A�mL�jI�iI�bC�]AkI0Z;&A"3A%F,\G6tcO�ycD;*og\\YJ     ][N�oWJ9�����k�[A�_F��sհ�Š���g��o��p¡�Ѱ�Գ�Ӳ�Բ�ӱ�ά�z�`�nT�kR�qX�sZ��pǠ���v�fI��j��y����ç�������fUCzm]�tfsi]riZYP?OG4�r`�|f��i�iQhE138_@,zP7�aE�pS�wW�uV�qR�jN�cG|N7i@*N+<2.'                    "2?-F7 J>(QB-RB+N?*O@+PA,O@+M>)J;&G8#F7"G8#F7"F7"F7"E6!D5 B3A2C4A2B3A2;/;.</:-9,9,8+8+7*7*6)6)5(4'3&3&4'4'3&2%/$/$0%0%0%0%/$.#-".#.#.#.#.#.#-"-",!+ + + ***+ + *)(&	&	%%%%#  !#  "!!!!!!@3 >1=0?2@3 ?2>1>1B3 @1A2A2=.>/B3 B3 E6#B3 C4!D5"A2@1A2A2B6 B6 C7!D8"C7!@4A5B6 C4C4C4B3B3B3D5 E6!E6!G8#H9$G8#F7"G8#G8#F7"G7 H8!H8!H8!H8!G7 G7 G7 J9%I8$H8!H8!I9"I9"J:!J:!L<%L<%L<%M=&O?(O?(M=&K;$P>&Q?'R@(SA)SA)R@(R@(R@(UE,WE-YG/[J0[J0]I0_K2bN3`K0\K1]M4^L4[G.V@(K9%    <!sP4�[?�]B�sR�xW�tR�kK�lM�oR�oU}YAb9#pJ5vR<{[D�|a��}k\IaUIvp`c[N<2(XPE��zj^N�|j�����~��i��h��f��{ү���}��r��p¡�ұ�Գ�Ӳ�ճ�Բ�ϭ�Ɲ}��f�x\�pW�x_�}c��wğ���oɠ���x��v��}��v���å������n�{f|gVjUDr]Lu`M�yd��}��j��j�jQlF1H%W3yU=�pU�wZ�~_�~]�}\�yX�pP�gI�U<nD,T1>1 .%             
   "/H6K<%RF.RC,QA(N?*N?*O@+N?*L=(I:%G8#E6!F7"F7"G8#G8#F7"D5 B3A2B3@1A2A2;/;.</:-8+8+8+7*7*6)6)5(4'4'4'4'4'4'4'4'0%0%1&1&0%0%/$/$-"-".#.#.#.#-"-",!,!+ + + **))))('
&	'
(%%$#! !#!
!	      ?2=0=0@3 B5"A4!@3 @3 ?0=.>/>/<-=.>/=.>/<-?0C4!A2?0>/;,@4?3?3A5B6 @4?3@4@1A2B3B3B3C4D5 E6!B3D5 D5 D5 E6!G8#H9$G8#G7 H8!H8!H8!H8!G7 H8!H8!M<(K:&I9"H8!H8!I9"H8G7K;$L<%L<%M=&M=&M=&L<%K;$O=%P>&R@(SA)SA)TB*TB*UC+UE,VD,WE-YH.ZI/\H/]I0`L1aM2WG-\N4[K2]I.YE*Q?'/   %
C'qO3�[>�eJ�mL�zY�~[�\�|Z�_�uW�]?f<$xN8�jT��o��j��o��wR?1phU�wg�xi�vg�zjygS���ã������~Ù���xßұ�Ţ���s��sƣ�Ա�ղ�Ա�״�ղ�Ϭ�ʟ��i�z]�x]�{`��h��s��xͪ�˨�ɤ�ğ���ʥ���s��}��}��~�����y��s��m��r��y��f�eK�]D�fN�]HfB,sK2�`C�uZ�vY�xY�zY�~\�~\�uU�lL�\ApC,X5=!/+               ,N>'MA)QE-N?(O=%O@+M>)K<'J;&J;&I:%F7"D5 E6!E6!F7"E6!E6!D5 C4C4?0>/@1@1:.9,;.9,8+8+8+7*7*6)6)6)3&4'6)5(3&2%3&4'2'2'2'2'2'2'2'1&0%0%/$/$.#.#.#-"*+ ,!+ + ))((('
&	%&	(*$$$$#"""B5"?2>1@3 A4!?2=0</C4!@1@1@1=.=.<-8)@1<-=.@1?0?0@1>/=1:.9-<0@4@4>2=1>/?0A2B3C4D5 E6!F7"G8#G8#F7"E6!G8#I:%J;&H9$H8!I9"I9"I9"H8!H8!I9"J:#I8$G6"F6G7 I9"K;$K;"K;"L<%N>'O?(O?(M=&L<%M=&N>'UC+TB*R@(Q?'Q?'R@(TB*VD,UE,UC+UC+WF,XG-ZF-[G.]I.eQ6VF,\N4XJ0]L0^J/\H0A0  ! A%uS7�^?�cH�~]��c��`��h��a��`�yX�kJvQ>zT?�t^�tZ��m��z�����o`KlYH}hW�zj�va��{�����}����ˣ�ծ�Ա�Я�ģ���t��wʥ�ײ�ײ�ֱ�س�ֱ�Ϫ�ɞ~��h�x[�b�|a��j��o��rŦ�ĥ�Ȧ�ȥ�����t~��m��s��i��q�~f��t�u^�rY�t\�t[�y^�aF~T<wQ<{U>�nR�qP�z_�{^�~^��`��b��^�vT�kJ�]@nB)X5;
+ (              'QB+PD,RF.O?&XD+SD/N?*I:%H9$J;&K<'H9$F7"D5 D5 D5 D5 C4C4D5 D5 @1>/A2A2;/:-</:-9,9,9,8+8+7*7*7*3&5(7*5(3&1$2%4'1&0%0%0%1&1&2'2'1&0%0%/$.#-",!,!*+ ,!,!+ )('
,!+ (%""#%##$%%	$"! 	C6#B5"A4!A4!B5"A4!@3 >1A4!=09,8+:-=0>1>1=0?2</9,=.>/<-;,<-;,<-@1C4!B3 =.8)=.>/A2C4D5 D5 D5 D5G8#E6!D5 E6!F7"G8#F7"E6!H8!G7 E5E5E5G7 J:#L<%I9"J:#J:#I9"I9"I9"L<%N>'L<%N>'O?(N>%N<$O=%Q?'R@(WF,SB(TC)SB(Q@&SB(WF,VE+VE+VE+VE+VE+WF,WF,XG-XG-\K1]L2\K1[J0[J0\K1\K1ZI/#    $N*vJ1�U:�pU�|[��a��f��g��i��h��e��_�kO�tX�nT�bH�iO�}c��q��v����t�����yÞ�ˤ�ȟ�ˢ�ͦ�ҫ�Ѭ�ϫ�Ь�˨����y��vϫ�ٶ�ص�׵�ִ�ү�Ѯ�ʝ|��f�}\�~_��`��k��q��h��|ġ�Ǥ������{��w��t��q��q��h��s��c��h��n�lT�r[�v_�kT�ZA�Q8�\B�pT�|`�~b��b�`��_��`�~\�xY�rV�kP�[CvG-V.=	,           ) '! 7%N?(M>'N?(PA*QB+K>+J=*H;(H<&J;&J;&I:%H9"D5 C4B3B3A2B3B3C4C0B1@1=.:->/=.;,9.8-6+5*5*5*5*5*6)5(4'4'4'4'3&2%-"/$2'3(1&/$.#-".!0#1&0%.#,!*"+#+ ***+ + *)
(&	&	'
'
%"!    !!#"!!""!! "!@3 @3 @3 @3 A4!@3 >1=0@3 =0:-:-;.</</;.;.=0?2?2@1A2@1<-=.<-<->/A2A2@1=.=.?0A2A2?0=.=.>/D5 E6!G8#H9$I:%H9$G8#E6!D4D4E5E5F6H8!I9"J:#J:#K;$K;$K;$K;$L<%M=&N>'N>'O?(O?(O?&P>&P>&R@(R@(UD*RA'SB(TC)RA'TC)WF,VE+UD*UD*VE+VE+VE+VE+VE+VE+\K1]L2]L2\K1\K1]L2\K1ZI/)    -
=
zS6�]?�iL�uT�~]��f��l��o��n��g��_�y[�qS�sW��i��s��i�y_�e��o��l��y��v��y~��v{��}Ƞ�ɤ�ɥ�ʧ�ȣ���}��z��yͩ�ֳ�ֳ�׵�ڷ�״�Ӱ�Ρ���j��b��d��d��n��s��m��y�ƣ�à������{��w��t��u��m��p��c��`��b�lO�mP�gI�hJ�iK�lN�rT�{Z��a��d��k��g��e��b�}[�uV�nR�fK�YAtE+T,:'             $?)5! ;*O@+O@)O@)O@)M>'K>+J=*I<)H<&I:%I:%H9$G8!F7"E6!D5 C4B3B3B3C4C2 C2 A2</;.</;.;,:/9.7,6+6+6+5*5*6)6)5(5(4'3&2%1$0%1&1&0%/$/$/$/$.!0#0%0%.#,!*"+#**)
)
)
)
(	')'
&	((&	#" !!!!!!!    !"?2?2?2@3 @3 ?2>1</B5"A4!@3 @3 @3 @3 ?2>1</;.@3 A4!=.?0B3 =.?0>/<-<-=.?0@1@1:+=.@1@1=.<-?0A2B3D5 F7"G8#G8#F7"E6!D5 C3D4F6G7 H8!I9"I9"I9"K;$K;$K;$L<%M=&M=&M=&M=&P@)O?(N>'O?&Q?'R@(SA)SA)SB(Q@&SB(UD*SB(UD*WF,UD*TC)UD*VE+WF,XG-WF,WF,VE+\K1]L2]L2\K1]L2^M3^M3\K1?'8#'07oL.�Z9�iJ�yX�^��c��g��l��o��m��i��j�zZ�pP�zZ��f��c�b��i��j��l��w��w��s��y��tÜ}Ĝ�ʥ�ͨ�̧�̧�ȣ�ĝ|Ü{Ü}ɥ�Ӯ�ղ�״�ݺ�ܹ�հ�Σ���n��e��g��h��k��q��r��y���Ƣ�ǣ�Ǣ�ǟ�Ŝ���|��v��o��n��f��]��]�xU�tQ�qM�sO�zW��]��`��a��e��j��n��j��f��b�|[�vW�mR�eJ�X@sC,R)5          
  2@(=' ?.PA,QB-PA,RC.L=(K>+J=*I<)H<&I:%I:%H9$G8!G8#F7"E6!D5 C4C4C4C4@1@1=0:/:/<1=0;.9.8-8-7,7,7,6+5*7*6)6)5(5(4'2%0#2'1&0%0%0%/$.#.#.!/"/$/$-",!)!*",!+ + ***)
(	)'
'
()'
$$$
#	"!  ">1>1?2@3 @3 ?2>1=0:-;.;.;.;.:-:-:->19,=0=06'9*A2=.?0>/=.<-<-<-=.?0;,=.@1@1@1A2C4F7 C4D5 E6!D5 C4C4D5 F7"D4E5G7 I9"J:#J:#I9"I9"I9"I9"I9"K;$L<%M=&L<%J:#O?(M=&L<%N>%Q?'R@(R@(R@(SB(Q@&SB(TC)SB(TC)VE+UD*SB(TC)VE+WF,YH.ZI/[J0[J0]L2]L2]L2\K1]L2_N4_N4^M3I/O9$6$% :&bC'�T7�lO�}\��a��c��b��e��l��p��q��i��f�}Z�vS�yV�|[�{Z�zY��`��d��j��m��j��u��vɢ�Ω�Ӯ�Ӯ�Ѭ�Ϫ�̥�Ɵ~ş{Şɢ�Ѭ�Ա�Ա�۸�ݸ�Ӯ�̡���n��e��i��i��j��p��s��x��Ǣ�˦�̧�Φ�ˡ�Ǟ���x��t��p��n��e��d��d��\��b��a��`��c��e��i��l��n��m��i��e��a�|[�vW�nS�eJ�VAsC-O)/   
        )6;!6" E4$QB-NB,M>)QB/K<)K>+J=*H;(H<&I:%I:%H9$H9"G8#F7"E6!D5 D5 C4C4C4?0</:/7/7/7/8-8-7,7,7,7,7,7,7,6+6)6)6)6)6)4'2%1$0%0%0%1&1&0%-"*.!/".#.#,!+ )!)!,!+ + + + *)
(	)'
&	(('
%$""! ""! </=0>1?2?2>1>1=0>1>1>1?2?2@3 @3 @3 ?29,</</4%7(A2@1>/>/?0>/=.<-=.=.B3 A2@1A2B3B3C4C4E6!E6!E6!D5 C4C4D5 F7"F6F6G7 H8!H8!I9"I9"I9"H8!H8!H8!J:#L<%L<%K;$I9"M=&K;$K;$M=$Q?'P>&P>&Q?'UD*RA'SB(TC)Q@&SB(VE+TC)TC)TC)TC)VE+XG-ZI/\K1^M3]L2]L2\K1ZI/[J0^M3`O5`O5G.P7#:!):%^B,�T;�eM�wV��_��f��g��h��k��o��p��k��i��f��g��g��_�{W�}Y��]��b��e��l��mÚ|Ɵ�Щ�ѫ�Ӯ�Ѭ�Щ�Щ�ͦ�Ɵ~ĝ|Ǟ�ˤ�Ӯ�ֳ�Ա�ص�ٴ�Ϫ�ʟ��n��f��i��k��k��o��u��x��}Š�ʥ�̧�Φ�ˣ�ɠ�Ɲ�ě��{��z��q��n��q��f��j��n��p��n��q��t��v��s��q��l��g��a�zY�tU�kP�`E�T?oA*I&(         
 % 6G/( J;(PD.L@(G8#N?,J:*K>+J=*I<)H<&I:%H9$H9$G8!F7"E6!E6!D5 D5 C4C4C4A4!>1;07/5-3+4)3(8-7,7,7,7,6+5*5*5(5(5(6)6)5(3&2%0%/$/$0%0%/$,!*/"/".#-",!+ )!)!*)
)
)
*)
)
(	(&	%'
'
&	$$ !	 !	!	9,:-</</</</</=0;.:-:-;.</=0=0=0=0:->1?2;,<-B3 B3 >/?0@1@1@1?0?0?0A2?0>/?0A2B3A2@1B3C4D5 D5 D5 C4C4B3F6E5E5E5E5F6G7 H8!I9"I9"J:#K;$L<%L<%K;$K;$K;$I9"J:#N>%Q?'O=%O=%Q?'UD*RA'SB(SB(Q@&SB(UD*TC)TC)TC)TC)TC)UD*XG-ZI/\K1]L2]L2[J0YH.ZI/^M3_N4_N4T>)E*:Q6!C*W;&xK6�`G�rR�~]��f��h��j��m��p��ps��p��k��m��q��m��k��n��o��ruŜ|Ǟ�Υ�Ϩ�Ӭ�ѭ�ԯ�Ѫ�ͦ�Ϧ�̣�Ɲ}ě{ɠ�Χ�հ�س�ֳ�ײ�ԯ�ͨ�ě}��n��e��f��j��k��m��q��x��{Ɵ�Ǣ�ȣ�ʢ�ʡ�ɠ�ƞ�Ɯ�Ù�Ù���{��xw��q��pęyȜ×z��wxx��t��q��l��g��_�yX�sT�iN�]B�N9g:%A            2A(C- 'L=*OC+L@&F:"O@-O>.L?,K>+I<)H<&I:%H9$F7"E6E6!E6!D5 D5 C4C4C4B3B3 >1;0807/5-6+6+9.8-7,6+6+5*4)3(5(5(5(6)6)6)4'3&1&0%.#-"-"-"-"-"/"/"-"-",!+ )!( ******)
)
(&	%&	&	%##    8+9,;.;.;.;.</>1A4!?2?2?2A4!A4!?2>1</</>1@3 A2?0A2C4!A2@1@1?0@1@1@1@1=.=.=.>/@1A2B3A2@1@1A2B3C4C4B3B3E5D4D4D4E5F6G7 H8!H8!J:#K;$K;$L<%K;$L<%L<%J:#I9"L<%QA(R@(O=%O=%R@(SB(Q@&SB(TC)RA'SB(UD*SB(UD*UD*TC)TC)UD*WF,XG-YH.[J0[J0[J0YH.ZI/]L2^M3]L2aO7Q5S/xU?P4J+j@(�_C�tU�}]��d��f��j��oÒrqtțzƙx��sĘuƛxØu��sƞ{Ǟ~ɠ�ʡ�Υ�̥�Φ�ͥ�Э�Ӯ�Ѫ�ͤ�̣�ʡ�Ŝ~ě}ɠ�Щ�֯�հ�س�ֱ�Ы�Χ�Ú|��r��h��d��j��k��j��n��u��xĝ~Š�ơ�ȡ�ȡ�ʡ�Ş�ĝ�Ù���~Ŝ�Ǟ�ŚzęyǛ~ɝ�ɝ�Řy��u��t��s��r��m��i��d�~]�vU�pQ�eJ�X=yF3]26	           
   ?%D-& ;+L@*L@&NC'J>$QB-P?-K>+J=*I<)G;%I:%H9$G8#F7 F7"E6!E6!D5 D5 C4B3B3A2</;.;0;09.9.;.9.8-7,6+6+6+5*5*7*6)6)6)6)5(4'3&1&0%0%.#-"-".#/$0#/"-",!,!,!)!( ,!+ + + + + *)
)&	%&	&	$###	""!  9,:-;.;.;.;.=0?2@3 >1=0>1?2?2;.8+=0>1=0>1A2>/>/C4!D5"B3 ?0=.=.>/?0@1>/?0@1A2@1@1A2B3C4A2?0@1B3D5 F7"F7"E5D4D4E5F6G7 H8!I9"H8!I9"K;$K;$J:#J:#K;$L<%J:#J:#N>'RB)TB*P>&P>&SA)Q@&P?%SB(UD*SB(TC)UD*SB(UD*UD*UD*VE+WF,XG-XG-YH.ZI/[J0[J0ZI/[J0]L2\K1[J0[L/kP3wR5zU;V6!C#g=$�^?�sU�{\��d��h��oÒrq��l��n��uėxÖuęwƛyɞ{Φ�Ɵ�Ɵ�ɢ�Ǡ�Χ�ɡ�Ш�ͥ�ȥ�̩�̥�ɠ�ʟȜě}Ɲ�ȟ�Щ�Ӭ�ҭ�س�ֱ�ͨ�̥�Ŝ~��w��k��f��l��m��l��n��q��wĝ~ȡ�Ǣ�ɢ�ʣ�ͤ�Ɵ~Şĝ~��zǞ�ʡ�yǜz͢�ƛ{ÖwŘwƙxĖu��n��j��m��i��b�{Z�rQ�kL�_D�P6rB.X/1          66   P@0QE-LA%OD(L@&N?*K:(I<)H;(G:'G;%I:%J;&I:%I:#F7"F7"F7"E6!D5 C4B3A2E6#A2=0<1:/7,7*8+8-7,6+6+6+7,8-8-8+7*6)5(5(5(4'3&.#0%2'2'0%/$/$/$1$0#-"-",!,!)!)!+ + ***)
(	'*'
%&	&	$#" !!!" <1:/:/;.</</:-9,;.;.;.;.</</</;.?0?0?0>/=.=.>/?0D3!C2 B1B1B1A0A0@/B1B1C2D3D3B1C2D3C4B3B3C4C4A2@1B3E4 D3D3E4 G7 G7 E5D4G7 I9"J:#H8!H8!I9"J:#J:#M=$N>%O?&O?&N>%M=$L<#L<#O?(P@'Q?'Q?'SA)VE+WC*UA(VD,TB*TB*UC+UC+TB*UC+WE-VH.VF-WG.YI0\J2^L4^L4]K3gL9iU:Z@�]DkE07_A)�U?�oP�`��c��e��i��jŕqĔnÖu��rƙxØvǜzƛy͢�ˠ~ɞ|ȝ{ɞ~ʡ�ˢ�ͤ�Υ�Ϧ�ʣ�̣�̡�ˠ�̡�Ɲ��}���͟�Ф�ӧ�Ԫ�֮�ذ�ӫ�̤�Øv��s��f��d��j��j��j��i��p��uě}ɠ�ˢ�ˢ�ˢ�ˢ�̣�ʡ�ȟ�ɠ�ʟɞ~ʟ̡�˞}ʝ|ƙxts��r��p��m��g��d��`�zY�nQ�gL�[A|M3l<&J%#       
	  /  *" :!@1M>)QB-K<'K<'N?*M>)J;&J;&I:%H9$H9$J;&K<'H9$D5 F7 E6!E6!E6!C4@1A2D5"=0</;.9,8+5-3-3-71605-5-6+7*6)6)3&5(7*7*5(3&2%3&2&1%0$/"/".#.#/$-",!,!,!,!+ + + ,*((&	'
'
( '
%$%&	&	%$!	!	 
<1<1<1=0=0</;.:-9,:-;.</</=0</</>/?0?0?0>/>/?0?0B3 B3 B3 A2B3 A2A2A2B1A0A0C2C2B1A0B1A2@1B3D5 D5 B3B3B3B1B1C2D3E5F6F6E5F6I9"J:#I9"I9"K;$M=&M=&O?&N>%O?&O?&P@'O?&N>%M=$O?(P@'P>&O=%Q?'TC)WC*UA(VD,TB*TB*UC+VD,UC+VD,XF.VF-WG.XH/YI0ZH0[I1\J2]K3fM9eQ6bG)lB)�cO: 	@"
�V>�lN�|]��a��f��lmƖrŕqtÖuƙxėvƛyƛyɞ|ˠ~ɞ|ʟ}ˠ�ʡ�ˢ�ˢ�̣�ͤ�ˤ�̣�ɠ�ˠ�ʡ�ĝ~��|��͡�ѥ�Ԫ�խ�ֱ�ֱ�Ы�ȣ�Øv��p��b�`��g��h��i��h��n��r��zŜ�ȟ�ɠ�ʡ�ʡ�ˢ�ˢ�̣�ϣ�͢�ʟˠ�Σ�̟~̟~ɜ{ƙxƘwÕt��p��k��e��`�~\�xW�oQ�fK�Z?xI/f8!D 
          @,&! 0 	' F7"O@+PA,L=(L=(N?*L=(K<'J;&J;&J;&J;&I:%I:%G8#E6!D5C4C4C4A2>/=.?0:-;.;.:-8+6+3+2,5/4.4,5*5*6)6)5(4'5(6)5(2%1$1$2%2&1%1%0#0#/$/$/$-",!,!,!+ + + + *)('
&	&	&	&	&	%$$%%$" "#!!:/;0<1=0</;.:-:-8+:-</</</</=0>1?0@1A2B3 A2A2A2A2A2A2A2A2A2A2A2A2B1@/@/B1C2B1A0A0@1@1B3D5 D5 C4B3B3A0B1C2D3E5E5F6F6H8!J:#K;$J:#J:#M=&O?(O?(P@'N>%M=$N>%P@'QA(P@'M=$P@)P@'O?&O=%P>&SB(UD*TC)VD,UC+UC+UC+VD,UC+VD,WE-VF-XH/YI0YI0WG.XF.[I1^L4]K5_N2dI,oE-�YEO0?!	rM3�dF�rT�yZ��a��j��k��o��o��sțzƙxƙxƛyǜzŚx͢�̡͢�Σ�Σ�ˢ�ˢ�̣�̣�ˤ�ˤ�ȟǞ~ȟÜ}��{��|͡�Ч�խ�հ�ձ�ӯ�ͨ�Š�ęw��n�`�}`��f��j��g��g��m��r��xě}ȟ�ʡ�ˢ�ˢ�ɠ�̣�Ϧ�Ҧ�Ϥ�̡�̡�Ϣ�͠̟~ɜ{ƘwĖus��m��g��c��^�|Z�vU�mO�cJ�T;pB*Z0: 	         3"=)!
* :'N?*QB-O@+L=(M>)L=(K<'M>)K<'K<'L=(K<'I:%G8#F7"F7"E6D5 C4C4B3?0<-<-:-</>1=0;.7,5-4.5-4,3+4)4)5(5(5(6)6)5(3&1$0#1$3&2&2&1%1$1$/$/$/$-",!,!,!+ + + *)('
'
'
%%%'
%$$$%$#! "##" 8-9.;0</;.:-:-;.8+:-</</;.;.=0?2@1A2B3 C4!B3 A2A2A2>1>1>1>1>1=0>1>1D3A0@/B1D3C2B1A0?0@1A2B3B3A2@1@1C2D3F5!F5!E5E5F6G7 K;$L<%K;$I9"J:#L<%M=&M=&N>%L<#L<#M=$O?&P@'O?&N>%P@)P@'P@'O?&Q?'SB(TC)UD*VD,VD,UC+UC+UC+UC+UC+VD,VF-WG.YI0XH/WG.YG/[I1^L4ZL2bQ7`E*~XApJ3]=&M/`B(�aC�qS�|[��d��l��j��pÒr��qʝ|Řwǚyǚyɞ|ęwϤ�Ϥ�Ѧ�Ѧ�Ϥ�Σ�ͤ�Υ�Ϧ�ˤ�ʣ�Ɵ~ĝ|Ş}��y��x��{̣�Ѫ�հ�Բ�ճ�Ұ�ͪ�ơ�Śz��n��e�|_��e��h��e��h��m��o��vř|ʞ�̠�͡�͡�ɠ�΢�ѥ�Ҧ�Х�Ρ�͠�Ρ�Ϣ�˞}Ǚxs��q��p��k��f��c��^�|Z�uV�jN�]C|L5e;"O)1          3!	?*  " VF6RC.QB-N?*M>)O@+L=(I:%M>)K<'K<'K<'J;&I:%F7"E6!F7"F7 D5 B3B3A2?0=.;,:-=0A2@1;.8-8-7/5-3+4)3(4)5(5(5(5(5(5(4'3&3&4'5(2&2&2&1$0#/$.#-",!,!,!+ + ***)(('
'
'
$#&	%$##!! "!!!!!! "8-9.;0=0</</</=0;.</</;.:-:-=0@3 @1@1A2A2@1?0?0?0>1>1?2>1=0=0=0>1D3A0@/B1C2C2A0@/@1@1@1?0>/>/>/>/C2E4 F5!F5!E5E5G7 H8!L<%L<%K;$H8!I9"K;$K;$K;$K;"L<#M=$M=$N>%O?&O?&P@'N>'N>%O?&P@'P@'Q@&RA'SB(TB*TB*TB*SA)TB*UC+UC+UC+XF.XF.XF.XH/XH/ZJ1[K2]M4^S7cR8cI2oQ9�aHeA)F(V>&�[<�oQ�|]��d��f��f��nēu��pʜ{Ƙwțzțz˞}ƙxХ�Ѥ�Ӧ�Ѧ�Σ�͢�Х�Ч�Ѩ�Υ�̣�Ɵ~xx��u��s��wΥ�Ѭ�ֳ�ִ�Ӵ�ӱ�Ы�ͥ�ƛ{��p��f�tW�wZ��b��a��j��j��n��uĘ{Ȝ˟�̠�͡�΢�΢�ϣ�ϣ�У�У�Ρ�̟�Π˝|Ƙw��r��p��n��j��e��d�^�|\�uU�fI�V=sF/]8F#*        1	/   G;%RE4RC.O@+L=(M>)PA,K<'H9$L=(K<'I:%H9$I:%H9$F7"E6!E6!D5B3@1?0>/>/=.;,9,;.?0>/;,8+8-9.7,6+4)4)5(6)6)6)4'4'5(4'4'3&3&3&2&2&2&1$0#-",!,!,!,!,!+ + **)
( '
((('
%$$##""""!!  
	7,8-9.:-:-;.;.</</</;.:-:-;.>1@3 B3 B3 B3 A2@1?0?0@1A2B3 C4!B3 @1@1@1A2B1@/?.A0B1@/?.?.@1A2?0=.=.>/?0>/B1C2D3E4 F6G7 H8!J:#J:#J:#I9"H8!I9"K;$K;$J:#J<"K=#M?%N@&M?%M?%OA'PB(L=&K=#N>%O?&O?&N>$P?%Q@&QA(RB)RB)QA(RB)TD+VF-UE,WE-WE-XF.XH/YI0ZJ1[K2\L3[P2^J2gQ:]I0}bE{V<I)H4}K0�gJ�xX��_��`��b��j��o��pƘwƘwǙxɜ{ʝ|țzУ�У�Ѥ�У�̡�̡�Ѧ�ӧ�Ҧ�Ҧ�ѥ�ȟ��w��s��n��o��tˢ�Ѫ�Ա�ҳ�Ѳ�ӯ�Ы�Τ�ȝ}��s��d�iL�hK�xY�|^��g��f��m��tƛ{ʞ�̠�͡�΢�Ф�Ф�΢�Ρ�Ϣ�У�Ρ�̟�ȚyǙxŗv��q��n��k��e��`��a�}]�yY�rT�aF�Q:kA)Y5<#         *
     F7$WH1H=+PA,N?*K<'M>)O@+J;&G8#K<'K<'G8#F7"G8#G8#E6!C4D5 C4C4A2>/>/>/>/=.9,;.>/>/<-9,9,9.8+7*6)6)6)6)5(5(4'4'4'4'3&2%1$0#3'2&1%0#/"-",!+ ,!,!,!+ **)
)
'
'
'
((&	$"""!#" 		8-7,6+7*8+9,9,9,;.;.;.;.</=0>1?2B3 B3 A2?0?0?0@1A2@1B3 C4!B3 A2@1A2B3 B1@/@/A0A0?.>-?.?0@1@1?0?0A2B3A2D3D3D3E4 G7 I9"J:#J:#J:#J:#J:#I9"J:#L<%L<%J:#J<"J<"L>$M?%N@&N@&N@&M?%L=&L>$L>$O?&N>%M=#O?%RA'QA(RB)SC*QA(RB)UE,VF-UE,VD,XF.ZH0ZH0XH/XH/ZJ1\L3ZK.ZD-eP;\Q5_L,�_D`<&?*l@%�_C�uU�~\��`��c��m��n��p��rŗvŗvțzǚyʝ|̟~Ϣ�У�Ϣ�̟�Σ�ҧ�ӧ�Ф�Ӧ�ҥ�ʟ��u��p��k��l��uɠ�Щ�Ӱ�Ѳ�ϰ�ѭ�ѩ�Ф�ȝ}��t��e�bH�bE�wZ�wY��_��b��kuɞ~˟�͡�ϣ�ѥ�ϣ�Ф�΢�͠�͠�Ρ�͠�˜~ŗvŗvÕt��o��j��f��b�~^�`�xY�tT�mO�]B{M5f='S06

 	          	   :-$XH/QC(I<+O@+N?*L=(K<'M>)I:%G8#K<'I:%F7"F7"G8#E6!A2@1C4B3D5 C4@1>/?0>/=.8-:->/>/=.<-:-9,7*7*7*6)6)6)4'3&4'4'4'4'3&2%1$0#2&2&1%0#/"-"-"-",!,!+ + *)
)
)
'
'
&	&	'
%#!#"# !!;09.7,8+9,:-:-9,9,9,:-</=0?2>1>1?0>/=.;,;,<->/@1@/A0C2 B1A0A0B1D3!B1A0B1B1A0?.?.@/>/@1A2A2B3D5 E6!C4G6"F5!E4 F5!H8!J:#J:#J:#K;$K;$K;$J:#K;$M=&L<%J:#J<"I;!I;!K=#N@&N@&L>$J<"O@)M?%M?%O?&O?&N>$P@&TD*SC*UE,TD+RB)RB)TD+UE,SC*TB*XF.[I1ZH0VF-UE,XH/ZL2\M0aH2^L8]X;WH'pK0iC.B-[1�T9�lN�wT�Z��`��i��h��q��oŗvĖuɛzŘw˞}ɜ{Ϣ�У�Ϣ�Ρ�Х�ժ�ӧ�΢�ң�Ѥ�ɞ~��t��n��j��mėx͡�ҫ�ֳ�ִ�Բ�ӯ�Ԫ�Ҧ�Ǜ~��u��h�dJ�eH�z]�uW�yX��^��ftɜ}˞�̟�Ϣ�Ѥ�̠�΢�Ϣ�̟�ʝ~˞˜~ʛ}ȚyȚyĖu��n��h��d��b��a�`�vW�pP�iK�ZAxJ3`:#L,2	             =:3SG9K<K<L?,O@+O@+M>)K<'K<'I:%H9$L=(H9$F7"G8#G8#C4=.>/C4?0B3C4?0=.<-<-:+5*7*;,=.=.;,7*6)7*7*7*7*6)5(3&2%4'4'3&4'4'4'4'3&2&1%0$/"/".#/$/$,!,!+ + *)
)
(	&	&	&	&	'
$" $$%	#	!	  6)7*:-;.9,7*9,</?0=.<-<-;,<->/A2=0;.8+9*<-@1A2@/?0>/>/>/@1A2B3 C4!@1=.>/A2A2?0A2G8#E6!F7"E6!D5 F7"H9$F7"C4>-?.@/B1D3G7 I9"J:#D5I:#M>'K<%I:#I:#J;$I:#I:#J;$K<%L=&L=&M>'M>'M>'M=$O?&P@'N>%O?&QA(QA(P@'TD+SC*RB)RB)RB)RB)RB)SC*VF-TD+UE,VF-VF-VF-XH/[K2ZJ1]M4`N6aO7cO7^H1R9#F-H.tK5�]D�qU�vU��]��f��l��i��mÒqrÕtŘw˞}͢�Ϥ�Σ�Σ�Х�ҧ�ҧ�ҧ�Ѧ�΢�Ѧ�ǜz��o��j��r��oęy͡�Υ�Ь�ճ�ض�ֳ�Ӭ�Ө�z��v��j�nP�yY��c�{^�oT�|[��nÖuǚ{Ę{̣�ʡ�ͤ�ϣ�Ф�ϣ�̠�˟�̟�ʝ�ǚ{Øv��s��q��q��n��h��b�`�wV�sU�lN�fK�V>lC-Z7#G(.
  	         8,L?,N?(O?&TB,SA+MA+L@*J>(I='I<)H;(G:'G:'C7C7C7B6 C4C4B3B3B3B3A2?0</;.:-9,:-9,8+8+9,9,8+7*7*7*7*6)5(5(4'4'6)5(3&2%1$1$2%3&1&/$-",!-".#.#-",!-"-"*)**(('
()'#""# !!	    

	</:-8+7*6)6)8+;.>/=.>/?0>/<-<->/@3 >1</<-=.?0?0<-B3 A2?0=.<-<-;,;,=.B3D5 A2A2E6!G8#E6!B3B3B3A2C4E6!C4@1?.@/A0C2E4 F6G7 G7 E6I:#L=&K<%I:#J;$J;$I:#I:#J;$L=&M>'N?(N?(M>'L=&M=$O?&O?&N>%N>%QA(QA(P@'RB)RB)QA(QA(RB)RB)SC*TD+TD+TD+UE,WG.WG.WG.XH/ZJ1XH/_O6_M5ZH0aM5fR:ZF.E/E,d@(�V>�kO�tS�{X�^��b��f��jpÕtĖuėvțzʟ}ʞ{ʞ{˞}Ρ�У�ҥ�ҥ�ҥ�΢�Ѧ�ȝ{��r��mu��rǜ|ϣ�Ш�Ь�ϯ�ѱ�ղ�֯�ҩ�ˢ�ƛ{��q�y[�{\��i��c�oR�sR��kÖwǚ{×ẓ�ˢ�ͤ�΢�Ф�ϣ�̠�ʞ�ʝ�ț|ƙzt��q��o��n��k��d�_�{\�uW�pR�gI�aES:gA*W4 B#(          ,"L@0RG1OC+RC,PA*H7#I='H<&H<&H<&H;(G:'G:'F9&E9!D8 D8 C7!D5 C4B3B3C4B3A2@1=0</;.:-:-9,9,9,:-9,7*5(8+8+7*6)6)5(5(4'4'4'3&2%1$0#0#0#/$/$/$.#-"-"-"-"+ ,!+ )(((&	('
'
&	$!!"     >1:-8+8+:-;.</>1?0>/>/?0?0=.=.>/</=0</;.>/?0?0=.>/=.<-;,;,;,<-<-9*>/@1>/>/B3B3?0B3B3A2A2B3D5 C4A2D3E4 F5!H7#I8$J:#J:#I9"G8!I:#J;$I:#I:#J;$J;$I:#I:#J;$L=&N?(O@)N?(M>'L=&M=$N>%N>%M=$N>%P@'P@'P@'QA(QA(QA(RB)SC*TD+UE,UE,SC*SC*UE,WG.XH/WG.WG.YI0\L3\L3[K2]M4bR9dR:\J2SA)G1Q1yK3�bF�pQ�uS�}\��a��f��h��oŗvƘwėvƙxʝ~̟~̟~͠Ρ�Ϣ�Ѥ�Ѥ�У�ˠ�͢�ƛy��p��nu��tɝ�ѧ�Ѭ�Ү�ϯ�ѱ�ֲ�װ�Ӫ�̣���u��n��d�{\��n��j�z[�iH��eėxɜ}ƚ}ˢ�ʡ�̣�͡�ϣ�ϣ�̠�ɝ�ț|ƙzŘyėv��s��q��o��k��e�_�|\�vX�oQ�cG�\ByO6d>'R2=!#
        	6, A8)J?-I>(F<#E:$J>(PC0K?)J>(J>(I='I<)G:'F9&D7$G;#F:"E9!D8"E6!C4B3A2A2A2@1?0=0</;.;.:-9,8+8+8+9,8+8+8+8+7*6)6)5(5(5(3&3&3&2%1$0#.!.!,!.#0%/$-",!,!-",!,!+ ('
'
'
&	+ )'
&	$""$6)5(5(8+:-9,9,:-</9,8+9,9,9,:-</8+:-;.:-:->/=.<-=.>/?0@1A2B3 D5"E6#A2>/?0D5 D5 A2A2D5 B3B3B3B3C4D5 C4B3?.@/A0B1C2D4E5E5I:#H9"H9"H9"I:#J;$J;$H9"I:#J;$L=&M>'N?(M>'M>'L=&N>%N>%M=$M=$M=$O?&P@'P@'RB)RB)RB)RB)SC*TD+VF-VF-TD+TD+UE,WG.WG.VF-WG.YI0\J2ZJ1\L3_O6_O6[M3\N4^P6SA+I/lD+�Y>�lM�pQ�}[��d��d��g��mÕtėv��uÖwǚ{Πϡ�Т�Т�Ѣ�ң�Ӥ�ң�Ѥ�Ѥ�ʝ|��q��rŘyÖw̟�ѩ�Ѭ�Ұ�Ҳ�ִ�ֲ�Ӯ�ҩ�׬�ėx��q��h�rS��e��i�~^�fE�`v˞˟�ɠ�ȟ�ˢ�͡�΢�ϣ�̠�ȝ}ƙzėxėxŘwÖu��r��o��k��f��`�}]�uY�nR�bE�X=rJ1_;%O0<"      2, I=-H=+C8$D9#J?)C;$@8#F>)J>(I='H<&H<&G:'G:'F9&E8%G;#F:"E9!D8"D5 B3A2@1?0?0>/>/;.;.:-:-9,8+6)6)6)8+:-;.8+7*6)5(5(4'4'4'2%2%2%1$0#/"/".!,!-".#.#-",!,!,!-",!+ *)))(*('
&	$"#%	 
8+8+:-</;.8+7*8+:-7*5(6)7*7*8+9,8-:/;.:-9,9,:+8)=.>/?0?0>/>/?0@1?0;,;,?0?0;,;,>/A2@1A2B3C4C4C4C4F5!E4 E4 E4 F5!H8!I9"J:#I:#G8!G8!H9"J;$J;$I:#H9"J;$J;$K<%K<%K<%L=&L=&M>'N>%M=$M=$M=$M=$N>%O?&P@'QA(QA(QA(QA(RB)SC*TD+UE,VF-UE,UE,VF-VF-UE,VF-YI0WE-^L4^N5YI0WI/]O5]Q7ZN4bR;N8!aA(�U:�gJ�kL�{[��b��d��e��j��p��t��r��tėxȚy˝|͟~͞�Ϡ�Ӥ�ԥ�Ӥ�Ӧ�У�țz��m��o��ux͠�Ы�Ϊ�ѯ�ض�ڸ�ײ�խ�֭�ԧ�ǘz��q�x[�]@�x[��g�z[�gI�{\��rʝ~͢�ƝǞ�Υ�΢�΢�΢�ˠ�ȝ}ŘyÖwÖwÕt��r��o��l��h��d�~^�zZ�pT�kO�^D}S:jE+W7 J.:&  	  .'KB1E:&LA-G<&A6 F>'IA,A9$;3D8"C7!B6 B6 C6#D7$D7$D7$E9!E9!D8 C7!C4A2?0>/>/>/>/=.;.:-:-:-7*7*7*7*7*7*8+9,6)6)5(4'3&3&3&3&2%2%1$0#0#0#0#0#.#-",!,!-"-",!+ ,!+ ***))*%$$$#!!"   9.9.:/:/:/9.:/=2</:-:-</=0;.8+8+8-9.9.9,:-;.:-8+=.>/>/>/=.<-<-=.C4F7"E6!A2A2D5 D5 @1B3A2B3C4D5 C4D5 E6!E4 D3C2B1B1C3E5F6I:#G8!F7 H9"I:#I:#I:#I:#K<%J;$J;$J;$J;$K<%L=&M>'M?%L>$L>$M?%M?%M?%N@&OA'P@'P@'P@'P@'P@'QA(RB)RB)VF-UE,UE,UE,UE,UE,VF-YI0^L4\J2YI0ZJ1]O5_Q7^P6\N4bR;P>&U; yQ7�cH�hJ�z[��_��d��f��j��o��q��s��uÖwėvțz˞˞͠�Ѥ�ҥ�У�У�͠ƙx��f��h��mxҤ�Ϫ�Ω�Ѯ�״�۶�ڳ�د�ڮ�͟~ǘz��j�_EvL3�mP�z]�kP�bD�uV��nŘy̡�ě{ȟ�Ч�ϣ�͡�ˠ�ʟǜ|ŘyÖut��q��p��m��h��e��a�}\�yX�mS�iO�]ByQ7dB)T5 I.: $   
 2+G<*K>-MB.MB,H='C8"C8"E:&G<(I>*E9#D8"C7!A5A4!@3 @3 ?2B6B6B6B6 B3@1>/=.?0?0>/>/;.;.:-:-5(7*9,:-8+6)4'3&5(4'3&2%1$1$2%2%1$1$0#0#/"/"0#0#.#,!+ + ,!-",!**))))(()###$$!!"    7,4)3(4)6+8-:/<1>1</</>1?2=0:-9,8-7,7,7,;.>1>1</@1A2C4!C4!C4!C4!D5"E6#@1C4C4?0@1C4A2<-B3A2B3D5 E6!C4D5 F7"H7#H7#G6"G6"G6"H8!I9"J:#H9"F7 G8!I:#J;$H9"H9"I:#J;$J;$K<%K<%K<%L=&L=&L=&N@&L>$L>$N@&N@&M?%M?%OA'P@'O?&O?&O?&P@'QA(RB)RB)TD+TD+TD+VF-VF-VF-WG.ZJ1aO7WG.VF-_O6dT;^N5\L3aQ8^N5TD*H3pM1�\C�bG�wZ�}[��b��g��j��l��n��s��u��vÖwț|̟�̟�͠�У�У�Ρ�ҥ�Ϣ�ɝz��`�zY�wX��iʜ�Þ�ɤ�Ω�Ϫ�Ӭ�լ�Ҧ�˟�ȗw��h�kQqD-d?%tO5}S:zL2P4�lO��oŘyΣ�Ɲ}ɠ�ˢ�ϣ�ˠ�ȝ}ǜ|ƛ{ėvtt��p��o��k��f��b��_�{Z�vU�lR�fL�Y@sN4`@'R6 I.9$
  I=-O@-I8&MB,G<&K?)QD1NB,G;%G;%J>(I='H<&G;%F:$D7$B5"?2=0@4@4A5@4A2@1>/=.?0>/>/=.;.:-:-:-6)7*9,9,7*4'2%1$5(4'2%1$0#0#1$1$0#0#0#0#/"/".!.!+ + ,!,!,!,!+ *('
())'
&	'
%$%%$""#  ! >3:/8-:/<1=2<1<1<19.7,8-:/:/9.9.;09.7,6+:-=0</9,;,=.?0?0>/>/@1A2D5 @1A2E6!F7"A2?0@1?0>/@1B3B3A2B3D5 D3D3D3E4 F5!G7 H8!H8!G8!F7 G8!I:#I:#H9"G8!I:#J;$K<%L=&L=&M>'M>'L=&L=&N@&L>$M?%OA'OA'M?%M?%OA'P@'P@'P@'P@'QA(RB)SC*TD+RB)RB)TD+VF-WG.WG.XH/ZJ1UE,XH/[K2[K2]K3^L4_M5^L4aQ7]M3E0jH-�U;�\B�sU�wW�]��c��i��g��i��p��t��q��qØxȝ}ɞ~ˠ�ϣ�ѥ�΢�Ϣ�̟~s�pO�^=�S4�cF�|b��q~ȡ�Ɵ�Ǟ�͡�Ę{��k�qP�Q3c4IO+M+R,`3k< �eH��sț|Ѧ�ʡ�ʡ�ě{Ϥ�ʟƛ{ƛ{ƛ{ėvt��s��n��m��j��d��`�}\�xW�rQ�hN�bH}S:nI/]=&P4F-3
'	  %RE4O>,P;(LA+I>*M@-M@-L@*QB-QB-F7 E9#F:$G;%H<&H;(F9&C6#A4!?3?3@4@4A2@1>/=.>/=.=.<-:-9,8+8+7*8+7*6)4'2%3&4'5(4'2%1$0#0#1$1$/"/"0#0#/".!,+)
+ -".#,!+ **)'
(**'
%&	%$$$#!!"!  9.9.8-7,8+8+9,;.;.:-:-9,8+9,9,:-6)9,7*4'7*9,9,;.>/=.<-;,=.>/@1@1B3 @1>/=.>/?0?0>/A2?0@1D5 F7"D5 B3B3G8#E6!D5 C4D5 F7"G8#H9$D5 E6!G8#I:%J;&J;&I:%H9$H9"H9"I:#J;$J;$K<%L=&L=&L=(M>)M>'N?(N?(O?(O?&O?&O?&P@'QA(QA(P@'O?&O?&P@'PB(SE+UG-VH.VH.VH.WI/YK1WG.YI0[K2]M3\L2ZJ0[K1]M3WL0YI/M5[;$�Y@�dJ�jL�qR�|^��c��h��j��j��j��l��n��t��sėxƙzɜΡ�̠�Ϧ�΢�Х�Ӧ��sPyL-\08 U.�eJ��f�y[�vW��j��o�~`�Y;\3@!   5N+H�_E��rŚxˣ�ʢƝ}Υ�ʞ�ɝ�ǜ|ŘyÖwv��s��s��n��k��g�`�{[�z\�tV�jL�dI�`DyT9fG+W;#M2@&4+!  *ND+OB1J>$RF0OC-M@-L?.K>-J=*I='H<&G<&E:$F:$G;%H9$F7"G6"J9%D8 B6 ?3<0>2@3 ?2;.=0</;.:-9,8+8+8+5(7*8+7*5(2%1$1$1&2'1&.#.#0%1&0%/$-"-"-".#.#,!+ ()+ ,!,!+ + + **)
))('
&	$	"!#$%#!#$$#"!  4)5*6+6+8+8+8+9,7*7*8+8+9,:-</</6):-9,7*:-;.;.</<-;,;,;,<-=.=.=.=.<-<-<->/?0?0?0?0=.=.@1A2A2@1@1B3B3B3C4E6!F7"H9$I:%E6!F7"F7"G8#G8#G8#H9$H9$H9"I:#J;$K<%K<%K<%K<%K<%L=(L=(M>'N?(N?(O?(O?&O?&O?&O?&O?&O?&N>%N>%O?&P@'OA'QC)SE+SE+SE+SE+UG-VH.VF-WG.YI0XH.WG-XH.ZJ0\L2[P4ZJ0K3U5{S:�bH�jL�qR�xZ�|^��c��g��i��j��l��n��p��n��uėxɜΡ�΢�ҩ�Υ�ҩ�ҧ���f�X9e7V)I]5tJ1uI0uI.�T9�cJ�`Hb:!@$    	  	 29 \*�iM��suȠ}Ϧ�ʡ�Ǟ�ʞ�ɞ~ǜ|Řyv��r��p��n��o��j��f�_�y[�wY�pR�gH�bI�ZAtO4cD(W;#M2?%5-	&  /$PF-OB1MA'QE/OC-L?,K>-K>-K>+J>(I='G<&E:$E9#E9#F7"D5 D3E4 C7B6 ?3<0<0>1</9,</;.:-9,8+8+8+8+5(6)7*7*5(3&2%2%2'3(2'0%.#/$/$-".#-"-"-".#-"-",!)*+ + + + ,!,!)
)
)
**)('
#!!  !"" 1&2'5*6+8+8+8+8+9,9,9,9,9,9,:-:-7*;.9,8+;.;.:-;.9*9*:+;,;,;,:+9*9*9*8)9*;,=.>/?0B3@1>/?0@1@1A2B3D5 D5 D5 E6!E6!F7"F7"F7"E6!F7"G8#G8#F7"F7"G8#H9$H9"I:#K<%L=&K<%K<%J;$J;$K<'L=(M>'N?(N?(O?(O?&N>%P@'P@'P@'O?&O?&P@'RB)SC*PB(QC)RD*RD*QC)RD*SE+UG-UE,WG.WG.TD+TD*XH.[K1\L2`R7]M3M5Q3qL2�^C�hJ�nN�sU�wY�}^��b��f��i��k��m��p��n��uėxǚ{˞�ʞ�ͤ�ɢ�Ϩ�ʟ}t�vU~O3|L5�U?W1U/Z4b<'S/K+Q2; 
    	)
6G^/�T7�{]Ŗxƙxʟ}Υ�ˢ�ƚ}ɞ~ȝ}Śzėx��u��p��m��k��m��h��d�~^�wY�tV�nO�cD�^E{S9jF,^>%T8 H-<"4	1, 
  5*PF-NA0QE+QE/OC-L?,K>+K>+K>+J>(J>(I>(F;%E9#E9#G8#E6!E4 D3@4@4?3<0;/;.;.9,:-:-9,8+8+7*7*7*5(5(6)5(4'3&2%2%2'3(3(1&0%/$.#,!-".#.#.#-"-"-"-"+ + + ***+ ,!)
)
***)'
&	$##!  0%2'4)5*7*7*8+8+:-:-:-:-9,9,8+8+8+9,7*6)9,9,7*9,:+:+:+;,<-;,:+9*=.;,9*8):+<-?0A2C4B3A2A2A2B3C4D5 E6!E6!G8#G8#G8#F7"E6!E6!C4F7"H9$I:%H9$G8#G8#G8#G8!H9"J;$J;$J;$J;$J;$J;$J;&K<'L=&M>'N?(O?(N>%N>%P@'QA(QA(QA(QA(RB)SC*TD+RD*SE+SE+SE+RD*RD*TF,UG-TD+WG.WG.TD+TD+YI/]M3\L2_Q6aP6Q;#T6kG-�W>�dG�iK�rS�tU�yZ�~_��c��g��i��j��o��nvėxƙzɜƚ}ɠ�Ϋ�Ь�Ӫ�Σ���n�jJ�T7�_E�eOlC/V0Z5"K*:6!    .D*F&Z2�R8�dI�}^��gĖu˞}ˠ�ˠ�̠�͡�ȝ}ƛ{Øxv��r��p��m��l��i��e��a�|^�vX�sV�mP�bE�[AtO4eC([;"P4D); 8
71   80MC(L?.UG-QE-OC-L?,J=*J=*J=*J>(I=%I='F:$D8"D8"G8#G8#E6!C4<0>2>2=1;/:-;.;.8+8+8+8+7*7*7*7*5(4'4'3&2%2%2%2%1&1&1&1&0%0%/$/$-".#/$.#-"+ ,!-"+ + + *))))*)
**)(&	$!"$#

		
2'2'3(3(4'5(6)7*7*8+8+9,9,:-:-:-7*7*4'3&6)7*7*:-=.<-<-<-<-=.=.<-?0?0?0>/>/?0A2B3 @1A2A2@1@1A2B3B3A2C4E6!G8#G8#F7"G8#G8#C4E6!F7"F7"F7"F7"G8#H9$G8!G8!H9"H9"H9"I:#J;$K<%I:%J;&K<%L=&M>'N>'N>%M=$M=$N>%O?&P@'P@'P@'QA(RB)TF,TF,SE+SE+SE+SE+TF,UG-TD-VF/WG.UE,VF-ZJ1\L2[K1_O5bQ7WA)U9!eC*yQ7�bG�hL�qT�sV�wZ�{^��c��f��h��i��l��m��uÖwƙzʝ~ɞ~̣�̩�ǣ�ͦ�Υ�ƙxƕu��k�oO�sY�\Cf<$Q+E"?
<0 2G*S0Z5rI-�Y<�kO��h��k��jtʟˠ�ˠ�Ϥ�Х�ȝ}Śz��v��q��p��n��m��j��g��b��_�{]�uW�rU�lP�bF~Y>qM3eC*Z<$N2B(="?$=#5   =6LB'L?.UG-QE-NB,L@*J=*J=*I='H<&G;#G;%E9#B6 B6 E6!E6!C4A2<0=1>2=1;/:-:-</7*7*7*7*7*6)6)6)6)5(4'3&2%2%1$1$1&0%0%0%0%/$0%0%.#/$/$.#,!+ + + + ,!,!+ )('
&	(	(	(	(('
%$ "# 2'2'1&0%1$2%3&5(7,7,7,7,7,7,7,7,7*6)2%2%7*8+8+</>/=.<-<-=.>/>/>/;,=.@1B3 A2@1?0?0>/?0@1?0?0A2A2A2A2C4E6!E6!D5 C4D5 D5 F7"D5 B3A2B3E6!H9$J;&F7 F7 F7 F7 G8!H9"J;$L=&I:%J;&J;$K<%L=&M=&M=$N>%M=$N>%O?&P@'P@'P@'QA(QA(RD*RD*RD*RD*SE+SE+SE+TF,SC,SC,UE.VF-WG.XH/YI0YI0_N4aP6YC+W=$`@'qL2�`D�kN�pS�rU�vY�z]�}`��c��e��f��j��k��tvŘyʝ~ɞ~ͤ�Ӯ�ڵ�ˤ�Υ�Ѧ�̞}Ѡ��d�|\�y[�mP�Z>mE+]8c>$sO5pH.rI-yM0R3�]<�uT��g��g��n��sǜzɠ�ʡ�Ϥ�Х�̟~ɞ~Śx��r��n��l��j��h��f��f��`�~]�z\�tW�nS�gK�_BvR8lJ/`@'W9!K/B(@&E)C'8  D=#MC(NA0SE+PD,NB*K?)J=*I<)H<&G;#E9!G;%F:$D8"B6 D5 D5 B3@1?3>2>2=1;/8+9,:-7*7*7*7*7*6)6)5(7*6)5(4'3&3&2%1$1&0%/$/$/$.#.#/$.#.#.#-",!+ ***+ ,!+ *(&	&	''''
'
'
&	%#	"!3(2'1&0%0#1$2%3&6+6+5*4)4)4)5*5*8+6)2%3&8+8+8+;.=.<-;,;,<-=.>/>/:+<-?0@1@1>/=.<-=.?0@1?0?0A2B3B3C4D5 E6!D5 B3A2A2B3H9$E6!B3B3D5 F7"H9$I:%G8!G8!G8!G8!G8!H9"I:#J;$I:%I:%I:#J;$J;$L<%M=$N>%N>%O?&O?&O?&O?&P@'P@'QA(QC)QC)QC)RD*RD*SE+RD*RD*TD-RB+SC,WG0YI0WG.WG.YI0^M3aM4[E-[C)`B(mI/�[B�fK�mP�qT�uX�y\�{^�}`��c��f��j��k��t��wÖwț|ǜ|̣�Ü}ر�ɤ�Щ�ٲ�ɞ~sĖr��l��a�a�b�qT�\A�Z=�kN�hI�rS�kL�hG�zY��d��f��n��uÝyǠɢ�̣�Х�ϣ�˝{ȝ{Øv��p��l��i��f��c��`��b�~]�{Z�xZ�rU�kO�dG�[@qM3hF-\<%T5 K/H,H,K/H)7JC)LE)OB/P@&MA)L@(J>(I='I='H<&F:"D8 G8#H9$G8#E6!B6 B6 B6 @4@4>2=1<0:.8+8+:-7*7*7*7*7*6)5(5(6)5(3&3&3&3&2%1$0%/$/$0%/$-",!-",!,!,!,!,!,!+ *+ + ,!+ *))))
(	'&	&	%%$#
!  

	3(3(2'1&2%2%3&4'1&1&1&2'3(5*7,8-9,7*4'4'8+7*5(8+:+:+:+:+<-<-<-<-?0@1@1?0>/=.>/?0;,>/>/<-<-?0B3B3B3C4D5 D5 B3B3D5 F7"H9$F7"E6!F7"I:%J;&H9$F7"G8!G8!H9"H9"H9"H9"I:#I:#I:%I:%I:#I:#J;$L<%M=$N>%M=$M=$M=$L<#L<#M=$O?&P@'PB(PB(QC)QC)RD*SE+RD*QC)VF/RB+SC,YI2ZJ1VF-VF-ZJ1^M3`L3]G/`H.dF.kG-~V<�^C�kN�oR�tW�x[�y\�|_��c��g��h��i��r��vÖwț|ȝ}Φ�̣�Χ�Ԭ�Ǣ�ȣ�Ӭ�ʟ}ȝzƖr��l��q��r��c�wZ�{\��d��c��d�|_�{^��d��h��j��m��x��u��wšͦ�͢�˟|Т~ęw��s��n��j��g��d��`��]��_�{Z�yX�vW�pS�iM�aG}X=pN3gG.\>&R6 O3O3Q5R6H)6

MF,LE)OB/L<"L@(J>&I='I='I='H<&F:"D8 C4E6!E6!C4@4A5A5@4@4=1;/;/:.8+8+:-7*7*8+7*7*6)5(4'3&2%1$1$2%2%1$0#.#-".#0%0%-",!-"+ **+ ,!,!+ *+ + + + **+ ,!-"+ )
'
%$#"

		2'2'2'1&1&2%2%2%4)0%/$3(6+4)5*8-7,7,7,7,7,6+3(2'5*6+6+8-9.9.8-7,>/=.=.?0=0</;.</</>1?2>1>1@3 ?2=0?0@1B3C4C4C4C4C4F5!H7#I8$I8$H7#G6"G6"H7#G8#G8#G8#G8#G8#G8#G8#H9$I:#I:#I:#I:#J;$K<%L=&L=&M?%N@&N@&OA'N@&N@&M?%M?%N?(PA*RC,RC,QB+PA*QB+RC,SD-TE.UG-UG-UG-WI/YK0ZL1XI,aR5_N2Q9vT;vN5wO5�aD�gM�mP�tV�xW�{Z�~`��e�e��d��j��n��qyǠʣ�ͦ�ȥ�˨�ͩ�̥�ˤ�Υ�Ф�΢�Ɵ~ĝ|Ŝ|Úz��q��n��n��k��r��s��p��j��l��r��u��ry��v��{ȡ�̥�ʢɞ{ɝxęv��q��k��h��f��d��`�}^�{Z�yX�wX�tT�oQ�fJ�]C~V<lJ.aB&Z<"U9!R6 T8 Y;!Y9 L/7 OF)NB(J=*PC0L@*K?)I='H<&G;%E9#D8"C7!E8%C6#A4!@3 A4!B5"@3 >1<1;0;0;0;0:/8-6+6+6+7,6+5*3(1&0%6'3$0#2%2%0#/"/$0%0%/$,!,!/$/$-",!+ + ***)))*+ + )()),!((*(#!"	



			1&1&2'2'2'3&3&3&3(3(2'2'3(4)4)3(5*5*6+6+6+6+6+6+8+8+9,:-:-:-:-9,<-;,<-;.;.:-:-;.;.=0>1=0=0?2?2=0A2A2A2@1@1B3E6!G8#D5 D5 E6!D5 C4C4E6!F7"F7"F7"F7"F7"G8#G8#H9$H9$I:#I:#I:#I:#I:#J;$K<%L=&M?%M?%M?%N@&N@&M?%M?%M?%M>'N?(PA*QB+PA*PA*QB+QB+TE.TE.TF,UG-UG-VH.VH-VH-ZK.aR5aP6U=#qQ8xP7uM3�\?�fK�lO�tV�wW�yY�|^�~c�d��b��h��k��o��wŞ}ȡ�̥�˧�ϫ�ϫ�Ϩ�Ϩ�Ѫ�Ӫ�Ѩ�ͦ�ͦ�Ϧ�ˢ�Øx��vƛyɜ{ģ���{��v��v��w��u��swÚzÜ{ŞǠ�ɠ�ɞ|Ǜx��q��n��i��f��b�^�{Z�xY�yX�wV�uV�qT�lN�dH�[A|T:lJ/aB&Z<"X<$X<$\@(_A'[;"H.2*!QH+NB(H;(L?,J>(J>(I='I='H<&G;%D8"C7!D7$B5"A4!@3 @3 @3 ?2>1;0;0:/:/:/:/8-7,6+6+6+5*4)3(2'2'5&3$1$2%1$/".#/$0%0%/$,!,!-"/$.#-",!,!+ + + *)((((('
'
'
&	$#$#  !
								.&.&1&2'2'3(4'4'3(6+5*2'2'5*4)0%3(3(3(3(3(4)6+8-8+8+9,:-:-:-9,9,:+:+:+:-;.;.</<1=0>1?2=0=0>1=0;.>/@1C4D5 D5 C4C4B3D5 D5 D5 C4C4D5 E6!G8#F7"F7"F7"F7"G8#G8#H9$H9$H9"H9"H9"I:#I:#J;$K<%L=&M>'L=&L=&L=&L=&L=&M>'M>'M>'M>'N?(PA*PA*QB+QB+QB+TE.SD-SD-SE+UG-VH.UG-TF,[L/^N4bR8YD)kK4{V<vN4~Y<�bG�jO�sU�wW�yY�|^�~a��e��e��k��n��r��{Ǡ�ɢ�ͦ�ǣ�ʦ�ͦ�ʣ�ˤ�Ϩ�Ѫ�Ѫ�Ϫ�Ϫ�Ӭ�Ѫ�ʡ�ʡ�Ф�ѥ�Ϭ�ȥ�Š�Ɵ�Ǟ�Ü{zÝy��uĜyŞ}ĝ|Ɵ~ʡ�ʟŚx��o��m��j��f��a�}\�yX�vW�vU�uT�rS�nQ�hJ�aD�X>xS8mK0bC']?%_A)`D,cG/aC+X: H/,  :1 RI,OC+I<)K@,I='I='I='J>(I='H<&F:$D8"B5"B5"A4!@3 ?2>1>1=0:/9.9.8-9.8-8-7,6+5*5*4)3(3(3(3(2%2%2%2%0#-".#/$/$0%/$-"+ ,!.#.#-",!+ + + + *)('
&	'
'
'
&	%%%#  !""
								-%-%.&1&2'2'2'2'3(5*5*3(3(5*4)1&2'3(4)3(2'2'4)7,7*8+8+9,8+8+8+8+<-8+8+:-:-8-9.:/:-;.</</=0=0=0</>/@1C4E6!D5 B3?0>/D5 C4C4C4C4D5 E6!F7"E6!E6!E6!F7"F7"G8#H9$H9$F7 G8!G8!H9"I:#J;$K<%L=&L=&K<%K<%K<%K<%K<%L=&L=&N?(N?(N?(PA*QB+RC,QB+PA*SD-QB+PA*QB+TF,WI/WI/VH.YI/XJ/aQ7\H/cE-~ZByQ7Z?�^C�fK�qS�vV�yY�|^�b��e��h��n��q��u~ȡ�ʣ�˦�̥�ͦ�̥�ǣ�ǣ�̨�Ь�Ь�Я�Я�Ա�Ա�Ӯ�ԯ�֯�Ѫ�ׯ�Ҩ�ϣ�Π�Ρ�̟�˞˞��p��txĝ|Ǡȡ�Ŝ|��w��n��k��g��e��a�~]�yX�vW�rQ�qR�pP�jM�dH�\B~V<xS8mK0dD+cC*dF,fH0eI1]A)Q5C-"  E=*PG*MA+K>-LA+H<&H<&H<&I='I='H<&F:$E9#A4!A4!A4!@3 >1=0=0=09.8-7,6+6+6+6+5*5*5*4)4)3(2'2'2'1$2%3&2%.#,!-"/$,!.#0%.#,!+ ,!-"+ + ***))()'
&	&	()'
$%'
&	! $$!



									 ,$-%-%.&0%0%0%0%2'1&2'4)4)2'2'4)4)6+7,7,5*5*6+8-7*8+9,8+8+7*8+8+</:-:-:-:-6+6+7,7*8+:-</=0>1>1?2@3 ?2>1</;.</>1?2@1@1A2B3C4C4C4C4D5 D5 E6!E6!F7"G8#G8#H9$F7 G8!G8!H9"I:#J;$J;$J;$K<%K<%J;$J;$J;$K<%K<%L=&N?(N?(N?(O@)PA*QB+PA*O@)SD-QB+O@)PA*SD-VH.WI/WI/XH.VH-]O4\K1]A)zV>zU;�[@�\C�eI�nQ�tT�xX�|\��b��d��h��m��o��s��|ğ�ơ�ȣ�ˤ�ʦ�Ȥ�Ġ~šʦ�Ϊ�Ϊ�ͮ�ϰ�Ӵ�ճ�Ұ�ӱ�ӱ�ά�԰�ү�Ω�̥�ˤ�ʣ�Ɵ���y��s��q��s��yĠ~Ü{��v��s��k��f��`��^��^�}\�xW�tU�oP�oP�nN�iK�aE�Z@zU:xS9iI0fF-gG.iI0hJ0dH0Z>&K17" JB-LC&I='H;*I?&G<(G<(F;'F;'F;'F;'E:&D9%A4!A4!B5"@3 ?2=0</</:/9.8-7,6+6+5*4)5*5*5*4)3(2'1&0%0#2%3&0%-",!,!-"+ -"/$/$-"+ + ,!+ *))))('
)'
%&	()'
$"&
%	  $$ 

		



					    -%-%,$,$,$/$/$/$0%.#/$3(3(0%1&5*3(4)6+6+6+6+6+7,7,8-9.8-7,7,8-9.;.:-;.<1=2<1<1=2?2?2?2@3 @3 >1>1>1=0=0</;.;.</>1?2=1>2>2@4A5B6 A5A5D5 D5 E6!E6!E6!F7"G8#G8#G8!G8!H9"H9"H9"H9"H9"H9"J;$J;$J;$J;$J;$K<%K<%K<%L=&M>'N?(N?(O@)N?(N?(N?(TE0RC.PA*PA*RC,TE.UG-VH.YI/WI.YM3]M3Z@'pN5yT:~Y>�^E�eI�lQ�qT�vV�{[�~^�~`��f��k��l��p��x~ßĠ���}Ġ�š�Ġ�ǣ�ͩ�Ү�Ү�Ѯ�ֳ�ܹ�ٶ�Ұ�ӱ�׵�׵�γ�г�α�̭�̭�ʭ�ħ���~Úz��u��r��v��w��t��p��q��g��a�~[�|Z�~\�|[�xW�tU�oP�pP�lO�gK�`C�X>zU;yT:fF-gG.mK2lL3hJ0aF+U;"G-(  %ME.MD'H;(H;*G=$G<(F;'E:&D9%D9%D9%C8$C8$A4!A4!A4!@3 ?2=0</;.;0:/9.8-7,6+5*4)4)4)5*4)3(2'0%/$0#2%1&/$,!,!*"*"+ ,!.#/$-"+ *+ ,!+ ****)('
%$%'
'
%# $$!"%%!	

											       -',&,$,$,$,$/$0%0%0%1&1&1&0%2'4)1&2'3(4)4)5*5*5*4,5-6.6.5-5-6.80:-:-=0?4 A6"@5!@5!A6"C6#A4!A4!B5"@3 =0</</:-;.=0>1>1=0=0</>2=1=1?3A5B6 B6 B6 E6!E6!E6!E6!E6!E6!F7"F7"F7 F7 G8!H9"H9"H9"H9"H9"I:%J;&J;&K<'K<'K<'K<'K<'K<%L=&N?(N?(N?(M>'N?(O@)RC.RC.QB-QB+QB+RC,SD-SD-XH.XL2WK1^N4ZB*dD+wR8{V;�^E�cJ�iN�nQ�tT�yY�|\�{[��d��h��i��l��t��y��y��z��}à�Ǥ�Ǥ�˦�Ы�ԭ�Ӭ�Ҥ�Ԩ�ڮ�د�֮�ڲ�ڵ�ײ�Ѫ�̣�ȟ�ȟ�ȡ�ğ�����|��s��q��r��p��o��m��l��l��c��^�}Z�|Z�}[�|[�xW�tU�pQ�qQ�mP�hL�_B}X=zU;yT:iI2kI0nL1mK0fG+\A&M3;# 
  :2'JD*MD'H;(J=,H>#F;'E:&D9%D9%C8$B7#A6"@5!A4!@3 ?2?2?2=0;.9,:/9.8-8-7,6+5*3(4)4)4)3(2'2'1&0%1$1&0%-",!+#*"( .#,!,!-",!**,!+ + ***))(&	%$$%&	$""#$"#$$#
				       -',&,$+#+#-%0%1&1&4)5*1&0%3(4)3(4)3(3(3(4)5*5*4)2*4,5-5-4,4,6.80=0=0=2?4 >3;09.7/:-9,:-=0=0</</=0?2>1=0;.;.;.=0?2<0;/:.;/=1?3@4@4E6!E6!E6!E6!E6!E6!E6!F7"D5D5F7 G8!I:#I:#J;$J;$I:%I:%J;&K<'K<'K<'K<'K<'J;$L=&O@)O@)N?(N?(O@)QB+O@+PA,RC.RC,RC,QB+QB+QB+WG.YM3UK0^P6]E-^>%uQ7yT9�]D�aH�fK�kN�rS�yY�{[�{Z��a��e��e��h��o��t��t��t��|���à��Þ�ŝ�Û���}��o��o��uĕ{˝�ѥ�̢���~ɋr�f�u\�t]�u]�q[�r[�w_�c��i��l��i��f��g��g��f��^�\�|Y�{Y�{Y�yX�vU�sT�rS�sS�oR�hL�^D|W<yT:xT:mM6nL3nL1lJ/cD(V; D*0   E=2D?"I@#E8'J=,I?$E:&D9%D9%D9%C8$A6"?4 =2A4!?2>1>1>1=0:-7*7,7,7,7,7,5*4)2'4)3(3(2'2'2'2'2'0%1&/$-",!+#*"'
0%,!*+ + *+ ,!*))((('
'
&	%$%%%$###"!!!!!
	         )!)!*"+#-%.&/'/'0%0%2'4)5*4)4)4)4'0%/$0%0(0(1)2*6+5*5*5*7,9.:/;09.9.9.8-8-:/:/8-;0;0:/9.:/=2?4 A6">1</</=0?2?2=0:-=0=0</</=0>1@3 A4!A4!A4!C4!D3!D3!C4!A4!@3 A5B6 C7!C7!D8"F:$G;%F:$E6!F7"L=(L=(H9"I9"M=&M=&J;&I:%K<'N?*O@+N?(N?(O@)QB+QB+QB+QB+QB+QB+RC,SD-VF,\N4VJ2UI3_O8XB*lN4vT9~Y>�hN�eI�jN�rU�oR�vX�}_�~^��c��d��d��h��o��r��s��m��y��v��s��h�oS�kP�rT�pY�kQ�rX�{^�|\cąf�z]�hT�S>�S=�XB�N6�N6m;$k;$vJ1�ZB�iS�nW�qW�w[�yV�vQ�z]�zZ�xV�wU�yX�zY�wX�qR�qT�mP�kP�iL�`E}Z>wU:qO4qI0oO6hP6hN5X: Q1>#&   +#I=-G:'H;*I<+@8%D>(E:&D9%C8$B7#B7#A6"?4 >3:/;0;0:/9.9.:/;08-7,5*4)3(3(4)4)5*4)2'0%/$.#.#/$/$/$.#,!,!,!*(	,+(	'(	)'')!( ( '
'
&%
#"#%$#!
	

	            0(/'/'/'0(1)1)1)-"-".#/$0%0%1&1&2'1&1&3(2*1)0(0(1&2'3(3(3(3(4)5*6+7,7,7,8-;0;0:/7,7,7,7,8-9.:/;0;.=0@3 ?2=0</=0>1;.:-:-:-;.=0>1?2?2?2A2B1B1A2?2?2@4A5B6 A5B6 D8"D8"C7!C7!C7!H9$J;&H9"I:#L<%K;$K<'J;&L=(N?*O@+N?(N?(PA*PA*PA*PA*PA*PA*QB+SD-UF/ZJ0WI/TH0ZN8]N7YE-Z@'lN4|W<�dG�cG�fK�kN�pS�xX�sS�_��`��^��^��a��_�zZ�sV�zZ��c�qX�[D~G2t:&t7"o3|I8�Q?�YF�YF�ZH�cS�^O�J>vG5rE2f9&_4#d6&]/MY(V#PZ+g9)c8%`8qJ-�`A�eH�oO�wU�yW�yW�zX�zZ�xX�rU�oR�oS�jM�`E|Y=wU:rP5qL2rR9hN3fK0Y;!N/1
  :2%MB.K?)H;(D7&D<)A;%D9%C8$B7#A6"A6"@5!?4 >3<1<1;0:/9.8-8-8-:/8-6+4)2'1&2'2'2'1&1&0%/$.#.#.#.#0%0%.#,!,!,!+ - ,*)
)
*( ( ( ( '
&	&%
$	# !!#" 
	

	            +#*")!)!*"*"*"*",!,!,!,!-"/$0%1&-"-"/$2'3(.&,$,$0%2'4)4)2'1&2'3(2'3(4)3(5*8-9.8-7,7,8-9.9.9.9.8-9,;.=0=0;.:-:-</:-:-9,9,:-;.=0=0>1>1@1@1@1@1>1>1@4A5A5@4@4B6 B6 @4C7!@4D5 G8#G8#J;$L<%H8!J;&J;&K<'N?*O@+N?(N?(O@)PA*PA*PA*O@)PA*QB+TE.UF/ZJ0UG,VJ2ZN6VJ2[K2M7ZB(�X>�_B�aE�eH�iL�qQ�yY�rR�vV�wW�|Y�|Y�vR�dCvR2kG'uK3uH1j:&d,`%b$f'\Xi0r9(r9(x@/}H8uB1e4%d$` LF Z\ `"e'UG= 9 7 L	qC+�[A�eE�qQ�zX�yW�xV�{Y�{[�wZ�rW�pT�pS�iN�^ByW<vT9qR6pN5pR6gI-aC'U7B' 
  #HA/LA+J>(H;(A6$G?,>8"B7#B7#A6"A6"@5!@5!>3=2?4=2;0:/:/:/9.7,7,5*4)2'1&2'3(4)/$/$/$/$/$.#-"-"-"0%1&.#+ + ,!-"/"- + + + + )!)!'
'
&	%%
$	#"   !!



	        )!( ( '( )!)!)!*+ ,!+ ,!.#0%0%/$/$2'5*6+4)0(0(1&3(4)4)2'2'3(4)2'3(2'2'3(5*6+4)7,7,9.9.:/9.9.8-:-8+7*8+:-;.9,7*;.;.;.:-;.;.</=0?2>1>1?0?0>1>1>1@4A5B6 A5A5B6 B6 @4B5"?2A5F7"F7"I:%J;$G8!I:%J;&K<'L=(M>)M>'N?(N?(PA,PA,PA,PA,PA,PA,RC.SD/UE+XJ/WK1TH0RF.\M6N>%I7xS8�X>�]A�eI�jM�nN�tT�{X�{[�{[�|Y�zW�tP�lK�lK�qQ�hOvI2Y)V!a(y>.�\J�fS�XF�UC�E3�5"�+siox�8*�WF�o\�ze�ybɍu��m�na�]O�O@�P?�dP��m��r�{^�zZ�~^�}[�yV�{X��`�~^�wY�rU�oR�lQ�dI{W=uS8sS:rR9iN3lN2aD&X:H,-
 >7%ME.E;"C9 F;'D9'G?,>8"B7#A6"A6"@5!@5!?4 >3=2=2:/9.9.:/;09.7,4)3(3(2'2'2'2'2'.#.#.#.#.#-"-"-",!.#/$,!*+ ,!,!/".!,!+ ,!,!)!)!&	%$$	$	#!  	





			        *"*")!)!*"*"*"*"+ ,!,!+ + ,!,!+ ,$,$0%3(3(2'1&2'2'1&0%0%1&2'2'3(4)4)4)3(4)5*5*4)5*5*6+6+7,7,7,7,;.9,7*8+:-;.9,7*:-:-:-:-;.</</=0>1>1=0=0=0=0>1>1>1@3 A4!@3 A4!B5"B5"@3 A4!?2B5"D8"E6!G8#J;&H9$I:%J;&K<'L=(M>)N?(N?(N?(L@*MA+NB,NB,NB,NB,OC-OC-SE*XJ0TH.PD,UI1UI1YJ3H: a?$uQ7�\A�_B�hJ�kK�lL�yV�vX�tT�vS�xT�yU�|X��d��oŞ��p�{a�{d�}g��o͗Θ~ˎoԕvՏuֈq�}j�bR�QC�ZMɇoΎuɐu͚}ң�ʟԫ���u��p��rĒ{Ǘ���w��p��m��h��i��e��^�zW�}Z��c��d�|]�sX�mR�hL�^DuS8oO6rR9rR9iO6fK.\?!N26	   (%KC.F?%D:B8E:&D;*A8'A;%C8$B7#A6"@5!@5!>3=2<1:/8-6+6+8-8-7,5*6)6)5(3(1&-%+#*"0%/$.#-",!,!-"-",!-"-"+ + ,!,!+ - - + + + + ( '%$	###" 

		

            *")!)!)!)!)!)!( .#0%/$,!+ ,!+ )'
&	( ,!,!+ ,!.#2'0%/$/$0%2'2'2'3(3(3(2'3(5*5*3(4)4)4)4)5*5*6+6+5*7,8-8-5*5*6+8-7*7*8+9,:-;.</=0</</:/:/:/:/</=0:/<1>3>3?4 @5!?4 >3?4 ?2C6#D7$A5E6!I:%I:%J;&K<'L=(K<'L=(N?(O@)N?(I='J>(L@*NB,NB,NB,OC-OC-RF.SD-PA*TE.[L5RC,\P6OC)K0hJ0}[@~Y>�bE�kM�iL�pP�xZ�wW�{W��]��a��e��f��h��m��v��u��s��m��nŔv��oæ�б�Ӳ�Ҫ�֨�Ԡ�Ԛ�࣎Ϊ�༤ӯ�ͧ�ҩ�Ù�Ė��{œxœxxw��p��e��a��b��g��g��c��]�[��_��`�|_�uY�lP�cH{Y>pP7nN5oQ9nP8iQ9`E*Q6>("	
 
 @=.I>*C9 G="F;%A9&A8'>5$C;&C8$B7#A6"@5!?4 >3<1;0<1:/8-8-8-7,6+5*4'4'4'2'0%,$*")!/$.#-",!+ ,!,!-"-"-",!,!,!.#,!*++***)&%
$	##""! 
		  		         *"*"*"+#,$,$,$+#/$1&/$,!+ -"-"+ *"*"+#-%.#-"-"/$0%0%0%0%0%1&2'2'1&2'2'0%1&3(3(2'4)4)5*5*5*5*5*5*4)5*7,6+4)3(5*7,6)6)7*8+9,:-;.;.=.;.9.8-8-9.;.>/9.;0=2=2>3?4 >3=2?4 >3B5"C6#@3 B6 H9$H9$H9$J;&K<'J;&K<'M>'N?(M>'H<&I='K?)L@*L@*MA+NB,OC-RF0L@*RC,WG0XH/VH.[M3UI/N8 V>$pR8zX=�Y?�fJ�jM�kN�vW�uT�vR�yT��\��e��j��j��_��m��p��m��m��oŔtēsȔ~ף�ب�Ӥ�ը�ԧ�ϣ�ϣ�Υ�ٰ�ʠ�Π�פ�Ӛ�Ɍzņu��pĕy��s��h��d��`��`��e��e��e��c��b��_�]�|\�{]�rW�fK~\AtT;nN5nP8nP8kM5bJ2R8A')	 JD.F;'G<&G=$D<%?6%>5&B9(@8#A6"@5!@5!?4 >3=2<1;0=2<1:/9.7,5*4)4)4%2%1$/$/$,$,$+$,!,!,!+ + ,!,!,!*,!-",!,!,!+ )
*
*
)
)
)
)%
#$	#""!!		                     $	%
&( *"+#*")!+ -",!((-".#,!+#+#,$-%.#+ ,!/",!/$1&0%/$.#/$1&4)4)3(2'2'3(3(1&3(3(4)4)4)3(2'2'8-6+4)5*7,8-7,5*8+8+8+9,9,9,9,9,=.;.9.6.6.9.</>/9.;0=2=2>3?4 >3<1@5#>3@5!B5"@3 B6 E9#F7"F7"H9$I:%G8#H9$K<%L=&K<%J>(J>(K?)K?)K?)K?)MA+NB,MB.L?,VG2WG0P>&`P7YK1TI-ZI/E/_E,xX?xS9�[B�iN�mP�nO�uT�|X��[��_��d��g��f��d��g��d��j��q��l��nŒs̛}ӡ�Ѣ�Ϡ�ң�֥�ԡ�֡�К~բ�֣�٨�ȗwȕv̗wɔtÔzÔz��e�uV�^��b��`��i��e��a��`��c��d��a�~^�{]�lQ�`EvW;pP7mO5nP8nP8iJ5YA)E+2   J@%I<+NC/B7!?7"<3"=4%I@/:2@5!?4 >3>3>3=2<1;09.9.8-6+3(2'1&1&7(3'1$.#-"*"*")")
**+ + ,!+ + (	+ .#,!*)
)
(	)	)	)
)
)
($	"$	#""! 


                  
 
 



&&&&*",$*"&)!*"+#+#,$,$+#+#)"+$-&.&-%,$,$/$-%-%-%-%-%-%,$,$0(0(1)0(/'/'/'/'/'0(1)0(.&.&0(2*1&2'2'4)6+8-8-7,5*9.7,1&1&7,:/8-9,;.=0>1=0</;.;.=0</;.;.=0>1=0=0>1?2A4!C6#D7$B5"B5"D7$E9#E9#D8"E9#H<&I='I='I='J=*H;(H;(K>+K>+I<)K>+NA.L@*NB,OC-PD.PD,RF.UI1XL4^S7F6Q="fL3oO6�_D�eG�hH�qR�oO�rR�{[��c��b��b��c��a��`��_�]��`��f��mpÐ{Ϝ�Ӡ�ѡ�ب�ڪ�֥�צ�֦�֣�֣�џ�ʘ�˛�˞������m�sZ�pT�yZ�}[��b��i��f��c��a��_��_��`��b�|_�sW�cKzZAsW?kO7pR:mO7fJ2T<"P63!  JD,H=)E=(C;&?7"=6#=6#<5":3 <5"<5";4!;3<1;0;.;.:/:/8-4)3(3(3(2'5*3(/$-",!*"+#+#-"-"-"+ + ,!*( $	( *")!'
&	%&	'
( '%
#"#('%# !	 	
	              
 
 
 
 
 
 #$	##%
''$	( )!*"+#+#+#*"*")"*#*#+#+#+#+#.#+#+#,$,$,$+#*")!/'/'/'.&.&.&/'0(.&/'0(0(/'-%,$,$0%1&3(4)5*5*5*5*6+8-6+2'2'5*8-7,:-;.</=0</</</</>1=0=0=0?2@3 ?2?2=0=0>1A4!B5"A4!A4!B5"D8"D8"D8"E9#F:$H<&G;%G;%G:'G:'H;(J=*I<)I<)J=*M@-L@*NB,OC-OC-OC+PD,SG/UI1VK/^N4H4\B)rR9vS7�[>�gI�nN�mM�qQ�xX�~^��_��a��b��`��_�~\�{Y�{Z�~]��`�`��mēsʙy͜|Ϟ~̛}˘{̙|˘yđroœrʙxȚy��o�~^�qV�kP�qT�}]��_��c��e��b��a�_��_��_��`��b�|_�rV�aHnS8hP4fN4jN6_C+X@&N::%$     HB*E=(D<'B:%?7"<5"<5";4!92<5"<5";4!;3<1;0</;.8-8-6+3(2'3(3(2'3(1&/$.#-"+#*"*",!-",!+ + + *(#&)!*"*"( '
&	#$%%
$	#"""""" 
 			              	 	 
 
 
 
 %
%
%
$	$	&&&''( )!*")!( ( )"(!' ( )!+#-%/$-%-%.&.&-%,$+#+#.&.&-%,$,$-%/'0(.&.&.&.&-%+#( &/$1&4)5*5*5*5*5*6+5*4)3(3(4)6+8-9,:-:-;.;.;.</</=0</</=0>1?2?2>1?2=0=0@3 B5"B5"A4!B5"C7!C7!C7!D8"E9#F:$F:$E9#E8%H;(J=*I<)H;(I<)K>+L?,MA+MA+NB,OC-OC+PD,RF.TH0WI.]M3ZI/D.jO4jH-vQ6�bE�hJ�lN�pP�sS�wW�}[��_��`��c��b�_�{[�uV�qR�jL�eG�hL�rV�v[�tY�z_̊pѐtƅińhɈlɈl��d�rV�aE�W:�W<�bE�jK�vU��]��a��b��`��`�yY�yY�{[�|\�zZ�z[�tW�iMx]BfN2aL/`K0dJ1W=$N8 B1!          !G?(C;&C;&A9$>6!=5 =5"<5":3 929291809.9.9.8-5*6+4)2'1&2'2'1&0%/$/$.#.#+#)!( ,!,!,!**+ *(&')!)!( '
'
&	######!  !"!"!

				              
   	 	 	 	 %
&'&&&'( ''''( ( ( ( (!' &( *"-%.&0%/'/'.&.&-%-%-%-%.&-%,$,$,$-%.&.&.&-%+#+#+#*"'%
*-"1&4)4)4)5*6+4)2'2'4)5*3(5*9.6)7*9,:-:-:-;.;.</</</=0=0=0=0=0A4!>1</?2A4!B5"A4!A4!C7!C7!C7!D8"E9#E9#E9#D8"D7$I<)L?,I<)H;(K>+L?,K>+L@*L@*MA+NB,OC+QE-SG/UI1TF+ZL2\L3S?&I1iK1jK/{X<�dE�lM�pR�pP�rR�yY�}[�}[�}]�_��`�~^�xY�nO�aC�W9qG/pF.kA)b6e7xJ2yK3e5e7j<"l>&pD+tJ1sK1uP6�^D�hK�tU�}\��^��`��_�}]�{[�xW�wW�{[�{[�zY�xX�qU�eIoT9eK0dL0^F,_E.T9$E0/         #C;$B:#B:#@8#>6!=5 >6!=5";3 706/7/6.5-7,7,7,4)5*3(1&0%1&1&0%.#.#-"-"-"*")!( + ,!+ **+ *'
'''&%
%
%%&%
$	##" !! !! 

		 
		         
    
 
 
       "#&'&%
&'*")!( '( ( *"*"(!&&( +#,$-%.#-%,$+#*"*"+#,$-%.&-%,$,$-%-%,$,$.&-%,$-%.&-%*"''+ /$1&1&1&3(5*4)2'3(5*5*3(4)7,5(7*9,;.;.;.:-:-=0>1>1>1>1>1>1=0?2</;.=0?2@3 @3 @3 C7!C7!D8"D8"D8"D8"E9#E9#D7$I<)K>+I<)H;(J=*L?,J=*K?)K?)L@*MA+NB*PD,RF.TH0RD*ZL2TF,aQ8I5Q9gL1mN2�^@�hK�pQ�nQ�pP�uU�xV�xV�vV�{[�_�`�~_�xY�nO�fG�dJ}U;uM3sI0lB)f<#a5V*Z0Y/V.`8nI/vQ6}X=�gK�vX�a��c��_�^�}\�wY�tV�uV�vU�zZ�zZ�xY�tW�mQ�`DpP7dI.bH-[A(Y=(G,3
         '!A9"A9"A9"@8!>6!=5 @5!?4 =291807/6.6.8-8-8-4)5*3(1&0%0%0%/$.#-"-",!,!*")!( *+ + ))*)'
'
&	%
$	$	$	##'&$	##	" 

		   
	           
   
 
 
 
       !"$	&&%
%
'+#*")!( ( )!+#,$' ' ' )!)!*")!+ +#*")!( ( *"+#-%-%,$+#,$-%-%+#*",$,$.&1)3+1)-%*"-".#0%1&1&2'4)5*5*4)4)6+5*2'2'4)6)8+;.</</</;.;.</</>1>1=0=0=0=0?2=0</>1?2?2@3 @3 C7!C7!C7!C7!C7!D8"E9#F:$F9&G:'H;(G:'H;(I<)I<)I<)K?)K?)K?)K?)L@(NB*OC+PD,WI/PA*\M6WH1_O6C/V>$gL1yW;�bD�lO�lO�mN�qR�uS�uS�yV�{Y�]�^��`��a��_�]�}^�|]��c��j��g�|^�wY�tV�rV�uY�y]�|_�z[�vW�zZ��c��g��g��h��c��_�|^�vX�pT�uV�wX�{Z�{Z�wX�rU�jN]BsS:aC)[A(W=&M2!/	
           +%?7"@8!A9"?7 ?4?4 ?4 >3;0807/6.5-4,4,4,5-3(4)3(1&0%0%0%.#/$.#,!+ + )!)!( ***))*)'
'
&	%%
$	$	$	#$	#"!! 		



	    	           
   
 
 
 
       ##$	&&%
%
')!)!( ( ( ( ( )!&' (!)!)!)!)!,!,$+#*"*"*"+#+#,$-%+#)!*"+#,$+#*"+#,$-%/'1)1)/'.&2'2'1&1&1&3(4)5*3(4)5*6+5*4)4)4)7*9,:-;.;.;.;.;.9,;.=0=0=0=0=0>1?2>1>1@3 @3 @3 @3 B5"B6 B6 C7!B6 B6 C7!F:$G;%I<)G:'F9&G:'H;(H;(H;(H;(L@*L@*K?)L@*MA)OC+PD,PD,WG0RC,VJ2WK3YJ3VD,F0aI/oP3{Y=�dG�hK�kN�oP�sQ�uS�zV�|Y�~[�\��_��e��k��n��nƠ{ϩ�ӭ�׳�ٵ�ղ�ү�ֵ�Ӳ�մ�Զ�Я�ɧ�w��o��w��q��q��k��a�_�{[�sV�|]�}^��b�`�xY�qT�gK|Z?jL2W="P8E/5  
              /)>6!?7 ?7 >6>3=2>3=0;.7/6.4,3+2*2*2*2*2'3(2'0%/$0%0%.#/$.#-",!,!)!( ')**())(&	'
&	%%%
%
$	"!!!  	

					           
   
 
 
 
       %
""$	$	#$	&%
%
&&&&%
%
%' (!)!)!*",$0%+#+#+#+#+#*"*"*",$*"( ( )!+#+#+#,$+#*"*"+#-%0(1)2'0%.#-"/$1&3(4)0%3(5*5*6+6+6+5*7*8+9,9,9,9,:-:-:-</>1?2?2?2@3 A4!=0=0>1?2?2>1?2A4!A5B6 B6 B6 A5C7!F:$H<&L?,G:'E8%H;(J=*H;(G:'I<)MA+L@*L@*MA+OC+QE-SG/SG/QA*ZK4QE-SI0UI1WG.YE,P:"hK-uS7�^A�dI�iL�mN�sQ�wU�sO�wT�zW�}Z��_��h��qÛwѪ�Ω�̧�԰�߽�ܼ�ٹ�ݾ��­ھ��î�ư���۹�ֳ�ͩ�̥�z��y��s��d��`��a�xY�yZ�z[�}^�yZ�pP�fI}[?oM2W> M5D0/ 
             0*=5 >6>6=5=2<1<1</9,:/7/5-3+2*2*2*3+0%1&1&/$/$0%0%.#/$.#-"-",!)!( &)*)(()(&	&	%$%%
%
#!!""! 
							             
 
 	        "%
$	#$	&(&	'
)***+ +#)!( **),!0%+$)"( %
&+ -",!,$*"*"*"*"'&%
)!*"+#+#/'2*1)-%.&-%-%/$0%1&2%2%1&2'3(3(4)2*2*3+6)9,:-9,9,;.</:-9,:-;.</=0</;.;.;.=0>1=0>1@3 A4!@3 A5C7!D8"C7!A5B6 F:$J>(K?)I='E9#G;%K?)I='G;%L@*MA+L@*NB,PD.MA)NB*PD,NB*QE-PD,PD,RF.VG0UF/RC,N?(F0[A*~Z@�W<�^@�gI�qQ�xX�rQ�tQ�sP�wT��a��m��uęy˟�ϣ�ҩ�խ�ֱ�ٵ�ܺ�޿�����¬�­���ཧݹ�ײ�Ѭ�԰�Ȥ���x��o��e��a�~^�y\��]�|\�~b�y_�kO|]@iN0W?T6F+1               (%C8$>3?4?4=2<1=2<1;07/6.5-4,4,3+2*1)1)/'.&/'/'-%,$,$.#-",!+ + + )
'())'%
$	##&	'
'
'
'
&	%%!!!  
 		           
 
    
 
 
 
 	 	 	     &%
%
%
$	""$	(&	%&	'
'
'
))!'')('
(+ ' )!( &%
(+ + +#)!)!*"*"( &'( )!)!( +#.&.&,$/'-%,$.#/$0%1$1$2'2'2'3(2'3(3(4)7*9,9,6)6)9,;.;.:-;.;.</</=0</</>1</=0?2?2>1?2B5"B6 @4?3@4D8"G;%G;%F:$H<&H<&G;%I='L@*I='H<&MA+J>(I='L@*MA+K?'L@(NB*L@(OC+PD,QE-TH0WK3ZK4YJ3XI2P<$F.X:"sN4�Z>�bB�vT�oM�wT�uR�uP�yS��^��k��vƛ{΢�ѥ�ҩ�Ԭ�հ�ش�ܺ�߽�ݾ�����­���߼�ݹ�׳�Ӯ�ͩ�Ġ���w��q��i��f��c�~a��b��`�|^�oR\@kM1Z@%N6<#/	                       +(?4>3?4?4=2<1<1<1:/806.5-3+2*1)0(/'0(.&-%.&.&-%-%.&-",!+ + + + )
()*)&%
###$	$	$	$	#""!
	   			         
    
 
                )!&$	$	$	$	$	&&	#"#$%'
*''')(&	&	'
'*"+#)!'),!-"+#*"*"+#+#)!( )!)!*")!''*"+#+#.&,$+#-".#/$0%0%0(0(1&1&1&1&2'2'6)7*8+7*7*8+9,9,</</</</</=0=0>1?2;.;.@3 @3 ;.</B5"A5?3>2A5F:$H<&F:$C7!C7!F:$G;%J>(K?)H<&G;%L@*H<&G;%J>(K?)I=%K?'MA)L@(MC*NB*OC+PD,QE-TE.UF/UF/WF,J8 <&O3uS:�Y<�kI�nJ�wS�tP�vR�|W��_��kØxǛ~У�ѥ�Ѩ�ԫ�ԯ�س�۷�ܺ�ܼ�޾�ᾪཀྵ޻�۸�ش�԰�̩�Ţ���{��x��q��l��j��e��c��a�sT�`BmN1Y=%F-9"!	                  /)?4>3>3>3<1;0;0;09.6.5-3+2*1)0(/'.&0(.&,$-%-%,$,$-%-",!+ + + + + *	**)&$	"""###"! 
			              
    
 
                '#	"#	$
%%&&	#"#$$&	(%
%
%
'
&	$$$&)!+#*")!*"+#+#+#*"+#,$,$*"*",$+#+#*")!( )!*"+#,$+#*"*"+#/$0%1&/'/'.&/$0%1&1&2'2%5(8+9,:-9,8+7*;.;.;.;.</</=0=0=0;.</?2?2;.;.>1?3@4C7!D8"E9#D8"C7!B6 A5C7!D8"F:$I='F:$E9#I='H<&G;%J>(K?)I=%K?'NB*MA)PE/PE/PE/PD.OC-PD.QE/UF1XJ/ZL2D44"U:%lJ/�^>�rM�uP�rN�wS�~Z��b��mwØx͠�΢�Ф�ҩ�Ԭ�ֱ�ٴ�ڶ�޺�޺�޺�޹�ݺ�۸�ֳ�ӱ�Ϭ�Ǥ�ß}��w��n��j��f�}b�x^�uX�bDlM.[A&F0+
 
                    & @5!:2;3;39180807/6.4,3+2*1)1)0(/'/'/'-%-%-%-%,$+#+#,!+ ****+ + **)%
#"""""!! !  			              
 
                        &$
"#	$
$
#	#	(&	%%%$$$###$#####%
&&')!)!'*")!*"+#*")!*",$,$+#+#+#*")!*"+#,$+#*"*"+#,$-%-%.&,$,$,$0%1&2'3&1&3(6+8-9.8-7,8-:-:-;.;.</</</</:-</>1?2>1>1=0;.?3A5C7!E9#E9#D8"C7!B6 C7!D8"B6 C7!G;%F:$D8"F:$H<&F:$I='K?)I=%K?'NB*NB*MB,MB,LA+MA+MA+OC-RF0TH2WK1RF.UI32#/Q5uR4�eB�qO�tQ�yV�|Z��b��m��u��tɜ̟�ϣ�Ѩ�լ�ׯ�س�ڵ�ߺ�ܶ�ڶ�ܸ�޺�ܸ�׳�ѯ�̩�Ƣ���x��o��e�b�}a�w^�rX�iNnP4Q7>)+                      >6#91:2:27/6.7/6.4,3+2*1)0(0(0(/'.&-%,$,$.&.&,$*"*"+ **)()*+ (('
$	"!!"!   
                
 
 
                         #	!"$
%$
#	$
&	$%&	'
&	&	&	$	%
%
%$%&	&	$%%$	&( ( &( ( ( )!( &'*"*")!)!*"*")!( )!-%,$+#*"+#+#*#)"+$+#*"+#0%2'3&3&4)4)4)5*5*6+8-;08-8-9.9.:/:/:/:/8-=2?4 >3>3>3=2:/@4?3?3B6 F:$G;%D8"@4E9#E9#B6 B6 F:$F:$D8"E9#G;%E9#H<&I='H<$J>&MA)MA)J?)J?)I>(I>(J?)MA+OC-QE/RF.OC-XL61"& :"
L.gH+�hH�uV�yY�yX��a��l��r��uŘyʝ�ϣ�ӧ�ԫ�֬�ذ�۳�ݸ�ڵ�ٳ�۵�ܸ�ڶ�԰�Ь�ʦ�Ş}��u��k�b�|`�z`�uZ�kRxZBV='5"! 	  	                         ;3&91:2:27/6.7/6.4,4,3+2*0(0(/'.&-%+#*"+#-%.&,$+#+#+ *)'&
&	'
)
'
'
&	#	!   

       
      
 
 
 
                       ""!"$
$##&	'
'
'
($	&&&	&	'
'
'
'
((%
&( )!' )!( )!( '%
&)!)!'&( )!( ( ( -"+#+#+#,$+$*#)"*#)"*",$1&2'3&2%6+4)3(3(3(4)6+:/8-8-8-8-9.9.:/:/:/;0<1>3=2<1<1=2?3>2?3A5D8"E9#B6 @4C7!E9#C7!B6 E9#E9#C7!E9#G;%E9#G;%H<&G;#I=%MA)L@(OD.MB,LA+MB,NC-QE/QE/QE/OC-SG1UF12",..@*jH-�gK�qU�oP�|^��g��k��qėxɜϢ�Ф�ѥ�Ѩ�ի�ٯ�س�ֱ�ײ�ٴ�س�ԯ�Ϫ�Ω�Ɵ���x��p��e�wZ�rU�nR�gLtV>V;&5                                $ :2;3;3807/7/7/5-5-3+2*1)0(0(/'.&-%+#*"+#,$*")!*"+ *(%	##%'&&	&	" 


	



             
 
 	                     "!!!(&	%%%$##!$	%
%$%%#'
*+ &$	&' )"*"*"*")!'%
&)!*"&%
')!)!( ( + )!*"+#,%,%,%+$*#)"*",$1&3&3&2%5*3(3(4)4)2'4)7,9.9.8-7,8-9.:/;0;07,8-<1<18-9.>3<0?3C7!B6 @4>2?3A5?3D8"D8"B6 D8"C7!B6 E9#H<&F:$H<&I='G;#I=%MA)L@(H@)F>'G<&I>(LA+OD.PD.OC-QD1O@+UE.<** ,6$)B$
sQ6�eJ�dG�uV��a��c��lvǚ{͠�͡�͡�΢�ѧ�֬�Ѯ�Ѯ�հ�ֱ�Ӯ�ϧ�̥�ͦ���w��p��h�z[�iL�aD}Z>pQ5X<$4                                     	;3 <4!;3 9180807/6.4,3+2*1)1)1)0(0(1).&+#*")!( '
( **'$"!#%&&	&	" 
		
					


	                         	 	 	 	               ###$%&	%%#!"$##	%$
!!$()(*)&	&	(+ ,!((*+ ,!,!-"-"-",!*)()+ ,!)!)!)!*"+#+#*"*"-%,$-%/'1&0%0%2%6+1&2'4)2'2'5*6+;.;.8+7*:-:-8+9,8-8-;0?4 ?4 =2;0;0<0>2@4?3?3A5@4>2C7!B6 A5B6 D8"D8"D8"C7!H;(H;(F:$B6 C7G;#L@&MA'QC)G8!F:$G<(QF2M@-OC-O@+UB4QB/VJ2<-,8"5!	3"+ 9%
dI.�\B�eL�sX�{^��g��h��ptėvėvƛ{ȟ�ʡ�ɠ�Ϧ�ҫ�Χ�ˢ�̟�ɛzƕt��u��l�tV�bB|Y9pR6Y?(B,
                                      @:,706.A6 2'>2"4+/'3(4'3&2%1&/',%*"*#(!)",%*"',!)
)
'#!   #$#    

	       	

	       
 
 	 	 	                                     "#	$
&
%	%	%	&	"$&	%&
'&
#!"! #%%$&	('
'
)*)****)((()))((((('
'
( ( *"+#+#+#-%,$,$0%0%0%0%2'5*1&2'3(1&3(6+6+;.;.8+7*:-:-8+9,9.8-9.;0<1;0<1=2=1?3@4@4@4A5A5?3B6 A5A5B6 C7!D8"D8"C7!D7$F9&F:$D8"D8 H<$MA'OC)K?'F:"G<&K@,SH4SG1TE0SD-K8'PA,[L5A1-8"8$8'0) 9`A-[C�dK�qR�|Z��b��f��k��oÔvƙzŚz��xǛ~ʞ�ȟ�Ŝ�ř~ėz��q��h�y[�tX�gKuQ7\=(F,.                        
      *';4"A9"6,>41&0%0(3(4)4'3(3(/'+$*"*#(!(!*#'%'
)
(&	"  
 !	!	 !	
			

	




			                    
 
                                          $	%
%
'
&	%%&	%'
)'%	%	$$#$#"#%%$%&	((*,!+ ***)('
'
&	&	(()**)('
( ( ( ( )!+#,$-%,$+#,$/$0%0%1&3(4)2'2'1&0%4)7,5*8-8-5*3(7,7,6+8-9.9.9.;0;0;0;0=2<0>2>2>2>2@4?3>2?3>2?3@4A5B6 B6 B6 A4!C6#E9#E9#E9!H<$L@(NB*MC*J?)E:$G<&H='NB,O@)PA*WE/[K4[M3<,+ 9#>(=,;$/	 .	N3"gG0�cF�nK�pV�{a��i��l��j��l��pÖuĖuÖu��u��u��u��q��f�w[�gDZ=dD-F++	                                	
  
      	 70 5-:04*5+0&0%1&0%/$.#.#)!%) *!' ' )"%#%	##!
	        		               
                                                       ##$	$	&	&	&	&	'
&	$"!!#	#	''&
&	'
'
&	$)'
&	&	)+ ,!,!(((&	&	'
('
((****)(( )!)!)!*"+#,$-%,$+#.#0%1&0%1&2'3(1&1&0%/$4)7,4)6+6+3(2'5*6+5*7,8-9.:/<1<1;0:/9.</</=0=0=0>1>1>1?3?3?3?3@4A5A5A5A4!B5"D7$E9#F:$G;#H<$H<$H@)H@)C8$F;%E9#OC-QB+SD-I9 RC,TH0?/4 @(@*=)D,@*%  7 [?*rR9�[B�^E�dL�nS�{^��f��i��f��b��c��a�a�}`�sY�dJ�V>hJ.P40                             
   	 $$$       6*4)/%0&1'1&0%.#+ + )!&##	%#
#
&#	!#
          	 	 	 	 
	 	    
 
 
   
 
                                                                !#$	$	#%%&	#  "#	#	&
%	%	&
'
'
%$'%	##%	&
''%	&
%	##%	%	$&
&
&
&
&
&
''$	%
'( ( )!*"*",!,!.#0%1&/$,$,$2'/$/$/$.#3(5*2'4)5*3(2'5*5*5*8-6+7,9.:/:/:/:/9.>1>1>1?2?2?2?2@3 A4!A4!B5"B5"B5"B5"B5"B5"E8%C6#C6#E9#G;%H<&G;%F:$E=(F>)D9%H=)F9&NA.J=*J=*L@(PE1LA/;,5!>&
D,F0G.B-7%  &A%iE-nJ0xP7�Y@�cI�mO�oS�oQ�vV�uU�rT�mP�cJ}S;jA+Z42                                  	%*/0/# 	   
   (2%2%+ 
+ 
++ *)&&#!  #	 !		


		

		  	 	 



	 	                                                                   !"	"	#	""!$ !	!	!	 "$
#	#	$
$""#$#"#$%	$! "!#"!!!"$%	!#%'
'
'
()**+ .#.#*")!*"2',!,!.#.#0%1&0%/$2'0%0%3(3(2'5*6+6+6+5*6+9.<1<1=0=0=0?2?2>1>1?2A4!A4!B5"A4!A4!A4!A4!A4!G:'E8%D7$F9&H;(H<&H<&H<&F>+E:(A6"E8%G:)K@.K?/JA2LE3<6(("2@)
H.N5K3H1D0* 	   0B(T9&Z>)]=(e?(sI3R;vN5uM4oI2eA+T3 @#-!
                               
 &.38"
7!
7,'    .4'2'1&,-"/$,$+#)!'%	&
%#	$
&$!#"#&
%$
#!	!	 !	"
"
"
"
!	 !

     
	 	   			                                               	!	    #	! "
!		 !	 "$
%	$#$#""%	$'&
$#%	%	"&
%	###%	'($%	''&
&
()*)*,!,!)!*"+#1&))/$/$-"-"-"+#.&-%-%0(0(/'2*8-9.8-6+7,;0=2 =2 </;.=0?2?2>1=0>1@3 A4!B5"B5"A4!A4!B5"B5"G:'F9&E8%F9&E8%E8%G:'K>+H=+A6$B5$C6%I<,E9+A9,?7,	  9'F/H-L2Q8R8L4;"+(      (
19#;$=#<"70#                                      " +39#<(A,>)?'9!	4* 
 #&'" (! 6'7,:29,:-8-2*/'/&/&1%0%0%,$,$.&,!)+'
(*( '&%
%
%''%#	#	!!

			 	                                                             	 
#	!!!	 
!	'%	#"  #($()'(, , )+*)))+, ."+, , *(')*- **+ *"*",$.&1&'
'
/$/$+ + ,!-%0(0(0(3+3+2*5-:/<1<1;0;0=2 =2 ;0>1 =0>1 A4#A4#?2!?2!@3"C6#D7$E8%E8%D7$D7$E8%G:'G:'F9&F9&E8%B5"@3 E8%K>+L?.D7&E8'A4#>2$#	         =+@'G,X<&T9$Q7 M1P4<"$ %"             	                                        
(19$?*C/E1J6E0E0C+>&4) 0531A+2 
 >35-</:-3(( "$
+/#5*5*1)1)2*1&/"1$-"-".#+#*")!)!)!%'
('
()('
""""
"
!	
	   
          
 
 
 
  	                                                  		
!
"""" #	%&$
"""!  !"%((%#'
'
()*++*.!,+,*())!.#-",!+ (&	)-"'
)/$*+ &	-"0%*+ + + + + ,!.#0(.&+#8-5*9,6);.:/9.6+7,;0;0=2 B7%?0>/=.@1D5"D5"E6#L=*B7#A4!D5"J9'L;)J9'G8%D7$G5J;(9;&/7 <6 N2$G0"?6%B5$D=*@      
     @&E)K0S7!X= Y>!Z<"Q6B(4.0, #    	                                                  % /9%='@*H0M5P6M2O5N4K1H-@%=@!0'
?&E C$=&B*4!5/1&"    	     )#1*2*0&1#	3#
/!-!,#-&-%.!/0)!'!&&(!)"#$#$$
$
#	!!		   		         
 	                                           	
!	!	!	 #	&'&&
'('%$
#	#	%	'(((''(&	&	'
(+,,,.!,,,!+ )*)!(+ .#.#-",!-"-"%&	,!(+ '
-"/$,!,!,!.#/$/$.#-"/$0%1&7,5*4)2%5(4'7*9,:-=0;.:-?2!@1@1?0@1D5"E6#F7$K<)=2A4!E6#G6$F5#G6$H9&I:'B<"J7&;2!M-"K1"J8$5>#4/A*.
       L05G,C/F6O<Z?!]?#]?#U:J.=%6 	6"
7!1(
  
                                                   '39%?)D.L4R: T:!Q7P4T8 Y=%U; M3E+B(B(B$B.8$F3T<"Y/E          '#3-3*.#,+ ,!-%/).'+"&+#+#)!&&'&%'
%$#	#	!  




	             
 	                                               		
		  	"#	""
$''&
$"!"$&	$! #&
%	$%	')*++)'
()))()(,!/$.#.#.#,!)((,!)-"*.#.#,!,!,!/$1&1&/$-"2%4'8+5*5*2'3(4)1$7*:-</=0:-9,>1 9*=.>/?0D5"D5"A2@1?2B5"F7$F7$H7%J9'J;(J;(L:&P=.M;-O5&730 	81	3    C +I.  :
J,F,P2\7bE'bD(aC']?%Q5F,>&:$C*?):$/"  	                                       	  ,	6$A+E/I3O7S;!Y?&X>#U; _A']?%^@&X="N4K1G.=$2N8 74F17'                  
!,*6+5*1&*")#*%(%%$+ .#0%.#,!+*)+ (%#	"  


 	
	              
 	                                               




		! $
$##"%'('
%#%	'%	$$%	&
())(()+ ,!-"-"-")-"-")),!+ '
+ *-"*.#*-"+ )*+ -"/$0%0%/$7'7'9,3&6+3(9.8-7*;.</</=0:-:-@3 >/C4!B3 A2F7$H9&D5"B3 D7$B5"D5"G8%K<)K<)J;(H9&Q4&;?(9.*'" SQ    	 
;L	   =-M2K/V3e7cF(cF(cD(_A%Y;!M3C+=(F-H0G/>)3&
                                     
  "/:&C/K3Q9!W?'X>%X>%Z?$]B'^C(`D,`B(dF*aC'V8U7P2>"# b8 T))-  B bL          		     	 
+$3*4(1&-%)##'*"-$,#+"*!*!) ,!)&	$
#	! !
			

				           
 
                                               
  
		!$$" "
%	&
')(	)
**)('&%	$##$&
''$	$	%
&*+ + *'
+ *&	'
,!-")+ ),!).#*+ ((*,!-"-".#1&4)9)7':*2%8+5*:/7,>1?2=0=0?2=0</@3 F7$H9&C4!>/A2F7$G8%G8%F9&A4!@3 G8%H9&F7$H7%L;)J7&/76%  jAR
B

  	*3  
   N6S5E0E5R?bC&dE(eF*cD(]?#S8J0D,E/J2M5J3D,9#,#                                         %3
>&E0L7T<$YA)]C*]C*^C(_D)dF*fH,eK4cG/iK/gE)\;^< b@'V6@e#? <A F c: 
	    		    

     "*1 3"0 () (&' )")"(!,!)(%$
"  !
	





		            
                                              
!"!		
 "
$#  "##&
'*+'&
%	&
'&
#	 %	$""$&
(($	$	$	$	&))'
(,!-"+ *+ + )+ )-",!2'.#/$,!-"/$1&0%/$0%5*9.<,;+;.;.>1 </</9,A2B3 A2B3 E6#B3 ?0A2A2D5"B3 @1B3 C4!A2C4!H9&F7$D7$D7$B5"A2G6$O>,8-NS/	 �\0	  
  *6 	      [5 ^4K0H6"VC#hI,nL0pN2jK/bC'V;M4G/G1M5P8P7N4H0;%0                                  %7 D,L2R8W="]C*\B)]A)_D)fH.hJ.iJ.gH+hL4eJ/iK/iJ-dE)]A)R7$A'1 : : l� t!Q U
0    	                  $03((*+,#,#(!#
,!*(&%!


			                                                            	
 	!
 	   !	!	#$&'	'%#	#	%&&%&$
#	"#	%'()")")!)!+#0%/$-",!.#/$.#,!+ + + ,!+ 0%0%6+2'4)1&4)5*6+5*4)5*9.<1>1 >1 >1 D7&A4#B2"?/A1!A2D5"D5"E6#G8%D5"A2D5"B3 F7$G8%I:'J;(E6#B3 E6#I:'J;(G:'D7$B5"D5"E4"D1 >W  YA EF	  # B
 	    *a?$h>&Z9(Y8%kD'oM1uS7xV:sQ5fG*[=!R7N5G3L7Q9P8P8M5D/;&.$ 	                     
    '8#G1Q9V<![?'`A,`D,_C+`E*fH.jL0mN2kL/iJ-dE)gH+lM1hL4XB-=- 6 O]c	6   >	R   	  	
     	   	  ''*	+
,,($*('
%#	 	

	  	
                                                                !	!	 	!"##" 
#	'(*!(&$
$
&'($
%$
%
( ,$/$-"+ + -".#,!+ .#2',!,!1&0%6+3(5*2':/9.8-8-8-9.:/<1>3!>3!=0E8'A1!A1!?/H7'B3 F7$G8%F7$G8%D5"D5"J;(F7$F7$D5"C4!C4!@1B3 K<)G8%J;(F9&A4!E8%J;(@/0^CS�+ *    jB 
	    /)]F$`H&S?'O5b;mK/uS7zX<uS7iJ-`C%Y>!V=G4L7O9!O6 O6 M7H3A.<(1'"                	  09 E/Q<X@$[A&aB-eD1`D,cH-jL2mO5oP4nO2qO3rP4rN.uR4kL0M4%
   	 	   3X/;	 B  �#0R  
   	

	
   
  	  	 ( & !  	 %)
,(&	$#	" 	  		                                                                    
	
		!	"

		 "
$'#"$	$	$	'-%,!+ **+ ,!-".#-"/$.#+ )+ 0%3(1).&,$1&4)7*7*7*;.9,:-=2 >3!;0<1?4"@3"@3"@3"B5$F7$F7$E6#C4!H8(H8(G7'F6&E5%E5%E5%F6&B3 E6#D5"A2B3 E6#G8%F7$J4O@)F@(E2!R6(<<$?7 I
�6 ri  
 		 V
	
  =5bM0lN2gD0P,`>4hD*tS4wY7xW8xS9iE-Z;[@"X:"U9!P6M5P8 R:"N6G.?)<&5!-#      
      # -5"C/M5[?)dA+cA(jK/eJ,lI6lR;gL1kL0nT3mS0sU1wV3mY>YG97,*
        �&�#!^C
B	 ?Q@  	          

    +  -  H1 !	%! "



      		       
 
 
    
                                               	

	
  !	"
  	 !	$( ( ( %
#$	&( + + + -"0%2'2'1&/$1&2'0%/$/$.#-"/'.&2'6+9.9,8+7*=09.9.;0<1;0>3!B7%B5$A4#A4#B5$E6#F7$F7$F7$G8%G8%G8%F7$E6#D5"E6#E6#G8%H9&G8%D5"C4!D5"F7$G8%KC.G8%M6$N<(D@'D:!CK  ZE*
     Z<	 	 $ZB H$F3$',!P@VCoK1vS5{Y6wS3}U;wR8lJ/]@"[=%[=%W;#R8O7O7P8 Q7 P:#J4?)6 1/	(	     %.9C(K1N2[=%\A&eL.[B$jM/oM1aIqT,yR1�S9�S?pJ7]=.I/ '
      
nqE Dc<
PQ=
	        #PHB<  	   $#
!


	               
 
 
    	                                                
			

	
! 	 	 	"
"
!	!	#	$
""&&#$((,!,!'
%)+ *))*+ -"-",!*,!.#0%0%0%1&/$,!0(2'4)7,9.7,5*6)<19.:/<1=2 <1@3"D7&D7&C6%C6%C6#E6#G8%H9&I:'G8#H9$H9$H9$G8#F7"F7"F7"G8#H9$I:%I:%H9$G8#J;&M>)D;*G7'O5$E;":?O*]K	!%	 

  N
�%.2$s ;Q>      )"QB!pL2xS6�\;V6�W;yQ7tQ5hG(Z:!Z<"Z?$Z@'X>%T:!R8R8L3O6 F.@(C+8 -6+
((,06$?+H3W:*Y:(aB-]C(eN/jQ3qS7wS;y]8uX6\I+?9%$    
 	  	6 Oc��1�fN4     
       		
 	 C U'  1	Q $   "
 !
	


  			           
 
 
                                                      
	 



	
!#$$$"
!	!	#	# !%	$#)+*((*,*&	'
))(('
(+ -"-"-"-"/$0%0%5*4)4)5*5*4)5*7,9.9.<1?4"@5#?2!@3"B5$D7&D7&D7$D7$G8%H9&J;&K<'J;$K<%K<%K<%J;$I:#I:#I:#F7"G8#K<'O@+N?*J;&K<'O@+S=/UD0KA&A@"L=&HU' 
 	;\ 
   X8 
      (hH/zU8�[9�_>�[<yP4lG*sN1cA&]>"[=!]B'`E*\A&W<!U:R7"S9"R8N4J0G/B,=)            %
3!>,M2V0sH5X1 E&63	    	      	  		=XqboQ@ ZjO 
 	 	   	
 % D  0 BW  
    	!			  
    	           
 
 
    
                                                    			 

 
	
!"	#
$#	!  #&	#$'&
"!%	- (&	&	'
&	%&	&	)+ + )),!/$-"/$0%-"+ ,!/$0%5*3(2'3(4)4)7,9.7/:/<1?4"A4#@3"@3"B5$E8%E8%E8%F9&I:'J;&K<'K<'L=&M>'N?(M>'L=&K<%J;$J;$J;&I:%K<'N?*L=(H9$I:%L=(V@)R<%C>!IB(W2)* 
   e)
2:       
 
T<$wU:�U5�^=�`?�Z<jC&uL.uR6mJ.eC'bC&bD(`B&`B&bD(hJ2W9![=#X="L4V@(L:$              ,  T8   *   

      
  		6\6 )
 m~#�(4�')v,		

 
   	  	  	)3 AH	       $%		  
                 
 
 
    
                                                 	!	 	 	 	" !"!!!$'
&	'
)(&
&
'(#!%&	$#%'
)+ )&	&	*.#'
,!/$.#+ + -".#/",!-"0%3(4)5*5-:2:2<1=2 >1 ?2!A4#E5%F9&E8%E8%F9&J;&K<'K<'J;&L=&M>'M>'L=&K<%K<%J;$K<%K<'J;&I:%I:%H9$H9$J;&M>)LA%Q;$Q@,K9+4 
# 	
 Q/
 	 he  	       

  
-gK3�U8�Y8�[8�]=rI+zM0{V9yT7uR4oN/hI,dE(eF)kI-jH-_@$\=!`D,]G0E6#                           9I>+ Om?	    	 %          @�$1�$'~Q
]N
 O J K1 
     

 	  	)m	N     
       & &
			
	              
 
 
   
 
                                                 		
 	 	 	!
!#	#	#	#	%	 ""  #%	%	%	%	&
'
'
'
%$#%'
&	),!,!+ ,!,!,!,++/$3(4)2*3+:2:2=2 =2 >1 ?2!C3#D4$G:'E8%C6#D8"J;&L=(L=(J;&K<'K<'K<'K<'K<'K<'K<'L=(K<)K<)I:'H9&J;(M>+N?,M>+LA+K@.I=14'! & 	 2 l 
  )
 ;    TC/H?.  		 M8#W=�W5�Y6�]9�Z:�S5zS4|X8}Z:zY:uT5rQ2pO0oM1oL,qN0kL/fL5Q>-                      #  A	J
��&/g   
 	

		#
xgI  K{�nS	T8 

	    	 
   )       " 	



			             
 
 
 
  
 	                                                    	 	 	!"	#
%&%%&
#	'&! %	*(%	&
&
%	'
%$%&	(((.#.#-"+ + ,!+ *2%/"- 0%4)4,5-5-7/:2<4!?4"@3"@3"A1!@0 I<)E8%A4!B6 I:%L=(L=(K<'J;&K<'K<'K<'K<'L=(M>)N?*M>+O@-O@-M>+O@-PA.M>+H9&?)
	  	8B<%�%- (-&�eb��\��s���P?5  	
 8'xS9�X7�c?�b>�kH�Y8~W8�Y:~Z:|Y9}\=�`A^?|Y;�_;xV3z[>]B-	                    
     >_	<
c	-   
  
 	"*!   # 
 
   9  Ql��,)�1'MY�!�A 				   
              	 
		

   		          
 
 
 
 
 
 	                                                  
! 	 !#	$
$
$
#	!
!
!
###	#	%	%
$	"!""###$	$	$	%
)(%%(
)$"*)**+ 0%,!2'/$/$2'5*6+7,8-82:2<1>2B3C4A5A5L:.G5'C2 C4F8G< K= K= B<$IA,B7%M@0O?0O=/O<.N;-M=&MK2==%H<,/'#

   

			  +fN   b!�- �=9�$&�&�.(��X��s^B4   
[B.�b;�e<�kN�fN�c9�_=�hE�Z:}V7�^AwR5�\B{S9{W3{bCzD:          	             $  ; C M
W
S 
%

      +/(1(WiV[ht�qpf4 	 	         	        	'                                                                          		 
 

 !	!	 !	!	!!#"!   !!!###"#&	%"&'	%#"#	! 
#**-"-"+ .#+ .#/$3(7,7,5*4)5*7/;0?2!C3#C4!C4!B5"C6#>:@;C=#F>)F9)E4*G4.K84O:N9P<#QA(L@(LB)93>8*%
 
  	
  
  

TlL6
)%H 5    �*-�"�',�!�B+��i��v  	T:+�gD�b:�lK�eH�gA�dC�_=�[;�]>|U6�[>}V9�]@�\=f<#@-  	       
       
     rocYO*	   	 
	!	 7}�tbv	iY	`
|`'	 

    
  
 	      "&
%
%
 "
	                                                                             

		 
 
 
	 #$$$%#	#	#	$
$
$
#	#	''&$	$	((&	*'
#!#%% '++ 0%0%+ .#,!,!1&7,:/7,3(2'3(7*:-?/@0 B1!C3#G8%K<)L;)F5#C2 D5"D7&B6&@7(B;+A60?611)&($#    	  
 	

7	c�	G $FG  ���$�� !�\J��mnO=" 0
@
	$#|P7�jB�g@�mK�lI�nM�`?�`>�eE�Y8�_@�\>�_AZDX: D	      
  	   O	=          /SK F	 / 	
   
) ,"
	
	#! 	   �!,�-*q`�*%�##_l�*3pM@" " 
&

  	    	#4	   F@- 0 ' !

	     
 
                                                                         
 		



 
  "#	$
%&&%$
$
( ( '%
&*+ **)&	$%	'&#	*, *0%0%+ /$/$0%3(7,8-4)1&2'5*:*=-A1!C3#D5"B3 B3 ?2F7$B3 D5 L=(O@)F:$:/5*  		
     	


 7�p�C 	    =    	k���)'��-&��i�_EE
^HQ  qK8�hC�rG�nI�uT�kK�eD�a?�eB�b?�X8�eHxK.r, m
 
  	    ' 
  
    ) 7 -
N^9"    Z�.(�/*R
  
   !$+$& !	=i	i���l[@ _ ^2
 
 	         	    


 
		      
 
 
 
                                                                        
					 
"
!"$
$
$
#	""&'&%
$	()))**))++)+*'
,!-"*/$1&2'4)6+5*3(3(4)5*?.=.<-</?2C6#D9%D9'N>'J;$C6#8/&"
       
 
 	 	 	 $e�0,�[!
	& X    E u�z�m�^E�nQ9 P

B _%0.�dH�i=�oI�qO�kK�lJ�fC�fC�hF�`A�`Fh4�,Y
    I     H9	< B         s]
0   U�+,�()[ 
 	  

.	 (	'
	""F
iZ ^ls` �no	r! H' 	  		
     -&      	      
 		      
    	                                                                       
		 
"%#$&%$#$$( *"*"( '))(%
*+ *((''
()$())/$0%0%2'3(3(4)5*4)3(;,9-:/;3 <3"92"3,.&
 
 		!  ,  
	
    		 	 
   *	}#,k�c
  Kw!*	   Ff QZ	`�61�UF _F O	] i@.�sN�oD�qP�lK�nL�lI�kH�fE�fKxA-^#Z	 *	;% 	      B	
	       N  	' 5dm6 J	R % ;
 G @"!9'!2(
	 !%)%*"2  8��#$vR�&$�*(T��4=�N
"' !   ig> A3	AWJ:FFa!6!  '	
(  "      			
       
 	  	 	                                                                         	%&&%#"
#%'*"+#*"( *)(%
')'
$##!&
)&	(*+ 0%-"-"0%1&1&1&4)4)4)5(7,8/60",(    
3	
GJ

D  u{"U `
ecl"Vaad54/
-	(+S
� !]
S 2%#
 G>	         %
 *Y4+L?  m10PS	
eU7 s B7%�jJ�zM�sQ�lJ�oJ�iC�kH�eF�N8YR5 . C    *  	=   =
+ R�1'Q ; Y5 KmJ)   J
w[- .5%"'#		

$!2," &' Wy_~�txqsvT 		   V�"5D q	n^ �)0�B h	Q qm
B	 G@ ? vYR=4<4  
		       
 
                                                                              	
   #%
%
$	%$#"#$	$$&%#%	*)+ -".#1&+ ,!.#/$-"-"1&5*6+9--$     
6  @	I	K
RXU
K^ZhUUob	sT �# yOGe�'*S!
  8w |n�"	

# 	&I 	  	    18
	 >N! �,ZH5 UW(sU9�i<�lI�sO�yT�kE�pM�qSk4 RM@�&b /  W_% =T< Q	
W	*J�rRaJK �*1�< R#  ?lF '$4*!&$")%0"-)1!6u���!#}kny oh `7
    : \
P I�")Z	> }g{,(�7qa }�&= DBMVA1  HTB	1                 
                                                                              
					
		"
"
"" $# !	%)*
"'- *0#*+ +#+%4!/	,,90)600     ' ;
C	JN	XYW	i_\Z�%$� P_J~p_d_x9 ~Z  3%e%J }'&�&U	 !+
		
 !(   	     ?>0 PJhY  Z`wdh 1MT E>,�jM�|R�uQ�sJ�oH�pOkW>P'#F( A N(  ($  7
FB G]P �k! ca2Ph4 M�#S> ;A $ 
 bY$.)&1)	

$173!2	#$1D0#�  �,/� x�*4�.-\ O�!�'8�) 	'%	  
 ^LaF ��"+af s��"6RO
L	g	
�&/F8L
" nl56=; d[D  5 ZP	      	     
                                                                             									
	

  $&#	%	($,)*)!(#:#2-.&,%<+!	  $.D	QPPE2 DKVWQL \fYqC X	Fmn!XaT�Q[	JG	$+)<u �$,po         (Vk]C wy�!�37�#"z!��  S
_^1@0#�Z?�xO�}U�oI�{Z}hI'1!    	     	  )IX��,=�$4 KZ>
 �m" =B  7  +     N�$7<( $ % %"#.. '**	**4+ \{
qr]lm
xs
bSd`!"
  Q
GTf>� S=	 ~N  nJ ]qR	g`	^q; 3 K 6\- M	�&f"
 :N>7C0	                                                                                      


!			

	!		"#"
"!)(+*"*"4++3.-+,  .FE
D	>; JXVR`a_Z	`wx^jh!� Gn`
�T	U^
[Z/
+[zp��Q8&%5  	       	+8TVAab
x�#"vkrrB;	73,$oT6�{P�U�vW��jVG2  
            @+ 6
 G3 K	^	Y	��0f, QD	3U/     3
)'("+# +#=8*+*(2: %*#p^ a z�%Z|
��_A     )_	N�"i[oB �!!�#_T M �'&l[@ ? }r< BI  It
W* HI$ 67; WdM<=;	                                                                                   #			
		  		 "
"
!""$
#	"&
'+, ,+#)	/3.  )  JS	LMM	DFNQ6C8	;,
 AIH
Z=  c[	[M
c�(-\aU� Z
MH$Ua�,3�%l�)43& &)-!,#     )
,  5XB%<L$( )QE+�rH�{L��_|^D!    
     	#    	 KD S	V
  )  &  ' .  W7
  DC0*%902)$

	
#*-8 :5 *5&D;
{�2@�!&X� �.:�)3kQ	�$�	  PK �& �"$\rD c�'Y
qF nu6Z. <	`3  CM% kh9G	
J	/	 Ec5 C kO	% 7 ^^& $ *                                                                                     
		!		 ! 
	
  #	"%'%#	!')+2*5"*"   BK
I
CF
	E2	#

  $7O
 7
6U+  DLTQ g�U� !� #2!-*)&/
  "(      "     		#*8'#	 ?/�mL��Y�{S%,		          	    !
     	  	      	 
    9
!  M     !#%4-%:3"!!0:
72,>-'134�ta!�(4�|_ m�(/]
  6#9K 0	<%
)-
'
 &  
   .	C) E�M:  S	E#  2 A0	<  C  I7                                                                                    
	
"%!	 $(!%"(,!0 4$:*1  2;
9 +	!
	      	 !  		

  #6!]
|z
`R/%&8$(4'4( 

    "($#)%#"  

!!	"�aB��ncN/
 	      	       	'         (!     
  	.($&#$!$0,
%"B:. # 6$0- 4 4#Rvb [S b�>  /* 
 ""+%,& 
	 	      	     9 E J	- X	{!I	'  SsK# J

A                                                                                    	!!	  
 !"%&
"%*!"	' '-%1&4'/"// '
 	 						

 	  	  (#
#	Ltu�)AM,	!9 '* &'%$*&!     '!& *$  	
!*'	
 	JG&�iU1)
	      
	

  
      
	       )

 %&      ##'#(%	$$)&@	333 'D6.-7$>"&6	�&�8/�00~fF  	(, 	  	,	
"	! 
("		  
 
 
     /'
6 �%�'FJ`V. '  ]]"

                                                                                
	
				!
	!
$%"
	!	#$$$" %	*!/'&*#)!-%0%3#0/)     

  

	



 	$
#|00�"b^': %,	</!,-/(
      
+& '!+#(5(	   
$&.#$#(C>!JD.0"
        
	
   
               ( 			($$%
$    !"-'%!$ "('# 	++64	(?"F99	$? 	&+0�,2�3B�W N
   " 
$	'	&&$ # ' 
 
$            )@6
 :IP
* B \@	. '                                                                           
		

			!	 
!# (/$- (
(*"+%,&3.        	

!	%*}$ x$)0"<=	))@-6
%$		      ! &"&"+! 2&! ,(
 	"."(	  


             +!0'
5+5+%"'        /-$>;.)%%"$$7 -68<-,*66( Vn V	 '$+%
& #    	
    
	 
     AM9 [
eI
> QYH                                                             		 
	"
!
 	  %+ ,++ +#-%.'@:   	 		


")!
"& /\P*&.;2#<+B 6%	"!       	!$*)'#&#+("+&

#!.%%         		 
 
      

%!$#$#!!'=;$"&$#!)')' 31)'        !/)#60*)A +I6,-$@'A7	/4(Rd"   #
!! 	  
	
 		  
 &
 |"�!.  XkB*                                                           
	
	
			
 	!	"
"
"
!	"!"#!"&	)+ + .#.&)=  5  		

 
 	
 	

!
$	" '+!&&?8/.>*5 *#$5+     	(	%)++,!1 -$.%#& ! ",67
  '*  	#	#"	   

 
    
  		%/'&1)++#55"64(&# 
#!*) 43$#       -'( /.&.-0=$>!9'."=*5Q!;!
     !( '*  *"$
&"
("     
   	    +71 ;E 5   8'                                                         
			 !!$%	&
')*$
"$	+ -",!.#1&/O5
   		 
			(*!- 18)C+A#,.!:4     

".4,	(,4 8": 5"5$4+5'#&#			#) 	
 (   	' 	
   
 	
"!1+-'
$)%6,&7/%#/(,%+$ 	

("+!+ *$*,# 0>4 '++4 =)G*   #(!%	
$
	  		   	 
  	 	
		 	   	   H	SFI\	/!                                                                                
"
""$$$%'	(
'&( ,$/$-"0#3&/ ^3     	 	 "!%	' !-'#$(%'%)	$<)D+-A".>$+% "8,*      
*.
37	1$.43
.32/)>)1# 0(8( 	"!,0	. 	      
)  	 "
!*#6 2*-'(*3	 	"&))!!"'*+#/&6
 %#+:5/&*.%$73&)0<)E:5., '	   
  
 
 	
$ ,!+0 *#
(,#( 
%!	    		  
 (IV                                                                                		

!
%!	!	!!#$%'
&&( +#+#-".!/",  F  
 	
   !#'! % % 4$.&3'/#* 
$9,(1-@").	

  	
#4	/478."88*& 82'7))C7+B%<.)
&06*	' 
 
$  **4!+F	/4
26#=84"<3$:)?	*.0.0$,A 4.#7.-#5 "
,,/*  	 #0'&6,%$!''%8$/C*D ',53    #" ) #	%,)$+#)!($
$8	&+
'$2	&(
+"49  

			  
                                                                                                                 				 

!
$	
!	"
#	#&	'
#	$
$
&+#/$.!-; $   	  	 
!!*
&
'$23*
#2+0)5	*+
)6(5/3	$%*.')&#'     *)3)626-35
-*%= 6471"0J 9";55!:"# 
*,+ 		41$!+ 
#4!;09$>,:14:7#C;	0#?:+!@95'E97	0">/(@4 /
.#8+>%  


#*$) :$?/
  	   !9 2#+%80'	,,8
-+*#
% 
$ ) . 	#  	!63 &$  *# 	
   	    		  	                                                                                                                      			 

		 	
!""!! $
%$
&-%4)1$,
D	  	 


"+$&-	+0"1+2
-08/'13((
@.Q$7*-#=2#      (*7	*/" 4*,
++/4,2)5,6)8O(?$:%=&>)A:) +	 *  
!62'
+79&4O$A%%;3 5'>33!;!0G)>&!2*")=-0 9&?*A3!5+-A$>0/,"5 1E):N/   $'$1())'.%     ) F+-60
1 
' "'#" 1*<6+**81 !-#(
* 
%!$!"68,	  

 
   	
                                                                                                                    	
	"!		 !	! 
 #%	'
.&
'&
'&+#<I	
  
    
 %
'(+ )0	"$;(."'6 !4 %/(*?/
+,	/(8"$ 
   	'	)	*" 0&	+%9#7*/!A2/4-,+ 48="2L4(B#C*I&P(>++ 
/  ,N1  
'	0>$)*	!2 'A0!7)*F0"<'<%=#/I%;$>0&A 0I+&8 3'%3M30
+3'I /$>(*%@)(+9
 ."57&4)   '   ..)H8,)
  	  +- )8()),
1&	%  /	/ 

'0/* /	
 #) ! !*

03 ((/) !)

"  			 #     
%     
                                                                       
					

			 
 "")	$	) (
%#(< 4  		
&  ..+
)1*)+/0
-%9/+C08/#:04,)</%#$P     (
 5+.*;0,/94. *-21564)"K(@0(1%37	$/ 1"%F1G(O)8! ( 
 
"(>722"?! B-D5('4$3,(%D473"8&72/+,?*6(%; 4/0>1#6!7!!9#/E$6(&%7&*,A/?#,$7(
0!0$,     !  	
      	)
/ >3-,/4"-5:3
,
4- -# 
 	) !# 57*
''		#" " 

		 	             ' #	
                                                                


				
	   ! 	""(
%
( *
*$/	K
P   	  + %*	&!0((/0(	+.(*'/5,01$:.$746O83	(     (/&!%("/!7"&0 3 $$%)). *&> "0:$E;#6V8.P$"8%0&<	$B=�/.�0EN#	 
-)(87(H88\9<'#F%?#4N/B&;,? &>*=)7')>-A$*L83:3),K/<1	$5#?8.$.0$.G $?+0- (&? 2$12   
  #        	 1 ))5   *
)1 
4 (6	&"+.%9$,	+	,
'0,+" ) "'&!

"		!#*"*
+  
	#* # 
 

   + ) F$%& 3
! 2  +
                                                            		

 ""(	$
'+
-"1Sc#  	 
 	$?3+"9%$	6:@#'(1526%/ 2,0'/(0,2 	"/         /=F&1O%h%lrqq��#'���"x!ju&IFC :'6%'/'<<*2W#-P8%:/27q("�B7�xvj{�#,@  t� $T_(-=*03!1+/),#"5/,B$9;!;5+(G9$>(>,"6-8 ''0"#-0,*8(',)43)?&?+6+ 0 &*  !,.4
 
!,)": 1K1&%0+!   	     
     ,.6939-B 5 % %'  	
$& 	#   % !76 -/%	&)!"
/": (. #	#
%+ "
 %!')F
/4 ?	 U8)	 - + , D$                                                              	
		
		
	   
 !	!%#	&,)
' K3    "  F< \r�#(� ���%$xt}�-8��~ �/6��$k
�/-�-)�"�#�"#�,#r(k{ �-5Z6I{� ���,4�"�!��"'m#v��')!{�$!�,+�!��/3�$!��!�-r{�(+�52r"l00H*4#5+F=H#�sY~bX�mu�$�!�?>�+<~�&�-(�)�:<�)-Qw*4a#]37S)+q(t(4h*�,;h!)'$-^%�,0�34j�!l�'(�7=�#!}u( q#�!#�(+ao-p(6F+0*"#&
'	&	$$! ?5  	  
     	
$;//6.1
++'*	&@:Lar�'(d]`]�$-gEZDK ,%/) 
(40  **  $("! 	
C	5	
Z|J9 ;L+ )  !   , # iT                                                           		
	
	

	 #	$ #
+*% N
	#
 &P`l�!%h
_f�-3�}t�oid�"+pz"d�%.t�"x
�39�(*�% �'�+/�'$w$}�.$�1.wc��$'}��$�,-|~[�_|��vw��� c�# x���&xa
�&)�6>�#�0!�'$�'3�9?@0h�bp�>:nM	 �!'|*y"�49�=7��-"�"�5;�GL�!�&} �-,�<D�(�+�)�95�DI�0{.�&�*$�HP�0,vh 
e"�8:�..s'`e$%�8;�&,kz!~�!�3=�',O
mK7K)1"'?&;+*-        
 
' %(Jh!_[f
�+)�xu��17�"q}n�-$�)*�ji��+3_D]!
($9/ #-!'	$
<
l[m�N/  3 ,   A  2  + ! jg
                                                          	
	
	%$ 	 
'&$ T- 8[gZ	co]	^E|d

�"d�j�!"c�#a� !c�!*_�)s�&(��"v
�
{(�	�#"�*#�z '�+(u#'�&w$ �)&�*#�'-ry�'#�"~ ��( �&��*.~|i�"&n�"�z s�**z�.*�#�+%�A=�$'n a
��.2�B@ s�(.�;G��,/�(-m"�80�6:j�/6�&%�(�+!a�*/�%"�,-�30� �00�%""�'%d�%-� Z �*+j*E�)*bc�#~��/;�j�#b �7(�?C�c
{e�1&�/-t ns$b�+-|"$XUXU#H"9Sj�#{"w��$%�1-�Z }�(.Y ~*(p�%|#E�f+d�&Uu�#G��)'Z\h
Ru_-,	((%	$ 
 )1R�%cS	 _M
GK
/ <&   3c
K- (,#
,2 BO&                                                           

			


	

#$"!% J

9 G]QFWZW�c
t c�*mq��&,yt	�$�).x|�!�23x�#�19��$!v$�46�#�"#�$�+.�'"�!�"!�, �2"�,��/,�*3x
	`��$*wf��"#v#{�(-�* {p�,9d
k�%(�((�#�2%��08�)%�/-�57�.%�#(N	��<C~"k'�=F�88#�-'��2*�A8�&!�)�1$��BG}�'�)&�!�AB�*��21}�0/�+(e!�$)l��4;_
k�#)h#�!�45d|�*2V��#`�$xL �'#�$!l�4'�-2P	�%*{	�"�><�&"{$�""��7:��'~�)%�&,�l]|��h�u�/*�!�p	w�)&�0.�m
�g�'+� d�\V�g	#�*5l	i
\2&# $%>, E	]M	 M �z?�X

1 _?PC	  ,P
U"    	 $ 1I 3>	                                                           








		
")%	 
qJ > D g�$kz�$p|^�fwn�k!u!r�`	{'��#!f�*!�!�).kpt�4:��)g
�%)����**�*&�|� ���o�!&�"{wo�%!��"��^�"(nq|�56���(�AA�3,�0�0-�CC�a{] [�l�""�12d'�//�#*` �9:�1*~�,%�"�>?�>D��#p"�B4�*1xn �!�1&�;?�" t�r#�.1�38` om!!��.2�-._r�.�::|W� #l�!�01u�##�!$ev#�+-u�()�% l�+�|#|y�0-o� !��$np��-,x�#e	�� "jz&m~�5I�Y	vz�'&�16o
ayX
�)%wh�%'oZ
 _X�$1$)-@q#�)3qJ\
QQ{?
 q�$G ( /  9)	  8/ F

) +    % ?  ]?  6.                                                              	  	     


		#"! GQVPQ]TYkO qV}h�$!tf��(%o|{�$"zi�(,��!&��",|�,(|�,.e�"!f �**�*(�$ �%"�'#�#}{!~�{u�#�' �$t�-&�%�#y*�%!o� d�*,m
�"!w� o�./�f+�%)�,.t`Ol�.,�,%p�)"�- �&�:;q�,$�,,�'�/6�.%�% �7;�%�.(�"&}�65��|"![��&U} |x� 'yT
 �!]d	�')ds�r�)2�)+�~l(o
�69�.1�{�!� �85vo�-�$�%(�)#pz"��*(�~��vng	�% ��)%�a�$s�$�,#r� qet^_�s[
�l�' �.1�m�"tw{#b� �(-mO89=i�"-�Rn	wHlIRsI
. 5
& <
4  E<  C4 1+ 4G5 (
 (                                                                          	      	

	
	  	

	

	"! 		@LGHX	wz�h�$$|���)2�u�"$�#)z��"%�#*zu�*,�� ��6<�'�&��,9��m�+4�'%�'(��8<� �" q�" xzo��"x$n
�("�!ye"�)(�v�*/�#�y�*0�!�*.{-08+%2'0	j"&JP
�%$r�#�/#�-"�CD�?;�(��8/�,)�4H{%�&"�*%��9:�u�**a�##�'"S�"&�M �,'qb})`�%"�4:S
v#�)&^	�&�d�%,e\
�$mr�-/�y�"!p�!(�5:p	�"r�$*�+9}x"t	�-&�� pt�� |#m��''�88�v)y��6?�&"���#�" �'0[ZuY	s{Q ��mt�� �*+� s	�&�-!poeiYR t^v�)O J
U7 ON? P. 6  <  D
	C66%                                                                                   									 	


	  			
		   
.	A  M]r��nXu*'Yc Qp*(QIO)X&O'SN$Z#Y'U+W"�*%k(^'\�83o01$c�.,eu"Z�)&en.%Na:+@R,!<B&+:,#L-(; 8&E*!B,!9'A`%!Pj% Lz%"u+"�+&�$�!l�..�)�+(d$)#!'( "*
 !!; �:,Y/k+�7+f!�+*�/,l&�+B�,-�#�(!�!�5/�33�!x{�$�47�r�s�$�0.�nr-� �)3�+)f~y�*'�25�(w%~ p�-3�.9o~�#|(�"%~  h"�%���*,p"�.3�����%(�"%�/,` ]!l,#^.$G&42Q0A E(]&;c*!l,#_�0.nj �,%�%%d	gy�!�++d"^yeq}s�#�.(�"jw}{�lb
�fK ldU�aF
 �QMS@V8  ' #1	
 #
                                                                                                  	     			


	   1Wc	b_P3.$*"*,,)-'01#. 0(#4$%'3/4</+!&'"@,.41,03,'94.4/)9:2 &1#$%:/+&&%1%1>-,3/#:*5(0",.$,'"&0*2++! ,4)0'"
L3,5)92":I-"8"I/ @*T&<5"% 

 	 *5-:WE'8(#&*7&*(\;2E)7,_)'J �('� #p�55zc%zH�%"�1+_gZV
�,*{(skNt �''UmmR	�/+�( �(�,#j��23�*%r�(�$�5-�1*�r!�!�,'�+.�&{%w%�) t31Q J"L#X70>2&-+("55))/"
,*,%8' #",/'N1+2)4E$SZVU� �! tkux�!&xT
 �� gfu~w}#%m^�!� Sb�WTO	 V	 �nF; 	'	            	                                                                                                     	
		
 	2SJ	/+# #'#'&"&+'(&!(# .( *(
 -+*)('/-0(0'/,6/$.!&"#/+)"4'&%8/'!&%%"!53*'(' ,(#($/)&)"$%$"**%*,('*$#*"&E6!*) S`W��������͉��$41.764%	)$4$.>95''))$66,6-&/ $!74+#&'?("&'/"5'''("(3%,F74>7-")/0+*K/$\3/:&HC)T$^*R'j"s+a3#o!V*I0VA,h)"K5 M6$2#;0%'.  ,
&.* !(&*' *) !&3.&1-'#+!( 0%4)%"#2;i g��$)�'2zTt_km�#�$%vgrcq�$d]
�%,�TD : lQ& 
    
        	                                                                                             	




	  !#$%  &%#(+-(%#+(1#%#.%!-#,#&- '*'1$)!62(')34## 31#11/' /%'#7.. 0*!4.& "  "&' & &%#(7/,+#!!!.w{j�ft�iy����������п3@7*/2)78 0& )$.-"!&$"
#
 !#2,0$"!$3/(%.(3.,+! %"( 4*!/0	$+!4'B18/!-)+, 8&3*'801$-$.% .!+-,%%*&5($!'#
'" +""" $"'%"!#,*..))	 (')% #$!("  %,5,#
$,6/'9Ps#�p]fk~'o��.2�qydD	 ihZ�!!�D ;&	
          		                                                                                    
             	   	


	



 	" 
#,$&$ 3-(
,&!0--%2*)$.&:,-%%'	*#$22.'%+(&!--+&)# *+307)#"2/2):01('!*?6!"  50	"')((61%""$/&,%' $!-* &	.$.$-$!$!&" ~we�ZX�7@�fo�������������®0!91/)*,)(%-!%*$	'.,&/"#$.(#"&! <0#
90!1.!+*   63*&!"$!)-,$"" /)
+"& -),#) %2"/'!!
*% ""<1&'!() ,,2,	 '# *'')&91'6/	'%++ "#", #	&!+11+8kpu�,.�"-{a�#"~Z��*/gPZ	M j \  	 	
      	      	   
 	                                                                                
             	   	

	

	! 	
 
$'#(" "(!	+$ &
(## +(	&%"!*)$22(('%*(+)*"' /(*#/('	# $ /$!%'"-'!!'%20(#&#- ,# 3/�vt�-5�FK�]c����������oy踴2G8 !OE! 	0''!!#2-
"$'".'"1,	
,'%"+;8,(+&)$4/4/(#0+0+&;42-(#*%/*1/(&!&#8/!6-'-&
 5.0)(&!" ,(&"&" -)"0*& 0)""7.
 (!'$%"2(! "!$$$43 
 !	'%+((*)%F��g7 l�a	�,*�,)hU
W 1        		

           		                                                                         
        	 	 
          					








 	
			 #$#*!
-$("
" +%#)$$ '#*&#'",&*$)"(!.'*$) *! '$$! 0-
!(!#
+$	#&&+&4DA)()[@�Ta�:H�=L�`p����������d�򑚟�p� �1&="T50+6."/(,''##$,( #-)2./*&!'"*"%$;3)! 7/"*A9$&+$%!6/*%"2-*(*())##
**  !2,
	"'!	/)"%.1.0((&&,,$66#75#$#""()11$""# #  +*$ /*!#!"(,# 

@M zygy`p~6(/%  
  
           	    
 		                                                                         	 
  
 
 
 
              		

   	  		     	
	 $/)*$"!#"$#-,)(%#$"/-"$$4+,#'#5+*#(!-&$;3)!,$ 7/ 7/!40,&-'1+'!"*"%(# '"'"'"1*%!%%*!	'(1++,
#14 :Q7�[_�BO�9Y�Wo����������ae���{rc'^':#I/�BL') "*' 3/&"($0,%6.,$"2- (#,'&=3$&(?5.$&0'$$,&,&$%52(% 0-! ,+('!10-%! 1).(->8("# .'$3,'*"/'#7,!%#$#&44"53"%!!-*-(&$'!"$	
)#3.

 /
 � %�+7y�l/
+"  

    
 	
	        
	                                                                        	 
 
 
 
 
 
     
     
      		       	
			 	
 

& 	%%#$!
"$,&!&%$8/-$+"$%:1.)*%'"4/!$,(2. 0/"!.-!!##	/+)%%!("( )"5/ #09+&
/98�ow�8B�QW�jv����������dp����`c K3)Z?,�5D&.$+#-@:#60'!,&+%,"&;21(+"&93.(*;5'!%%0*$71.(0*%&:1(;5("1+& 2.':6!* ):0% ( +#"3+# -*"
$%,/ $!*'*'& -(+"&"$#2/!! &,(	$73 ..
	
Y�#�!.I UJ(
 

 	
  	 
  	      
 	                                                                      	 
  
 
 
 
      
 
 
 	 	 	 	        	       		
  
	

 
	 
%* 	##!!"!((''"#&+$	%*	$'    
""
"!"$%  
!!!!.?!51-+(C����FJ�HL�sx�������ʽ���Ž�K+Z6(&$G7(@' 37)/%*#+%)<8'#$!.("1B<"3-$'! &#/;9))++#11    ))
,<;$#//	%("#$%	$%	*-'/&/$- . #=,";!:	,63
.)-!##&
#" ,,"#$5-!2,$%$ 	(%& 	
a^H	S$4":+ 	



	 
	  		  
	
          	                                                                                 	           	 
                  		
	   	 % "(+
&)9('7 - *6$ *)!+5!%
" ,8' ,+&2(%1#3+;#3#0	#".<"0)*,.0"/ 3.#('1	 *$ + $"2".D/$<2
'M7PJڏ��Uc�}����������ϼ�*-&$!4:-4""+.#'/3 $*-+,'58 ##14!''&",5
'0"+*3( +,7*%;0!7%;45,%6/+#6.".D1$:
/	."+H5
0; <"-I!; 	$4/#=&= 6	&	& !
""			!1.# 
* mI# 
+%	
 	 			
		 
   	   
                                                                                         	 	 	 
                          		
			 	#"	&2058>
69<
7
92#=1-5"6+,+ +?*/.)<!4)<4,C%<4''=01.
+3-,, 61-/%7, 41(;.,,+>#2G$;$2L&>2-&R
�����������oo6,3M1F7/E)C-0O#0C0*=)9$4"0=(#)9	%$4%7%/!2*;%7( +=-"4 += 	$6 '9';&';'$:46::&B6#A47*B%6)5"<, : ,&8#++"2:
+97?#C:2#60#6*<
&!! "3-	 ' "*  			.#'   		
 		      
	     	 	'	                                                                                	 	 	 	 	 




                       	   
	  
 	 ""	/5100#0#.# 1+ 0+<"@1 ;
35 :1&@-51(A 8$<2!>:5.;/$@- .%%3,%+-	-
0-1	2 9-265&=&6M/?V%>5.<%5&)L.(
+1S6#9N(5,&7I/+C(F	4(E89(@ . :9'3M60"</(B 5*'</)>,
.2	,746$?
/$?	/!2#4($7( 3&<
,!<-!;,3 :	1 :(!955".H$? )55,33./	,-#=-*H )J,3((   		 
30	 # 	
		
             	
     	 		%-                                                                           	 	              	      
 
 
                
	  -C 	 	#	*% * !!&.2+ "%&)6-0$9$61 4#7$!<1 4590%93$*B
)%; 5!8!40';*= 3"6#73)1'#8)*,&6-0+.* 7 :.
7"2&&20%4Q0@d$E5E=-G`)?W.C4E5+-B*A
0*A-6*0J+)$B*A	/#-F+4,  71."5	,3 ?0%97"9'=&%:%!&C8/'$%A9
1'<	( 92%94-)@216$;">5&=/#=>/!:/? 5P:*4 79"=. 70);#>"$&	-.53N-	"#" 
 	


 ,%
 	 	     	  	    		 	 
 	  
                                                                                          	 	 	 	 	 	 	 	 	 	 	 	 
 
              
$3  		  	$ "$
)
)0462$1*2"?+
0"=1.&;)> 'C5 /'<%@5$9(> ;7	"8%=;4/9#<2+2!90#9-*=11,	$5".+")7.!1/%5 =&6,6(1/:+;2%C6@!4!8J+B#=%@?+<Z!1H*A(@6%3M1I)?0E#='A+7Q6731"3G(7))4!/#2E!4-#. <-G"9&:1	0&?!;%&:#;"3M73!;%:(C*3
08 <2$>.759!9, ;8'; 8-#?(; $
(-+4!6 
$+-'<8+31
)/*0%?"	%,$## 
 		 	"  	  	     
    	  
  
  
                                                                                     	         	 	 	 	      	 	 
 
      
      :   *
'-
-)	-+*-
).
-4.0
1.55- 6#90#:0,3$;+749,#</127+.1'.!2/!2&,04+!=482:/-C.F6 6"';#=!'I0A%)D(4N8#C&GD2Q4450'9M
2%:1F.$,A'/D,,%"1,800&;$;(/K
.64;%*G/%-B*2"83 41
+:/9,.9
)/-00(;)3(7-'$<6,$,C/+1,1,-./	+3
-4,/N3.5
.//&
)
5
(4
/5
 	) 
	
 
 #("		 	   
	
*     	 
   
  	
                                                                                   	                 	 	 	 
         	
 K 9 + )!	#!	))+"5'-,/!9.3#9-%=42#:!)@2"82 9
035**F514/B$82,'9-.&("2*"2--%.5&?5!< :!=78
+%!<>@E&D)7T8Nf%+E(%B.C!,@3@Q'5/%.=(*=(3G.!)@4 $?*.I	9 /P!A;8+6
2	2%<
. 9'C!=)C	/!8(<+.>+/$4&&:. 34, 6(#2&2*<,1)!3#<
(8/"1H1,": 0,E-3S	405	*
 8&A /43
732!7)	-0 $2- 0
-8 '6 	


("			 -&	
  
	     	 	
	$       -		   
                                                                                                    	 	 	 	 	               
		
L	F%

 $	(	$
#%1
0	4=0,-@ /.&<!9+1.F4<%=)@822*B#;":	4.H$>!;4'? =93%;).&#1/+/ 4$724"2!1//(;-.-,Y(>H-4124'1 )$85@=(1P/H <+5P*A#'B:.C 6M/I%B'F<*H2O:",G3&@"=*7/%9.A- 3#9(=,A%)B*C#;-F56#<6.H1;	-%=,A00,)@+E	'7 "1A  0
*2*#8#(0+.J9 +:9 ?9U C!24!;"9
/("#25'5*

.28  '
 !!$ 	
		 		& 	  	    	    
 
 	
 		$   	 	(
    	                                                                                                       	 	 	 	  
 
 
   
 
 
       
	5 =A0 

0, $#$'*.
(*0),).,#"<,4/04(&#8 5#8	 !85$<
*"7#400&8
+#1&#$1%	) $.2455*":3!;.2,�,?�.$�3#�-0z'7�3Mn.H@,5Q5C4(46%77.A/"*?%7)8"8"+@.D#;):T,I&7*;*/>$4,):"4,F",G!'A'B%?"<"(@!5&@&@ :(B,32:=5$B1$>501	1$;!(*(/7,1* *&$.6!4'140",$/
'/&#: %+2 +A@026+*=#9	(*!%
	(34	 
 & !
$

% 
"!		.	 1(     
 
	  
 		%          c� -                                                                                                                 
 
 
 	 	 	 	 



	 
  	   6SK


!(  	 	- )/-H"4. <B<#JG:&E'/L!D
B%)A"'S#c%2F$J#(T#_!0C%J%,V(d'g,Z#U!X%c!-k'4Sk!0=6! .V*V'D%&"*')*	$'#"4;'�*-�/�SE�UU�95�04� *�.'�GL�44�+'�($�*-�@Is(%r%5q-:Y!,a6=J%,G"*\4?0.!3)/$'#2#,&#4&/&9*+0+1/%)/#14)B*<'.3 &1 &1")$-"*(!(7&!##">)C!;##? G&.	N43C!d".k)w2�"b�m�.#�;9y*pw$.IAK@C>!  0!,*-:33'@0!"%) 9 ,&	
	* 

#

 
',	$$	# $ 
  
	
! 
	  	   $ 9 E
 ��!*B                                                                                                 
 
 
 
 
 	 	      
      	 	 	     
  
  	  <WP 1		 
"CQ
bpaiubu�X q�$ ur �!�nq�+-�)+x"�'�&-�'-�0 }%�*2�'/}%�%�)-�#%q+h%�%$�04s v z�+)��%y�)&��"}zpnen&)d �$�*5v""�0;�4=�.�7$�& �-#�BI�1.�2'�&%�EM�,#�9$� �/+�MQ�27�#$�91�0$�44�-+�$#�-)��2-�/+w�*,�*+�-,�53r�2,�%�<3�00��&(�#%�/0�65q u%$k$ �00�*.� �'" �-/�-6���*%�63�$�w �,�.@z!�&&g�%(�4F�'nw%��8@�4@qYo$T	tw##^a!"C "$	1:&
!	(35$D	 & '		# 	 
'
& ,B-4
$ " 
	%     	  
  		$ 	

	   '   8  L _L A #	 C	 t<	
                                                                                                                                     
 
 	       R; ; 

K  W	jNkuVjOPl~cy�"Of	�(-c�h �!%zoZ�-2�!w�"�$/��*��#'�w'y�� Wss#�%,o�+&e	�)0�}&x�1/�#x�%�*6n�45�07y6#�(*�.*q;!�/0�3+�-�:Dp�=Fo�(�-5q�=3u( �-#�4C�3*�8)�21�"�>C�,0�&�v&�AK�0D�+�,� $�@@�94�'�%#z�;2�.2�%�3#m#�24�6=�)�!q�12�2;��&u�+1�3.z#���2,�)zr� � -G�)&V �)!�*3t�0.�'#b�..�&!y$!uxo�3'�*3kph	��'(Lf"[! E
(	,N	!)  


!)	& 
!"+"
30     
	   
 !  =	(  << HU /. R
<  ^J <
v	]'                                                                                                                                             	 	 
 
 	      
    >SZ>
YW	P H R Y	KT	JL	Vb
ij fcnl�" h�*(_�"f Z�02�+#�+(�!"�$.o�'%q�!c�-*��*(�-,t$�+(f�t~Q �&!tz$%h
�s |%{um�*)�7?�)!�&�'$�?@�GK�3-�3-�'#�.�6;�0%�.'�/)�+�<8��1/�09�*�?6�*1�#�6+a�</�(*|�3.v�-�+#�"�*'�!��/'�!"�,$_��/2}�*/�)(�+"�2/u�)(�6/�%�!v�32z�4,�(�%�. l�81��+$}�%�*.�&�.%�3/�$�+�&u�'�/"m�.1W��]xi
��*;�m]V	�-5O&") 	" '   	 		

#$14&)($!=8

!
 &    

 +7Dp �$2aB 4 : X-  7/ A@s
z5 `	V(                                                                                                                                             	 	 
 
 	           nGJW ^	V	R ? lkS�]i�"pq�##gl� )y$v
��,2wm�'%�)'x |(��15�$#�("~�(-�-#}x�5?��& e�('�#*x$r��&%s�-$�,%��" �!�$!�'!|z(�&�1(�6&�*�4-��44�FK�,*�02�) ��9C�/.�#�)�1.�<Jb*�/+�*%�B@�--�/'�.$�(%�6;�82�6+�'�"!�88�81�$%�+,�6-�0-�1%�56�$� $�1/�+�6.�!�'$�9;v�14�,!�!(�27��&#s �7,�.%{#�%�* �14��!!��89�2A�)'��"!�;5�QN�+$���&w	�2;�T�!tm� J^�U ucj�<:�)1?  Xj'
    

-#)%*:/053/
 	'   	 	   #	 \X7 HS Y ~> ,  U2 I1 :<	3 Lq	�#=	 S[*                                                                                                                                            
 
 	       ?ML  X
;
 L ZGj
re�ih	�"kt
�f}�"'hi��26pr��02i� ��+(�s��/.fu
�(!� *nz(X�!$�mY�#�##s
m�)+�$#�!"��/4�1(��"�,&�4.�/!�96�>?�$�45�7D�.(�3?�.#v#�##��;@|#�(/�+/q�'�-$�,%�79�.-�3$�0'�#)�3:��!�-�25�<E�10�$� � �)=�,(�+"�"!�*�;A�8:��!$�41�/-z$#�,2s!�-9�&(o���-/�,(j{�%�$-X�32c�++�,(y+�/3�+*�()�2!f�"'�*'�'%�?E� !tl_�*'�/7_[no��&S�1)�E[k~�"+K!$    	!)/
2!	1-0!;	"!
'((4      -  D= ��$G  X_D f90o( 7  <P	T  <O	�= E j5                                                                                                                                                        	 	    	       GX~T\	eYUiobc_mkb
vyugt"p�,)� �)t��" o%�qc~r"o%z{�(#w%�&$Zs[	w`yi�]{s�sj[�%!�-{��.#�$�&�?I�:=�/"�3$�,!�;8�>D�+ �5.q�-&�35�,�68�#�'�2.�-$�2(�.'� �/"l	�-+�+'r�5-�.�"�11d�(�/&�(�/9n�3%�-'| �.5�-+�'%�-0r �(,�!U�")k�$#b�#�('�(%�(-m�1/y�25�h �. �&%�(*��)�:@�)#�&$�!#s �(q�)�2)r]qP�11�,6q	}w�#'�1,j	J~nA�g|�+7a	0 S:     / ) '#&	*
)6 	*/ "
'#+2      Pp@V1  D o: I b	AG2J�3	 "  $ ,  D%  ]6  N@ K �d                                                                                                                                                      	 	    	    5Tw
[[W\J l�Rm�U� d
m�*yZ�($� "z{"�'0�&vn�,-�i`� 'zn"u�+0�#"e�/$w'�#*ry+!f�#'{s\
�)#swb�#%ox�%$��" �0-�) p0�DC�;;�1$�- �*�:;�LK�% �$��E<�84�5!�%!�-,�+*�=@�'%�3.�+��8<�*)�0)��+�A>�#!�0$�')n �.&�.%w,�67��74�4,�!�86�,�,%�'/�&!�68o&�3*�($`�0/v�*"�'"� "�t!�-)�$�&�#!�.+�=/u�$%�"�<3�<@�1��(��50�4:zr�!n�-/�*3Q�!�Y�$M `�0'�nn^	{ �I ? q? =	 UP tE   & %&41")$0#0#?	,$	 $ +	 @  R' T
K 7 [  G	 o!�%^	< 8 ?  V/ 7 G	26  QE 1 FM	� (�                                                                                                                                                 	 	 
 
   	  	8\E > \	Ng		[k�c
v�UuX`� p^	�,-}h�3?��%#Z�62�e`�,-xy'k�%)ztj{�(3nkq�8=�#!^k�.1zp�0,�#){r�-5�vl45�?@E=(xA:s?2~3-�8I�69v2)�02w,&�=<^"�#"�?B�-�*$�+#�-:�@P�"#�+'�&�+7�9<�#&�/#�*&�07�EP�-2�'��+-�FJ�'2��('�(,�FI�)3�&�3(�&�EF�34}"�-#�#�.!�23�z#v$�6@�""�,$��,'�51�% �0p�31~o�&'p�-)�+2}#���#�IF�CF�# xlf�,-�"#Pqxu�'*h
i|%bf	fv�%!�)d[V N	kO =	 zF @ .!)
+03	&.",%*$;*		 +	 7
A  4.  ? . os8 KP Xx7 ? Z J	;2  ?   % % Y
R5 E%  ]	E                                                                                                                                                        	  
 
   
    		 EF Xd	NhU? _NKGG0 8 B(#KB:$3(l(;#T-@}))) aS#[(%;_(!F"c2+7b'P!o%` v,#qS][xZKf�!vnsvgO�^_/!.I:C=.,-( >2.91BG@%;.+;0-4, 5">4*!7"40%V95V9+�8;i$u+ �9&n+�/-l�6/u+s"�4+T!�;/�2$d�?2d$h�A0y,&�.*�. v!�:#i& �(-�3/z�3,�M~+'�8,�x�,+t�"#y!�,"c
w!|%a�'R(?21 C'#B8,%$(O.)H#�/0z4*O"�3!�"f�v�%!�:0�Xj��-)�2@�!g{a�&"�0,_�$�,&S\ ZKu
I 4 6S	8
*
+	"+/6&
)$ '  

# 1E
 PV 1\89
7 }�> J	T5 \AS} ;, 4 /Q7 3!  , 9 @  O  
                                                                                                                                              	    		  vt	@/ % '	)!"#+%*$/(%1**#"("%82& .',% 5. /'4,2*$$ 2,/))!%#0)!,&* $.%!$+'(:"I,(F$"##>+%F-)4#0!3C82=C7&95+'0,1-9LH=PL&"2.)$"72+@;/* 71"93!82*A;*,"/%-:1<I@"/&'7-/%6/'GD=,/((-'',&/,'MB>:($)/!.4(06*8@31;0(2'+7-".$>0#N<0<&R:01B*G4&7%S7)4F,U?27'I?3*$95)-%+#.(1+)<6#0+(#!82"93+% % -&(=6*$/&4&7s4-s) _�*$`'dwQ ��6Bidm_�#� $H }lAQ a^|7 FQ	
N v# $/5&,(,
0 
Q
B ��)&J* 9 5 
K  l	D	 
 0 Zd2 sj0	 =  EM
�f	  .  $     	
                                                                                                                                                  
  
 
 GT  !$ $
-&&' %'!-'1+& ' )"&)"#4,( *"%"5/$-$! /()"+)(. **4$/.7&3$.!(2#7&5$,("51':6+'#62$73!"51
,( 50-(2-+&1+&=7 +"+#,%+:3(!/'3'9,0$6+.$0%/C8-#%&)4,/<3"2( /()!' >42)"+"%.C:- 
&0$0$&<00'(.%;13))!*$%2,2,#)%'"$;5#$"% &;43F@*$!'$'!$)6,)) :&b(&A&J#_#7 �yN�+7�.1X RXL  l\= [7 83  j�+5 "8 #*!  
	
JO  Y�$#�? GL	 !- >Z. @  F " D , z�NTW	;J	&   '		    
     	                                                                                                                                                        		
  4  
"$ !!
$)"-&&&(!+$$3,"3+(  7/"	2,'"-$ !"! ($	)#	$!*!
$%$4.0)#/-3.3HC,A<-( 50$94/*&;6&#.*,(/+!40$/*$94$0))#$.(%/)6."#0,-)4.&=7&*)/.0.+>:-(% '"34./""&&**(88'%*('&$66	#$+,"01!/0'!,& 0*'!%!$ %!0*'"&!-(# $71#"&& ./$<<'&  #A/ ,"
	[$G) � uh
om		��%J ]  a<  J1 �%�$:)=/		3$!C3 {�)4bN
gQe|D
^| (  ( -   de	  XQl
�!JFI            	  
                                                                                                                                                         	 		
"("!! ##)#)#%820)2++$4-'!("+$1*)")",$"91("'!+$1)2(,#1(()#")&&&''%$)$(" ..,*)'+35)$7LG0E@2-1,/*!61/D?*')&!#30*=9#*&*&4/+@;!61.*!40+'"51($&20%$!)+&(%/.-*" 43$# 43 42(%"93*$/)4//)%&7//&+&,'$"+&"+$!%/)!,&!+%("& +&!1,+&,(+% 
3*1$" /) !&$>/-$
#2-(  	! mXa�J6 C cf
7 �D
,-"

 	+9fH
 �  �=El8  xN; j;U � -H  +
 m
6
fM8 K         
                                                                                                                                                              
	
!
( $# %!&",(%%)#(;5(!+$+$!6/& ("/).'.'%0)!6/$""91!8."*!*!6()/""2) '#'&)#$ -(;3*"'"*'"91-(2GB(=84/ 500+&;6-B=)&*'&#1A>;KH-)1-($! 50.)(#.)+'"51#-%' ':4/)#)"%3)$75,*'%0,.)"70#812+4+/&4*3),"#.#5(+"5-&+!0&&/!%("1+'!% .(-'%*%1,3.$731-!0*+% 1)3'#5&
!&&-'&!
!?2" 

I4
0 J ) +  1 t�P
 wB% $ X3o	t
E C ZeXY��
Vd F
Sd  1    ' %ud
Ba C              		                                                                                                                                                     
  
		
"	
"/*'"&!!61#($+' 3/"'!("*$*#$,%0)%/(!6.5+",#" 1'$&3*  ,%(!!2)) !'0+"7./* 50&!)$0+,'2-,'"%""$41'74 *&#"727LG'<7+&(#($0,(&&=3.$%/$( >4.?9%"5/& ,&)<6(2)-0#&/=> ./ ! !(87%04!%%)$&)78,,-+0-2.!40*&"*$'!0+ ,?; 3/'! 1+0?B"86)%*#-$# )#;. 	 
#) R 8O
lP ~	$ +GP ] J	�hL Y^�'*lC  �99�+.Y
b	R	 =  F   4  'LO* ? 7  	               
  

                                                                                                                                                              
		
 
%!*(*$'!
!*%  )&##!$%&)"$ 5.&+$ '!
*" #+!&) ,&($' 
#&=54(+'1-1-%841-*&!40/+-*.+)&-)-)"0,+&*&%84+&(#(#'##30,)(&
/)( # 1+*'%411+& 0*"/)0*)#2. 45/01/-+1/,).*84 64,*))&:90.%##830,#"(" ,'%!)%	-' A;/,($*&''"!-*
# !#2)" $% !       5	:X  m-#RG� �[X	\L]r8Z  _@�(1�#.  ox= D
=  N*
/  0
# &  " 
                                                                                                                                                                          %
  
#  	 
"#$!  %#(&)#1+*$-(+'# ,)!2,*$)#("2,
-&-&,%2+ "700(	 -&"#	&"%#$$.(1LC#60*&+'2.+>:&95"51%84($1-1-.*.*2.0+%:5.)%"*& 0+.)# ,-+'*%&"##&(2+%$92)$'%.,''0' (*%=0!%!1,&!# +%")!,($ !40/+.*+%#"1%#''#@<))( ##., 
 &(     )  f\P` W�#p_N  [Nt�F i	W 0 �!'w6��?
' K  X   " #
  
  !%      
                  
                                                                                                                                                        	   9	  
"
	 
  %!!$"
$",*" ,&1+'!*$0*3.#
% 4//+.+52)&1-*&+)/-&$+)%"#96)&# '!5,#/)1+/(!1,$5--(1,*%&(<04%%!"511+2KE9RN512//,030DE!0,& +$1,4.!0+-'& !4.("&  1+,'!0+/).'4-0*$ 1+0*'! 3-0*+%"%82
1&&,!,!'& 	*$!
3*!"5/+%0*& %,&!& )"$%!+'2.$!(% ,(""#
+$!1-)<8	
#  
  	      kv�&L S[
^`]Q5 �*&g  h	aG�~0 �%�@ 5  
 
  	
    
                                                                                                                                                                           * 	    

	

"(#*%	-*"'$#60("& ("%60)# *$!801*$'!!2,!& 
%60'!!.(/)!6/%)"' %:3%)")"2,%,&"+$4/($'#!40-),',&("*?8%:3,#"6-%$1D>*!(  -'3FB(&# 0,)$2-	&!+'(%.+
&!% ,&1,% /+(#0+ 50(#*%-(" 50' "70$(!3,
*#0) 0*#"$/()"*#&!"+&4/&!.) "703.% % &!'##62%!	 ("+$  +%	-($73!'"'#	
	        BPpQO csdi: : k
�'!Q r�ChcA��&"A	(       
   	    
	             
                                                                                                                                                          	    &     $"'#
"+'!+%$$ "".*%##%''&!!61"'"% 3+')!*&,(%'!*),/#1:*5++%%"!2, /**#%2)* ")(!'")96/.%#*(#!"64%#'%%# 31!40"(#)$!82*A;/*,')$%:52-'"!+&.))>9&$,*(&)'+?=)'&$/+)%%!($.)-(".)/*!-("2-2-
)$*&,(-@<# "/(4-  *$/)%!
 "%4/".*       .	X  Sa	]VT�(*M W ]q]��H	`J
 : � � &       	
 	  
         
                                                                                                                                                            	   C
	 		


	$$%&$%	! """"!--+)% &#&"$,&#%"*$#*"('#!15"0; .9 )(/%36"01 ,,!&'))(())'55+(&#!$41+(&#!1.(%+(&"!40&95.*&"
 3-/)(")##,&.(
1-#2.2.'#)%!*$$5/	&#-))%%""/,%" #""# $)$.=8'$0(+?6%
!'"+&+&'"*$"$ $ 	
       	0  sn
�XQ [�$Z  P _	�!P  ��0,^YY; [  _ 
  	  
	   		            	                                                                                                                                                              	  N
		   		
""$ ,%1%%1&".$%-!*&/&("&/''0"'0!'"& "
-(

'0*$<-=W/H!8#8 ->#0@ .;)63&8$0@'3#,"/5'(!)%$ )%%!#  #/-#!!)&(%$"$" ,*%#*&%!)%#/+ 
''(&	 	!
	 *) "%2+"(!#831,#
+%&          V 	Wx�!)\f	S \YQ R_	J
y�%ZAn5' /
  	

    	    	 	     
         	   	                                                                                                                                                        	  
 B 			$ '	%%!2+/ 3%!430,&9/2!4':"5#3$4'7 1#4&7,<$4 2 2".>)!/*&5$0"$"! $	#&&!/<':(4L'7X=>%B =,G"2K$=8&E$@-9Q*=/%1!.6!,.  *,"$"$"$"#,1"& $*-&)"& $! +/)-!%"$ +-#%%' ).	%(. $.7!*$.!*1$#*#, )$-"%0$!*"+
$ "' 
20 3/!	
1+% 	         8z
O \cA  kQL	M
�AS	De
�5  5	m    		                	            	
#                                                                                                                                                 	   
 ' #   
				#.-.,(":
017*"=746&@64"<*C)B$;+B$;12(@#;3
0*A$3H3"5/$/A$6/,#3/-	'#4*"-#4#6)?'<6%<-L	6!A!?7*G-J9$B"B$1Q%4Q6!;15*7H*$6#6#6#5*&7, 0%5*.$4(7$3(!/ .*8$0>,(6 .,<*:.!1%5/#0@	&$4."2+.*=((>%5(.(+1'./'= ,B 3+-"$4%7(/&$#''&;6,&
         
 Qw`VX	FkN	Rc	�qz9 5 i9 3   	   	    	 
                "                                                                                                                                              	 
  
 %  	  #*3
.	14+*8 $,5.:5-774+0$>!8!8	-
-
-6/ 88#<#:1#8&!4	'5*#:%?%? )!;7)7)4P8<%3P5(B(4N*D)D43'C$>9%?1%B 1O
9 ?#B7->Z; =::"0M844*A(? 7) 7*@"7L3)@6#2I#:"9 7 7.H.H16
4'A'7Q
4"9287-<#@$A#1K*
2.$A
50:9(F-K</8 :*C&B).+'&'&& 
!61("	
    
   W`	_U]
U �nS  s�X�F ,	
0 	    	  
		  
		                	   
                                                                                                                                                         	   =    
"(-
+	,3.,+	+--0 :243%;*0.%A	'(>/#;-*;-+C)$2 0*)9#1 #6$-	$-#2.,%"5-+F$/M#=&<*7J$;"2K%4K$:,4I)?#:-L+<%B)<#7"A,4&3V ;15&C,L91/!9#8"7!7":,F+C#<%<2*A%? :2),F9 <#=*$0J,F :8$(H	-!;+M' @8	/8*94( 7#
+$@0
-2;$/O'B -4((D'M (/,
#	
	"        A
N`c
A9 toQ  KjB Q *	

	      
 	
           
      %  
                                                                                                                                                                  	 
B	 !%
 ""$&+6./.
.0/4#@146%>/#64*E.*A7)@4,?4*D+&60 1$5	& 0)1"-'1&3
,.-!4	/!<'2P!;%;(?!;!2N,F
0#<8&A+J)<(G&< 7&G 0&?"B8&;!869	1#6. 820.2&@&>56
, 765.	#"<	177)%?9/<
'$D)2"D("?
/+3(92
.#:!+!<-	,.2"B9 
-:)'3M&3V8
-2,.		    	    DL`�E(  L	V	J*-	+(!  

	     		  	 	  	   	     !                                                                                                                                                                  
 	 	 E
 	$*)
.-501313/6#@
148&@4%: :,I 5'A!<'A6(=#:'B,%7 3%82//!2!4(/*"5
)3.3.!4/"=*F8'=&A+I-@`#4R =(D$A)9Z.O%;(I$<%?$2U!4)D%?#8-@'<!; ;6'<4'="7!624(B'?#;&=4!8 :$>"8-$>5$>!;3&>#84$>/"B)0=-'B"?"<$>2">/2 7
'1#@3643=6 ,9)A&I
.	/7;#B3

!	         H	Ef�%"?, /4	6  0+  	
	 	      
  	                                                                                                                                                                          
  	  D
 
	%35!81	3
/	26	22
+3>1	3:$?8$;!;,H$;#> ="=3"9%?%B,"6"8'?45.'9(;./*!3
)13#<(!4/-G86!,B5#A':Z,J&@+F=#6W%3V":$H!; /L5Cj 5:)<!4*=%:(?%?7 7-'=!6&;64%?":#=(?%< 7"<*C(>1'>4'>5 8$9%8+>!;"3"@0!6:!1)D: ;!;2#<
- :!:%2!>5!94
1;<	(47 3:  
.6:B;-'	 !
	         
J; _v(  ; &   #& 
   
 
      
     
$           #                                                                   ,      ,       Z                   `                   �       l       S     x�s   H ~           �� �� �� ��  #(     HLino  mntrRGB XYZ �  	  1  acspMSFT    IEC sRGB              ��     �-HP                                                 cprt  P   3desc  �   lwtpt  �   bkpt     rXYZ     gXYZ  ,   bXYZ  @   dmnd  T   pdmdd  �   �vued  L   �view  �   $lumi  �   meas     $tech  0   rTRC  <  gTRC  <  bTRC  <  text    Copyright (c) 1998 Hewlett-Packard Company  desc       sRGB IEC61966-2.1           sRGB IEC61966-2.1                                                  XYZ       �Q    �XYZ                 XYZ       o�  8�  �XYZ       b�  ��  �XYZ       $�  �  ��desc       IEC http://www.iec.ch           IEC http://www.iec.ch                                              desc       .IEC 61966-2.1 Default RGB colour space - sRGB           .IEC 61966-2.1 Default RGB colour space - sRGB                      desc       ,Reference Viewing Condition in IEC61966-2.1           ,Reference Viewing Condition in IEC61966-2.1                          view     �� _. � ��  \�   XYZ      L	V P   W�meas                         �   sig     CRT curv           
     # ( - 2 7 ; @ E J O T Y ^ c h m r w | � � � � � � � � � � � � � � � � � � � � � � � � �%+28>ELRY`gnu|����������������&/8AKT]gqz������������ !-8COZfr~���������� -;HUcq~���������+:IXgw��������'7HYj{�������+=Oat�������2FZn�������		%	:	O	d	y	�	�	�	�	�	�

'
=
T
j
�
�
�
�
�
�"9Qi������*C\u�����&@Zt�����.Id����	%A^z����	&Ca~����1Om����&Ed����#Cc����'Ij����4Vx���&Il����Ae����@e���� Ek���*Qw���;c���*R{���Gp���@j���>i���  A l � � �!!H!u!�!�!�"'"U"�"�"�#
#8#f#�#�#�$$M$|$�$�%	%8%h%�%�%�&'&W&�&�&�''I'z'�'�((?(q(�(�))8)k)�)�**5*h*�*�++6+i+�+�,,9,n,�,�--A-v-�-�..L.�.�.�/$/Z/�/�/�050l0�0�11J1�1�1�2*2c2�2�33F33�3�4+4e4�4�55M5�5�5�676r6�6�7$7`7�7�88P8�8�99B99�9�:6:t:�:�;-;k;�;�<'<e<�<�="=a=�=�> >`>�>�?!?a?�?�@#@d@�@�A)AjA�A�B0BrB�B�C:C}C�DDGD�D�EEUE�E�F"FgF�F�G5G{G�HHKH�H�IIcI�I�J7J}J�KKSK�K�L*LrL�MMJM�M�N%NnN�O OIO�O�P'PqP�QQPQ�Q�R1R|R�SS_S�S�TBT�T�U(UuU�VV\V�V�WDW�W�X/X}X�YYiY�ZZVZ�Z�[E[�[�\5\�\�]']x]�^^l^�__a_�``W`�`�aOa�a�bIb�b�cCc�c�d@d�d�e=e�e�f=f�f�g=g�g�h?h�h�iCi�i�jHj�j�kOk�k�lWl�mm`m�nnkn�ooxo�p+p�p�q:q�q�rKr�ss]s�ttpt�u(u�u�v>v�v�wVw�xxnx�y*y�y�zFz�{{c{�|!|�|�}A}�~~b~�#��G���
�k�͂0����W�������G����r�ׇ;����i�Ή3�����d�ʋ0�����c�ʍ1�����f�Ώ6����n�֑?����z��M��� �����_�ɖ4���
�u���L���$�����h�՛B��������d�Ҟ@��������i�ءG���&����v��V�ǥ8��������n��R�ĩ7�������u��\�ЭD���-������ �u��`�ֲK�³8���%�������y��h��Y�ѹJ�º;���.���!������
�����z���p���g���_���X���Q���K���F���Aǿ�=ȼ�:ɹ�8ʷ�6˶�5̵�5͵�6ζ�7ϸ�9к�<Ѿ�?���D���I���N���U���\���d���l���v��ۀ�܊�ݖ�ޢ�)߯�6��D���S���c���s��������2��F���[���p������(��@���X���r������4���P���m��������8���W���w����)���K���m��( ��� X S p o t i f y : s p o t i f y : t r a c k : 1 U m F R Z U 3 t a M G Z A p P h K 3 2 m c) ���  A g n e s   O b e l* ���  R i v e r s i d e+ ��� . R i v e r s i d e   b y   A g n e s   O b e l
�� boovtrue�� , ��� $ P R O F I L E   M O O D _ T E X T  - ���  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ