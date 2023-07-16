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
    /// Interaction logic for AddResultsWindow.xaml
    /// </summary>
    public partial class AddResultsWindow : Window
    {
        public AddResultsWindow(Student std, User us)
        {
            InitializeComponent();
            DataContext = new AddResultsWindowVM(std, us);
        }

        private void closeButton_Click1(object sender, RoutedEventArgs e)
        {
            var w = new StudentDetailsWindow(AddResultsWindowVM.User);
            
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
            if (AddResultsWindowVM.SelectedModule != null)
            {
                bool val = true;
                foreach (var r in AddResultsWindowVM.Results)
                {
                    if (r.Module.ModuleCode == AddResultsWindowVM.SelectedModule.ModuleCode)
                    {
                        val = false;
                        break;
                    }
                }
                if (val == true)
                {
                    var w = new ResultWindow(AddResultsWindowVM.SelectedModule, AddResultsWindowVM.Student, AddResultsWindowVM.User);
                    w.ShowDialog();
                    Close();
                }
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            using var db = new DatabaseContext();
            if(AddResultsWindowVM.SelectedResult!= null)
            {
                db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module).FirstOrDefault(s => s.Id == AddResultsWindowVM.Student.Id).Results.Remove(db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module).FirstOrDefault(s => s.Id == AddResultsWindowVM.Student.Id).Results.FirstOrDefault(r=>r.Module.ModuleCode== AddResultsWindowVM.SelectedResult.Module.ModuleCode));
                db.SaveChanges();
            }
            MessageBox.Show("Result Deleted");
            var w = new AddResultsWindow(db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module).FirstOrDefault(s => s.Id == AddResultsWindowVM.Student.Id), AddResultsWindowVM.User);
            w.Show();
            Close();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            if (AddResultsWindowVM.SelectedResult != null)
            {
                var w = new EditResultWindow(AddResultsWindowVM.SelectedResult, AddResultsWindowVM.Student, AddResultsWindowVM.User);
                w.ShowDialog();
                Close();
            }

        }
    }
}
