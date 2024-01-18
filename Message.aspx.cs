using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Message : System.Web.UI.Page
{
    DS_MESSAGE.MESSAGE_SELECTDataTable MDT = new DS_MESSAGE.MESSAGE_SELECTDataTable();
    DS_MESSAGETableAdapters.MESSAGE_SELECTTableAdapter MAdapter = new DS_MESSAGETableAdapters.MESSAGE_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            MDT = MAdapter.Select_By_Toname(Session["email"].ToString());
            GridView2.DataSource = MDT;
            GridView2.DataBind();
            lbl.Text = GridView2.Rows.Count.ToString();
        }
    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int mid = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);

        MAdapter.Delete(mid);
        MDT = MAdapter.Select_By_Toname(Session["email"].ToString());
        GridView2.DataSource = MDT;
        GridView2.DataBind();
        lbl.Text = GridView2.Rows.Count.ToString();
    }
}