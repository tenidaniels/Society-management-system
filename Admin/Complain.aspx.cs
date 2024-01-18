using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Complain : System.Web.UI.Page
{
    DS_COMPLAIN.COMPLAIN_SELECTDataTable CDT = new DS_COMPLAIN.COMPLAIN_SELECTDataTable();
    DS_COMPLAINTableAdapters.COMPLAIN_SELECTTableAdapter CAdapter = new DS_COMPLAINTableAdapters.COMPLAIN_SELECTTableAdapter();

    DS_COMPLAIN.COMPLAIN_SELECT_for_ADMINDataTable CADT = new DS_COMPLAIN.COMPLAIN_SELECT_for_ADMINDataTable();
    DS_COMPLAINTableAdapters.COMPLAIN_SELECT_for_ADMINTableAdapter CAAdapter = new DS_COMPLAINTableAdapters.COMPLAIN_SELECT_for_ADMINTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        CADT = CAAdapter.Select_For_Adminn("Pending");
        GridView3.DataSource = CADT;
        GridView3.DataBind();
        lblnewc.Text = GridView3.Rows.Count.ToString();

    }
    protected void btnsolvd_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        CADT = CAAdapter.Select_For_Adminn("Solved");
        GridView4.DataSource = CADT;
        GridView4.DataBind();
        lblsol.Text = GridView4.Rows.Count.ToString();
    }
    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        CDT = CAdapter.Select_By_CID(Convert.ToInt32(e.CommandArgument.ToString()));
        ViewState["cid"] = e.CommandArgument.ToString();
        lblsub.Text = CDT.Rows[0]["subject"].ToString();
        lblcom.Text = CDT.Rows[0]["complain"].ToString();
        Panel1.Visible = true;
    }
    protected void btnreply_Click(object sender, EventArgs e)
    {
        CAdapter.COMPLAIN_SOLVED(Convert.ToInt32(ViewState["cid"].ToString()), txtreplyyy.Text);
        txtreplyyy.Text = "";
        Panel1.Visible = false;
        MultiView1.ActiveViewIndex = 0;
        CADT = CAAdapter.Select_For_Adminn("Pending");
        GridView3.DataSource = CADT;
        GridView3.DataBind();
        lblnewc.Text = GridView3.Rows.Count.ToString();
    }
    protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        CDT = CAdapter.Select_By_CID(Convert.ToInt32(e.CommandArgument.ToString()));
        ViewState["cid"] = e.CommandArgument.ToString();
        lblsub0.Text = CDT.Rows[0]["subject"].ToString();
        lblcom0.Text = CDT.Rows[0]["complain"].ToString();
        txtreplyyy0.Text = CDT.Rows[0]["Reply"].ToString();
        Panel2.Visible = true;
    }
    protected void btnreply0_Click(object sender, EventArgs e)
    {
        CAdapter.COMPLAIN_SOLVED(Convert.ToInt32(ViewState["cid"].ToString()), txtreplyyy0.Text);
        txtreplyyy0.Text = "";
        Panel2.Visible = false;
        MultiView1.ActiveViewIndex = 1;
        CADT = CAAdapter.Select_For_Adminn("Solved");
        GridView4.DataSource = CADT;
        GridView4.DataBind();
        lblsol.Text = GridView4.Rows.Count.ToString();
    }
}