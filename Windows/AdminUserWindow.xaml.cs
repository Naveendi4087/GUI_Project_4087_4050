using GUI_Project.Entities;
using GUI_Project.View_Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace GUI_Project.Windows
{
    /// <summary>
    /// Interaction logic for AdminUserWindow.xaml
    /// </summary>
    public partial class AdminUserWindow : Window
    {
        public AdminUserWindow(User u)
        {
            InitializeComponent();
            DataContext = new AdminUserWindowVM(u);
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
            {
                this.DragMove();
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var w = new LoginWindow();
            w.Show();
            this.Close();
        }

        private void closeButton_Click1(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            var w = new AdminLoginWindow();
            w.Show();
            this.Close();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            var w = new AddModuleWindow();
            w.ShowDialog();
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            var w = new EditUserWindow(AdminUserWindowVM.User);
            w.ShowDialog();
            this.Close();
        }
    }
}
