using Diary.Models;
using System.Data.Entity;

namespace Diary.Context
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext() : base("Diary.Database")
        {

        }

        // Entidades
        public DbSet<MyUser> Users { get; set; }
        public DbSet<MyContact> Contacts { get; set; }
    }
}