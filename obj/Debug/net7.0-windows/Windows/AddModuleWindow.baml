   M S B A M L   `   `   `  ����F  BGUI_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:GUI_Project.WindowsGUI_Project.Windows  5   	   g cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137akOclr-namespace:MahApps.Metro.IconPacks;assembly=MahApps.Metro.IconPacks.MaterialMahApps.Metro.IconPacks 69   A%clr-namespace:GUI_Project.View_ModelsGUI_Project.View_Models  6�   )    #GUI_Project.Windows.AddModuleWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:GUI_Project.Windows     5   	   `IconOclr-namespace:MahApps.Metro.IconPacks;assembly=MahApps.Metro.IconPacks.Material     69   8local1%clr-namespace:GUI_Project.View_Models     6�     � Title$  AddModuleWindow��5   	   $	��550��6!   $	��500��6.    � WindowStyle$
 None=�6:    � AllowsTransparency$
 True��6M   
������  � 
ResizeMode$ NoResize=�5	   "    � WindowStartupLocation$ CenterScreen=�68    � DataContext 5
      /   )GUI_Project.View_Models.AddModuleWindowVM  5   
   .��5      �� -   5         �� CornerRadius$ 50��5      ��5   
   �� 5       �� ImageSource$ /Images/backimage.png��6   ._�5   
   �� $ 50��6   $��5q�6#    J� Opacity$
 0.91Q�67   ��5      �� 5      	 �� 
StartPoint$		 0,0&�6&   
 �� EndPoint$	
 1,1&�67   .��5      �  � Color$ #462ADB��6#    � Offset$ 0Q�63   � 5      $ #DA34AE��6#   $	 0.5Q�63   � 5      $ #462ADB��6#   $ 1Q�63   5      ��5      �� 5      $		 0,0&�6&   $	
 1,1&�67   .��5      � $ #060531��6#   $ 0Q�63   � 5      $ #1B1448��6#   $ 1Q�63   5      ._�5       �  � RowDefinitions 5!      �� 5"      $	��100 �6$   �� 5#      $��* �6$   .+�5&      �� -   5         ��Name$ closeButton��5&         closeButton#��[  6J   $��Right=�6o   $��
0 -30 30 0q�6�   .��5'      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Close=�6,   $��12��69   5(      � 5)      $��1��6   $��30q�6$    5*      �� 5+      $
��auto �6(   �� 5,      $
��auto �6(   �� 5-      $
��auto �6(   �� 5.      $
��auto �6(   �� 5/      $��* �6(   .+�51      �� $��
ADD MODULE��6      mainHeading#��[ 62   $��20(�6W   $��
0 -70 0 10q�6e   �� 53      $��0��6!   .+�54      �� $��MODULE NAME��6$     textBoxHeading#��[ 67   $��	30,50,0,0q�6_   �� 55      -   5         ��Name$ mn��55   "   $��
40,-5,30,5q�6/    
 formTB#��[ 6C   ��6c   �� *MName+56      �� 58      $��1��6!   .+�59      �� $��MODULE CODE��6$   #��[ 67   $��	30,10,0,0q�6_   �� 5:      -   5        $ mc��5:   "   $��
40,-5,30,5q�6/   #��[ 6C   ��6c   �� *MCode+5;      �� 5=      $��2��6!   .+�5>      �� $��SEMESTER��6$   #��[ 64   $��	30,10,0,0q�6\   �� 5?      -   5        $	 sem��5?   "   $��
40,-5,30,5q�60   #��[ 6D   ��6d   �� *Sem+5@      �� 5B      $��3��6!   .+�5C      �� $��CREDITS��6$   #��[ 63   $��	30,10,0,0q�6[   �� 5D      -   5        $ credits��5D   "   $��
40,-5,30,5q�64   #��[ 6H   ��6h   �� *	Credits+5E      �� 5G      $��7��6   $��
ADD MODULE��6*     buttonStyle#��[ 6?   $��0 50 0 3q�6d   ��6v   �� *addModuleCommand+5H      5I      5J      5L      5M      