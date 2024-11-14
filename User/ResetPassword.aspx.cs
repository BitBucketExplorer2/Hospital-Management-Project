using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BTPS_Project.User
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        string sc = ConfigurationManager.ConnectionStrings["BTPS_Database"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Resetbtn_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            SqlConnection con1 = new SqlConnection(sc);
            string qur = "select * from Register1 where email=@email";
            SqlCommand cmd1 = new SqlCommand(qur, con1);
            cmd1.Parameters.AddWithValue("@email", emailCode.Text);
            con1.Open();
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.HasRows)
            {
               
            }
           

        }

        protected void ChangePassbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sc);
            con.Open();
            string query = "update Register1 set password=@pass where email=@email";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@email", emailCode.Text);
            cmd.Parameters.AddWithValue("@pass", inputNewPass.Text);
            int x=cmd.ExecuteNonQuery();
            if (x > 0)
            {
                // Response.Redirect("./User/VertualLoginUser.aspx");
                Panel2.Visible = false;
                Panel1.Visible = true;
                con.Close();

            }
            

            //Response.Redirect("Login_Email_Pass.aspx");
        }
    }
}