   M S B A M L   `   `   `  ����I  ESensorGUI.MVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SensorGUI.MVVMSensorGUI.MVVM  5   	   C&clr-namespace:SensorGUI.MVVM.ConverterSensorGUI.MVVM.Converter  5   	   | xSystem.Windows.Controls.DataVisualization.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35�{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit2System.Windows.Controls.DataVisualization.Charting 5   	   �rclr-namespace:System.Windows.Controls.DataVisualization;assembly=System.Windows.Controls.DataVisualization.Toolkit)System.Windows.Controls.DataVisualization 5   	       SensorGUI.MVVM.MainWindow   5   	   U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:SensorGUI.MVVM     5   	   <	converter&clr-namespace:SensorGUI.MVVM.Converter     5   	   3fa$http://schemas.fontawesome.io/icons/     5   	   Cd34http://research.microsoft.com/DynamicDataDisplay/1.0     5	   	   R NMvvmDialogs, Version=2.0.1.0, Culture=neutral, PublicKeyToken=3d3b9708589bc73e8md/https://github.com/fantasticfiasco/mvvm-dialogs  5
   	   �DVC{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit  5   	   {DVrclr-namespace:System.Windows.Controls.DataVisualization;assembly=System.Windows.Controls.DataVisualization.Toolkit  5   	   J	 FWpfAnimatedGif, Version=1.4.14.0, Culture=neutral, PublicKeyToken=null,gif"http://wpfanimatedgif.codeplex.com 	 5   	   $  MvvmDialogs.DialogServiceViews    IsRegistered  .  � WindowStartupLocation$ CenterScreen=�5   	    � Icon$ /View/Images/Robot-96.png��5   E   $	��800��5   	   $
��1200��6   $	��650��6#   $	��900��63    � DataContext 5   	   ��    Locator �� Source# [   �� Path$ 
MainWindow� � Title 5   	   �� *Title+ �� StringFormat$ SensorAuswerter - {0}�� � 	Resources 5      ;   5SensorGUI.MVVM.Converter.BooleanToVisibilityConverter   BooleanToVisibilityConverter�   �SensorGUI.MVVM.Converter.BooleanConverter`1[[System.Windows.Visibility, PresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35]]	   True
   False ' #InverseBooleanToVisibilityConverter8   2SensorGUI.MVVM.Converter.EnumToVisibilityConverter  EnumToVisibilityConverter:   4SensorGUI.MVVM.Converter.StringToBackgroundConverter  StringToBackgroundConverter  LineDataPointStyle �� 
