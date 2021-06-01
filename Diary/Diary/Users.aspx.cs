using Diary.Context;
using Diary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diary
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Limpa todos os campos de cadastro de novo usuário
        protected void ClearButton_Click(object sender, EventArgs e)
        {
            // Limpar os campos
            NameTextBox.Text = "";
            EmailTextBox.Text = "";
            PasswordTextBox.Text = "";
        }

        // Valida e adicoina um novo usuário
        protected void AddButton_Click(object sender, EventArgs e)
        {
            // Coletar as informações do campo
            string name = NameTextBox.Text;
            string email = EmailTextBox.Text;
            string password = PasswordTextBox.Text;            

            // Instanciar o context
            DatabaseContext database = new DatabaseContext();

            if(database.Users.Select(u => u).Where(u => u.Email == email).Count() > 0)
            {
                EmailExceptionLabel.Text = "Email já cadastrado";
                return;
            }

            database.Users.Add(new MyUser(name, email, password));
            database.SaveChanges();

            UsersListView.DataBind();

            FeedbackLabel.Visible = true;
        }
    }
}