using DatabaseTest.Context;
using DatabaseTest.Data;
using DatabaseTest.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseTest
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DatabaseInitializer_Click(object sender, EventArgs e)
        {            
            DatabaseContext db = new DatabaseContext();

            //MyUser user = new MyUser();

            //db.Users.Add(user);

            //db.SaveChanges();
            var test = db.Users.Select(u => u.Name);
            var test1 = db.Contacts.Select(c => c.Name);
            DataLabel.Text = (test.Count() + test1.Count()).ToString();
        }
    }
}