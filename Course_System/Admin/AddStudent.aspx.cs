using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Course_System.Admin
{
    public partial class Add_Student : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlCommand cmd1;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=(localdb)\ProjectModels;Initial Catalog=Course_system;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            conn.Open();

            string ifexist = "select Email from Student where Email = @Email";
            cmd1 = new SqlCommand(ifexist, conn);
            cmd1.Parameters.AddWithValue("@Email", txtemail.Text);
            SqlDataReader reader = cmd1.ExecuteReader();

            if(reader.HasRows)
            {
                reader.Close();
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Notregistered();", true);
            }
            else
            {
                reader.Close();
                string RegisterQuery = "insert into Student(Fname,Lname,Email,Contact,DOB,Address,SSC,HSC,Graduation,Masters)values (@FirstName,@LastName,@Email,@Contact,@DOB,@Address,@SSC,@HSC,@Graduation,@Masters)";
                cmd = new SqlCommand(RegisterQuery, conn);
                cmd.Parameters.AddWithValue("@FirstName", txtfname.Text);
                cmd.Parameters.AddWithValue("@LastName", txtlname.Text);
                cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                cmd.Parameters.AddWithValue("@Contact", txtcontact.Text);
                cmd.Parameters.AddWithValue("@DOB", txtdob.Text);
                cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
                cmd.Parameters.AddWithValue("@SSC", txtssc.Text);
                cmd.Parameters.AddWithValue("@HSC", txthsc.Text);
                cmd.Parameters.AddWithValue("@Graduation", txtgrad.Text);
                cmd.Parameters.AddWithValue("@Masters", txtmast.Text);

                //(Select UserId from Student where email = "+txtemail.Text+")

                string LoginQuery = "insert into Login(UserId,Email) values ((Select UserId from Student where email = @Email),@Email)";
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