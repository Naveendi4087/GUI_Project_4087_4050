   M S B A M L   `   `   `  ����F  BGUI_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:GUI_Project.WindowsGUI_Project.Windows  5   	   g cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137akOclr-namespace:MahApps.Metro.IconPacks;assembly=MahApps.Metro.IconPacks.MaterialMahApps.Metro.IconPacks 69   A%clr-namespace:GUI_Project.View_ModelsGUI_Project.View_Models  6�   +    %GUI_Project.Windows.EditStudentWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:GUI_Project.Windows     5   	   `IconOclr-namespace:MahApps.Metro.IconPacks;assembly=MahApps.Metro.IconPacks.Material     69   8local1%clr-namespace:GUI_Project.View_Models     6�     � Title$  EditStudentWindow��5   	   $	��550��6#   $	��800��60    � WindowStyle$
 None=�6<    � AllowsTransparency$
 True��6O   
������  � 
ResizeMode$ NoResize=�5	   "    � WindowStartupLocation$ CenterScreen=�68    � DataContext 5
      1   +GUI_Project.View_Models.EditStudentWindowVM  5   
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
��auto �6$   �� 5#      $��* �6$   .+�5&      �� -   5         ��Name$ closeButton��5&         closeButton#��[  6J   $��Right=�6o   $��0 0 30 0q�6�   .��5'      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Close=�6,   $��12��69   5(      �� 5*      $��1��6   $��EDIT STUDENT��6)     mainHeading#��[ 6=   $��20(�6b   $��
0 -40 0 10q�6p   � 5,      $��2��6    � ColumnDefinitions 5-      �� 5.      $��* �6+   �� 5/      $��* �6+    51      �� 52      $
��auto �6(   �� 53      $
��auto �6(   �� 54      $
��auto �6(   .+�57      �� $��0��6!   $��0��6.   .+�58      �� $��
FIRST NAME��6$     textBoxHeading#��[ 66   $��	30,20,0,0q�6^   �� 59      -   5         ��Name$ fn��59   "   $��
40,-5,30,5q�6/    
 formTB#��[ 6C   ��6c   �� *Fn+5:      �� 5<      $��0��6!   $��1��6.   .+�5=      �� $��	LAST NAME��6$   #��[ 65   $��	30,20,0,0q�6]   �� 5>      -   5        $ ln��5>   "   $��
40,-5,30,5q�6/   #��[ 6C   ��6c   �� *Ln+5?      �� 5A      $��1��6!   $��0��6.   .+�5B      �� $��EMAIL��6$   #��[ 61   $��	30,20,0,0q�6Y   �� 5C      -   5        $ email��5C   "   $��
40,-5,30,5q�62   #��[ 6F   ��6f   �� *Email+5D      �� 5F      $��1��6!   $��1��6.   .+�5G      �� $��	TELEPHONE��6$   #��[ 65   $��	30,20,0,0q�6]   �� 5H      -   5        $	 tel��5H   "   $��
40,-5,30,5q�60   #��[ 6D   ��6d   �� *Tel+5I      5L      � 5M      $��3��6    5N      �� 5O      $��* �6+   �� 5P      $	��100 �6+   �� 5Q      $��* �6+    5S      �� 5T      $
��auto �6(   �� 5U      $
��auto �6(   �� 5V      $��* �6(   .+�5Y      �� $��MODULE LIST��6    #��[ 63   $��	0,20,0,10q�6[   $��Center=�6n   &   System.Windows.Controls.DataGrid  5[        DataGridCellStyle1   	CellStyle# �  6     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6P     DataGridRowStyle1   RowStyle# �  6�   $��1��6�      AutoGenerateColumns$ False��6�   $��10 -10 10 0q�6�   "   VerticalScrollBarVisibility$
 Auto=�6  $	��260��6A  ��6�   �� *	Modules+ �� SelectedItem 6N  �� *AddingModule+   Columns 5\      4  .System.Windows.Controls.DataGridTemplateColumn  5]      ,  &System.Windows.Controls.DataGridColumn   Header$ MODULE CODE��65      
IsReadOnly$
 True��6J      CanUserResize$ False��6\      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6r      CellTemplate 5^   "   �� 5_   &   .R�5`   *   �� $��Center=�6P   ��64   �� *
ModuleCode+6P   5a   '   5c        5e      $ MODULE NAME��65   $
 True��6J   $ False��6\   $ * 6r    5f   "   �� 5g   &   .R�5h   *   �� $
��Left=�6P   $	��5 0q�6k   $
��Wrap=�6x   ��64   �� *
ModuleName+6x   5i   '   5k      5o      �� 5q      $��2��6    $��SELECTED MODULES��60   #��[ 6H   $��	0,20,0,10q�6p   $��Center=�6�     5s      # �  6   # �  6P   # �  6�   $	��260��6�   $��1��6�   $��2��6�   $ False��6�   $��10 -45 10 -40q�6  $
 Auto=�6E  ��6  �� *SelectedModules+ 6h  �� *RemovingModule+ 5t        5u      $ MODULE CODE��65   $
 True��6J   $ False��6\   $	 100 6r    5v   "   �� 5w   &   .R�5x   *   �� $��Center=�6P   ��64   �� *
ModuleName+6P   5y   '   5{        5}      $ MODULE NAME��65   $
 True��6J   $ False��6\   $ * 6r    5~   "   �� 5   &   .R�5�   *   �� $
��Left=�6P   $	��5 0q�6k   $
��Wrap=�6x   ��64   �� *
ModuleCode+6x   5�   '   5�      5�      �� 5�      $��1��6!   $��1��6.    �� Orientation$ Vertical=�6>   .+�5�      �� $��
ADD MODULE��6!   $��10(�66   $	��106��6D     buttonStyle#��[ 6P   $��	-7 20 0 3q�6u   ��6�   �� *AddModuleCommand+�� 5�      $��10(�6!   $	��106��6/   $��REMOVE MODULE��6;   #��[ 6S   $��-7 5 0 3q�6x   ��6�   �� *RemoveModuleCommand+�� 5�      -   5        $��12(�5�   !   $	��106��6/   $��EDIT STUDENT��6;   #��[ 6R   $��	-7 40 0 3q�6w   6�   5�      5�      5�      5�      5�      5�      