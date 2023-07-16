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
    public partial class AddModuleWindowVM:ObservableObject
    {
        public string MName { get; set; }
        public string MCode { get; set; }
        public int Sem { get; set; }
        public int Credits { get; set; }

        public AddModuleWindowVM()
        {
            
        }

        [RelayCommand]
        public void addModule()
        {
            using var db = new DatabaseContext();
            if(MName != null && MCode!=null && Credits!=0 && (Sem<=8 && Sem>=1))
            {
                bool val = true;
                foreach(var module in db.Modules)
                {
                    if (module.ModuleCode == MCode)
                    {
                        val = false;
                        break;
                    }
                }
                if(val==true)
                {
                    var m = new Module(MName, MCode, Sem, Credits);
                    db.Modules.Add(m);
                    db.SaveChanges();
                    MessageBox.Show("Module added");
                }
                else
                {
                    MessageBox.Show("Module already exists");
                }
            }
        }
    }
}
