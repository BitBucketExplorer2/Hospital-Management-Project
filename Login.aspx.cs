using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Web.Security;

namespace BTPS_Project
{
    public partial class Login : System.Web.UI.Page
    {
        string sc = ConfigurationManager.ConnectionStrings["BTPS_Database"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Data_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sc);
            string query = "select * from Register1 where regNo=@reg and  email=@email and password=@pass";

            SqlCommand cmd = new SqlCommand(query,con);
            con.Open();
            cmd.Parameters.AddWithValue("@reg", regNumber.Text);
            cmd.Parameters.AddWithValue("@email", emailAddress.Text);
            cmd.Parameters.AddWithValue("@pass", password.Text);
            

           SqlDataReader dr= cmd.ExecuteReader();
            if (dr.HasRows)
            {
                //Session Fow Local Secure Page
                Session["RegNo"] = regNumber.Text;
                 Session["User_Email"] = emailAddress.Text;

                HttpCookie ck = new HttpCookie("Reg");
                ck.Value = regNumber.Text;
                Response.Cookies.Add(ck);
               //Response.Redirect("~/User/Home.aspx");
                Response.Redirect("~/User/DASHBOARD.aspx");
               // Response.Write("<script>alert('Welcome......')</script>");
            }
            else
            {
                Response.Redirect("~/Register.aspx");
                Response.Write("<script>alert('Login Failed.........')</script>");
            }
            
            
            
        }
    }
}