using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace LoginPage
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source=(local)\sqle2014;initial Catalog=SQLSERVERDB;Integrated Security=True;"))
            {
                connection.Open();
                string query = "SELECT COUNT(1) FROM UserTable WHERE username=@username AND password=@password";
                SqlCommand sqlCmd = new SqlCommand(query, connection);
                sqlCmd.Parameters.AddWithValue("@username", UserTextBox.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", PassTextBox.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());

                if (count == 1) {
                    Session["username"] = UserTextBox.Text.Trim();
                    Response.Redirect("Welcome.aspx");
                } else { 
                    Label3.Visible = true; 
                }
            }
        }

    }
}