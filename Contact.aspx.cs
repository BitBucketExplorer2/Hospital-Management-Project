using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BTPS_Project
{
    public partial class Contact : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["BTPS_Database"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            string query = "insert into contact values(@name,@email,@sub,@contact,@mess)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", fullName.Text);
            cmd.Parameters.AddWithValue("@email", emailAddress.Text);
            cmd.Parameters.AddWithValue("@sub", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@contact", contact.Text);
            cmd.Parameters.AddWithValue("@mess", message.Text);
            int x=cmd.ExecuteNonQuery();
            if(x>0)
            {
                fullName.Text = emailAddress.Text = contact.Text = message.Text = " ";
                Response.Write("<script>alert('Successfully')</script>");

               
                DropDownList1.ClearSelection();
            }
            else
            {
                Response.Write("<script>alert('Unsuccessfully....')</script>");
            }

        }
    }
}