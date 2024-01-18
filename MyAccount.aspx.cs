using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyAccount : System.Web.UI.Page
{
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        if (Page.IsPostBack == false)
        {

            UDT = UAdapter.Select_By_UID(Convert.ToInt32(Session["uid"].ToString()));
            lblfname.Text = UDT.Rows[0]["fname"].ToString();
            lbllname.Text = UDT.Rows[0]["lname"].ToString();
            lblemail.Text = UDT.Rows[0]["email"].ToString();
            lblmobile.Text = UDT.Rows[0]["mobile"].ToString();
            lblsname.Text = UDT.Rows[0]["societyname"].ToString();
            lblmember.Text = UDT.Rows[0]["member"].ToString();
            ViewState["bd"] = UDT.Rows[0]["Bdate"].ToString();
        }

    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        UDT = UAdapter.Select_By_UID(Convert.ToInt32(Session["uid"].ToString()));
        txtfname.Text = UDT.Rows[0]["fname"].ToString();
        txtlname.Text = UDT.Rows[0]["lname"].ToString();
        txtemail.Text = UDT.Rows[0]["email"].ToString();
        txtmobile.Text = UDT.Rows[0]["mobile"].ToString();
       
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        UAdapter.Update(txtfname.Text, txtlname.Text, txtemail.Text, txtmobile.Text, Convert.ToDateTime(ViewState["bd"].ToString()), Convert.ToInt32(Session["uid"].ToString()));
        UDT = UAdapter.Select_By_UID(Convert.ToInt32(Session["uid"].ToString()));
        lblfname.Text = UDT.Rows[0]["fname"].ToString();
        lbllname.Text = UDT.Rows[0]["lname"].ToString();
        lblemail.Text = UDT.Rows[0]["email"].ToString();
        lblmobile.Text = UDT.Rows[0]["mobile"].ToString();
        lblsname.Text = UDT.Rows[0]["societyname"].ToString();
        lblmember.Text = UDT.Rows[0]["member"].ToString();
        ViewState["bd"] = UDT.Rows[0]["Bdate"].ToString();
    }
}