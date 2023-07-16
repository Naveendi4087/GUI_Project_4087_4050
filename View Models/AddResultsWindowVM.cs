using CommunityToolkit.Mvvm.ComponentModel;
using GUI_Project.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace GUI_Project.View_Models
{
    public partial class AddResultsWindowVM:ObservableObject
    {
        public static User User { get; set; }
        public static Student Student { get; set; }
        public ObservableCollection<Module> SelectedModules { get; set; }
        public static ObservableCollection<Result> Results { get; set; }
        public static Module SelectedModule { get; set; }
        public static Result SelectedResult { get; set; }

        public AddResultsWindowVM()
        {
            
        }

        public AddResultsWindowVM(Student std, User us)
        {
            using var db = new DatabaseContext();
            User = us;
            Student = db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r=>r.Module).FirstOrDefault(s => s.Id == std.Id);
            SelectedModules = new ObservableCollection<Module>(Student.Modules);
            Results = new ObservableCollection<Result>(Student.Results);
        }

    }
}
