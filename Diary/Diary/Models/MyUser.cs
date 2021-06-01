using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Diary.Models
{
    public class MyUser
    {
        // Informações do usuário
        [Key]
        [ScaffoldColumn(false)]
        public int ID { get; set; }
        
        [Required, StringLength(100)]
        public string Name { get; set; }

        [Required, StringLength(100), DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [ScaffoldColumn(false)]
        [Required, StringLength(25), DataType(DataType.Password)]
        public string Password { get; set; }

        public MyUser()
        {

        }

        public MyUser(string name, string email, string password)
        {
            Name = name;
            Email = email;
            Password = password;
        }
    }
}