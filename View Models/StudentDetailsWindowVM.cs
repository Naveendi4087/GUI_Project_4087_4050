using CommunityToolkit.Mvvm.ComponentModel;
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
    public partial class StudentDetailsWindowVM:ObservableObject
    {
        public ObservableCollection<Student> Students { get; set; }
        public static User User { get; set; }
        public static Student SelectedStudent { get; set; }

        public StudentDetailsWindowVM()
        {
            
        }

        public StudentDetailsWindowVM(User user)
        {
            using var db = new DatabaseContext();
            User = user;
            Students = new ObservableCollection<Student>(db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module));
        }
    }
}
