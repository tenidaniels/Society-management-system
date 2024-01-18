using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.MasterPage
{
    DS_SOCIETY.SOCIETY_SELECTDataTable SDT = new DS_SOCIETY.SOCIETY_SELECTDataTable();
    DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter SAdapter = new DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter();

    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            UDT = UAdapter.Select_By_UID(Convert.ToInt32(Session["uid"].ToString()));
            Image2.ImageUrl = UDT.Rows[0]["image"].ToString();
            lblname.Text = Session["fname"].ToString();
            if (Page.IsPostBack == false)
            {
                SDT = SAdapter.SelectTOP10();
                GridView1.DataSource = SDT;
                GridView1.DataBind();
            }
        }
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["uid"] = null;
        Session["img"] = null;
        Response.Redirect("Default.aspx");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["sname"] = e.CommandArgument.ToString();
        Response.Redirect("LSearch.aspx");
    }
}
