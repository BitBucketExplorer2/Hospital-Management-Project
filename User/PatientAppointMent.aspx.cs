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
    public partial class PatientAppointMent : System.Web.UI.Page
    {
        string sc = ConfigurationManager.ConnectionStrings["BTPS_Database"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        

        protected void Appointmentbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sc);
            string query = "insert into AppointMent values(@fname,@lname,@email,@contact,@age,@gender,@disies,@city)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@fname",inputFirstName.Text);
            cmd.Parameters.AddWithValue("@lname",inputLastName.Text);
            cmd.Parameters.AddWithValue("@email",inputEmail.Text);
            cmd.Parameters.AddWithValue("@contact",inputContact.Text);
            cmd.Parameters.AddWithValue("@age",inputAge.Text);
            cmd.Parameters.AddWithValue("@gender",Gender.SelectedValue);
            cmd.Parameters.AddWithValue("@disies",disiese.SelectedValue);
            cmd.Parameters.AddWithValue("@city",cityName.SelectedValue);
            con.Open();
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Response.Write("<script>alert('Your Request is Send Successfully !!!!!')</script>");
               
            }
            else
            {
                Response.Write("<script>alert('Request is Failed !!!!!')</script>");
            
            }
            con.Close();
        }
    }
}