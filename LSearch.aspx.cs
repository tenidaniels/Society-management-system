using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LSearch : System.Web.UI.Page
{
    DS_HOUSE.HOUSE_SELECTDataTable HDT = new DS_HOUSE.HOUSE_SELECTDataTable();
    DS_HOUSETableAdapters.HOUSE_SELECTTableAdapter HAdapter = new DS_HOUSETableAdapters.HOUSE_SELECTTableAdapter();
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            HDT = HAdapter.Select_BY_SNAME(Session["sname"].ToString());
            GridView1.DataSource = HDT;
            GridView1.DataBind();
            lblsname.Text = Session["sname"].ToString() + " - " + GridView1.Rows.Count;
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("LView.aspx?uid=" + e.CommandArgument.ToString());
    }
}