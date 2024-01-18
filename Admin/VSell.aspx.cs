using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_VSell : System.Web.UI.Page
{
    DS_SELL.SELL_SELECT_FOR_ADMINDataTable SADT = new DS_SELL.SELL_SELECT_FOR_ADMINDataTable();
    DS_SELLTableAdapters.SELL_SELECT_FOR_ADMINTableAdapter SAAdapter = new DS_SELLTableAdapters.SELL_SELECT_FOR_ADMINTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SADT = SAAdapter.Select_for_admin();
            GridView1.DataSource = SADT;
            GridView1.DataBind();
            lbl.Text = "Total Sell Reocord - " + GridView1.Rows.Count.ToString();
        }
    }
    protected void GridView2_RowCancel(object sender, GridViewCancelEditEventArgs e)
    {

    }
}