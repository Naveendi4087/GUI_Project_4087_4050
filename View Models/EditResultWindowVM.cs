﻿using CommunityToolkit.Mvvm.ComponentModel;
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
    public partial class EditResultWindowVM:ObservableObject
    {
        public static User User { get; set; }
        public static Student Student { get; set; }
        public int Mark { get; set; }
        public static Result Result { get; set; }

        public Module Module { get; set; }
        public EditResultWindowVM()
        {

        }
        public EditResultWindowVM(Result rslt, Student std, User us)
        {
            using var db = new DatabaseContext();
            User = us;
            Student = db.Students.Include(s => s.Modules).Include(s => s.Results).ThenInclude(r => r.Module).FirstOrDefault(s => s.Id == std.Id);
            Result = Student.Results.FirstOrDefault(r => r.Module.ModuleCode == rslt.Module.ModuleCode);
            Module = db.Modules.FirstOrDefault(m => m.ModuleCode == rslt.Module.ModuleCode);
            Mark = Result.Marks;
        }
    }
}
