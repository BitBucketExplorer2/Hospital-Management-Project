﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTPS_Project.User
{
    public partial class DASHBOARD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Reg"] != null)
            {
                //Response.Redirect("~/Login.aspx");
            }
            else if (Session["u_name"] != null)
            {

            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}