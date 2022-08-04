using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Course_System.Admin
{
    public partial class AddTeacher : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd, cmd1;
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=(localdb)\ProjectModels;Initial Catalog=Course_system;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            conn.Open();

            string ifexist = "select Email from Teacher where Email = @Email";
            cmd1 = new SqlCommand(ifexist, conn);
            cmd1.Parameters.AddWithValue("@Email", txtemail.Text);
            SqlDataReader reader = cmd1.ExecuteReader();

            if (reader.HasRows)
            {
                reader.Close();
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Notregistered();", true);
            }
            else
            {
                reader.Close();
                string RegisterQuery = "insert into Teacher(Fname,Lname,Email,Contact,Department,Faculty)values (@FirstName,@LastName,@Email,@Contact,@Dept,@Faculty)";
                cmd = new SqlCommand(RegisterQuery, conn);
                cmd.Parameters.AddWithValue("@FirstName", txtfname.Text);
                cmd.Parameters.AddWithValue("@LastName", txtlname.Text);
                cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                cmd.Parameters.AddWithValue("@Contact", txtcontact.Text);
                cmd.Parameters.AddWithValue("@Dept", drpdwndept.SelectedValue);
                cmd.Parameters.AddWithValue("@Faculty", drpdwnfaculty.SelectedValue);


                //(Select UserId from Student where email = "+txtemail.Text+")

                string LoginQuery = "insert into Login (UserId,Email) values ((Select UserId from Teacher where email = @Email),@Email)";
                SqlCommand cmd2 = new SqlCommand(LoginQuery, conn);
                cmd2.Parameters.AddWithValue("@Email", txtemail.Text);


                if (cmd.ExecuteNonQuery() > 0 && cmd2.ExecuteNonQuery() > 0)
                {

                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "registered();", true);
                }

                conn.Close();
            }
        }
    }
}