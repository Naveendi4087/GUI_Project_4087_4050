   M S B A M L   `   `   `  ����F  BGUI_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:GUI_Project.WindowsGUI_Project.Windows  5   	   g cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137akOclr-namespace:MahApps.Metro.IconPacks;assembly=MahApps.Metro.IconPacks.MaterialMahApps.Metro.IconPacks 69   A%clr-namespace:GUI_Project.View_ModelsGUI_Project.View_Models  6�   *    $GUI_Project.Windows.AddResultsWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:GUI_Project.Windows     5   	   `IconOclr-namespace:MahApps.Metro.IconPacks;assembly=MahApps.Metro.IconPacks.Material     69   8local1%clr-namespace:GUI_Project.View_Models     6�     � Title$  AddResultsWindow��5   	   $	��550��6"   $	��800��6/    � WindowStyle$
 None=�6;    � AllowsTransparency$
 True��6N   
������  � 
ResizeMode$ NoResize=�5	   "    � WindowStartupLocation$ CenterScreen=�68    � DataContext 5
      0   *GUI_Project.View_Models.AddResultsWindowVM  5   
   .��5      �� -   5         �� CornerRadius$ 50��5      ._�5   
   �� $ 50��6   $��5q�6#   ��5      �� 5       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�67   .��5      � 	 � Color$	 #462ADB��6#   
 � Offset$
 0Q�63   � 5      $	 #DA34AE��6#   $	
 0.5Q�63   � 5      $	 #462ADB��6#   $
 1Q�63   5      ��5      �� 5      $	 0,0&�6&   $	 1,1&�67   .��5      � $	 #060531��6#   $
 0Q�63   � 5      $	 #1B1448��6#   $
 1Q�63   5      ._�5      �  � RowDefinitions 5      �� 5       $��60 �6$   �� 5!      $
��auto �6$   �� 5"      $
��auto �6$   �� 5#      $��* �6$   .+�5&      �� -   5         ��Name$ closeButton��5&         closeButton#��[  6J   $��Right=�6o   $��0 0 30 0q�6�   .��5'      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Close=�6,   $��12��69   5(      �� 5*      $��1��6   $��ADD/EDIT RESULTS��6)     mainHeading#��[ 6A   $��20(�6f   $��
0 -40 0 10q�6t   � 5,      $��2��6    5-      �� 5.      $
��auto �6(   �� 5/      $
��auto �6(   �� 50      $
��auto �6(   .+�53      �� $��0��6!    �� Orientation$ 
Horizontal=�6.   .+�54      �� $��STUDENT NAME  :  ��6$     textBoxHeading#��[ 6=   $��	30,20,0,0q�6e   �� 55      $��
40,20,30,5q�6$   #��[ 68   ��6`   �� *Student.FullName+56      58      � 59      $��3��6    � ColumnDefinitions 5:      �� 5;      $��* �6+   �� 5<      $	��100 �6+   �� 5=      $��* �6+    5?      �� 5@      $
��auto �6(   �� 5A      $
��auto �6(   �� 5B      $��* �6(   .+�5E      �� $��MODULE LIST��6    #��[ 63   $��	0,20,0,10q�6[   $��Center=�6n   &   System.Windows.Controls.DataGrid  5G      -   5          Name$ modules��5G        DataGridCellStyle1   	CellStyle# �  60     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6a     DataGridRowStyle1   RowStyle# �  6�   $��1��6�      AutoGenerateColumns$ False��6�   $��10 -10 10 0q�6�   "   VerticalScrollBarVisibility$
 Auto=�67  $	��360��6Z  ��6  �� *SelectedModules+ �� SelectedItem 6g  �� *SelectedModule+   Columns 5H      4  .System.Windows.Controls.DataGridTemplateColumn  5I      ,  &System.Windows.Controls.DataGridColumn   Header$ MODULE CODE��65      
IsReadOnly$
 True��6J      CanUserResize$ False��6\      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6r      CellTemplate 5J   "   �� 5K   &   .R�5L   *   �� $��Center=�6P   ��64   �� *
ModuleCode+6P   5M   '   5O        5Q      $ MODULE NAME��65   $
 True��6J   $ False��6\   $ * 6r    5R   "   �� 5S   &   .R�5T   *   �� $
��Left=�6P   $	��5 0q�6k   $
��Wrap=�6x   ��64   �� *
ModuleName+6x   5U   '   5W      5[      �� 5]      $��2��6    $��RESULTS��60   #��[ 6?   $��	0,20,0,10q�6g   $��Center=�6z     5_      # �  6   # �  6P   # �  6�   $	��360��6�   $��1��6�   $��2��6�   $ False��6�   $��10 -45 10 -40q�6  $
 Auto=�6=  ��6  �� *	Results+ 6`  �� *SelectedResult+ 5`        5a      $ MODULE CODE��65   $
 True��6J   $ False��6\   $ * 6r    5b   "   �� 5c   &   .R�5d   *   �� $��Center=�6W   ��64   �� *Module.ModuleCode+6W   5e   '   5g        5i      $ MARKS��65   $
 True��6D   $ False��6V   $ * 6l    5j   "   �� 5k   &   .R�5l   *   �� $
��Left=�6K   $	��5 0q�6f   $
��Wrap=�6s   ��64   �� *Marks+6s   5m   '   5o      5s      �� 5w      $��1��6!   $��1��6.   $ Vertical=�6>   .+�5x      �� -   5        $��
ADD RESULT��5x   !   $��10(�66   $	��106��6D     buttonStyle#��[ 6P   $��	-7 20 0 3q�6u   6�   �� 5z      -   5        $��10(�5z   !   $	��106��6/   $��REMOVE RESULT��6;   #��[ 6S   $��-7 5 0 3q�6x   6�   �� 5|      -   5        $��12(�5|   !   $	��106��6/   $��EDIT RESULT��6;   #��[ 6Q   $��	-7 40 0 3q�6v   6�   5}      5      5�      5�      5�      5�      