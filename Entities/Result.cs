﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GUI_Project.Entities
{
    public class Result
    {
        public int Id { get; set; }
        public Module Module { get; set; }
        public int Marks { get; set; }
        public double GPV
        {
            get
            {
                if (Marks >= 80 && Marks <= 100)
                    return 4.0;
                else if (Marks >= 75 && Marks <= 79)
                    return 3.75;
                else if (Marks >= 70 && Marks <= 74)
                    return 3.50;
                else if (Marks >= 65 && Marks <= 69)
                    return 3.25;
                else if (Marks >= 60 && Marks <= 64)
                    return 3.0;
                else if (Marks >= 55 && Marks <= 59)
                    return 2.75;
                else if (Marks >= 50 && Marks <= 54)
                    return 2.50;
                else if (Marks >= 45 && Marks <= 49)
                    return 2.25;
                else if (Marks >= 40 && Marks <= 44)
                    return 2.0;
                else if (Marks >= 0 && Marks <= 39)
                    return 0;
                else
                    return -1;
            }
        }

        public Result(Module module, int mark)
        {
            Module = module;
            Marks = mark;
        }

        public Result()
        {
            
        }
    }
}
