﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtuname.Text == "admin" && txtupass.Text == "admin")
        {
            Response.Redirect("AddSociety.aspx");
        }
        else
        {
            lblmsg.Text = "Error !!";
        }
    }
}