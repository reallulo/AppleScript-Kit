FasdUAS 1.101.10   ��   ��    k             l     ����  I     �� ���� 20 addleadingzerostonumber addLeadingZerosToNumber   	 
 	 m    ���� 	 
  ��  m    ���� ��  ��  ��  ��        l     ��  ��     > Result: "0009"     �     >   R e s u l t :   " 0 0 0 9 "      l     ��������  ��  ��        i         I      �� ���� 20 addleadingzerostonumber addLeadingZerosToNumber      o      ���� 0 	thenumber 	theNumber   ��  o      ���� 00 themaxleadingzerocount theMaxLeadingZeroCount��  ��    k     n       l     ��  ��    * $ Determine if the number is negative     �     H   D e t e r m i n e   i f   t h e   n u m b e r   i s   n e g a t i v e   ! " ! r      # $ # A     % & % o     ���� 0 	thenumber 	theNumber & m    ����   $ o      ���� 0 
isnegative 
isNegative "  ' ( ' l   ��������  ��  ��   (  ) * ) l   �� + ,��   + B < Determine when the maximum number of digits will be reached    , � - - x   D e t e r m i n e   w h e n   t h e   m a x i m u m   n u m b e r   o f   d i g i t s   w i l l   b e   r e a c h e d *  . / . r     0 1 0 c     2 3 2 l   	 4���� 4 a    	 5 6 5 m    ���� 
 6 o    ���� 00 themaxleadingzerocount theMaxLeadingZeroCount��  ��   3 m   	 
��
�� 
long 1 o      ���� 0 thethreshold theThreshold /  7 8 7 l   ��������  ��  ��   8  9 : 9 l   �� ; <��   ; A ; If the number is shorter than the maximum number of digits    < � = = v   I f   t h e   n u m b e r   i s   s h o r t e r   t h a n   t h e   m a x i m u m   n u m b e r   o f   d i g i t s :  >�� > Z    n ? @�� A ? A    B C B o    ���� 0 	thenumber 	theNumber C o    ���� 0 thethreshold theThreshold @ k    g D D  E F E l   �� G H��   G 8 2 If the number is negative, convert it to positive    H � I I d   I f   t h e   n u m b e r   i s   n e g a t i v e ,   c o n v e r t   i t   t o   p o s i t i v e F  J K J Z   " L M���� L =     N O N o    ���� 0 
isnegative 
isNegative O m    ��
�� boovtrue M r     P Q P d     R R o    ���� 0 	thenumber 	theNumber Q o      ���� 0 	thenumber 	theNumber��  ��   K  S T S l  # #��������  ��  ��   T  U V U l  # #�� W X��   W "  Add the zeros to the number    X � Y Y 8   A d d   t h e   z e r o s   t o   t h e   n u m b e r V  Z [ Z r   # & \ ] \ m   # $ ^ ^ � _ _   ] o      ���� "0 theleadingzeros theLeadingZeros [  ` a ` r   ' 0 b c b n   ' . d e d 1   , .��
�� 
leng e l  ' , f���� f c   ' , g h g l  ' * i���� i _   ' * j k j o   ' (���� 0 	thenumber 	theNumber k m   ( )���� ��  ��   h m   * +��
�� 
TEXT��  ��   c o      ���� 0 thedigitcount theDigitCount a  l m l r   1 8 n o n \   1 6 p q p l  1 4 r���� r [   1 4 s t s o   1 2���� 00 themaxleadingzerocount theMaxLeadingZeroCount t m   2 3���� ��  ��   q o   4 5���� 0 thedigitcount theDigitCount o o      ���� &0 thecharactercount theCharacterCount m  u v u U   9 L w x w r   @ G y z y c   @ E { | { l  @ C }���� } b   @ C ~  ~ o   @ A���� "0 theleadingzeros theLeadingZeros  m   A B � � � � �  0��  ��   | m   C D��
�� 
TEXT z o      ���� "0 theleadingzeros theLeadingZeros x o   < =���� &0 thecharactercount theCharacterCount v  � � � l  M M��������  ��  ��   �  � � � l  M M�� � ���   � > 8 Make the number negative, if it was previously negative    � � � � p   M a k e   t h e   n u m b e r   n e g a t i v e ,   i f   i t   w a s   p r e v i o u s l y   n e g a t i v e �  � � � Z  M \ � ����� � =   M P � � � o   M N���� 0 
isnegative 
isNegative � m   N O��
�� boovtrue � r   S X � � � b   S V � � � m   S T � � � � �  - � o   T U���� "0 theleadingzeros theLeadingZeros � o      ���� "0 theleadingzeros theLeadingZeros��  ��   �  � � � l  ] ]��������  ��  ��   �  � � � l  ] ]�� � ���   � !  Return the prefixed number    � � � � 6   R e t u r n   t h e   p r e f i x e d   n u m b e r �  � � � L   ] e � � c   ] d � � � l  ] b ����� � b   ] b � � � o   ] ^���� "0 theleadingzeros theLeadingZeros � l  ^ a ����� � c   ^ a � � � o   ^ _���� 0 	thenumber 	theNumber � m   _ `��
�� 
ctxt��  ��  ��  ��   � m   b c��
�� 
TEXT �  � � � l  f f��������  ��  ��   �  ��� � l  f f�� � ���   � M G If the number is greater than or equal to the maximum number of digits    � � � � �   I f   t h e   n u m b e r   i s   g r e a t e r   t h a n   o r   e q u a l   t o   t h e   m a x i m u m   n u m b e r   o f   d i g i t s��  ��   A k   j n � �  � � � l  j j�� � ���   � !  Return the original number    � � � � 6   R e t u r n   t h e   o r i g i n a l   n u m b e r �  ��� � L   j n � � c   j m � � � o   j k���� 0 	thenumber 	theNumber � m   k l��
�� 
ctxt��  ��     ��� � l     ��������  ��  ��  ��       �� � � ���   � ������ 20 addleadingzerostonumber addLeadingZerosToNumber
�� .aevtoappnull  �   � **** � �� ���� � ����� 20 addleadingzerostonumber addLeadingZerosToNumber�� �� ���  �  ������ 0 	thenumber 	theNumber�� 00 themaxleadingzerocount theMaxLeadingZeroCount��   � ���������������� 0 	thenumber 	theNumber�� 00 themaxleadingzerocount theMaxLeadingZeroCount�� 0 
isnegative 
isNegative�� 0 thethreshold theThreshold�� "0 theleadingzeros theLeadingZeros�� 0 thedigitcount theDigitCount�� &0 thecharactercount theCharacterCount � ���� ^���� � ���� 

�� 
long
�� 
TEXT
�� 
leng
� 
ctxt�� o�jE�O�$�&E�O�� X�e  	�'E�Y hO�E�O�k"�&�,E�O�k�E�O �kh��%�&E�[OY��O�e  
�%E�Y hO���&%�&OPY ��& � �~ ��}�| � ��{
�~ .aevtoappnull  �   � **** � k      � �  �z�z  �}  �|   �   � �y�x�y 	�x 20 addleadingzerostonumber addLeadingZerosToNumber�{ *�ml+ ascr  ��ޭ