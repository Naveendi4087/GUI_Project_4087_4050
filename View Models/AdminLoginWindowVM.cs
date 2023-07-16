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
    public partial class AdminLoginWindowVM:ObservableObject
    {
        public string UName { get; set; }
        public string PWord { get; set; }

        public AdminLoginWindowVM()
        {
        }

    }
}
