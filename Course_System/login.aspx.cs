using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;


namespace Course_System
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader reader;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Panel1.Visible = false;
                Panel3.Visible = false;
            }
        }

        protected void btnotp_Click(object sender, EventArgs e)
        {
            
            
            conn = new SqlConnection(@"Data Source=(localdb)\ProjectModels;Initial Catalog=Course_system;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            conn.Open();
            String selUser = "Select Email , UserId from Login where Email = @Email";
            cmd = new SqlCommand(selUser, conn);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);

            reader = cmd.ExecuteReader();
            //Check if email exist
            if(reader.Read()) 
            {
                Session["Id"]= reader["UserId"].ToString();
                
            
                Panel1.Visible = true;
                txtemail.ReadOnly = true;
                btnotp.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = true;

                Random rdm = new Random();
                Session["OTP"] = rdm.Next(100000, 999999);

                Session["Expiry"] = DateTime.Now.AddMinutes(1);

                MailMessage mm = new MailMessage();
                mm.To.Add(new MailAddress(txtemail.Text, "Request for Verification"));
                mm.From = new MailAddress("MET ICS <meticsmumbai@gmail.com>");
                mm.Body = "Dear Sir/Madam,<br/><h3>Your One-Time Password for email login is <b>" + Session["OTP"] + "</b></h3>This OTP is valid for only 3 minutes. If you have any query, please Contact : 022-6654783.</p><br/><br/><br/>Thanks,<br/>MET ICS";
                mm.IsBodyHtml = true;
                mm.Subject = "OTP Verification";
                SmtpClient smcl = new SmtpClient();
                smcl.Host = "smtp.gmail.com";
                smcl.Port = 587;
                smcl.Credentials = new NetworkCredential("meticsmumbai@gmail.com", "metics123456");
                smcl.EnableSsl = true;
                smcl.Send(mm);

                
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "error();", true);
            }

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            //check if otp is valid (Time)
            if (Session["OTP"] !=null && DateTime.Now < DateTime.Parse(Session["Expiry"].ToString()) )
            {
                //Check for entered OTP and Sended OTP
                if(Session["OTP"].ToString()==txtotp.Text.ToString())
                {
                    String userid = Session["Id"].ToString().Substring(0,3);
                    if (userid.Equals("STU"))
                    {
                        Response.Redirect("/Student/home.aspx");
                    }
                    else if(userid.Equals("ADM"))
                    {
                        Response.Redirect("/Admin/home.aspx");
                    }
                    else if (userid.Equals("TEA"))
                    {
                        Response.Redirect("/Teacher/home.aspx");
                    }



                }
                //if OTP entered is wrong
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "otpinvalid();", true);
                }
                
            }

            //if OTP expired
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "otpexpired();", true);
            }
                


        }
    }
}