FasdUAS 1.101.10   ��   ��    k             l     ��  ��      original script at:     � 	 	 (   o r i g i n a l   s c r i p t   a t :   
  
 l     ��  ��    Y S http://benguild.com/2012/04/11/how-to-import-tasks-to-do-items-into-ios-reminders/     �   �   h t t p : / / b e n g u i l d . c o m / 2 0 1 2 / 0 4 / 1 1 / h o w - t o - i m p o r t - t a s k s - t o - d o - i t e m s - i n t o - i o s - r e m i n d e r s /      l     ��  ��      more help from:     �       m o r e   h e l p   f r o m :      l     ��  ��    M G http://alvinalexander.com/blog/post/mac-os-x/applescript-list-examples     �   �   h t t p : / / a l v i n a l e x a n d e r . c o m / b l o g / p o s t / m a c - o s - x / a p p l e s c r i p t - l i s t - e x a m p l e s      l     ��������  ��  ��        l     ��  ��    / ) set the folder name where the lists live     �   R   s e t   t h e   f o l d e r   n a m e   w h e r e   t h e   l i s t s   l i v e     !   l     "���� " r      # $ # m      % % � & & V : U s e r s : p a t r i c k t u r n e r : D o c u m e n t s : T r a v e l : p a c k : $ o      ����  0 packfoldername packFolderName��  ��   !  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + 5 / OLD /Users/patrickturner/Documents/Travel/pack    , � - - ^   O L D   / U s e r s / p a t r i c k t u r n e r / D o c u m e n t s / T r a v e l / p a c k *  . / . l     �� 0 1��   0 2 , :Users:patrickturner:Documents:Travel:pack:    1 � 2 2 X   : U s e r s : p a t r i c k t u r n e r : D o c u m e n t s : T r a v e l : p a c k : /  3 4 3 l     �� 5 6��   5 X R  NEW /Users/patrickturner/Library/CloudStorage/iCloud Drive/Documents/Travel/pack    6 � 7 7 �     N E W   / U s e r s / p a t r i c k t u r n e r / L i b r a r y / C l o u d S t o r a g e / i C l o u d   D r i v e / D o c u m e n t s / T r a v e l / p a c k 4  8 9 8 l     �� : ;��   : T N :Users:patrickturner:Library:CloudStorage:iCloud Drive:Documents:Travel:pack:    ; � < < �   : U s e r s : p a t r i c k t u r n e r : L i b r a r y : C l o u d S t o r a g e : i C l o u d   D r i v e : D o c u m e n t s : T r a v e l : p a c k : 9  = > = l     ��������  ��  ��   >  ? @ ? l     ��������  ��  ��   @  A B A l     �� C D��   C ) # get the pack lists from the folder    D � E E F   g e t   t h e   p a c k   l i s t s   f r o m   t h e   f o l d e r B  F G F l    H���� H r     I J I l    K���� K I   �� L M
�� .earslfdrutxt  @    file L o    ����  0 packfoldername packFolderName M �� N��
�� 
lfiv N m    ��
�� boovfals��  ��  ��   J o      ���� 0 	packlists 	packLists��  ��   G  O P O l     �� Q R��   Q   pick the list to import    R � S S 0   p i c k   t h e   l i s t   t o   i m p o r t P  T U T l    V���� V r     W X W l    Y���� Y I   �� Z [
�� .gtqpchltns    @   @ ns   Z o    ���� 0 	packlists 	packLists [ �� \��
�� 
prmp \ m     ] ] � ^ ^ N P i c k   t h e   l i s t   t o   a d d   t o   y o u r   p a c k   l i s t :��  ��  ��   X o      ���� 0 thechosenlist theChosenList��  ��   U  _ ` _ l     �� a b��   a B < generate the full path and file name for the list to import    b � c c x   g e n e r a t e   t h e   f u l l   p a t h   a n d   f i l e   n a m e   f o r   t h e   l i s t   t o   i m p o r t `  d e d l    f���� f r     g h g b     i j i o    ����  0 packfoldername packFolderName j o    ���� 0 thechosenlist theChosenList h l      k���� k o      ���� $0 fulllistlocation fullListLocation��  ��  ��  ��   e  l m l l     �� n o��   n %  grab the content from the file    o � p p >   g r a b   t h e   c o n t e n t   f r o m   t h e   f i l e m  q r q l   ( s���� s r    ( t u t l   & v���� v I   &�� w��
�� .rdwrread****        **** w 4    "�� x
�� 
file x o     !���� $0 fulllistlocation fullListLocation��  ��  ��   u o      ���� $0 packlistcontents packListContents��  ��   r  y z y l     �� { |��   { : 4 list the items of the file based on paragraph marks    | � } } h   l i s t   t h e   i t e m s   o f   t h e   f i l e   b a s e d   o n   p a r a g r a p h   m a r k s z  ~  ~ l  ) . ����� � r   ) . � � � n   ) , � � � 2  * ,��
�� 
cpar � o   ) *���� $0 packlistcontents packListContents � o      ���� 0 thelines theLines��  ��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   get a due date    � � � �    g e t   a   d u e   d a t e �  � � � l     �� � ���   � ( "set theCurrentDate to current date    � � � � D s e t   t h e C u r r e n t D a t e   t o   c u r r e n t   d a t e �  � � � l     �� � ���   � � �display dialog "When should I remind you (date)?" default answer (date string of theCurrentDate & space & time string of theCurrentDate)    � � � � d i s p l a y   d i a l o g   " W h e n   s h o u l d   I   r e m i n d   y o u   ( d a t e ) ? "   d e f a u l t   a n s w e r   ( d a t e   s t r i n g   o f   t h e C u r r e n t D a t e   &   s p a c e   &   t i m e   s t r i n g   o f   t h e C u r r e n t D a t e ) �  � � � l     �� � ���   � / )set theDueDate to text returned of result    � � � � R s e t   t h e D u e D a t e   t o   t e x t   r e t u r n e d   o f   r e s u l t �  � � � l     �� � ���   � 0 *set theFormattedDueDate to date theDueDate    � � � � T s e t   t h e F o r m a t t e d D u e D a t e   t o   d a t e   t h e D u e D a t e �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ? 9 loop thru the pack list setting reminders with due dates    � � � � r   l o o p   t h r u   t h e   p a c k   l i s t   s e t t i n g   r e m i n d e r s   w i t h   d u e   d a t e s �  ��� � l  / z ����� � X   / z ��� � � O   A u � � � k   G t � �  � � � r   G S � � � 4   G O�� �
�� 
list � m   K N � � � � �  T r a v e l � o      ���� 
0 mylist   �  ��� � O   T t � � � k   Z s � �  � � � l  Z Z�� � ���   � \ Vmake new reminder at end with properties {name:eachLine, due date:theFormattedDueDate}    � � � � � m a k e   n e w   r e m i n d e r   a t   e n d   w i t h   p r o p e r t i e s   { n a m e : e a c h L i n e ,   d u e   d a t e : t h e F o r m a t t e d D u e D a t e } �  ��� � I  Z s���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   \ _��
�� 
remi � �� � �
�� 
insh �  ;   b d � �� ���
�� 
prdt � K   g m � � �� ���
�� 
pnam � o   j k���� 0 eachline eachLine��  ��  ��   � o   T W���� 
0 mylist  ��   � m   A D � ��                                                                                      @ alis    <  Macintosh HD                   BD ����Reminders.app                                                  ����            ����  
 cu             Applications  $/:System:Applications:Reminders.app/    R e m i n d e r s . a p p    M a c i n t o s h   H D  !System/Applications/Reminders.app   / ��  �� 0 eachline eachLine � o   2 3���� 0 thelines theLines��  ��  ��       
�� � � % � � � � � ���   � ����������������
�� .aevtoappnull  �   � ****��  0 packfoldername packFolderName�� 0 	packlists 	packLists�� 0 thechosenlist theChosenList�� $0 fulllistlocation fullListLocation�� $0 packlistcontents packListContents�� 0 thelines theLines�� 
0 mylist   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     z � �    � �  F � �  T � �  d � �  q � �  ~ � �  �����  ��  ��   � ���� 0 eachline eachLine �  %���������� ]������������~�}�|�{�z ��y ��x�w�v�u�t�s�r��  0 packfoldername packFolderName
�� 
lfiv
�� .earslfdrutxt  @    file�� 0 	packlists 	packLists
�� 
prmp
�� .gtqpchltns    @   @ ns  �� 0 thechosenlist theChosenList�� $0 fulllistlocation fullListLocation
�� 
file
�� .rdwrread****        ****� $0 packlistcontents packListContents
�~ 
cpar�} 0 thelines theLines
�| 
kocl
�{ 
cobj
�z .corecnte****       ****
�y 
list�x 
0 mylist  
�w 
remi
�v 
insh
�u 
prdt
�t 
pnam�s 
�r .corecrel****      � null�� {�E�O��fl E�O���l E�O��%E�O*��/j E�O��-E�O J�[�a l kh  a  /*a a /E` O_  *�a a *6a a �la  UU[OY�� � �q ��q  �   � � � � � � � � � � � � � � � � � � � � �  b i k e . t x t � � � �  c a m p . t x t � � � �  s c u b a . t x t � � � � & @ a d d   r e m i n d e r s . s c p t � � � �  f l i g h t . t x t � � � �  r a c e . t x t � � � �  f o r m a l . t x t � � � �  g o l f . t x t � � � �  c a m p e r . t x t � � � � " i n t e r n a t i o n a l . t x t � � � �  b e a c h . t x t � � � �  s k i . t x t � � � �  m o t o r c y c l e . t x t � � � �  t a z e w e l l . t x t � � � �  b a s e . t x t � � � � & b e a c h   g r o c e r i e s . t x t � � � �  g r o c e r i e s . t x t � �p ��p  �   � � � � �  s c u b a . t x t � �   h : U s e r s : p a t r i c k t u r n e r : D o c u m e n t s : T r a v e l : p a c k : s c u b a . t x t � � � S c u b a :   C e r t i f i c a t i o n   C a r d 
 S c u b a :   M a s k 
 S c u b a :   B o o t s 
 S c u b a :   S n o r k l e 
 S c u b a :   F i n s 
 S c u b a :   B a g s 
 S c u b a :   L o g 
 S c u b a :   T o w e l s � �o�o   	
�n�m�l�k�j�i�h�g � 2 S c u b a :   C e r t i f i c a t i o n   C a r d �  S c u b a :   M a s k �  S c u b a :   B o o t s �  S c u b a :   S n o r k l e �  S c u b a :   F i n s �  S c u b a :   B a g s	 �  S c u b a :   L o g
 �  S c u b a :   T o w e l s�n  �m  �l  �k  �j  �i  �h  �g   �   ��f�e
�f 
list � H E 1 4 E 0 8 3 7 - 6 6 6 D - 4 D 0 F - A 3 A 9 - B C 1 B F 1 2 7 D 4 C 6
�e kfrmID  ascr  ��ޭ