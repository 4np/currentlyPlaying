FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ) # iTunes / Spotify track information     � 	 	 F   i T u n e s   /   S p o t i f y   t r a c k   i n f o r m a t i o n   
  
 l     ��  ��    7 1 Copyright � 2012 Jeroen Wesbeek <work AT osx.eu>     �   b   C o p y r i g h t   �   2 0 1 2   J e r o e n   W e s b e e k   < w o r k   A T   o s x . e u >      l     ��������  ��  ��        l     ��  ��      on run this script     �   &   o n   r u n   t h i s   s c r i p t      l     ��  ��    &   1. returns the current track(s)     �   @   1 .   r e t u r n s   t h e   c u r r e n t   t r a c k ( s )      l     ��  ��    1 + 2. writes the album artwork of the current     �   V   2 .   w r i t e s   t h e   a l b u m   a r t w o r k   o f   t h e   c u r r e n t     !   l     �� " #��   " 3 -    track(s). Note that iTunes artwork always    # � $ $ Z         t r a c k ( s ) .   N o t e   t h a t   i T u n e s   a r t w o r k   a l w a y s !  % & % l     �� ' (��   ' . (    overrules other playing applications    ( � ) ) P         o v e r r u l e s   o t h e r   p l a y i n g   a p p l i c a t i o n s &  * + * l     �� , -��   ,       - � . .    +  / 0 / l     �� 1 2��   1 : 4 For efficiency, checks are performed if the artwork    2 � 3 3 h   F o r   e f f i c i e n c y ,   c h e c k s   a r e   p e r f o r m e d   i f   t h e   a r t w o r k 0  4 5 4 l     �� 6 7��   6 8 2 has changed. It writes a 1x1 transparent pixel is    7 � 8 8 d   h a s   c h a n g e d .   I t   w r i t e s   a   1 x 1   t r a n s p a r e n t   p i x e l   i s 5  9 : 9 l     �� ; <��   ; ; 5 there is no artwork, or if no songs are being played    < � = = j   t h e r e   i s   n o   a r t w o r k ,   o r   i f   n o   s o n g s   a r e   b e i n g   p l a y e d :  > ? > l     �� @ A��   @ #  or if the players are paused    A � B B :   o r   i f   t h e   p l a y e r s   a r e   p a u s e d ?  C D C l     ��������  ��  ��   D  E F E l     ��������  ��  ��   F  G H G l     �� I J��   I G A  Licensed under the Apache License, Version 2.0 (the "License");    J � K K �     L i c e n s e d   u n d e r   t h e   A p a c h e   L i c e n s e ,   V e r s i o n   2 . 0   ( t h e   " L i c e n s e " ) ; H  L M L l     �� N O��   N H B  you may not use this file except in compliance with the License.    O � P P �     y o u   m a y   n o t   u s e   t h i s   f i l e   e x c e p t   i n   c o m p l i a n c e   w i t h   t h e   L i c e n s e . M  Q R Q l     �� S T��   S / )  You may obtain a copy of the License at    T � U U R     Y o u   m a y   o b t a i n   a   c o p y   o f   t h e   L i c e n s e   a t R  V W V l     ��������  ��  ��   W  X Y X l     �� Z [��   Z 2 ,  http://www.apache.org/licenses/LICENSE-2.0    [ � \ \ X     h t t p : / / w w w . a p a c h e . o r g / l i c e n s e s / L I C E N S E - 2 . 0 Y  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     �� a b��   a K E  Unless required by applicable law or agreed to in writing, software    b � c c �     U n l e s s   r e q u i r e d   b y   a p p l i c a b l e   l a w   o r   a g r e e d   t o   i n   w r i t i n g ,   s o f t w a r e `  d e d l     �� f g��   f I C  distributed under the License is distributed on an "AS IS" BASIS,    g � h h �     d i s t r i b u t e d   u n d e r   t h e   L i c e n s e   i s   d i s t r i b u t e d   o n   a n   " A S   I S "   B A S I S , e  i j i l     �� k l��   k P J  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    l � m m �     W I T H O U T   W A R R A N T I E S   O R   C O N D I T I O N S   O F   A N Y   K I N D ,   e i t h e r   e x p r e s s   o r   i m p l i e d . j  n o n l     �� p q��   p K E  See the License for the specific language governing permissions and    q � r r �     S e e   t h e   L i c e n s e   f o r   t h e   s p e c i f i c   l a n g u a g e   g o v e r n i n g   p e r m i s s i o n s   a n d o  s t s l     �� u v��   u &    limitations under the License.    v � w w @     l i m i t a t i o n s   u n d e r   t h e   L i c e n s e . t  x y x l     ��������  ��  ��   y  z�� z i      { | { I     �� }��
