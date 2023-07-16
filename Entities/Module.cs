using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GUI_Project.Entities
{
    public class Module
    {
        public int Id { get; set; }
        public string ModuleName { get; set; }
        public string ModuleCode { get; set; }
        public int Semester { get; set; }
        public int Credits { get; set; }
        public ICollection<Student> Students { get; set; }

        public Module(string moduleName, string moduleCode, int semester, int credits)
        {
            ModuleName = moduleName;
            ModuleCode = moduleCode;
            Semester = semester;
            Credits = credits;
            Students = new List<Student>();
        }
    }
}
