using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_VRent : System.Web.UI.Page
{
    DS_RENT.RENT_SELECT_FOR_ADMINDataTable RADT = new DS_RENT.RENT_SELECT_FOR_ADMINDataTable();
    DS_RENTTableAdapters.RENT_SELECT_FOR_ADMINTableAdapter RAAdapter = new DS_RENTTableAdapters.RENT_SELECT_FOR_ADMINTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            RADT = RAAdapter.Select_for_Admin();
            GridView1.DataSource = RADT;
            GridView1.DataBind();
            lbl.Text = "Total Rent Record - " + GridView1.Rows.Count.ToString();
        }

    }
}