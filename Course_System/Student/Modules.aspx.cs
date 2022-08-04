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
    public partial class Modules : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd1;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["mid"] != null && Request.QueryString["mid"] != string.Empty)
            {
                conn = new SqlConnection(@"Data Source=(localdb)\ProjectModels;Initial Catalog=Course_system;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                conn.Open();
                String std = "Select * from Modules where Module_Id = " + Request.QueryString["mid"];
                cmd1 = new SqlCommand(std, conn);
                dr = cmd1.ExecuteReader();
                if (dr.Read())
                {
                    lbltitle.Text = dr["Title"].ToString();
                    lbldesc.Text = dr["Description"].ToString();
                    iframe.Attributes.Add("src", ".." + dr["Video_url"].ToString());

                }
                dr.Close();
            }
        }
    }
}