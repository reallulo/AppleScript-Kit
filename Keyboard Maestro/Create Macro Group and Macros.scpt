FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � � Before you use a macro group you probably want to check if it exists. The following example tests for the macro group's existence, based on a Keyboard Maestro input variable containing the macro group name -macroGroup.     � 	 	�   B e f o r e   y o u   u s e   a   m a c r o   g r o u p   y o u   p r o b a b l y   w a n t   t o   c h e c k   i f   i t   e x i s t s .   T h e   f o l l o w i n g   e x a m p l e   t e s t s   f o r   t h e   m a c r o   g r o u p ' s   e x i s t e n c e ,   b a s e d   o n   a   K e y b o a r d   M a e s t r o   i n p u t   v a r i a b l e   c o n t a i n i n g   t h e   m a c r o   g r o u p   n a m e   - m a c r o G r o u p .   
  
 l     ��������  ��  ��        l     ��  ��    o i (This test is case-insensitive. For example macro group �Firefox� could also be specified as �firefox�.)     �   �   ( T h i s   t e s t   i s   c a s e - i n s e n s i t i v e .   F o r   e x a m p l e   m a c r o   g r o u p    F i r e f o x    c o u l d   a l s o   b e   s p e c i f i e d   a s    f i r e f o x  . )      l     ��������  ��  ��        l     ��������  ��  ��        l    # ����  O     #    k    "       r        I   	�� ��
