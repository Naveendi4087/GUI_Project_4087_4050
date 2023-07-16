using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using GUI_Project.Entities;
using GUI_Project.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace GUI_Project.View_Models
{
    public partial class EditUserWindowVM:ObservableObject
    {
        public int Id { get; set; }
        public string Fn { get; set; }
        public string Ln { get; set; }
        public string Email { get; set; }
        public string Tel { get; set; }
        public string Pw { get; set; }
        public User User { get; set; }

        public EditUserWindowVM()
        {
            
        }

        public EditUserWindowVM(User u)
        {
            Id = u.Id;
            Fn = u.FirstName;
            Ln = u.LastName;
            Email = u.Email;
            Tel = u.Telephone;
            Pw = u.Password;
            User = u;
        }

        [RelayCommand]
        public void AddUser()
        {
            using var db = new DatabaseContext();
            if (Fn != "" && Ln != "" && Email != "" && Tel != "" && Pw != null)
            {
                db.Users.Remove(db.Users.FirstOrDefault(u => u.UserName == User.UserName));
                db.SaveChanges();
                var u = new User(Fn, Ln, User.UserName, Pw, User.UserType, Tel, Email, User.Gender);
                db.Users.Add(u);
                db.SaveChanges();
                Id = u.Id;
                MessageBox.Show("User changed");
            }
        }

        [RelayCommand]
        public void Close()
        {
            using var db = new DatabaseContext();
            if(db.Users.FirstOrDefault(u => u.Id == Id).UserType == UserType.Admin)
            {
                var w = new AdminUserWindow(db.Users.FirstOrDefault(u => u.Id == Id));
                w.Show();
            }
            else
            {
                var w = new NormalUserWindow(db.Users.FirstOrDefault(u => u.Id == Id));
                w.Show();
            }
            
        }
    }
}
