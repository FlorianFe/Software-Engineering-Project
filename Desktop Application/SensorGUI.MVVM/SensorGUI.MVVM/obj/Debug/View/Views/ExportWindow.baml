   M S B A M L   `   `   `  ����I  ESensorGUI.MVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:SensorGUI.MVVM.ViewsSensorGUI.MVVM.Views  5   	   '    !SensorGUI.MVVM.Views.ExportWindow   5   	   U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:SensorGUI.MVVM.Views     5   	     � 
ResizeMode$  NoResize=�5   	    � Title$ Exportieren...��5	   	   $	��300��6    $	��400��6-    � Icon$  /View/Images/Export-96.png��5
   	    � DataContext 5   	   ��    Locator �� Source# [   �� Path$ ExportWindow�.��5      �  � RowDefinitions 5   
   �� 5      $��* �6   6)   �� 5      $
��Auto �6   6,   .+�5   
   �� .+�5      �� $0��*Zu exportierende Messvorgänge auswählen:��6   $
��Left=�6G   $��	10,10,0,5q�6b   $��Medium"�6u   6�   �� 5      $��
10,5,10,10q�6�   $	��150��6�    6   �� # [  $ 
MainWindow���6_   �� *MeasurementSeries+��5      �� 5      .R�5      �� $��5,3,0,2q�6`   ��6#   �� *Name+ d� 	IsChecked 6<   �� *ExportChecked+6`   5      5      5      �� 5   
   $��1��6    �� Orientation$ 
Horizontal=�6"   $��Right=�6;   .+�5      �� $��	0,0,10,10q�6   $
��35,5q�6(   	 �� 	IsDefault	 . ��67   �� *	OkCommand+.��6f   OK6j   �� 5      $��	0,0,10,10q�6   $
��30,5q�6(   
 �� IsCancel
 . .��6G   	Abbrechen6R   5      5      5       