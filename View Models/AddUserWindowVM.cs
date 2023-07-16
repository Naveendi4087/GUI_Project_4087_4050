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
    public partial class AddUserWindowVM:ObservableObject
    {
        public string Fn { get; set; }
        public string Ln { get; set; }
        public string Email { get; set; }
        public string Tel { get; set; }
        public bool Male { get; set; }
        public bool Female { get; set; }
        public bool Admin { get; set; }
        public bool Normal { get; set; }
        public string Un { get; set; }
        public string Pw { get; set; }

        public AddUserWindowVM()
        {
            Male = false;
            Female = false;
            Normal = false;
            Admin = false;
        }

        [RelayCommand]
        public void addUser()
        {
            using var db = new DatabaseContext();
            if(Fn!= null && Ln!=null && Email!=null && Tel!=null && (Male ==true || Female==true) && (Admin==true || Normal == true) && Un!= null && Pw!=null)
            {
                bool val = true;
                foreach(var u in db.Users) 
                {
                    if(u.UserName.ToLower() == Un.ToLower())
                    {
                        MessageBox.Show("Username exists");
                        val = false;
                        break;
                    }
                }
                if (val == true)
                {
                    Gender g = Gender.Male;
                    if(Female== true)
                    {
                        g = Gender.Female;
                    }
                    UserType ut = UserType.Admin;
                    if(Normal== true)
                        ut = UserType.Normal;
                    var u = new User(Fn, Ln, Un, Pw, ut, Tel, Email, g);
                    db.Users.Add(u);
                    db.SaveChanges();
                    MessageBox.Show("User added");
                }
            }
        }
    }
}
