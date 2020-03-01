FasdUAS 1.101.10   ��   ��    k             l     ��  ��      original script at:     � 	 	 (   o r i g i n a l   s c r i p t   a t :   
  
 l     ��  ��    Y S http://benguild.com/2012/04/11/how-to-import-tasks-to-do-items-into-ios-reminders/     �   �   h t t p : / / b e n g u i l d . c o m / 2 0 1 2 / 0 4 / 1 1 / h o w - t o - i m p o r t - t a s k s - t o - d o - i t e m s - i n t o - i o s - r e m i n d e r s /      l     ��  ��      more help from:     �       m o r e   h e l p   f r o m :      l     ��  ��    M G http://alvinalexander.com/blog/post/mac-os-x/applescript-list-examples     �   �   h t t p : / / a l v i n a l e x a n d e r . c o m / b l o g / p o s t / m a c - o s - x / a p p l e s c r i p t - l i s t - e x a m p l e s      l     ��������  ��  ��        l     ��  ��    / ) set the folder name where the lists live     �   R   s e t   t h e   f o l d e r   n a m e   w h e r e   t h e   l i s t s   l i v e     !   l     "���� " r      # $ # m      % % � & & | : U s e r s : p a t r i c k t u r n e r : D o c u m e n t s : T r a v e l : M a c - O S - R e m i n d e r s - I m p o r t : $ o      ����  0 packfoldername packFolderName��  ��   !  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + * $ get the pack lists from the folder     , � - - H   g e t   t h e   p a c k   l i s t s   f r o m   t h e   f o l d e r   *  . / . l     �� 0 1��   0 s m any lists you add to the folder you set in packFolderName will appear in a selector when running the script.    1 � 2 2 �   a n y   l i s t s   y o u   a d d   t o   t h e   f o l d e r   y o u   s e t   i n   p a c k F o l d e r N a m e   w i l l   a p p e a r   i n   a   s e l e c t o r   w h e n   r u n n i n g   t h e   s c r i p t . /  3 4 3 l    5���� 5 r     6 7 6 l    8���� 8 I   �� 9 :
�� .earslfdrutxt  @    file 9 o    ����  0 packfoldername packFolderName : �� ;��
�� 
lfiv ; m    ��
�� boovfals��  ��  ��   7 o      ���� 0 	packlists 	packLists��  ��   4  < = < l     �� > ?��   > O I this will pop up a selector window where you can pick the list to import    ? � @ @ �   t h i s   w i l l   p o p   u p   a   s e l e c t o r   w i n d o w   w h e r e   y o u   c a n   p i c k   t h e   l i s t   t o   i m p o r t =  A B A l    C���� C r     D E D l    F���� F I   �� G H
�� .gtqpchltns    @   @ ns   G o    ���� 0 	packlists 	packLists H �� I��
�� 
prmp I m     J J � K K N P i c k   t h e   l i s t   t o   a d d   t o   y o u r   p a c k   l i s t :��  ��  ��   E o      ���� 0 thechosenlist theChosenList��  ��   B  L M L l     �� N O��   N B < generate the full path and file name for the list to import    O � P P x   g e n e r a t e   t h e   f u l l   p a t h   a n d   f i l e   n a m e   f o r   t h e   l i s t   t o   i m p o r t M  Q R Q l    S���� S r     T U T b     V W V o    ����  0 packfoldername packFolderName W o    ���� 0 thechosenlist theChosenList U l      X���� X o      ���� $0 fulllistlocation fullListLocation��  ��  ��  ��   R  Y Z Y l     �� [ \��   [ %  grab the content from the file    \ � ] ] >   g r a b   t h e   c o n t e n t   f r o m   t h e   f i l e Z  ^ _ ^ l   ( `���� ` r    ( a b a l   & c���� c I   &�� d��
�� .rdwrread****        **** d 4    "�� e
�� 
file e o     !���� $0 fulllistlocation fullListLocation��  ��  ��   b o      ���� $0 packlistcontents packListContents��  ��   _  f g f l     �� h i��   h : 4 list the items of the file based on paragraph marks    i � j j h   l i s t   t h e   i t e m s   o f   t h e   f i l e   b a s e d   o n   p a r a g r a p h   m a r k s g  k l k l  ) . m���� m r   ) . n o n n   ) , p q p 2  * ,��
�� 
cpar q o   ) *���� $0 packlistcontents packListContents o o      ���� 0 thelines theLines��  ��   l  r s r l     ��������  ��  ��   s  t u t l     �� v w��   v y s remove comment tags from these lines if you would like to add a due date. Enter in the full text to get a due date    w � x x �   r e m o v e   c o m m e n t   t a g s   f r o m   t h e s e   l i n e s   i f   y o u   w o u l d   l i k e   t o   a d d   a   d u e   d a t e .   E n t e r   i n   t h e   f u l l   t e x t   t o   g e t   a   d u e   d a t e u  y z y l     �� { |��   { ( "set theCurrentDate to current date    | � } } D s e t   t h e C u r r e n t D a t e   t o   c u r r e n t   d a t e z  ~  ~ l     �� � ���   � � �display dialog "When should I remind you (date)?" default answer (date string of theCurrentDate & space & time string of theCurrentDate)    � � � � d i s p l a y   d i a l o g   " W h e n   s h o u l d   I   r e m i n d   y o u   ( d a t e ) ? "   d e f a u l t   a n s w e r   ( d a t e   s t r i n g   o f   t h e C u r r e n t D a t e   &   s p a c e   &   t i m e   s t r i n g   o f   t h e C u r r e n t D a t e )   � � � l     �� � ���   � / )set theDueDate to text returned of result    � � � � R s e t   t h e D u e D a t e   t o   t e x t   r e t u r n e d   o f   r e s u l t �  � � � l     �� � ���   � 0 *set theFormattedDueDate to date theDueDate    � � � � T s e t   t h e F o r m a t t e d D u e D a t e   t o   d a t e   t h e D u e D a t e �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ? 9 loop thru the pack list setting reminders with due dates    � � � � r   l o o p   t h r u   t h e   p a c k   l i s t   s e t t i n g   r e m i n d e r s   w i t h   d u e   d a t e s �  ��� � l  / z ����� � X   / z ��� � � O   A u � � � k   G t � �  � � � l  G G�� � ���   � P J change the value of Travel to the list you'd like the reminders to go to.    � � � � �   c h a n g e   t h e   v a l u e   o f   T r a v e l   t o   t h e   l i s t   y o u ' d   l i k e   t h e   r e m i n d e r s   t o   g o   t o . �  � � � l  G G�� � ���   � C = I used this for my packing for travel, hence the list Travel    � � � � z   I   u s e d   t h i s   f o r   m y   p a c k i n g   f o r   t r a v e l ,   h e n c e   t h e   l i s t   T r a v e l �  � � � r   G S � � � 4   G O�� �
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
 cu             Applications  $/:System:Applications:Reminders.app/    R e m i n d e r s . a p p    M a c i n t o s h   H D  !System/Applications/Reminders.app   / ��  �� 0 eachline eachLine � o   2 3���� 0 thelines theLines��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     z � �    � �  3 � �  A � �  Q � �  ^ � �  k � �  �����  ��  ��   � ���� 0 eachline eachLine �  %���������� J���������������������� ��� �����������������  0 packfoldername packFolderName
�� 
lfiv
�� .earslfdrutxt  @    file�� 0 	packlists 	packLists
�� 
prmp
�� .gtqpchltns    @   @ ns  �� 0 thechosenlist theChosenList�� $0 fulllistlocation fullListLocation
�� 
file
�� .rdwrread****        ****�� $0 packlistcontents packListContents
�� 
cpar�� 0 thelines theLines
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
list�� 
0 mylist  
�� 
remi
�� 
insh
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null�� {�E�O��fl E�O���l E�O��%E�O*��/j E�O��-E�O J�[�a l kh  a  /*a a /E` O_  *�a a *6a a �la  UU[OY�� ascr  ��ޭ