TargetTypeF  @System.Windows.Controls.DataVisualization.Charting.LineDataPoint �� Property �� Value  DefaultButton �� 
TargetType �� Triggers P� Property P� Value  TriggerButton  StartButton 	 DeleteButton�� 5      %Q
  &	       &	 6     &	 l     &	      &	 �     &	     &	 2    &	     &		 �      5      $	 Visible=�6T   $
 	Collapsed=�6c     5      $	 	Collapsed=�6[   $
 Visible=�6l     5      6,     5      6.   �� 5      "  6)   .�5   
   ��  � ��
 ��  �67   �� 5   
    �@J�Opacity$ 0Q�6$   5   	   �� 5      " ��6$   .�5   
   ��  � �� �	#FF0098A66'   �� 5    
    � ��
 �����6'   �� 5!   
    � ��$ 13(�6%   �� 5"   
    � �� 5#      �� 5$      " ��6   .R�5%      �� #��z��6   ._�5&      �� $��Center=�6#   $��Center=�6@   5'      5(      5*       5+   
   P� 5,       �@J�IsMouseOver . . �5-      ��  � �� �	#FFDEAB246+   5.      P� 5/       � {� .  . �50      ��  � �� �	#FFADADAD6+   �� 51       � ��
 �����6+   52      54   	   �� 55      " ��6$   .�56   
   ��  � �� �	#FF0098A66'   �� 57   
    � ��
 �����6'   �� 58   
    � ��$ 13(�6%   �� 59   
    � �� 5:      �� 5;      " ��6   .R�5<      �� #��z��6   $��1,0,2,0q�6A   ���#EEEEEE._�5=      �� $��Center=�6#   $��Center=�6@   5>      5?      5A       5B   
   P� 5C       �@J�IsMouseOver . . �5D      ��  � �� �	#FFDEAB246+   5E      P� 5F       � {� .  . �5G      ��  � �� �	#FFADADAD6+   �� 5H       � ��
 �����6+   5I      5K   	   �� 5L      " ��6"   .�5M   
   ��  � �� �	#FF0098A66'   �� 5N   
    � ��
 �����6'   �� 5O   
    � ��$ 13(�6%   �� 5P   
    � �� 5Q      �� 5R      " ��6   .R�5S      �� #��z��6   $��0,0,0,1q�6A   ���#EEEEEE._�5T      �� $��Center=�6#   $��Center=�6@   5U      5V      5X       5Y   
   P� 5Z       �@J�IsMouseOver . . �5[      ��  � �� �	#FFDEAB246+   5\      P� 5]       � {� .  . �5^      ��  � �� �	#FFADADAD6+   �� 5_       � ��
 �����6+   5`      5b   	   �� 5c      " ��6#   .�5d   
   ��  � �� �	#FF5B06066'   �� 5e   
    � ��
 �����6'   �� 5f   
    � ��$ 13(�6%   �� 5g   
    � �� 5h      �� 5i      " ��6   .R�5j      �� #��z��6   ._�5k      �� $��Center=�6#   $��Center=�6@   5l      5m      5o       5p   
   P� 5q       �@J�IsMouseOver . . �5r      ��  � �� �	#FFDEAB246+   5s      P� 5t       � {� .  . �5u      ��  � �� �	#FFADADAD6+   �� 5v       � ��
 �����6+   5w      5y   	   5z      .��5~      �  � ColumnDefinitions 5      �� 5�      $��4* �6   6&   �� 5�      $��1* �6   6&    � RowDefinitions 5�      �� 5�      $
��Auto �6   6&   �� 5�      $
��Auto �6   6&   �� 5�      $��* �6   6#   �� 5�      $
��Auto �6   6&   .+�5�      �� $��2��6   $��0,1,0,0q�6!   ���	#FF4E8C9E6U   +  %System.Windows.Controls.Ribbon.Ribbon  5�      -   5        $��1��5�      $��2��6   ���	#FF4E8C9E.@�5�      .  (System.Windows.Controls.Ribbon.RibbonTab  .@�5�   
   0	  *System.Windows.Controls.Ribbon.RibbonGroup	  .@�5�      1
  +System.Windows.Controls.Ribbon.RibbonButton
   
  Label$! Konfiguration auswählen...��6    � ToolTip$U OAuswählen der Konfiguration für Genauigkeitsmessungen oder Weg-Zeit-Messungen��6�    
  LargeImageSource$" /View/Images/Services-96.png��6�    
  SmallImageSource$" /View/Images/Services-96.png��6  $	��5,0q�6@  {�6<   �� *ConfigEnabled+��6`   �� *ChangeConfigCommand+6O  5�      	  5�   
   .@�5�      
  $ Messvorgang starten��6   $> 8Starten des Messvorgangs zur Durchführung der Messungen��6_   $" /View/Images/Document-96.png��6�   $" /View/Images/Document-96.png��6�   $��5,0,0,0q�6  ��65   �� *MeasurementNewCommand+6  
  5�      $ Messvorgang abbrechen��6   $> 8Verwerfen des aktuellen Messvorgangs mit allen Messungen��6d   $  /View/Images/Delete-96.png��6�   $  /View/Images/Delete-96.png��6�   $��5,0,0,0q�6  ��67   �� *MeasurementCancelCommand+6  
  5�      $ Messvorgang beenden��6   $> 8Speichern des aktuellen Messvorgangs mit allen Messungen��6`   $! /View/Images/Save as-96.png��6�   $! /View/Images/Save as-96.png��6�   $	��5,0q�6  ��65   �� *MeasurementSaveCommand+6  5�      	  5�   
   .@�5�      
  $ Exportieren...��6   $< 6Exportieren der ausgewählten Messvorgänge nach Excel��6R   $  /View/Images/Export-96.png��6�   $  /View/Images/Export-96.png��6�   $��5,0,0,0q�6�   ��60   �� *ExportCommand+6�   5  /System.Windows.Controls.Ribbon.RibbonMenuButton  5�         Label$ Messvorgänge ansehen��6   $9 3Auflisten der zuletzt durchgeführten Messvorgänge��6�      LargeImageSource$' !/View/Images/Show Property-96.png��6�      SmallImageSource$' !/View/Images/Show Property-96.png��6�   $	��5,0q�6.  ��6:   �� *MeasurementSeries+{�6d   �� *SeriesEnabled+��5�      �� 5�      .R�5�      �� $��3,0,0,0q�6   ��6-   �� *Name+6E   5�      ��5�      �� 5�      " m�6   .�5�      ��  �@m�Command 6,   �� *,*DataContext.ChangeMeasurementSeriesCommand+ �� RelativeSource �� *FindAncestor+ �� AncestorType" ��� 5�       �@m�CommandParameter 65   �� *Id+5�      5�      5�      	  5�   
   .@�5�      
  $ Hilfe��6   $< 6Anzeige einer Bedienungsanleitung für die Applikation��6G   $ /View/Images/Help-96.png��6�   $ /View/Images/Help-96.png��6�   $	��5,0q�6�   ��6'   �� *HelpCommand+6�   5�      5�   	   5�      �� 5�      $��1��6   $��2��6    �� Orientation$ Vertical=�6.   .+�5�      �� $��1��6   $��2��6   $��Right=�6/   $��14(�6K   $��	0,10,20,0q�6Y   $
��Wrap=�6l   Ausgewählte Konfiguration:6�   �� 5�      $��1��6   $��2��6   $��Right=�6/   $��16(�6K   $
��Bold"�6Y   $��0,5,20,0q�6k   ��6}   �� *
ConfigName+6�   5�      � 5�      $��2��6   y�6   �� *
ConfigView+ �� 	Converter# [  �� ConverterParameter$
 Idle��.+�5�      �� $��/View/Images/logo.jpg��6   $	��600��6-   $��Center=�69   $��Center=�6V   6s   5�      � 5�      $��2��6   y�6   �� *
ConfigView+# [ $ Genauigkeitsmessung�� 5�      �� 5�   
   $��* �6   6'   �� 5�   
   $��* �6   6'   �� 5�   
   $��* �6   6'    5�      �� 5�   
   $
��Auto �6   6(   �� 5�   
   $
��Auto �6   6(   �� 5�   
   $��* �6   6%   �� 5�   
   $
��Auto �6   6(   .+�5�      � 
�������$��3��6     5�   
   �� 5�      $��2* �6   6*   �� 5�      $��5* �6   6*   �� 5�      $��5* �6   6*   .+�5�   
   �� $��30��6A   $��13(�6M   #��[	 6[   |�.  $* $Löschen des ausgewählten Messwerts��6�   ��6   �� *DeleteTriggeredValueCommand+.��6�   
Löschen6�   �� 5�   
   $��1��6   $' !Aufnehmen des aktuellen Messwerts��6D   |�.  #��[ 6�   ��6!   �� *TriggerCommand+.��6�   	Trigger6�   �� 5�   
   $��2��6   $[ UFestlegen des aktuellen Messwerts als Ausgangswert (0 mm) für die weiteren Messungen��6F   #��[ 6�   |�.  ��6!   �� *CalibrateCommand+.��6�   Kalibrieren6�   5�   	   � 5�      $��1��6   ���	#FF061A1D 5�   
   �� 5�      $��* �6   6'   �� 5�      $
��Auto �6   6*   .+�5�   
   �� $��Center=�61   $��0,15,0,0q�6N   $��	Digital-7)�6`   ���	#FFD60000$��36(�6�   $
��Bold"�6�   ��6   �� *Live.Value1+6�   �� 5�   
   $��1��6   $��0,0,0,2q�6   ���	#FFFF1152$��
20,0,20,15q�6P   6f   5�   	   � 5�      $��1��6   $��1��6   ���	#FF061A1D 5�   
   �� 5�      $��* �6   6'   �� 5�      $
��Auto �6   6*   .+�5�   
   �� $��Center=�61   $��0,15,0,0q�6N   $��	Digital-7)�6`   ���	#FFD60000$��36(�6�   $
��Bold"�6�   ��6   �� *Live.Value2+6�   �� 5�   
   $��1��6   $��0,0,0,2q�6   ���	#FF29FFFF$��
20,0,20,15q�6P   6f   5�   	   � 5�      $��1��6   $��2��6   ���	#FF061A1D 5�   
   �� 5�      $��* �6   6'   �� 5�      $
��Auto �6   6*   .+�5�   
   �� $��Center=�61   $��0,15,0,0q�6N   $��	Digital-7)�6`   ���	#FFD60000$��36(�6�   $
��Bold"�6�   ��6   �� *Live.Value3+6�   �� 5�   
   $��1��6   $��0,0,0,2q�6   ���	#FFFFFF21$��
20,0,20,15q�6P   6f   5�   	   &   System.Windows.Controls.DataGrid  5�      $��2��6   $��3��6       AutoGenerateColumns  .  !   HeadersVisibility$! Column=�6N   "   SelectionMode$" Single=�6i   #   CanUserAddRows# .  $   CanUserDeleteRows$ .  %   CanUserResizeColumns% .  &   CanUserResizeRows& .  $��0q�6K  ��6�   �� *$"CurrentAccuracySeries.Measurements+' �� SelectedIndex' 6�   �� *SelectedIndex+(   ColumnHeaderStyle( 5�   
   �� 5�      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5�      ��  � �� �	#FF2235556+   �� 5�       � �� �#FFFFFF6+   �� 5�       � ��$ 0q�60   �� 5�       � ��$ Center=�6;   �� 5�       � ��$ 20��6'   5�      )   Columns) 5�   
   4  .System.Windows.Controls.DataGridTemplateColumn  5�      ,  &System.Windows.Controls.DataGridColumn*   Header$* Sensor 1��6#   +   Width5  /System.Windows.Controls.DataGridLengthConverter$+ * 65   ,   
IsReadOnly, . -   CellTemplate- 5�      �� 5�      .R�5�      �� $��Center=�64   ��6   �� *Value1+��6Q   �� *Value1+# [ 6�   5�      5�        5�      $* Sensor 2��6#   $+ * 65   , . - 5�      �� 5�      .R�5�      �� $��Center=�64   ��6   �� *Value2+��6Q   �� *Value2+# [ 6�   5      5       5     $* Sensor 3��6#   $+ * 65   , . - 5     �� 5     .R�5     �� $��Center=�64   ��6   �� *Value3+��6Q   �� *Value3+# [ 6�   5     5	     5  	   � 5     $��3��6   $��3��6!    5  
   �� 5     $
��Auto �6   6,   �� 5     $��* �6   6)   �� 5     $
��Auto �6   6,   �� 5     $��* �6   6)   �� 5     $
��Auto �6   6,   �� 5     $��* �6   6)   �� 5     $
��Auto �6   6,   �� 5     $��* �6   6)   �� 5     $
��Auto �6   6,   �� 5     $��* �6   6)   �� 5     $
��Auto �6   6,   �� 5     $��* �6   6)    5  
   �� 5     $��* �6   6'   �� 5     $��* �6   6'   �� 5      $��* �6   6'   .+�5"  
   � $��0��6   $��4��6   ���	#FFFF1152.+�5#     �� $��Center=�6   
