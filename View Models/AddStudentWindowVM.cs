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
    public partial class AddStudentWindowVM:ObservableObject
    {
        public string FName { get; set; }
        public string LName { get; set; }
        public string Email { get; set; }
        public string Tel { get; set; }
        public bool Male { get; set; }
        public bool Female { get; set; }
        public Module AddingModule { get; set; }
        public Module RemovingModule { get; set; }
        public ObservableCollection<Module> Modules { get; set; }
        public ObservableCollection<Module> SelectedModules { get; set; }

        public AddStudentWindowVM()
        {
            Male = false;
            Female = false;
            using var db = new DatabaseContext();
            Modules = new ObservableCollection<Module>(db.Modules.ToList());
            SelectedModules = new ObservableCollection<Module>();
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
            if(RemovingModule != null)
            {
                SelectedModules.Remove(RemovingModule);
            }
        }

        [RelayCommand]
        public void AddStudent()
        {
            using var db = new DatabaseContext();
            if(FName!= null && LName!=null && Email!=null && Tel!=null && (Male==true || Female==true))
            {
                Gender g = Gender.Male;
                if(Female==true)
                {
                    g = Gender.Female;
                }
                var std = new Student(FName, LName, Email, g, Tel);
                db.Students.Add(std);
                db.SaveChanges();
                foreach (var module in SelectedModules)
                {
                    db.Modules.FirstOrDefault(m => m.ModuleCode == module.ModuleCode).Students.Add(std);
                }
                db.SaveChanges();
                MessageBox.Show("Student Added");
            }
        }
    }
}
