using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Complain : System.Web.UI.Page
{
    DS_COMPLAIN.COMPLAIN_SELECTDataTable CDT = new DS_COMPLAIN.COMPLAIN_SELECTDataTable();
    DS_COMPLAINTableAdapters.COMPLAIN_SELECTTableAdapter CAdapter = new DS_COMPLAINTableAdapters.COMPLAIN_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnmakecomplin_Click(object sender, EventArgs e)
    {
        CAdapter.Insert(Convert.ToInt32(Session["uid"].ToString()), txtsubject.Text, txtcomplain.Text, "");
        lblmcomplain.Text = "Compain send successfully";
        txtcomplain.Text = "";
        txtsubject.Text = "";

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        Label1.Text = GridView2.Rows.Count.ToString();
        CDT = CAdapter.Select_BY_UID(Convert.ToInt32(Session["uid"].ToString()));
        GridView2.DataSource = CDT;
        GridView2.DataBind();
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        CDT = CAdapter.Select_By_CID(Convert.ToInt32(e.CommandArgument.ToString()));
        ViewState["cid"] = e.CommandArgument.ToString();
        lblsub.Text = CDT.Rows[0]["subject"].ToString();
        lblcom.Text = CDT.Rows[0]["complain"].ToString();
        lblreply.Text = CDT.Rows[0]["reply"].ToString();
        Panel1.Visible = true;
    }
    protected void btnreply0_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
}