�� .aevtoappnull  �   � **** } o      ���� 0 argv  ��   | k     ~ ~   �  r      � � � J      � �  � � � m      � � � � �  S p o t i f y �  ��� � m     � � � � �  i T u n e s��   � o      ���� &0 musicapplications musicApplications �  � � � r    
 � � � m     � � � � � " / t m p / a l b u m A r t . t x t � o      ���� 0 tempfile tempFile �  � � � r     � � � m     � � � � � V G I F 8 9 a       �     �� �       !�           ,                   D    ; � o      ���� 
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
prcs��  ��    o      ���� 0 mylist myList � m   q t�                                                                                  sevs  alis    �  Macintosh HD               �W�H+   ^�System Events.app                                               �Y˙�k        ����  	                CoreServices    �W��      ˙�K     ^� ^�   g  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  l  � ���������  ��  ��    l  � ���	
��  	   set debug var   
 �    s e t   d e b u g   v a r  r   � � b   � � m   � � �  l a s t T r a c k :   o   � ����� 0 	lasttrack 	lastTrack o      ���� 	0 debug    l  � ���������  ��  ��    l  � �����   * $ iterate through music applications	    � H   i t e r a t e   t h r o u g h   m u s i c   a p p l i c a t i o n s 	  X   �	�� k   �  !  l  � ���"#��  " #  is this application running?   # �$$ :   i s   t h i s   a p p l i c a t i o n   r u n n i n g ?! %��% Z   �&'����& E   � �()( o   � ����� 0 mylist myList) o   � ����� 0 musicapp musicApp' k   � ** +,+ l  � ���-.��  -   append debug value   . �// &   a p p e n d   d e b u g   v a l u e, 010 r   � �232 b   � �454 b   � �676 o   � ����� 	0 debug  7 m   � �88 �99  
