using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using GUI_Project.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GUI_Project.View_Models
{
    public partial class ResultWindowVM:ObservableObject
    {
        public static User User { get; set; }
        public static ObservableCollection<Result> Results { get; set; }
        public static Student Student { get; set; }
        public int Mark { get; set; }
        public Module Module { get; set; }

        public ResultWindowVM()
        {
            
        }
        public ResultWindowVM(Module md, Student std, User us)
        {
            using var db = new DatabaseContext();
            User = us;
            Student = db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module).FirstOrDefault(s => s.Id == std.Id);
            Results = new ObservableCollection<Result>(Student.Results.ToList());
            Module = md;
        }

    }
}
