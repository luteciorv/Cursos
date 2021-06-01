using DatabaseTest.Context;
using DatabaseTest.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace DatabaseTest.Data
{
    public class DatabaseInitializer : DropCreateDatabaseAlways<DatabaseContext>
    {
        protected override void Seed(DatabaseContext context)
        {
            GetUsers().ForEach(u => context.Users.Add(u));
            GetContacts().ForEach(c => context.Contacts.Add(c));
            //context.SaveChanges();
        }

        private static List<MyUser> GetUsers()
        {
            var users = new List<MyUser> {
                new MyUser
                {
                    ID = 1,
                    Name = "Cars"
                },

                new MyUser
                {
                    ID = 2,
                    Name = "Luis"
                }
            };

            return users;
        }

        private static List<MyContact> GetContacts()
        {
            var contacts = new List<MyContact>
            {
                new MyContact
                {
                    ID = 1,
                    Name = "Ulala"
                }
            };

            return contacts;
        }
    }
}