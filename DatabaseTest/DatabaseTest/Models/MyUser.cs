using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DatabaseTest.Models
{
    public class MyUser
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public int Age { get; set; }

        public string Test { get; set; }
    }
}