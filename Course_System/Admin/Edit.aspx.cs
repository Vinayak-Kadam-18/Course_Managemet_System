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
    public partial class Edit : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd1;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null && Request.QueryString["id"] != string.Empty)
            {
                conn = new SqlConnection(@"Data Source=(localdb)\ProjectModels;Initial Catalog=Course_system;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                conn.Open();
                String std = "Select * from Student where StudentId = "+ Request.QueryString["id"];
                cmd1 = new SqlCommand(std, conn);

               dr = cmd1.ExecuteReader();

               if(dr.Read())
                {
                    txtfname.Text = dr["fname"].ToString();
                    txtlname.Text = dr["lname"].ToString();
                    txtemail.Text = dr["email"].ToString();
                    txtcontact.Text = dr["contact"].ToString();
                    txtdob.Text = dr["DOB"].ToString();
                    txtaddress.Text = dr["address"].ToString();
                    txtssc.Text = dr["ssc"].ToString();
                    txthsc.Text = dr["hsc"].ToString();
                    txtgrad.Text = dr["graduation"].ToString();
                    txtmast.Text = dr["masters"].ToString();
                }

               conn.Close();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=(localdb)\ProjectModels;Initial Catalog=Course_system;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            conn.Open();
            String upd = "Update Student set Fname="+txtfname.Text+" where StudentId = "+ Request.QueryString["id"];
            SqlCommand cmd = new SqlCommand(upd, conn);
            cmd.Parameters.AddWithValue("@FirstName",txtfname.Text);
            cmd.Parameters.AddWithValue("@LastName", txtlname.Text);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Contact", txtcontact.Text);
            cmd.Parameters.AddWithValue("@DOB", txtdob.Text);
            cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@SSC", txtssc.Text);
            cmd.Parameters.AddWithValue("@HSC", txthsc.Text);
            cmd.Parameters.AddWithValue("@Graduation", txtgrad.Text);
            cmd.Parameters.AddWithValue("@Masters", txtmast.Text);

            cmd.ExecuteNonQuery();
            conn.Close();


        }
    }
}