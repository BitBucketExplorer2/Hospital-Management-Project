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
using System.Net;
using System.Net.Mail;
using System.Web.Security;








namespace BTPS_Project
{
    public partial class Register : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["BTPS_Database"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            Register_Mail();
            Clear_Control();
        }

       protected void Register_Mail()
        {
            try
            {
                SqlConnection con = new SqlConnection(cs);

                Random rand = new Random();
                int value=rand.Next(100001, 999999);
                string send_from = "radhekris43@gmail.com";
                string send_to = emailAddress.Text;
                string sub = "Welcome Mr./Mrs." + fullName.Text;
                string dis= "This is One Time Password On Registered Email" + emailAddress.Text + "\t\n This is Registration number " + value+"\t\n Do'nt Share it keep Safe";


                if (string.IsNullOrEmpty(send_to))
                {
                    emailAddress.Focus();
                    Label1.Text = "Please Enter Email.....";
                    Label1.Visible = true;
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    string check_query = "select * from Register1 where email=@email and contact=@contact";
                    SqlCommand cmd = new SqlCommand(check_query, con);
                    cmd.Parameters.AddWithValue("@email", emailAddress.Text);
                    cmd.Parameters.AddWithValue("@contact", contact.Text);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        Label1.Text = "Entered Email Id Already Exist !!!";
                        Label1.Visible = true;
                        Label1.ForeColor = System.Drawing.Color.Red;
                        con.Close();
                    }
                    else
                    {
                        con.Close();
                        string insert_query = "insert into Register1 values(@name,@email,@reg,@contact,@age,@gender,@city,@add,@pass)";
                        SqlCommand cmd1 = new SqlCommand(insert_query, con);
                        cmd1.Parameters.AddWithValue("@name", fullName.Text);
                        cmd1.Parameters.AddWithValue("@email", emailAddress.Text);
                        cmd1.Parameters.AddWithValue("@reg", value);
                        cmd1.Parameters.AddWithValue("@contact", contact.Text);
                        cmd1.Parameters.AddWithValue("@age", age.Text);
                        cmd1.Parameters.AddWithValue("@gender", DropDownList2.SelectedValue);
                        cmd1.Parameters.AddWithValue("@city", DropDownList1.SelectedValue);
                        cmd1.Parameters.AddWithValue("@add", address.Text);
                        cmd1.Parameters.AddWithValue("@pass", Password1.Text);
                        con.Open();

                        int x = cmd1.ExecuteNonQuery();


                        using (MailMessage mm = new MailMessage(send_from, send_to))
                        {
                            mm.Subject = sub;
                            mm.Body = dis;
                            mm.IsBodyHtml = false;
                            SmtpClient smtpClient = new SmtpClient();
                            smtpClient.Send(mm);

                            Session["name"] = fullName.Text;
                            Session["reg_no"] = value;
                            Session["user_email"] = emailAddress.Text;
                            //Response.Redirect("Login_Email_Pass.aspx");
                            Label1.Text = "Email Sent Successfully !!!!!";
                            Label1.Visible = true;
                            Label1.ForeColor = System.Drawing.Color.Green;
                            Clear_Control();
                        }
                        con.Close();


                    }
                }


            }
            catch(Exception ex)
            {
                Label1.Text = ex.Message;
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
            }








        }
        protected void Clear_Control()
        {
            fullName.Text = emailAddress.Text = age.Text = contact.Text = address.Text=Password1.Text=" ";
            DropDownList1.ClearSelection();
            DropDownList2.ClearSelection();
        }
    }
}