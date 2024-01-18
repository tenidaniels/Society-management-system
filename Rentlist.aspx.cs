using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rentlist : System.Web.UI.Page
{
    DS_RENT.RENT_SELECT_FOR_USERDataTable RUDT = new DS_RENT.RENT_SELECT_FOR_USERDataTable();
    DS_RENTTableAdapters.RENT_SELECT_FOR_USERTableAdapter RUAdapter = new DS_RENTTableAdapters.RENT_SELECT_FOR_USERTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            RUDT = RUAdapter.Select_Rent_for_USER();
            GridView1.DataSource = RUDT;
            GridView1.DataBind();
            lblsname.Text = "Total Rent Record - " + GridView1.Rows.Count.ToString();          
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       Response.Redirect("View.aspx?uid=" + e.CommandArgument.ToString());

    }
}