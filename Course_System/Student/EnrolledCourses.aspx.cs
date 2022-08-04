using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Course_System.Student
{
    public partial class EnrolledCourses : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd1;
        SqlDataReader dr;
        int CID;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=(localdb)\ProjectModels;Initial Catalog=Course_system;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            conn.Open();
            String std = "Select * from Enroll where StudentId = 1" ;
            cmd1 = new SqlCommand(std, conn);
            dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                CID = int.Parse(dr["Course_Id"].ToString());

            }
            dr.Close();

            string mod = "Select * from Courses where Course_Id = " + CID;
            SqlDataAdapter adapter = new SqlDataAdapter(mod, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            reptEnroll.DataSource = dt;
            reptEnroll.DataBind();
            conn.Close();
        }
    }
}