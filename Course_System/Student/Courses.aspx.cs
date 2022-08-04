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
    public partial class Courses : System.Web.UI.Page
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
                String std = "Select * from Courses where Course_Id = " + Request.QueryString["id"];
                cmd1 = new SqlCommand(std, conn);
                dr = cmd1.ExecuteReader();
                if (dr.Read())
                {
                    lbltitle.Text = dr["Title"].ToString();
                    lbldesc.Text = dr["Description"].ToString();
                    lblduration.Text = dr["Duration"].ToString();
                    lblcretedby.Text = dr["Created_By"].ToString();
                }
                dr.Close();

                string mod = "Select * from Modules where Course_Id = " + Request.QueryString["id"];
                SqlDataAdapter adapter = new SqlDataAdapter(mod, conn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                Repeater1.DataSource = dt;
                Repeater1.DataBind();
                conn.Close();
            }
        }
    }
}