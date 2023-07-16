using GUI_Project.Entities;
using GUI_Project.View_Models;
using Microsoft.EntityFrameworkCore;
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
    /// Interaction logic for EditStudentWindow.xaml
    /// </summary>
    public partial class EditStudentWindow : Window
    {
        public EditStudentWindow(Student s, User u)
        {
            InitializeComponent();
            DataContext = new EditStudentWindowVM(s, u);
        }

        private void closeButton_Click1(object sender, RoutedEventArgs e)
        {
            var w = new StudentDetailsWindow(EditStudentWindowVM.User);
            w.Show();
            this.Close();
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
            using var db = new DatabaseContext();
            if (fn.Text != "" && ln.Text != "" && email.Text != null && tel.Text != null)
            {
                db.Students.Remove(db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module).FirstOrDefault(s => s.Id == EditStudentWindowVM.Id));
                db.SaveChanges();
                var std = new Student(fn.Text, ln.Text, email.Text, EditStudentWindowVM.G, tel.Text);
                db.Students.Add(std);
                db.SaveChanges();
                foreach (var module in EditStudentWindowVM.SelectedModules)
                {
                    db.Modules.FirstOrDefault(m => m.ModuleCode == module.ModuleCode).Students.Add(std);
                }
                db.SaveChanges();
                MessageBox.Show("Student Modified");

            }
            var w = new StudentDetailsWindow(EditStudentWindowVM.User);
            w.Show();
            this.Close();
        }
    }
}
