using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using GUI_Project.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace GUI_Project.View_Models
{
    public partial class LoginWindowVM:ObservableObject
    {
        public string UName { get; set; }
        public string PWord { get; set; }
        public LoginWindowVM()
        {
            
        }
        [RelayCommand]
        public void checkUser()
        {
            using var db = new DatabaseContext();
            if (db.Users.Any(u=>u.UserName==UName && u.Password==PWord && u.UserType==UserType.Normal))
            {
                var u = db.Users.FirstOrDefault(u => u.UserName == UName && u.Password == PWord && u.UserType == UserType.Normal);
                MessageBox.Show("User Found");
            }
            else
            {
                MessageBox.Show("Username or Password is incorrect");
            }
        }
    }
}
