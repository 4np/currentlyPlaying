FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ) # iTunes / Spotify track information     � 	 	 F   i T u n e s   /   S p o t i f y   t r a c k   i n f o r m a t i o n   
  
 l     ��  ��    7 1 Copyright � 2012 Jeroen Wesbeek <work AT osx.eu>     �   b   C o p y r i g h t   �   2 0 1 2   J e r o e n   W e s b e e k   < w o r k   A T   o s x . e u >      l     ��������  ��  ��        l     ��  ��      on run this script     �   &   o n   r u n   t h i s   s c r i p t      l     ��  ��    &   1. returns the current track(s)     �   @   1 .   r e t u r n s   t h e   c u r r e n t   t r a c k ( s )      l     ��  ��    1 + 2. writes the album artwork of the current     �   V   2 .   w r i t e s   t h e   a l b u m   a r t w o r k   o f   t h e   c u r r e n t     !   l     �� " #��   " 3 -    track(s). Note that iTunes artwork always    # � $ $ Z         t r a c k ( s ) .   N o t e   t h a t   i T u n e s   a r t w o r k   a l w a y s !  % & % l     �� ' (��   ' . (    overrules other playing applications    ( � ) ) P         o v e r r u l e s   o t h e r   p l a y i n g   a p p l i c a t i o n s &  * + * l     �� , -��   ,       - � . .    +  / 0 / l     �� 1 2��   1 : 4 For efficiency, checks are performed if the artwork    2 � 3 3 h   F o r   e f f i c i e n c y ,   c h e c k s   a r e   p e r f o r m e d   i f   t h e   a r t w o r k 0  4 5 4 l     �� 6 7��   6 8 2 has changed. It writes a 1x1 transparent pixel is    7 � 8 8 d   h a s   c h a n g e d .   I t   w r i t e s   a   1 x 1   t r a n s p a r e n t   p i x e l   i s 5  9 : 9 l     �� ; <��   ; ; 5 there is no artwork, or if no songs are being played    < � = = j   t h e r e   i s   n o   a r t w o r k ,   o r   i f   n o   s o n g s   a r e   b e i n g   p l a y e d :  > ? > l     �� @ A��   @ #  or if the players are paused    A � B B :   o r   i f   t h e   p l a y e r s   a r e   p a u s e d ?  C D C l     ��������  ��  ��   D  E F E l     ��������  ��  ��   F  G H G l     �� I J��   I G A  Licensed under the Apache License, Version 2.0 (the "License");    J � K K �     L i c e n s e d   u n d e r   t h e   A p a c h e   L i c e n s e ,   V e r s i o n   2 . 0   ( t h e   " L i c e n s e " ) ; H  L M L l     �� N O��   N H B  you may not use this file except in compliance with the License.    O � P P �     y o u   m a y   n o t   u s e   t h i s   f i l e   e x c e p t   i n   c o m p l i a n c e   w i t h   t h e   L i c e n s e . M  Q R Q l     �� S T��   S / )  You may obtain a copy of the License at    T � U U R     Y o u   m a y   o b t a i n   a   c o p y   o f   t h e   L i c e n s e   a t R  V W V l     ��������  ��  ��   W  X Y X l     �� Z [��   Z 2 ,  http://www.apache.org/licenses/LICENSE-2.0    [ � \ \ X     h t t p : / / w w w . a p a c h e . o r g / l i c e n s e s / L I C E N S E - 2 . 0 Y  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     �� a b��   a K E  Unless required by applicable law or agreed to in writing, software    b � c c �     U n l e s s   r e q u i r e d   b y   a p p l i c a b l e   l a w   o r   a g r e e d   t o   i n   w r i t i n g ,   s o f t w a r e `  d e d l     �� f g��   f I C  distributed under the License is distributed on an "AS IS" BASIS,    g � h h �     d i s t r i b u t e d   u n d e r   t h e   L i c e n s e   i s   d i s t r i b u t e d   o n   a n   " A S   I S "   B A S I S , e  i j i l     �� k l��   k P J  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    l � m m �     W I T H O U T   W A R R A N T I E S   O R   C O N D I T I O N S   O F   A N Y   K I N D ,   e i t h e r   e x p r e s s   o r   i m p l i e d . j  n o n l     �� p q��   p K E  See the License for the specific language governing permissions and    q � r r �     S e e   t h e   L i c e n s e   f o r   t h e   s p e c i f i c   l a n g u a g e   g o v e r n i n g   p e r m i s s i o n s   a n d o  s t s l     �� u v��   u &    limitations under the License.    v � w w @     l i m i t a t i o n s   u n d e r   t h e   L i c e n s e . t  x y x l     ��������  ��  ��   y  z�� z i      { | { I     �� }��
