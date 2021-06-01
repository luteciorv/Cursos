using DatabaseTest.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace DatabaseTest.Context
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext() : base("Meu Banco de Dados")
        {

        }

        public DbSet<MyUser> Users { get; set; }
        public DbSet<MyContact> Contacts { get; set; }
    }
}