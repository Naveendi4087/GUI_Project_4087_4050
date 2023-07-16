using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using GUI_Project.Entities;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace GUI_Project.View_Models
{
    public partial class EditStudentWindowVM:ObservableObject
    {
        public static User User { get; set; }
        public Student Student { get; set; }
        public string Fn { get; set; }
        public static int Id { get; set; }
        public string Ln { get; set; }
        public static Gender G { get; set; }
        public string Email { get; set; }
        public string Tel { get; set; }
        public Module AddingModule { get; set; }
        public Module RemovingModule { get; set; }
        public ObservableCollection<Module> Modules { get; set; }
        public static ObservableCollection<Module> SelectedModules { get; set; }

        public EditStudentWindowVM()
        {
            
        }

        public EditStudentWindowVM(Student std, User user)
        {
            Id = std.Id;
            G = std.Gender;
            using var db = new DatabaseContext();
            Fn = std.FirstName;
            Ln = std.LastName;
            User = user;
            Email = std.Email;
            Tel = std.Telephone;
            Modules = new ObservableCollection<Module>(db.Modules.ToList());
            SelectedModules = new ObservableCollection<Module>(std.Modules.ToList());
            User = user;

        }

        [RelayCommand]
        public void AddModule()
        {
            if (AddingModule != null)
            {
                if (!SelectedModules.Contains(AddingModule))
                {
                    SelectedModules.Add(AddingModule);
                }
            }
        }

        [RelayCommand]
        public void RemoveModule()
        {
            if (RemovingModule != null)
            {
                SelectedModules.Remove(RemovingModule);
            }
        }

        
    }
}
