using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Selllist : System.Web.UI.Page
{
    DS_SELL.SELL_SELECT_FOR_USERDataTable SUDT = new DS_SELL.SELL_SELECT_FOR_USERDataTable();
    DS_SELLTableAdapters.SELL_SELECT_FOR_USERTableAdapter SUAdapter = new DS_SELLTableAdapters.SELL_SELECT_FOR_USERTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SUDT = SUAdapter.Select_sell_for_USER();
            GridView1.DataSource = SUDT;
            GridView1.DataBind();
            lblsname.Text = "Total Sell Record - " + GridView1.Rows.Count.ToString();     
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("View.aspx?uid=" + e.CommandArgument.ToString());
    }
}