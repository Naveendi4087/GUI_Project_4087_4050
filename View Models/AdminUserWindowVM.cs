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
    public partial class AdminUserWindowVM:ObservableObject
    {
        public static User User { get; set; }
        public AdminUserWindowVM()
        {
            
        }

        public AdminUserWindowVM(User user)
        {
            using var db = new DatabaseContext();
            User = db.Users.FirstOrDefault(u=> u.Id == user.Id);   
        }

        [RelayCommand]
        public void addNewUser()
        {
            var w = new AddUserWindow();
            w.ShowDialog();
        }

        [RelayCommand]
        public void editUser()
        {
            var w = new EditUserWindow(User);
            w.ShowDialog();
        }

        [RelayCommand]
        public void ChangeUser()
        {
            var w = new EditUserWindow(User);
            w.ShowDialog();
        }
    }
}
