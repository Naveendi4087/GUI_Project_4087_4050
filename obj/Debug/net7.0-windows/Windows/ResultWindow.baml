   M S B A M L   `   `   `  ����F  BGUI_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:GUI_Project.WindowsGUI_Project.Windows  5   	   g cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137akOclr-namespace:MahApps.Metro.IconPacks;assembly=MahApps.Metro.IconPacks.MaterialMahApps.Metro.IconPacks 69   A%clr-namespace:GUI_Project.View_ModelsGUI_Project.View_Models  6�   &     GUI_Project.Windows.ResultWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:GUI_Project.Windows     5   	   `IconOclr-namespace:MahApps.Metro.IconPacks;assembly=MahApps.Metro.IconPacks.Material     69   8local1%clr-namespace:GUI_Project.View_Models     6�     � Title$  ResultWindow��5   	   $	��200��6   $	��400��6+    � WindowStyle$
 None=�67    � AllowsTransparency$
 True��6J   
������  � 
ResizeMode$ NoResize=�5	   "    � WindowStartupLocation$ CenterScreen=�68    � DataContext 5
      ,   &GUI_Project.View_Models.ResultWindowVM  5   
   .��5      �� -   5         �� CornerRadius$ 50��5      ��5   
   �� 5       �� ImageSource$ /Images/backimage.png��6   ._�5   
   �� $ 50��6   $��5q�6#    J� Opacity$
 0.91Q�67   ��5      �� 5      	 �� 
StartPoint$		 0,0&�6&   
 �� EndPoint$	
 1,1&�67   .��5      �  � Color$ #462ADB��6#    � Offset$ 0Q�63   � 5      $ #DA34AE��6#   $	 0.5Q�63   � 5      $ #462ADB��6#   $ 1Q�63   5      ��5      �� 5      $		 0,0&�6&   $	
 1,1&�67   .��5      � $ #060531��6#   $ 0Q�63   � 5      $ #1B1448��6#   $ 1Q�63   5      ._�5       �  � RowDefinitions 5!      �� 5"      $	��100 �6$   �� 5#      $��* �6$   .+�5&      �� -   5         ��Name$ closeButton��5&         closeButton#��[  6J   $��Right=�6o   $��
0 -30 30 0q�6�   .��5'      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Close=�6,   $��12��69   5(      � 5)      $��1��6    5*      �� 5+      $
��auto �6(   �� 5,      $
��auto �6(   �� 5-      $��* �6(   .+�5/      �� $��
ADD RESULT��6      mainHeading#��[ 62   $��18(�6W   $��
0 -80 0 10q�6e   �� 51      $��1��6!   $��
0 -40 0 10q�6.   .+�52      �� -   5         ��Name$ 
moduleCode��52   �     textBoxHeading#��[ 6G   $��	30,10,0,0q�6o   ��6$   �� *Module.ModuleCode+6�   �� 53      -   5         ��Name$ marks��53   "   $��
40,15,30,5q�62    
 formTB#��[ 6F   ��6f   �� *Mark+54      �� 56      -   5        $��2��56      $��
ADD RESULT��6*     buttonStyle#��[ 6?   $��0 0 0 3q�6d   6u   57      58      59      5;      5<      