using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FPassword : System.Web.UI.Page
{
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
    }
    protected void btnpss_Click(object sender, EventArgs e)
    {
        UDT = UAdapter.Select_By_Email_Mobile(txtuser.Text, txtmobile.Text);
        if (UDT.Rows.Count == 1)
        {
            lbl.Text = "Password = " + UDT.Rows[0]["password"].ToString();
            txtmobile.Text = "";
            txtuser.Text = "";
        }
        else
        {
            lbl.Text = "Invalid email or  mobile";
        }

    }
}