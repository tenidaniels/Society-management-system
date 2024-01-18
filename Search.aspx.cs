using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    DS_SOCIETY.SOCIETY_SELECTDataTable SDT = new DS_SOCIETY.SOCIETY_SELECTDataTable();
    DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter SAdapter = new DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter();

    DS_SELL.SELL_SELECT_FOR_USERDataTable SUDT = new DS_SELL.SELL_SELECT_FOR_USERDataTable();
    DS_SELLTableAdapters.SELL_SELECT_FOR_USERTableAdapter SUAdapter = new DS_SELLTableAdapters.SELL_SELECT_FOR_USERTableAdapter();

    DS_RENT.RENT_SELECT_FOR_USERDataTable RUDT = new DS_RENT.RENT_SELECT_FOR_USERDataTable();
    DS_RENTTableAdapters.RENT_SELECT_FOR_USERTableAdapter RUAdapter = new DS_RENTTableAdapters.RENT_SELECT_FOR_USERTableAdapter();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SDT = SAdapter.SelectTOP10();
            DropDownList1.DataSource = SDT;
            DropDownList1.DataTextField = "Sname";
            DropDownList1.DataValueField = "sid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "SELECT");
        }
        lblsearch.Text = "";
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0 || DropDownList2.SelectedIndex == 0)
        {
            lblsearch.Text = "Select Proper Search Criteria";
            MultiView1.ActiveViewIndex = -1;
        }
         else if (DropDownList2.SelectedIndex == 1)
        {

            RUDT = RUAdapter.Select_SEARCH(DropDownList1.SelectedItem.Text);
            GridView1.DataSource = RUDT;
            GridView1.DataBind();
            lblsearch.Text = "Rent Search Result - " + GridView1.Rows.Count.ToString();
            MultiView1.ActiveViewIndex = 0;
        }
        else if (DropDownList2.SelectedIndex == 2)
        {
            SUDT = SUAdapter.Select_SEARCH(DropDownList1.SelectedItem.Text);
            GridView2.DataSource = SUDT;
            GridView2.DataBind();
            lblsearch.Text = "Sell Search Result - " + GridView2.Rows.Count.ToString();
            MultiView1.ActiveViewIndex = 1;
        }

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("View.aspx?uid=" + e.CommandArgument.ToString());
    }
}