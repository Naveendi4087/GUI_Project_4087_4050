using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using GUI_Project.Entities;
using GUI_Project.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GUI_Project.View_Models
{
    public partial class NormalUserWindowVM:ObservableObject
    {
        public static User User { get; set; }

        public NormalUserWindowVM()
        {
            
        }

        public NormalUserWindowVM(User user)
        {
            using var db = new DatabaseContext();
            User = db.Users.FirstOrDefault(u => u.UserName == user.UserName);
        }

        [RelayCommand]
        public void AddStudent()
        {
            var w = new AddStudentWindow();
            w.ShowDialog();
        }
    }
}
