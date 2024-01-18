using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    DS_SOCIETY.SOCIETY_SELECTDataTable SDT = new DS_SOCIETY.SOCIETY_SELECTDataTable();
    DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter SAdapter = new DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter();

    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        lbllogin.Text = "";
        if (Page.IsPostBack == false)
        {
            SDT = SAdapter.SelectTOP10();
            GridView1.DataSource = SDT;
            GridView1.DataBind();

        }

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        UDT = UAdapter.Select_Login(txtuname.Text, txtupass.Text);
        if (UDT.Rows.Count > 0)
        {
            Session["uid"] = UDT.Rows[0]["UID"].ToString();
                Session["uname"] = txtuname.Text;
            Session["upass"] = txtupass.Text;
            Session["fname"] = UDT.Rows[0]["fname"].ToString();
            Session["email"] = UDT.Rows[0]["email"].ToString();
            Response.Redirect("LHome.aspx");
        }
        else
        {
            lbllogin.Text = "Invalid User !!";
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["sname"] = e.CommandArgument.ToString();
        Response.Redirect("Societylist.aspx");
    }
}
