   M S B A M L   `   `   `  ����F  BGUI_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:GUI_Project.WindowsGUI_Project.Windows  5   	   g cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137akOclr-namespace:MahApps.Metro.IconPacks;assembly=MahApps.Metro.IconPacks.MaterialMahApps.Metro.IconPacks 69   A%clr-namespace:GUI_Project.View_ModelsGUI_Project.View_Models  5   	   (    "GUI_Project.Windows.EditUserWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:GUI_Project.Windows     5   	   `IconOclr-namespace:MahApps.Metro.IconPacks;assembly=MahApps.Metro.IconPacks.Material     69   8local1%clr-namespace:GUI_Project.View_Models     5   	     � Title$  EditUserWindow��5	   	   $	��550��6    $	��500��6-    � WindowStyle$
 None=�69    � AllowsTransparency$
 True��6L   
������  � 
ResizeMode$ NoResize=�5
   "    � WindowStartupLocation$ CenterScreen=�68    � DataContext 5      .   (GUI_Project.View_Models.EditUserWindowVM  5   
   .��5      �� -   5         �� CornerRadius$ 50��5      ��5   
   �� 5       �� ImageSource$ /Images/backimage.png��6   ._�5   
   �� $ 50��6   $��5q�6#    J� Opacity$
 0.91Q�67   ��5      �� 5      	 �� 
StartPoint$		 0,0&�6&   
 �� EndPoint$	
 1,1&�67   .��5      �  � Color$ #462ADB��6#    � Offset$ 0Q�63   � 5      $ #DA34AE��6#   $	 0.5Q�63   � 5      $ #462ADB��6#   $ 1Q�63   5      ��5      �� 5      $		 0,0&�6&   $	
 1,1&�67   .��5      � $ #060531��6#   $ 0Q�63   � 5      $ #1B1448��6#   $ 1Q�63   5      ._�5!      �  � RowDefinitions 5"      �� 5#      $	��100 �6$   �� 5$      $��* �6$   .+�5'      �� -   5         ��Name$ closeButton��5'         closeButton#��[  6k   $��Right=�6�   $��
0 -30 30 0q�6�   ��6J   �� *CloseCommand+.��5(      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Close=�6,   $��12��69   5)      � 5*      $��1��6   $��20q�6$    5+      �� 5,      $
��auto �6(   �� 5-      $
��auto �6(   �� 5.      $
��auto �6(   �� 5/      $
��auto �6(   �� 50      $
��auto �6(   �� 51      $��* �6(   .+�53      �� $��	EDIT USER��6      mainHeading#��[ 61   $��20(�6V   $��
0 -70 0 10q�6d   �� 55      $��0��6!   .+�56      �� $��
FIRST NAME��6$     textBoxHeading#��[ 66   $��	30,20,0,0q�6^   �� 57      -   5         ��Name$ un��57   "   $��
40,-5,30,5q�6/    
 formTB#��[ 6C   ��6c   �� *Fn+58      �� 5:      $��1��6!   .+�5;      �� $��	LAST NAME��6$   #��[ 65   $��	30,10,0,0q�6]   �� 5<      -   5        $ ln��5<   "   $��
40,-5,30,5q�6/   #��[ 6C   ��6c   �� *Ln+5=      �� 5?      $��2��6!   .+�5@      �� $��E-MAIL��6$   #��[ 62   $��	30,10,0,0q�6Z   �� 5A      -   5        $ email��5A   "   $��
40,-5,30,5q�62   #��[ 6F   ��6f   �� *Email+5B      �� 5D      $��3��6!   .+�5E      �� $��	TELEPHONE��6$   #��[ 65   $��	30,10,0,0q�6]   �� 5F      -   5        $ 	telephone��5F   "   $��
40,-5,30,5q�66   #��[ 6J   ��6j   �� *Tel+5G      �� 5I      $��5��6!   .+�5J      �� $��PASSWORD��6$   #��[ 64   $��	30,10,0,0q�6\   �� 5K      -   5        $ password��5K   "   $��
40,-5,30,5q�65   #��[ 6I   ��6i   �� *Pw+5L      �� 5N      $��6��6   $��CHANGE USER��6*     buttonStyle#��[ 6@   $��0 50 0 3q�6e   ��6w   �� *AddUserCommand+5O      5P      5Q      5S      5T      