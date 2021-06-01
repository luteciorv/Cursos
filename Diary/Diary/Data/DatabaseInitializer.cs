using Diary.Context;
using Diary.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Diary.Data
{
    public class DatabaseInitializer : DropCreateDatabaseIfModelChanges<DatabaseContext>
    {
        protected override void Seed(DatabaseContext context)
        {
            GetDefaultUser().ForEach(u => context.Users.Add(u));
            GetDefaultContacts().ForEach(c => context.Contacts.Add(c));
        }

        private List<MyUser> GetDefaultUser()
        {
            List<MyUser> defaultUsers = new List<MyUser>()
            {
                new MyUser
                {
                    Name = "Admin",
                    Email = "admin@gmail.com",
                    Password = "admin"
                },

                new MyUser
                {
                    Name = "Admin1",
                    Email = "admin1@gmail.com",
                    Password = "admin1"
                }
            };

            return defaultUsers;
        }                                

        private List<MyContact> GetDefaultContacts()
        {
            List<MyContact> defaultContacts = new List<MyContact>()
            {
                new MyContact
                {
                    Name = "admin",
                    Email = "admin@gmail.com",
                    Phone = "(+00) (00) 00000-0000"                    
                },

                new MyContact
                {
                    Name = "admin1",
                    Email = "admin1@gmail.com",
                    Phone = "(+11) (11) 11111-1111"
                }
            };

            return defaultContacts;
        }
    }
}