���   �$��11(�6B   .��6P   Zusatzwerte Sensor 16f   5$     � 5%  
   $��4��6   $��4��6   ���	#FF29FFFF.+�5&     �� $��Center=�6   
���   �$��11(�6B   .��6P   Zusatzwerte Sensor 26f   5'     � 5(  
   $��8��6   $��4��6   ���	#FFFFFF21.+�5)     �� $��Center=�6   
���   �$��11(�6B   .��6P   Zusatzwerte Sensor 36f   5*     �� 5,  
   $��0��6   $��1��6    $��Center=�6-   ���	#FF07001D���#FFFFFF.��6}   ø6�   �� 5-  
   $��1��6   $��1��6    . �� ContentStringFormat$. 
{0:0.0000}��6U   
�������$	��0,1q�6�   ���	#FF00020C��6-   �� *AverageValue.Value1+6�   �� 5.  
   $��2��6   $��1��6    $��Center=�6-   ���	#FF07001D���#FFFFFF.��6}   σ6�   �� 5/  
   $��3��6   $��1��6    $. 
{0:0.0000}��6Z   
�������$	��0,1q�6�   ���	#FF00020C��6-   �� *StandardDeviation.Value1+6�   �� 50  
   $��0��6   $��2��6    $��10(�6-   $��Center=�6;   $��Center=�6_   ���	#FF07001D���#FFFFFF.��6�   Min6�   �� 51  
   $��1��6   $��2��6    $. 
{0:0.0000}��6Q   
�������$��0,0,0,1q�6�   ���	#FF00020C��6-   �� *MinValue.Value1+6�   �� 52  
   $��2��6   $��2��6    $��10(�6-   $��Center=�6;   $��Center=�6_   ���	#FF07001D���#FFFFFF.��6�   Max6�   �� 53  
   $��3��6   $��2��6    $. 
{0:0.0000}��6Q   
�������$��0,0,0,1q�6�   ���	#FF00020C��6-   �� *MaxValue.Value1+6�   �� 55  
   $��4��6   $��1��6    $��Center=�6-   ���	#FF07001D���#FFFFFF.��6}   ø6�   �� 56  
   $��5��6   $��1��6    $. 
{0:0.0000}��6U   
�������$	��0,1q�6�   ���	#FF00020C��6-   �� *AverageValue.Value2+6�   �� 57  
   $��6��6   $��1��6    $��Center=�6-   ���	#FF07001D���#FFFFFF.��6}   σ6�   �� 58  
   $��7��6   $��1��6    $. 
{0:0.0000}��6Z   
�������$	��0,1q�6�   ���	#FF00020C��6-   �� *StandardDeviation.Value2+6�   �� 59  
   $��4��6   $��2��6    $��10(�6-   $��Center=�6;   $��Center=�6_   ���	#FF07001D���#FFFFFF.��6�   Min6�   �� 5:  
   $��5��6   $��2��6    $. 
{0:0.0000}��6Q   
�������$��0,0,0,1q�6�   ���	#FF00020C��6-   �� *MinValue.Value2+6�   �� 5;  
   $��6��6   $��2��6    $��10(�6-   $��Center=�6;   $��Center=�6_   ���	#FF07001D���#FFFFFF.��6�   Max6�   �� 5<  
   $��7��6   $��2��6    $. 
{0:0.0000}��6Q   
�������$��0,0,0,1q�6�   ���	#FF00020C��6-   �� *MaxValue.Value2+6�   �� 5>  
   $��8��6   $��1��6    $��Center=�6-   ���	#FF07001D���#FFFFFF.��6}   ø6�   �� 5?  
   $��9��6   $��1��6    $. 
{0:0.0000}��6U   
�������$	��0,1q�6�   ���	#FF00020C��6-   �� *AverageValue.Value3+6�   �� 5@  
   $��10��6   $��1��6!   $��Center=�6.   ���	#FF07001D���#FFFFFF.��6~   σ6�   �� 5A  
   $��11��6   $��1��6!   $. 
{0:0.0000}��6[   
�������$	��0,1q�6�   ���	#FF00020C��6.   �� *StandardDeviation.Value3+6�   �� 5B  
   $��8��6   $��2��6    $��10(�6-   $��Center=�6;   $��Center=�6_   ���	#FF07001D���#FFFFFF.��6�   Min6�   �� 5C  
   $��9��6   $��2��6    $. 
{0:0.0000}��6Q   
�������$��0,0,0,1q�6�   ���	#FF00020C��6-   �� *MinValue.Value3+6�   �� 5D  
   $��10��6   $��2��6!   $��10(�6.   $��Center=�6<   $��Center=�6`   ���	#FF07001D���#FFFFFF.��6�   Max6�   �� 5E  
   $��11��6   $��2��6!   $. 
{0:0.0000}��6R   
�������$��0,0,0,1q�6�   ���	#FF00020C��6.   �� *MaxValue.Value3+6�   5F  	   5G     � 5L     $��2��6   y�6   �� *
ConfigView+# [ $ WegZeitMessung�� 5M     �� 5N  
   $
��Auto �6   6(   �� 5O  
   $��* �6   6%   .+�5S     �  5T  
   �� 5U     $��3* �6   6*   �� 5V     $��3* �6   6*   �� 5W     $��5* �6   6*    5Y  
   �� 5Z     $��* �6   6'   �� 5[     $��* �6   6'   .+�5]  
   � ���	#FF061A1D$��2��6&    5^     �� 5_     $��* �6   6)   �� 5`     $
��Auto �6   6,   .+�5b     �� $��Center=�63   $��0,16,0,0q�6P   $��	Digital-7)�6b   ���	#FFD60000$��36(�6�   $
��Bold"�6�   ��6   �� *Live.Value3+6�   �� 5c     $��1��6   $��0,0,0,2q�6    ���	#FFFF1152$��
20,0,20,21q�6R   6h   5d     � 5f  
   $��1��6   ���	#FF061A1D$��2��66    5g     �� 5h     $��* �6   6)   �� 5i     $
��Auto �6   6,   .+�5k     �� $��Center=�6-   $��0,15,0,0q�6J   $��	Digital-7)�6\   ���	#FF29FFFF$��36(�6�   $
��Bold"�6�   ��6   �� *Timer+6�   �� 5l     $��1��6   $��
20,0,20,10q�6#   $��Center=�67   ���	#FF29FFFF$��	Digital-7)�6k   $��16(�6�   Time6�   5m     �� 5o  
   $��2��6   #��[ 6�   |�.  $" Starten der Weg-Zeit-Messung��6�   ��6!   �� *StartCommand+{�6B   �� *StartEnabled+y�6e   �� *	StartStop+# [ .��6  Start6#  �� 5p  
   $��2��6   #��[ 6�   |�.  $, &Beenden der aktuellen Weg-Zeit-Messung��6�   ��6!   �� *StopCommand+y�6A   �� *	StartStop+# [ .��6  Stop6  �� 5q  
   $��2��6   $��1��6!   $[ UFestlegen des aktuellen Messwerts als Ausgangswert (0 mm) für die weiteren Messungen��6S   #��[ 6�   |�.  ��6.   �� *CalibrateCommand+.��6�   Kalibrieren6�   5r  	   �� 5u     $��2��6   $��1��6'   .@�5v  
   �� $��Weg-Zeit��6   .��5w     � .+�5x     �� " 	 WpfAnimatedGif.ImageBehavior/   AnimatedSource$/ /View/Images/loading.gif��6   $��65��6P   0 K� ZIndex$0 1��6�   y�6[   �� *	Loading+# [ 6�   >  8System.Windows.Controls.DataVisualization.Charting.Chart  5y     $��0,-15,10,-5q�6   ��5z     �� 5{     1 �� Color$1 Black��6"   2 �� Opacity$2 0Q�60   3   Series3 5~     C  =System.Windows.Controls.DataVisualization.Charting.LineSeries  H  BSystem.Windows.Controls.DataVisualization.Charting.DataPointSeries4   DataPointStyle#4 [ 6!   y�6V   �� *GraphVisible+# [ 5   IndependentValueBinding5 6�   �� $ Item1�6   DependentValueBinding6 6�   �� $ Item2�7   ItemsSource7 6  �� **(CurrentWayTimeSeries.WayTimeMeasurements+5     8   LegendStyle8 5�     �� 5�     " ��6   .�5�     ��  � ��$ 0��6,   �� 5�      � ��$ 0��6-   5�     9   Axes9 5�     C  =System.Windows.Controls.DataVisualization.Charting.LinearAxis  =  7System.Windows.Controls.DataVisualization.Charting.Axis:   Orientation$: X=�6!   D  >System.Windows.Controls.DataVisualization.Charting.DisplayAxis;   Title$; 	Zeit in s��61     5�     $: Y=�6!   $; 	Weg in mm��61   5�     5�     5�     �� 5�  
   $��Geschwindigkeit-Zeit��6   .��5�     � .+�5�     �� $/ /View/Images/loading.gif��6   $��65��6P   $0 1��6�   y�6[   �� *	Loading+# [ 6�     5�     $��0,-15,10,-5q�6   ��5�     �� 5�     $1 Black��6"   $2 0Q�60   3 5�       #4 [ 6!   y�6V   �� *GraphVisible+# [ 5 6�   �� $ Item1�6 6�   �� $ Item2�7 6  �� */-CurrentWayTimeSeries.VelocityTimeMeasurements+?  9System.Windows.Controls.DataVisualization.Charting.Series<   Title< 6T  �� *CurrentMeasurementSeries.Name+5�     8 5�     �� 5�     " ��6   .�5�     ��  � ��$ 0��6,   �� 5�      � ��$ 0��6-   5�     9 5�       $: X=�6!   $; 	Zeit in s��61     5�     $: Y=�6!   $; Geschwindigkeit in mm/s��61   5�     5�     5�     �� 5�  
   $��Beschleunigung-Zeit��6   .��5�     � .+�5�     �� $/ /View/Images/loading.gif��6   $��65��6P   $0 1��6�   y�6[   �� *	Loading+# [ 6�     5�     $��0,-15,10,-5q�6   ��5�     �� 5�     $1 Black��6"   $2 0Q�60   3 5�       #4 [ 6!   y�6V   �� *GraphVisible+# [ 5 6�   �� $ Item1�6 6�   �� $ Item2�7 6  �� *31CurrentWayTimeSeries.AccelerationTimeMeasurements+5�     8 5�     �� 5�     " ��6   .�5�     ��  � ��$ 0��6,   �� 5�      � ��$ 0��6-   5�     9 5�       $: X=�6!   $; 	Zeit in s��61     5�     $: Y=�6!   $; Beschleunigung in mm/s²��61   5�     5�     5�     5�  	   5�     �� 5�     $��1��6   $��2��6   ���	#FF00020C$��2,0,0,2q�6B   ._�5�     � $��1��6   $��1��6    5�  
   �� 5�     $��* �6   6)   �� 5�     $��* �6   6)    5�  
   �� 5�     $
��Auto �6   6*   �� 5�     $��* �6   6'   �� 5�     $
��Auto �6   6*   .+�5�  
   �� ���	#FF051C27$��2��6,   .+�5�     �� $��Center=�6   
�������$��0,3,0,0q�6B   .��6S   
App-Code6]   �� 5�     $��Center=�6   $��0,0,0,10q�6L   
���������63   �� *	AppCode+6s   5�     �� 5�  
   $��2��6   $��1��6+   ���	#FF1B2323$��3,5,0,0q�6m   ��68   �� *Users+��5�     �� 5�     .R�5�     ]� .+�5�     �� $%��/View/Images/Filled Flag-96.png��6   $��15��6A   $��2,2,6,5q�6M   y�6^   �� *IsTriggerer+# [ 6�   �� 5�     $!��/View/Images/Visible-96.png��6   $��15��6=   $��2,2,6,5q�6I   y�6Z   �� *IsTriggerer+# [ 6�   �� 5�     $��Right=�6   $��0q�60   $O IBenennung eines Zuschauers zum Auslöser, um Messungen starten zu können��6D   #��[ 6�   |�.  ��6�   ��  �� *FindAncestor+" �$( "DataContext.ChangeTriggererCommand���6W  �� *Id+.��5�     �� $ 
Horizontal=�6   .+�5�     �� $*��$/View/Images/Filled Flag Plus-96.png��6   $��15��6J   $	��4,0q�6V   6e   5�     5�     �� 5�     
���������6   �� *Name+6G   5�     5�     5�     5�  	   5�     � 5�     $��2��6   $��4��6   ���	#FF1B2323y�6C   �� *ErrorVisible+# [ .+�5�     � $	��Top=�6    5�  
   �� 5�     $��* �6   6)   �� 5�     $
��Auto �6   6,   .+�5�  
   �� ���	#FFBF0000$��Sitka Display)�6I   $��WrapWithOverflow=�6d   $��13(�6�   $��5,4,0,3q�6�   ��6   �� *ErrorMessage+6�   �� 5�  
   $��1��6   |�.  #��[ 6_   $��20��6�   $��20��6�   $��1q�6�   $	��Top=�6�   ��6!   �� *HideErrorMessageCommand+��5�     �� 5�     $1 Black��6   $2 0Q�6,   ��5�     �� 5�     $1 Black��6   $2 0Q�6,   .��5�     �� $ ��/View/Images/Delete-96.png��6   68   5�     5�  	   5�     5�     5�     