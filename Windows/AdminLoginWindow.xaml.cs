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
    /// Interaction logic for AdminLoginWindow.xaml
    /// </summary>
    public partial class AdminLoginWindow : Window
    {
        public AdminLoginWindow()
        {
            InitializeComponent();
            DataContext = new AdminLoginWindowVM();
        }

        private void closeButton_Click1(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
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

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            using var db = new DatabaseContext();
            if (db.Users.Any(u => u.UserName == un.Text && u.Password == pw.Text && u.UserType == UserType.Admin))
            {
                var u = db.Users.FirstOrDefault(u => u.UserName == un.Text && u.Password == pw.Text && u.UserType == UserType.Admin);
                var w = new AdminUserWindow(u);
                w.Show();
                Close();
            }
            else
            {
                MessageBox.Show("Username or Password is incorrect");
            }

        }
    }
}
