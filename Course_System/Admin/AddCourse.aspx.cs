using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Course_System.Teacher
{
    public partial class AddCourse : System.Web.UI.Page
    {
        SqlConnection conn, conn2;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn2 = new SqlConnection(@"Data Source=(localdb)\ProjectModels;Initial Catalog=Course_system;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            conn2.Open();

            string tea = "Select * from Teacher";
            SqlDataAdapter adpt = new SqlDataAdapter(tea, conn2);
            DataTable dt = new DataTable();
            adpt.Fill(dt);

            drpteacher.DataSource = dt;
           
            dt.Columns.Add("Professor",typeof(string),"'Prof.' + Fname + ' ' + Lname");
            drpteacher.DataTextField = "Professor";
            drpteacher.DataValueField = "Professor";
            drpteacher.DataBind();
            
        }

        protected void btncourse_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=(localdb)\ProjectModels;Initial Catalog=Course_system;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            conn.Open();

            cmd = new SqlCommand("Insert into Courses (Title, Description, Category, Duration,Created_By, Date_Added) values (@Title,@Description, @Category, @Duration,@Prof,@Date)", conn);
            
            cmd.Parameters.AddWithValue("@Title",txttitle.Text);
            cmd.Parameters.AddWithValue("@Description", txtdesc.Text);
            cmd.Parameters.AddWithValue("@Category", txtcategory.Text);
            cmd.Parameters.AddWithValue("@Duration", drpduration.SelectedValue);
            cmd.Parameters.AddWithValue("@Prof", drpteacher.SelectedValue);
            cmd.Parameters.AddWithValue("@Date", DateTime.Now.Date.ToString());
            cmd.ExecuteNonQuery();

            conn.Close();
        }
    }
}