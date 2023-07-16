using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GUI_Project.Entities
{
    public class Student
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string FullName
        {
            get { return $"{FirstName} {LastName}"; }
        }
        public string Email { get; set; }
        public Gender Gender { get; set; }
        public string Telephone { get; set; }
        public ICollection<Module> Modules { get; set; }
        public ICollection<Result> Results { get; set; }
        public double GPA
        {
            get
            {
                var val1 = Results.Sum(r => r.GPV * r.Module.Credits);
                var val2 = Results.Sum(r => r.Module.Credits);
                return val1 / val2;
            }
        }

        public Student(string firstName, string lastName, string email, Gender gender, string telephone)
        {
            FirstName = firstName;
            LastName = lastName;
            Email = email;
            Gender = gender;
            Telephone = telephone;
            Modules = new List<Module>();
            Results = new List<Result>();
        }
    }
}