5 o   � ����� 0 musicapp musicApp3 o      ���� 	0 debug  1 :;: l  � ��������  ��  �  ; <=< l  � ��~>?�~  > , & dynamically address music application   ? �@@ L   d y n a m i c a l l y   a d d r e s s   m u s i c   a p p l i c a t i o n= A�}A w   � BCB O   � DED k   ��FF GHG r   � �IJI b   � �KLK b   � �MNM o   � ��|�| 	0 debug  N m   � �OO �PP  :L 1   � ��{
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
pPCT� o  JM�L�L 0 frontartwork frontArtwork�O  �N  � o      �K�K 0 albumartwork albumArtwork�P  ��                                                                                  hook  alis    N  Macintosh HD               �W�H+     d
iTunes.app                                                        �ˮF4        ����  	                Applications    �W��      ˮ*       d  %Macintosh HD:Applications: iTunes.app    
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  � ��� = X_��� c  X[��� o  XY�J�J 0 musicapp musicApp� m  YZ�I
�I 
TEXT� m  [^�� ���  S p o t i f y� ��H� w  bs��� r  fs��� l fo��G�F� n  fo��� 1  ko�E
�E 
tAwk� 1  fk�D
�D 
pTrk�G  �F  � o      �C�C 0 albumartwork albumArtwork��                                                                                  spty  alis    �  Macintosh HD               �W�H+   �$�Spotify.app                                                     ���͔K�        ����  	                Applications    �W��      ͔/u     �$� ��   h  =Macintosh HD:Users: jeroen.wesbeek: Applications: Spotify.app     S p o t i f y . a p p    M a c i n t o s h   H D  -Users/jeroen.wesbeek/Applications/Spotify.app   /    ��  �H  �]  � ��� l xx�B�A�@�B  �A  �@  � ��� r  x���� n  x���� 1  }��?
�? 
pArt� 1  x}�>
�> 
pTrk� o      �=�= 0 who  � ��� r  ����� n  ����� 1  ���<
�< 
pnam� 1  ���;
�; 
pTrk� o      �:�: 0 what  � ��� l ���9�8�7�9  �8  �7  � ��� Z  �����6�� = ����� c  ����� o  ���5�5 0 who  � m  ���4
�4 
TEXT� m  ���� ���  m i s s i n g   v a l u e� r  ����� o  ���3�3 0 what  � o      �2�2 	0 title  �6  � r  ����� c  ����� b  ����� b  ����� o  ���1�1 0 what  � m  ���� ���    b y  � o  ���0�0 0 who  � m  ���/
�/ 
TEXT� o      �.�. 	0 title  � ��� l ���-�,�+�-  �,  �+  � ��� Z  �!����� = ����� o  ���*�* 0 info  � m  ���� ���  � k  ���� ��� r  ����� o  ���)�) 	0 title  � o      �(�( 0 info  � ��� r  ����� b  ����� b  ����� b  ����� o  ���'�' 0 info  � m  ���� ���    (� o  ���&�& 0 musicapp musicApp� m  ���� ���  )� o      �%�% 0 previousinfo previousInfo�  �$  r  �� m  ���#
�# boovtrue o      �"�" 0 
firsttrack 
firstTrack�$  �  = �� o  ���!�! 0 
firsttrack 
firstTrack m  ��� 
�  boovtrue � k  � 	
	 r  �� b  �� b  �� b  �� b  �� b  �� o  ���� 0 previousinfo previousInfo m  �� �  
 o  ���� 	0 title   m  �� �    ( o  ���� 0 musicapp musicApp m  �� �  ) o      �� 0 info  
 � r  � m  ���
� boovfals o      �� 0 
firsttrack 
firstTrack�  �  � k  !   !"! r  #$# b  %&% b  '(' b  )*) b  +,+ b  -.- o  �� 0 info  . m  
// �00  
, o  �� 	0 title  * m  11 �22    (( o  �� 0 musicapp musicApp& m  33 �44  )$ o      �� 0 info  " 5�5 r  !676 m  �
� boovfals7 o      �� 0 
firsttrack 
firstTrack�  � 898 l ""����  �  �  9 :;: l ""�<=�  < %  check if the track has changed   = �>> >   c h e c k   i f   t h e   t r a c k   h a s   c h a n g e d; ?�? Z  "�@A�B@ l ")C�
�	C > ")DED o  "%�� 0 currenttrack currentTrackE o  %(�� 0 	lasttrack 	lastTrack�
  �	  A k  ,�FF GHG r  ,7IJI b  ,3KLK o  ,/�� 	0 debug  L m  /2MM �NN  : w r i t e   a r t w o r kJ o      �� 	0 debug  H OPO l 88����  �  �  P QRQ l 88�ST�  S   write artwork to file   T �UU ,   w r i t e   a r t w o r k   t o   f i l eR VWV r  8GXYX l 8CZ� ��Z I 8C��[\
�� .rdwropenshor       file[ o  8;���� 0 artworkfile artworkFile\ ��]��
�� 
perm] m  >?��
�� boovtrue��  �   ��  Y o      ���� 0 fileref fileRefW ^_^ Q  Hy`ab` k  Kdcc ded I KV��fg
�� .rdwrseofnull���     ****f o  KN���� 0 fileref fileRefg ��h��
�� 
set2h m  QR����  ��  e i��i I Wd��jk
�� .rdwrwritnull���     ****j o  WZ���� 0 albumartwork albumArtworkk ��l��
�� 
refnl o  ]`���� 0 fileref fileRef��  ��  a R      ��m��
�� .ascrerr ****      � ****m o      ���� 0 errormessage errorMessage��  b r  lynon b  lupqp b  lsrsr o  lo���� 	0 debug  s m  ortt �uu  : e r r o r =q o  st���� 0 errormessage errorMessageo o      ���� 	0 debug  _ vwv I z���x��
�� .rdwrclosnull���     ****x o  z}���� 0 fileref fileRef��  w yzy l ����������  ��  ��  z {|{ l ����}~��  }   remember current track   ~ � .   r e m e m b e r   c u r r e n t   t r a c k| ��� r  ����� l �������� I ������
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
�� boovtrue� o      ���� 0 clearartwork clearArtwork��  ��  �  B k  ���� ��� r  ����� b  ����� o  ������ 	0 debug  � m  ���� ��� $ : u n c h a n g e d   a r t w o r k� o      ���� 	0 debug  � ���� r  ����� m  ����
�� boovfals� o      ���� 0 clearartwork clearArtwork��  �  �t  �s  �u  E 4   � ����
�� 
capp� o   � ����� 0 musicapp musicAppC�                                                                                  hook  alis    N  Macintosh HD               �W�H+     d
iTunes.app                                                        �ˮF4        ����  	                Applications    �W��      ˮ*       d  %Macintosh HD:Applications: iTunes.app    
 i T u n e s . a p p    M a c i n t o s h   H D  Applications/iTunes.app   / ��  �}  ��  ��  ��  �� 0 musicapp musicApp o   � ����� &0 musicapplications musicApplications ��� l 

��������  ��  ��  � ��� l 

������  �   clear artwork?   � ���    c l e a r   a r t w o r k ?� ��� Z  
�������� F  
��� = 
��� o  
���� 0 clearartwork clearArtwork� m  ��
�� boovtrue� > ��� o  ���� 0 	lasttrack 	lastTrack� m  �� ���  : : c l e a r e d : :� k  ��� ��� l ������  � - ' write 1x1 transparent pixel as artwork   � ��� N   w r i t e   1 x 1   t r a n s p a r e n t   p i x e l   a s   a r t w o r k� ��� r  -��� l )������ I )����
�� .rdwropenshor       file� o  !���� 0 artworkfile artworkFile� �����
�� 
perm� m  $%��
�� boovtrue��  ��  ��  � o      ���� 0 fileref fileRef� ��� Q  .k���� k  1T�� ��� I 1<����
�� .rdwrseofnull���     ****� o  14���� 0 fileref fileRef� �����
�� 
set2� m  78����  ��  � ��� I =H����
�� .rdwrwritnull���     ****� o  =>���� 
0 spacer  � �����
�� 
refn� o  AD���� 0 fileref fileRef��  � ���� r  IT��� b  IP��� o  IL���� 	0 debug  � m  LO�� ��� j 
 c l e a r e d   a r t w o r k   b y   w r o t i n g   a n   e m p t y   p i x e l   a s   a r t w o r k� o      ���� 	0 debug  ��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 errormsg errorMsg��  � I \k�����
�� .sysoexecTEXT���     TEXT� b  \g   m  \_ �  r m   n  _f 1  bf��
�� 
psxp o  _b���� 0 artworkfile artworkFile��  �  I ls����
�� .rdwrclosnull���     **** o  lo���� 0 fileref fileRef��   	
	 l tt��������  ��  ��  
  l tt����   , & and remember that we already did this    � L   a n d   r e m e m b e r   t h a t   w e   a l r e a d y   d i d   t h i s  r  t� l t}���� I t}�
� .rdwropenshor       file o  tu�~�~ 0 tempfile tempFile �}�|
�} 
perm m  xy�{
�{ boovtrue�|  ��  ��   o      �z�z 0 fileref fileRef  Q  �� k  ��  I ���y !
�y .rdwrseofnull���     ****  o  ���x�x 0 fileref fileRef! �w"�v
�w 
set2" m  ���u�u  �v   #�t# I ���s$%
�s .rdwrwritnull���     ****$ m  ��&& �''  : : c l e a r e d : :% �r(�q
�r 
refn( o  ���p�p 0 fileref fileRef�q  �t   R      �o)�n
�o .ascrerr ****      � ****) o      �m�m 0 errormessage errorMessage�n   r  ��*+* b  ��,-, b  ��./. o  ���l�l 	0 debug  / m  ��00 �11  : e r r o r =- o  ���k�k 0 errormessage errorMessage+ o      �j�j 	0 debug   232 I ���i4�h
�i .rdwrclosnull���     ****4 o  ���g�g 0 fileref fileRef�h  3 5�f5 l ���e�d�c�e  �d  �c  �f  ��  ��  � 676 l ���b�a�`�b  �a  �`  7 898 l ���_:;�_  :   uncomment to debug   ; �<< &   u n c o m m e n t   t o   d e b u g9 =>= l ���^?@�^  ?  return debug   @ �AA  r e t u r n   d e b u g> BCB l ���]�\�[�]  �\  �[  C DED l ���ZFG�Z  F   is Skype running?   G �HH $   i s   S k y p e   r u n n i n g ?E IJI Z  �KL�Y�XK E  ��MNM o  ���W�W 0 mylist myListN m  ��OO �PP 
 S k y p eL O  �
QRQ Z  �	ST�VUS A ��VWV n  ��XYX 1  ���U
�U 
lengY o  ���T�T 0 info  W m  ���S�S T I ���R�QZ
�R .sendskypnull��� ��� null�Q  Z �P[\
�P 
cmnd[ m  ��]] �^^ , S E T   P R O F I L E   M O O D _ T E X T  \ �O_�N
�O 
scrp_ m  ��`` �aa " c u r r e n t l y   p l a y i n g�N  �V  U I �	�M�Lb
�M .sendskypnull��� ��� null�L  b �Kcd
�K 
cmndc b  ��efe m  ��gg �hh 0 S E T   P R O F I L E   M O O D _ T E X T  &l  f o  ���J�J 0 info  d �Ii�H
�I 
scrpi m   jj �kk " c u r r e n t l y   p l a y i n g�H  R m  ��ll�                                                                                  SKYP  alis    H  Macintosh HD               �W�H+     d	Skype.app                                                       ��83"        ����  	                Applications    �W��      �8%       d  $Macintosh HD:Applications: Skype.app   	 S k y p e . a p p    M a c i n t o s h   H D  Applications/Skype.app  / ��  �Y  �X  J mnm l �G�F�E�G  �F  �E  n opo l �Dqr�D  q - ' return 'currently playing' information   r �ss N   r e t u r n   ' c u r r e n t l y   p l a y i n g '   i n f o r m a t i o np t�Ct L  uu o  �B�B 0 info  �C  ��       �Avw�A  v �@
�@ .aevtoappnull  �   � ****w �? |�>�=xy�<
�? .aevtoappnull  �   � ****�> 0 argv  �=  x �;�:�9�8�; 0 argv  �: 0 musicapp musicApp�9 0 errormessage errorMessage�8 0 errormsg errorMsgy l � ��7 ��6 ��5 ��4 ��3 ��2�1�0�/�.�-�,�+�*�)�( ��'�&�% ��$�#�"�!� �8C�O����m���~��������������������/13M��
�	�����t��������� &0Ol������]��`��gj�7 &0 musicapplications musicApplications�6 0 tempfile tempFile�5 
0 spacer  �4 0 info  �3 0 previousapp previousApp�2 0 previousinfo previousInfo�1 0 clearartwork clearArtwork
�0 
cobj
�/ 
TEXT
�. 
psxf�- 0 artworkfile artworkFile�,  �+  
�* afdrcusr
�) .earsffdralis        afdr
�( 
ctxt
�' 
file
�& .rdwrread****        ****�% 0 	lasttrack 	lastTrack
�$ 
prcs
�# 
pnam�" 0 mylist myList�! 	0 debug  
�  
kocl
� .corecnte****       ****
� 
capp
� 
pPlS
� ePlSkPSP
� 
null� 0 albumartwork albumArtwork
� 
pTrk
� 
ID  � 0 currenttrack currentTrack
� 
cArt
� .coredoexbool        obj 
� 
bool� 0 frontartwork frontArtwork
� 
pPCT
� 
tAwk
� 
pArt� 0 who  � 0 what  � 	0 title  � 0 
firsttrack 
firstTrack
� 
perm
�
 .rdwropenshor       file�	 0 fileref fileRef
� 
set2
� .rdwrseofnull���     ****
� 
refn
� .rdwrwritnull���     ****� 0 errormessage errorMessage
� .rdwrclosnull���     ****� 0 errormsg errorMsg
� 
psxp
�  .sysoexecTEXT���     TEXT
�� 
leng�� 
�� 
cmnd
�� 
scrp
�� .sendskypnull��� ��� null�<��lvE�O�E�O�E�O�E�O�E�O�E�OeE�O ��k/�&a &�&E` W X  a j a &a %�&E` O *a �/j E` W X  a E` Oa  *a -a ,E` UOa  _ %E` !Ov�[a "�l #kh _ �Y_ !a $%�%E` !Oa %Z*a &�/:_ !a '%*a (,%E` !O*a (,a ) a *E` +O��&a ,%*a -,a .,�&%E` /O_ !a 0%_ /%a 1%E` !O��&a 2 	 *a -,a 3-j 4a 5& #a %Z*a -,a 3k/E` 6O_ 6a 7,E` +Y !��&a 8  a 9Z*a -,a :,E` +Y hO*a -,a ;,E` <O*a -,a ,E` =O_ <�&a >  _ =E` ?Y _ =a @%_ <%�&E` ?O�a A  _ ?E�O�a B%�%a C%E�OeE` DY C_ De   �a E%_ ?%a F%�%a G%E�OfE` DY �a H%_ ?%a I%�%a J%E�OfE` DO_ /_  �_ !a K%E` !O_ a Lel ME` NO _ Na Ojl PO_ +a Q_ Nl RW X S _ !a T%�%E` !O_ Nj UO�a Lel ME` NO _ Na Ojl PO_ /a Q_ Nl RW X S _ !a V%�%E` !O_ Nj UO_ +a * fE�Y _ !a W%E` !OeE�Y _ !a X%E` !OfE�Y hUY h[OY��O�e 	 _ a Ya 5& �_ a Lel ME` NO (_ Na Ojl PO�a Q_ Nl RO_ !a Z%E` !W X [ a \_ a ],%j ^O_ Nj UO�a Lel ME` NO _ Na Ojl POa _a Q_ Nl RW X S _ !a `%�%E` !O_ Nj UOPY hO_ a a Ca b 9�a c,a d *a ea fa ga ha d iY *a ea j�%a ga ka d iUY hO�ascr  ��ޭ