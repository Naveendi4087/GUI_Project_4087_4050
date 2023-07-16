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
    /// Interaction logic for EditResultWindow.xaml
    /// </summary>
    public partial class EditResultWindow : Window
    {
        public EditResultWindow(Result r, Student s, User u)
        {
            InitializeComponent();
            DataContext = new EditResultWindowVM(r, s, u);
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
            using var db = new DatabaseContext();
            db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module).FirstOrDefault(s => s.Id == EditResultWindowVM.Student.Id).Results.Remove(db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module).FirstOrDefault(s => s.Id == EditResultWindowVM.Student.Id).Results.FirstOrDefault(r => r.Module.ModuleCode == EditResultWindowVM.Result.Module.ModuleCode));
            db.SaveChanges();

            var r = new Result(db.Modules.FirstOrDefault(m => m.ModuleCode == EditResultWindowVM.Result.Module.ModuleCode), int.Parse(marks.Text));
            var student = db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module).FirstOrDefault(s => s.Id == EditResultWindowVM.Student.Id);

            var existingResult = db.Results.Find(r.Id);
            Result updatedResult;

            if (existingResult != null)
            {
                // If the Result entity is already being tracked, update its values
                db.Entry(existingResult).CurrentValues.SetValues(r);
                updatedResult = existingResult;
            }
            else
            {
                updatedResult = r;
                // Check if the Module entity is already being tracked by the context
                var existingModule = db.Modules.Find(r.Module.Id);
                if (existingModule != null)
                {
                    // If the Module entity is already being tracked, use the tracked entity instead of the new one
                    updatedResult.Module = existingModule;
                }
            }

            student.Results.Add(updatedResult);
            db.SaveChanges();
            MessageBox.Show("Result Updated");
            var w = new AddResultsWindow(db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module).FirstOrDefault(s => s.Id == EditResultWindowVM.Student.Id), EditResultWindowVM.User);
            w.Show();
            Close();
        }
    }
}
