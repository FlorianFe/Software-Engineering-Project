   M S B A M L   `   `   `  ����I  ESensorGUI.MVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:SensorGUI.MVVM.ViewsSensorGUI.MVVM.Views  5   	   %    SensorGUI.MVVM.Views.SaveWindow   5   	   U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:SensorGUI.MVVM.Views     5   	     � Title$  Messvorgang speichern��5   	   $	��205��6'   $	��340��64    � 
ResizeMode$ NoResize=�5	   	    � WindowStartupLocation$ CenterOwner=�5
   	    � Icon$! /View/Images/Save as-96.png��5   	    � DataContext 5   	   ��    Locator �� Source# [   �� Path$ 
SaveWindow�.��5      �  � RowDefinitions 5   
   �� 5      $��* �6   6)   �� 5      $
��Auto �6   6,   .+�5   
   ��  �� Orientation$ Vertical=�6   	 +� FocusedElement	 6,   �� 
 �� ElementName$	
 Txt��.+�5      �� $��Name eingeben: ��6   $
��Left=�6.   $��
10,15,0,10q�6I   $��Medium"�6]   6s   �� 5      -   5        $	��Txt��5       �� SelectionStart$ 1��6\    �� 	MaxLength$ 25��6o   $��Center=�6~   $��25��6�   $
��12,0q�6�   ��6!   �� *Text+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5      $ 
Horizontal=�6   $��	12,5,0,10q�62   .+�5      �� $��/View/Images/Error-96.png��6   $��18��6;   $��0,0,5,0q�6G   6Z   �� 5      $��10(�6   <:Bitte sprechenden Namen verwenden, da beim Exportieren die�� 6f   <:Tabellenblätter nach Ihren Messvorgängen benannt werden.6�   5      5      �� 5   
   $��1��6   $ 
Horizontal=�6"   $��Right=�6;   .+�5      �� $��	0,0,10,10q�6   $
��35,5q�6(    �� 	IsDefault . ��67   �� *	OkCommand+.��6f   OK6j   �� 5      $��	0,0,10,10q�6   $
��30,5q�6(    �� IsCancel . .��6G   	Abbrechen6R   5      5      5      