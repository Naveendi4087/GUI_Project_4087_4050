   M S B A M L   `   `   `  ����F  BGUI_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:GUI_Project.WindowsGUI_Project.Windows  5   	   g cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137akOclr-namespace:MahApps.Metro.IconPacks;assembly=MahApps.Metro.IconPacks.MaterialMahApps.Metro.IconPacks 69   A%clr-namespace:GUI_Project.View_ModelsGUI_Project.View_Models  6�   .    (GUI_Project.Windows.StudentDetailsWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:GUI_Project.Windows     5   	   `IconOclr-namespace:MahApps.Metro.IconPacks;assembly=MahApps.Metro.IconPacks.Material     69   8local1%clr-namespace:GUI_Project.View_Models     6�     � Title$  StudentDetailsWindow��5   	   $	��550��6&   $	��800��63    � WindowStyle$
 None=�6?    � AllowsTransparency$
 True��6R   
������  � 
ResizeMode$ NoResize=�5	   "    � WindowStartupLocation$ CenterScreen=�68    � DataContext 5
      4   .GUI_Project.View_Models.StudentDetailsWindowVM  5   
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
��auto �6$   �� 5#      $��* �6$   .+�5&      �� -   5         ��Name$ closeButton��5&         closeButton#��[  6J   $��Right=�6o   $��0 0 30 0q�6�   .��5'      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Close=�6,   $��12��69   5(      �� 5*      $��1��6   $��STUDENT DETAILS��6)     mainHeading#��[ 6@   $��20(�6e   $��
0 -40 0 10q�6s   �� 5,      $��2��6    �� Orientation$ 
Horizontal=�6*   $��Center=�6C   .+�5-      �� -   5        $��EDIT STUDENT��5-        buttonStyle#��[ 64   $��50��6Y   $	��150��6e   $��16(�6q   $��10q�6   6�   �� 5.      -   5        $��ADD RESULTS��5.      #��[ 63   $��50��6X   $	��150��6d   $��16(�6p   $��10q�6~   6�   �� 5/      -   5        $��DELETE STUDENT��5/      #��[ 66   $��50��6[   $	��150��6g   $��16(�6s   $��10q�6�   6�   50      &   System.Windows.Controls.DataGrid  52        DataGridCellStyle1   	CellStyle# �  6     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6L     DataGridRowStyle1   RowStyle# �  6�   $��3��6�      AutoGenerateColumns$ False��6�   $��15 10 15 30q�6�   "   VerticalScrollBarVisibility$
 Auto=�6  ��6�   �� *
Students+ �� SelectedItem 6@  �� *SelectedStudent+   Columns 53      4  .System.Windows.Controls.DataGridTemplateColumn  54      ,  &System.Windows.Controls.DataGridColumn   Header$ 	FULL NAME��61      
IsReadOnly$
 True��6D      CanUserResize$ False��6V      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6l      CellTemplate 55      �� 56   "   .R�57   &   �� $��Center=�6J   ��60   �� *
FullName+6J   58   #   5:        5<      $ EMAIL��61   $
 True��6@   $ False��6R   $ * 6h    5=      �� 5>   "   .R�5?   &   �� $
��Left=�6G   $	��5 0q�6b   $
��Wrap=�6o   ��60   �� *Email+6o   5@   #   5B        5D      $ 	TELEPHONE��61   $
 True��6D   $ False��6V   $ * 6l    5E      �� 5F   "   .R�5G   &   �� $
��Left=�6K   $	��5 0q�6f   $
��Wrap=�6s   ��60   �� *	Telephone+6s   5H   #   5J        5L      $	 GPA��61   $
 True��6>   $ False��6P   $ 60 6f    5M      �� 5N   "   .R�5O   &   �� $
��Left=�6E   $	��5 0q�6`   $
��Wrap=�6m   ��60   �� *GPA+6m   5P   #   5R      5T      5U      5V      5X      5Y      