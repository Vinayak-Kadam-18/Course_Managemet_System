using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Course_System.Admin
{
    public partial class AddModuleaspx : System.Web.UI.Page
    {
        int Courseid;
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            Courseid = int.Parse(Request.QueryString["course"]);
        }

        protected void btnmodule_Click(object sender, EventArgs e)
        {
            if (FileUpload1 != null)
            {
                string filename = Path.GetFileName(FileUpload1.FileName);

                if (FileUpload1.PostedFile.ContentLength < 104857600)
                {
                    FileUpload1.SaveAs(Server.MapPath("../VideoFiles/" + filename));//save in local device 
                    conn = new SqlConnection(@"Data Source=(localdb)\ProjectModels;Initial Catalog=Course_system;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                    conn.Open();

                    cmd = new SqlCommand("Insert into Modules (Course_Id,Title, Description, Video_url) values (@Courseid,@Title,@Description,@VPath)", conn);

                    cmd.Parameters.AddWithValue("@Courseid", Courseid);
                    cmd.Parameters.AddWithValue("@Title", txttitle.Text);
                    cmd.Parameters.AddWithValue("@Description", txtdesc.Text);
                    cmd.Parameters.AddWithValue("@VPath", "/VideoFiles/" + filename);


                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "module();", true);
                    }



                    conn.Close();
                }
                else
                {
                    lblerror.Text = "File should be less than 100mb";
                }
            }
           
        }
    }
}