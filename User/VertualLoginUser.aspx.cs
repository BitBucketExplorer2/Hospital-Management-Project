using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace BTPS_Project.User
{
    public partial class VertualLoginUser : System.Web.UI.Page
    {
        string sc = ConfigurationManager.ConnectionStrings["BTPS_Database"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_btn1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(sc);
            string query = "Select * from Register1 where email=@email and password=@pass";
            SqlCommand cmd=new SqlCommand(query,con);
           
           
            cmd.Parameters.AddWithValue("@email", inputEmail.Text);
            cmd.Parameters.AddWithValue("@pass", inputPassword.Text);
            con.Open();
            SqlDataReader dr=cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Session["u_name"] = inputEmail.Text;
                Response.Redirect("DASHBOARD.aspx");
                //Response.Write("<script>alert('You are Login Success Full !!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Login Failed !!!!')</script>");
            }





        }
    }
}