�� .aevtoappnull  �   � **** } o      ���� 0 argv  ��   | k    � ~ ~   �  r      � � � J      � �  � � � m      � � � � �  S p o t i f y �  ��� � m     � � � � �  i T u n e s��   � o      ���� &0 musicapplications musicApplications �  � � � r    
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
�� .ascrerr ****      � ****��  ��   � r   i p � � � m   i l � � � � �   � o      ���� 0 	lasttrack 	lastTrack �  � � � l  q q��������  ��  ��   �  � � � l  q q�� � ���   �   get all processes    � � � � $   g e t   a l l   p r o c e s s e s �  � � � O   q � � � � r   w � �  � l  w ����� n   w � 1   | ���
�� 
pnam 2   w |��
�� 
prcs��  ��    o      ���� 0 mylist myList � m   q t�                                                                                  sevs  alis    �  Macintosh HD               ���`H+   ��`System Events.app                                               ��� lb        ����  	                CoreServices    ���P      � PB     ��` ��S ��R  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  l  � ���������  ��  ��    l  � ���	
��  	   set debug var   
 �    s e t   d e b u g   v a r  r   � � b   � � m   � � �  l a s t T r a c k :   o   � ����� 0 	lasttrack 	lastTrack o      ���� 	0 debug    l  � ���������  ��  ��    l  � �����   * $ iterate through music applications	    � H   i t e r a t e   t h r o u g h   m u s i c   a p p l i c a t i o n s 	  X   ���� k   ��  !  l  � ���"#��  " #  is this application running?   # �$$ :   i s   t h i s   a p p l i c a t i o n   r u n n i n g ?! %��% Z   ��&'����& E   � �()( o   � ����� 0 mylist myList) o   � ����� 0 musicapp musicApp' k   ��** +,+ l  � ���-.��  -   append debug value   . �// &   a p p e n d   d e b u g   v a l u e, 010 r   � �232 b   � �454 b   � �676 o   � ����� 	0 debug  7 m   � �88 �99  
5 o   � ����� 0 musicapp musicApp3 o      ���� 	0 debug  1 :;: l  � ��������  ��  �  ; <=< l  � ��~>?�~  > , & dynamically address music application   ? �@@ L   d y n a m i c a l l y   a d d r e s s   m u s i c   a p p l i c a t i o n= A�}A w   ��BCB O   ��DED k   ��FF GHG r   � �IJI b   � �KLK b   � �MNM o   � ��|�| 	0 debug  N m   � �OO �PP  :L 1   � ��{
�{ 
pPlSJ o      �z�z 	0 debug  H QRQ l  � ��y�x�w�y  �x  �w  R STS l  � ��vUV�v  U , & check if music application is playing   V �WW L   c h e c k   i f   m u s i c   a p p l i c a t i o n   i s   p l a y i n gT X�uX Z   ��YZ�t�sY =  � �[\[ 1   � ��r
�r 
pPlS\ m   � ��q
�q ePlSkPSPZ k   ��]] ^_^ r   � �`a` m   � ��p
�p 
nulla o      �o�o 0 albumartwork albumArtwork_ bcb r   �ded b   � fgf b   � �hih l  � �j�n�mj c   � �klk o   � ��l�l 0 musicapp musicAppl m   � ��k
�k 
TEXT�n  �m  i m   � �mm �nn  :g l  � �o�j�io c   � �pqp n   � �rsr 1   � ��h
�h 
ID  s 1   � ��g
�g 
pTrkq m   � ��f
�f 
TEXT�j  �i  e o      �e�e 0 currenttrack currentTrackc tut r  vwv b  xyx b  z{z b  |}| o  �d�d 	0 debug  } m  ~~ �  ({ o  �c�c 0 currenttrack currentTracky m  �� ���  )w o      �b�b 	0 debug  u ��� l �a�`�_�a  �`  �_  � ��� l �^���^  � 4 . application specific logic to fetch album art   � ��� \   a p p l i c a t i o n   s p e c i f i c   l o g i c   t o   f e t c h   a l b u m   a r t� ��� Z  w����]� F  4��� =  ��� c  ��� o  �\�\ 0 musicapp musicApp� m  �[
�[ 
TEXT� m  �� ���  i T u n e s� l #0��Z�Y� I #0�X��W
�X .coredoexbool        obj � n  #,��� 2 (,�V
�V 
cArt� 1  #(�U
�U 
pTrk�W  �Z  �Y  � w  7U��� k  ;U�� ��� r  ;I��� n  ;E��� 4 @E�T�
�T 
cArt� m  CD�S�S � 1  ;@�R
�R 
pTrk� o      �Q�Q 0 frontartwork frontArtwork� ��P� r  JU��� l JQ��O�N� n  JQ��� 1  MQ�M
�M 
pPCT� o  JM�L�L 0 frontartwork frontArtwork�O  �N  � o      �K�K 0 albumartwork albumArtwork�P  ��                                                                                  hook  alis    N  Macintosh HD               ���`H+   ��
iTunes.app                                                      ����        ����  	                Applications    ���P      �k�     ��  %Macintosh HD:Applications: iTunes.app    
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  � ��� = X_��� c  X[��� o  XY�J�J 0 musicapp musicApp� m  YZ�I
�I 
TEXT� m  [^�� ���  S p o t i f y� ��H� w  bs��� r  fs��� l fo��G�F� n  fo��� 1  ko�E
�E 
tAwk� 1  fk�D
�D 
pTrk�G  �F  � o      �C�C 0 albumartwork albumArtwork��                                                                                  spty  alis    P  Macintosh HD               ���`H+   ��Spotify.app                                                    d~��OV�        ����  	                Applications    ���P      �OH�     ��  &Macintosh HD:Applications: Spotify.app    S p o t i f y . a p p    M a c i n t o s h   H D  Applications/Spotify.app  / ��  �H  �]  � ��� l xx�B�A�@�B  �A  �@  � ��� r  x���� n  x���� 1  }��?
�? 
pArt� 1  x}�>
�> 
pTrk� o      �=�= 0 who  � ��� r  ����� n  ����� 1  ���<
�< 
pnam� 1  ���;
�; 
pTrk� o      �:�: 0 what  � ��� Z  ������ = ����� o  ���9�9 0 info  � m  ���� ���  � k  ���� ��� r  ����� b  ����� b  ����� o  ���8�8 0 what  � m  ���� ���    b y  � o  ���7�7 0 who  � o      �6�6 0 info  � ��� r  ����� b  ����� b  ����� b  ����� o  ���5�5 0 info  � m  ���� ���    (� o  ���4�4 0 musicapp musicApp� m  ���� ���  )� o      �3�3 0 previousinfo previousInfo� ��2� r  ����� m  ���1
�1 boovtrue� o      �0�0 0 
firsttrack 
firstTrack�2  � ��� = ����� o  ���/�/ 0 
firsttrack 
firstTrack� m  ���.
�. boovtrue� ��-� k  ���� ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ��   b  �� b  �� o  ���,�, 0 previousinfo previousInfo m  �� �  
 o  ���+�+ 0 what   m  �� �		    b y  � o  ���*�* 0 who  � m  ��

 �    (� o  ���)�) 0 musicapp musicApp� m  �� �  )� o      �(�( 0 info  � �' r  �� m  ���&
�& boovfals o      �%�% 0 
firsttrack 
firstTrack�'  �-  � k  �  r  � b  �	 b  � b  � b  �� b  �� b  �� !  b  ��"#" o  ���$�$ 0 info  # m  ��$$ �%%  
! o  ���#�# 0 what   m  ��&& �''    b y   o  ���"�" 0 who   m  �(( �))    ( o  �!�! 0 musicapp musicApp m  ** �++  ) o      � �  0 info   ,�, r  -.- m  �
� boovfals. o      �� 0 
firsttrack 
firstTrack�  � /0/ l ����  �  �  0 121 l �34�  3 %  check if the track has changed   4 �55 >   c h e c k   i f   t h e   t r a c k   h a s   c h a n g e d2 6�6 Z  �78�97 l :��: > ;<; o  �� 0 currenttrack currentTrack< o  �� 0 	lasttrack 	lastTrack�  �  8 k  �== >?> r  '@A@ b  #BCB o  �� 	0 debug  C m  "DD �EE  : w r i t e   a r t w o r kA o      �� 	0 debug  ? FGF l ((����  �  �  G HIH l ((�JK�  J   write artwork to file   K �LL ,   w r i t e   a r t w o r k   t o   f i l eI MNM r  (7OPO l (3Q��Q I (3�
RS
�
 .rdwropenshor       fileR o  (+�	�	 0 artworkfile artworkFileS �T�
� 
permT m  ./�
� boovtrue�  �  �  P o      �� 0 fileref fileRefN UVU Q  8iWXYW k  ;TZZ [\[ I ;F�]^
� .rdwrseofnull���     ****] o  ;>�� 0 fileref fileRef^ �_�
� 
set2_ m  AB� �   �  \ `��` I GT��ab
�� .rdwrwritnull���     ****a o  GJ���� 0 albumartwork albumArtworkb ��c��
�� 
refnc o  MP���� 0 fileref fileRef��  ��  X R      ��d��
�� .ascrerr ****      � ****d o      ���� 0 errormessage errorMessage��  Y r  \iefe b  \eghg b  \ciji o  \_���� 	0 debug  j m  _bkk �ll  : e r r o r =h o  cd���� 0 errormessage errorMessagef o      ���� 	0 debug  V mnm I jq��o��
�� .rdwrclosnull���     ****o o  jm���� 0 fileref fileRef��  n pqp l rr��������  ��  ��  q rsr l rr��tu��  t   remember current track   u �vv .   r e m e m b e r   c u r r e n t   t r a c ks wxw r  ryzy l r{{����{ I r{��|}
�� .rdwropenshor       file| o  rs���� 0 tempfile tempFile} ��~��
�� 
perm~ m  vw��
�� boovtrue��  ��  ��  z o      ���� 0 fileref fileRefx � Q  ������ k  ���� ��� I ������
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
�� boovtrue� o      ���� 0 clearartwork clearArtwork��  ��  �  9 k  ���� ��� r  ����� b  ����� o  ������ 	0 debug  � m  ���� ��� $ : u n c h a n g e d   a r t w o r k� o      ���� 	0 debug  � ���� r  ����� m  ����
�� boovfals� o      ���� 0 clearartwork clearArtwork��  �  �t  �s  �u  E 4   � ����
�� 
capp� o   � ����� 0 musicapp musicAppC�                                                                                  hook  alis    N  Macintosh HD               ���`H+   ��
iTunes.app                                                      ����        ����  	                Applications    ���P      �k�     ��  %Macintosh HD:Applications: iTunes.app    
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  �}  ��  ��  ��  �� 0 musicapp musicApp o   � ����� &0 musicapplications musicApplications ��� l ����������  ��  ��  � ��� l ��������  �   clear artwork?   � ���    c l e a r   a r t w o r k ?� ��� Z  ��������� F  ���� = ����� o  ������ 0 clearartwork clearArtwork� m  ����
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
refn� o  14���� 0 fileref fileRef��  � ���� r  9D��� b  9@��� o  9<���� 	0 debug  � m  <?�� ��� j 
 c l e a r e d   a r t w o r k   b y   w r o t i n g   a n   e m p t y   p i x e l   a s   a r t w o r k� o      ���� 	0 debug  ��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 errormsg errorMsg��  � I L[�����
�� .sysoexecTEXT���     TEXT� b  LW��� m  LO�� ���  r m  � n  OV��� 1  RV��
�� 
psxp� o  OR���� 0 artworkfile artworkFile��  � ��� I \c�����
�� .rdwrclosnull���     ****� o  \_���� 0 fileref fileRef��  �    l dd��������  ��  ��    l dd����   , & and remember that we already did this    � L   a n d   r e m e m b e r   t h a t   w e   a l r e a d y   d i d   t h i s  r  dq	
	 l dm���� I dm��
�� .rdwropenshor       file o  de���� 0 tempfile tempFile ����
�� 
perm m  hi��
�� boovtrue��  ��  ��  
 o      ���� 0 fileref fileRef  Q  r� k  u�  I u���
�� .rdwrseofnull���     **** o  ux���� 0 fileref fileRef ����
�� 
set2 m  {|����  ��   �� I ���
� .rdwrwritnull���     **** m  �� �  : : c l e a r e d : : �~�}
�~ 
refn o  ���|�| 0 fileref fileRef�}  ��   R      �{ �z
�{ .ascrerr ****      � ****  o      �y�y 0 errormessage errorMessage�z   r  ��!"! b  ��#$# b  ��%&% o  ���x�x 	0 debug  & m  ��'' �((  : e r r o r =$ o  ���w�w 0 errormessage errorMessage" o      �v�v 	0 debug   )*) I ���u+�t
�u .rdwrclosnull���     ****+ o  ���s�s 0 fileref fileRef�t  * ,�r, l ���q�p�o�q  �p  �o  �r  ��  ��  � -.- l ���n�m�l�n  �m  �l  . /0/ l ���k12�k  1   uncomment to debug   2 �33 &   u n c o m m e n t   t o   d e b u g0 454 l ���j67�j  6  return debug   7 �88  r e t u r n   d e b u g5 9:9 l ���i�h�g�i  �h  �g  : ;<; l ���f=>�f  = - ' return 'currently playing' information   > �?? N   r e t u r n   ' c u r r e n t l y   p l a y i n g '   i n f o r m a t i o n< @�e@ L  ��AA o  ���d�d 0 info  �e  ��       �cBC�c  B �b
�b .aevtoappnull  �   � ****C �a |�`�_DE�^
�a .aevtoappnull  �   � ****�` 0 argv  �_  D �]�\�[�Z�] 0 argv  �\ 0 musicapp musicApp�[ 0 errormessage errorMessage�Z 0 errormsg errorMsgE a � ��Y ��X ��W ��V ��U ��T�S�R�Q�P�O�N�M�L�K�J ��I�H�G ��F�E�D�C�B�A8C�@O�?�>�=�<m�;�:�9~���8�7�6�5�4���3�2�1�0�����/
$&(*D�.�-�,�+�*�)�(�'k�&������%��$�#'�Y &0 musicapplications musicApplications�X 0 tempfile tempFile�W 
0 spacer  �V 0 info  �U 0 previousapp previousApp�T 0 previousinfo previousInfo�S 0 clearartwork clearArtwork
�R 
cobj
�Q 
TEXT
�P 
psxf�O 0 artworkfile artworkFile�N  �M  
�L afdrcusr
�K .earsffdralis        afdr
�J 
ctxt
�I 
file
�H .rdwrread****        ****�G 0 	lasttrack 	lastTrack
�F 
prcs
�E 
pnam�D 0 mylist myList�C 	0 debug  
�B 
kocl
�A .corecnte****       ****
�@ 
capp
�? 
pPlS
�> ePlSkPSP
�= 
null�< 0 albumartwork albumArtwork
�; 
pTrk
�: 
ID  �9 0 currenttrack currentTrack
�8 
cArt
�7 .coredoexbool        obj 
�6 
bool�5 0 frontartwork frontArtwork
�4 
pPCT
�3 
tAwk
�2 
pArt�1 0 who  �0 0 what  �/ 0 
firsttrack 
firstTrack
�. 
perm
�- .rdwropenshor       file�, 0 fileref fileRef
�+ 
set2
�* .rdwrseofnull���     ****
�) 
refn
�( .rdwrwritnull���     ****�' 0 errormessage errorMessage
�& .rdwrclosnull���     ****�% 0 errormsg errorMsg
�$ 
psxp
�# .sysoexecTEXT���     TEXT�^���lvE�O�E�O�E�O�E�O�E�O�E�OeE�O ��k/�&a &�&E` W X  a j a &a %�&E` O *a �/j E` W X  a E` Oa  *a -a ,E` UOa  _ %E` !Of�[a "�l #kh _ �I_ !a $%�%E` !Oa %Z*a &�/*_ !a '%*a (,%E` !O*a (,a ) a *E` +O��&a ,%*a -,a .,�&%E` /O_ !a 0%_ /%a 1%E` !O��&a 2 	 *a -,a 3-j 4a 5& #a %Z*a -,a 3k/E` 6O_ 6a 7,E` +Y !��&a 8  a 9Z*a -,a :,E` +Y hO*a -,a ;,E` <O*a -,a ,E` =O�a >  &_ =a ?%_ <%E�O�a @%�%a A%E�OeE` BY S_ Be  (�a C%_ =%a D%_ <%a E%�%a F%E�OfE` BY %�a G%_ =%a H%_ <%a I%�%a J%E�OfE` BO_ /_  �_ !a K%E` !O_ a Lel ME` NO _ Na Ojl PO_ +a Q_ Nl RW X S _ !a T%�%E` !O_ Nj UO�a Lel ME` NO _ Na Ojl PO_ /a Q_ Nl RW X S _ !a V%�%E` !O_ Nj UO_ +a * fE�Y _ !a W%E` !OeE�Y _ !a X%E` !OfE�Y hUY h[OY��O�e 	 _ a Ya 5& �_ a Lel ME` NO (_ Na Ojl PO�a Q_ Nl RO_ !a Z%E` !W X [ a \_ a ],%j ^O_ Nj UO�a Lel ME` NO _ Na Ojl POa _a Q_ Nl RW X S _ !a `%�%E` !O_ Nj UOPY hO�ascr  ��ޭ