�� .MKKMKMgvnull���     ctxt  m         � ! !  m a c r o G r o u p��    o      ���� 0 
macrogroup 
macroGroup   "�� " Z   " # $���� # l    %���� % =     & ' & o    ���� 0 
macrogroup 
macroGroup ' m     ( ( � ) )  ��  ��   $ R    �� *��
�� .ascrerr ****      � **** * b     + , + b     - . - b     / 0 / b     1 2 1 m     3 3 � 4 4  [ E R R O R ] 2 1    ��
�� 
lnfd 0 m     5 5 � 6 6 N I n v a l i d   M a c r o   G r o u p   N a m e .   K M   V a r i a b l e   " . m     7 7 � 8 8  m a c r o G r o u p , m     9 9 � : : 2 "   w a s   e m p t y   o r   u n d e f i n e d .��  ��  ��  ��    m      ; ;                                                                                  KM*E  alis    �  Macintosh HD                   BD ����Keyboard Maestro Engine.app                                    ����            ����  
 cu             MacOS   O/:Applications:Keyboard Maestro.app:Contents:MacOS:Keyboard Maestro Engine.app/   8  K e y b o a r d   M a e s t r o   E n g i n e . a p p    M a c i n t o s h   H D  LApplications/Keyboard Maestro.app/Contents/MacOS/Keyboard Maestro Engine.app  / ��  ��  ��     < = < l     ��������  ��  ��   =  > ? > l  $ ; @���� @ O   $ ; A B A l  ( : C D E C Z   ( : F G�� H F I  ( 0�� I��
�� .coredoexnull���     **** I 4   ( ,�� J
�� 
MKmg J o   * +���� 0 
macrogroup 
macroGroup��   G L   3 5 K K m   3 4��
�� boovtrue��   H L   8 : L L m   8 9��
�� boovfals D   Editor    E � M M    E d i t o r B m   $ % N N�                                                                                  MKKM  alis    J  Macintosh HD                   BD ����Keyboard Maestro.app                                           ����            ����  
 cu             Applications  $/:Applications:Keyboard Maestro.app/  *  K e y b o a r d   M a e s t r o . a p p    M a c i n t o s h   H D  !Applications/Keyboard Maestro.app   / ��  ��  ��   ?  O P O l     ��������  ��  ��   P  Q R Q l     �� S T��   SOI Here is a full example that creates a macro group called �Multiple Clipboards� and then creates 9 macros with hot Control-C and action to copy the clipboard to a named clipboard with name �Clipboard N� (where N is 1-9) and another set of 9 macros with hot key Control-V and action to paste from the named clipboard �Clipboard N�    T � U U�   H e r e   i s   a   f u l l   e x a m p l e   t h a t   c r e a t e s   a   m a c r o   g r o u p   c a l l e d    M u l t i p l e   C l i p b o a r d s    a n d   t h e n   c r e a t e s   9   m a c r o s   w i t h   h o t   C o n t r o l - C   a n d   a c t i o n   t o   c o p y   t h e   c l i p b o a r d   t o   a   n a m e d   c l i p b o a r d   w i t h   n a m e    C l i p b o a r d   N    ( w h e r e   N   i s   1 - 9 )   a n d   a n o t h e r   s e t   o f   9   m a c r o s   w i t h   h o t   k e y   C o n t r o l - V   a n d   a c t i o n   t o   p a s t e   f r o m   t h e   n a m e d   c l i p b o a r d    C l i p b o a r d   N  R  V W V l     ��������  ��  ��   W  X Y X l  <3 Z���� Z O   <3 [ \ [ k   D2 ] ]  ^ _ ^ r   D ^ ` a ` I  D Z���� b
�� .corecrel****      � null��   b �� c d
�� 
kocl c m   H I��
�� 
MKmg d �� e��
�� 
prdt e K   L T f f �� g��
�� 
pnam g m   O R h h � i i & M u l t i p l e   C l i p b o a r d s��  ��   a o      ���� 0 mg   _  j�� j O   _2 k l k Y   e1 m�� n o�� m k   q, p p  q r q r   q � s t s I  q ����� u
�� .corecrel****      � null��   u �� v w
�� 
kocl v m   u x��
�� 
MKma w �� x��
�� 
prdt x K   { � y y �� z��
�� 
pnam z b   ~ � { | { m   ~ � } } � ~ ~ 
 C o p y   | o   � ����� 0 i  ��  ��   t o      ���� 0 m   r   �  O   � � � � � k   � � � �  � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
MKmt � �� ���
�� 
prdt � K   � � � � �� ���
�� 
MTxm � m   � � � � � � �� < d i c t > 
 	 	 	 	 	 	 < k e y > F i r e T y p e < / k e y > 
 	 	 	 	 	 	 < s t r i n g > P r e s s e d < / s t r i n g > 
 	 	 	 	 	 	 < k e y > K e y C o d e < / k e y > 
 	 	 	 	 	 	 < i n t e g e r > 8 < / i n t e g e r > 
 	 	 	 	 	 	 < k e y > M a c r o T r i g g e r T y p e < / k e y > 
 	 	 	 	 	 	 < s t r i n g > H o t K e y < / s t r i n g > 
 	 	 	 	 	 	 < k e y > M o d i f i e r s < / k e y > 
 	 	 	 	 	 	 < i n t e g e r > 4 0 9 6 < / i n t e g e r > 
 	 	 	 	 	 < / d i c t >��  ��   �  ��� � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
MKac � �� ���
�� 
prdt � K   � � � � �� ���
�� 
MTxm � b   � � � � � b   � � � � � m   � � � � � � �� < d i c t > 
 	 	 	 	 	 	 < k e y > A c t i o n < / k e y > 
 	 	 	 	 	 	 < s t r i n g > C o p y < / s t r i n g > 
 	 	 	 	 	 	 < k e y > M a c r o A c t i o n T y p e < / k e y > 
 	 	 	 	 	 	 < s t r i n g > C l i p b o a r d S w i t c h e r M a c r o A c t i o n < / s t r i n g > 
 	 	 	 	 	 	 < k e y > R e d u n d a n d D i s p l a y N a m e < / k e y > 
 	 	 	 	 	 	 < s t r i n g > C l i p b o a r d   � o   � ����� 0 i   � m   � � � � � � � , < / s t r i n g > 
 	 	 	 	 	 < / d i c t >��  ��  ��   � o   � ����� 0 m   �  � � � r   � � � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
MKma � �� ���
�� 
prdt � K   � � � � �� ���
�� 
pnam � b   � � � � � m   � � � � � � �  P a s t e   � o   � ����� 0 i  ��  ��   � o      ���� 0 m   �  ��� � O   �, � � � k   �+ � �  � � � I  ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
MKmt � �� ���
�� 
prdt � K   � � � �� ���
�� 
MTxm � m   � � � � �� < d i c t > 
 	 	 	 	 	 	 < k e y > F i r e T y p e < / k e y > 
 	 	 	 	 	 	 < s t r i n g > P r e s s e d < / s t r i n g > 
 	 	 	 	 	 	 < k e y > K e y C o d e < / k e y > 
 	 	 	 	 	 	 < i n t e g e r > 9 < / i n t e g e r > 
 	 	 	 	 	 	 < k e y > M a c r o T r i g g e r T y p e < / k e y > 
 	 	 	 	 	 	 < s t r i n g > H o t K e y < / s t r i n g > 
 	 	 	 	 	 	 < k e y > M o d i f i e r s < / k e y > 
 	 	 	 	 	 	 < i n t e g e r > 4 0 9 6 < / i n t e g e r > 
 	 	 	 	 	 < / d i c t >��  ��   �  ��� � I +���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m  ��
�� 
MKac � �� ���
�� 
prdt � K  % � � �� ���
�� 
MTxm � b  # � � � b   � � � m   � � � � �� < d i c t > 
 	 	 	 	 	 	 < k e y > A c t i o n < / k e y > 
 	 	 	 	 	 	 < s t r i n g > P a s t e < / s t r i n g > 
 	 	 	 	 	 	 < k e y > M a c r o A c t i o n T y p e < / k e y > 
 	 	 	 	 	 	 < s t r i n g > C l i p b o a r d S w i t c h e r M a c r o A c t i o n < / s t r i n g > 
 	 	 	 	 	 	 < k e y > R e d u n d a n d D i s p l a y N a m e < / k e y > 
 	 	 	 	 	 	 < s t r i n g > C l i p b o a r d   � o  ���� 0 i   � m  " � � � � � , < / s t r i n g > 
 	 	 	 	 	 < / d i c t >��  ��  ��   � o   � ����� 0 m  ��  �� 0 i   n m   h i����  o m   i l���� 	��   l o   _ b���� 0 mg  ��   \ 5   < A�� ���
�� 
capp � m   > ? � � � � � H c o m . s t a i r w a y s . k e y b o a r d m a e s t r o . e d i t o r
�� kfrmID  ��  ��   Y  ��� � l     ��������  ��  ��  ��       �� � ���   � �
� .aevtoappnull  �   � **** � �~ ��}�| � ��{
�~ .aevtoappnull  �   � **** � k    3 � �   � �  > � �  X�z�z  �}  �|   � �y�y 0 i   � % ;  �x�w ( 3�v 5 7 9 N�u�t�s ��r�q�p�o h�n�m�l�k�j }�i�h�g ��f � � � � � �
�x .MKKMKMgvnull���     ctxt�w 0 
macrogroup 
macroGroup
�v 
lnfd
�u 
MKmg
�t .coredoexnull���     ****
�s 
capp
�r kfrmID  
�q 
kocl
�p 
prdt
�o 
pnam�n 
�m .corecrel****      � null�l 0 mg  �k 	
�j 
MKma�i 0 m  
�h 
MKmt
�g 
MTxm
�f 
MKac�{4�  �j E�O��  )j��%�%�%�%Y hUO� *��/j  eY fUO)���0 �*a �a a a la  E` O_  � �ka kh  *a a a a a �%la  E` O_  9*a a a a a la  O*a a a a a �%a  %la  UO*a a a a a !�%la  E` O_  9*a a a a a "la  O*a a a a a #�%a $%la  U[OY�?UUascr  ��ޭ