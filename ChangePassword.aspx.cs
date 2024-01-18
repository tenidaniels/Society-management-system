using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchangepass_Click(object sender, EventArgs e)
    {
        if (txtcurrentpass.Text == Session["upass"].ToString())
        {
            UAdapter.USERMST_CHANGE_PASSWORD(Convert.ToInt32(Session["uid"].ToString()), txtnewpass.Text);
            lblpass.Text = "Password Changed Successfully.";
        }
        else
        {
            lblpass.Text = "Invalid Current  Password !!";
        }
    }
}