using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LView : System.Web.UI.Page
{
    DS_HOUSE.HOUSE_SELECT_FOR_VIEWMOREDataTable HVDT = new DS_HOUSE.HOUSE_SELECT_FOR_VIEWMOREDataTable();
    DS_HOUSETableAdapters.HOUSE_SELECT_FOR_VIEWMORETableAdapter HVAdapter = new DS_HOUSETableAdapters.HOUSE_SELECT_FOR_VIEWMORETableAdapter();
    DS_MESSAGE.MESSAGE_SELECTDataTable MDT = new DS_MESSAGE.MESSAGE_SELECTDataTable();
    DS_MESSAGETableAdapters.MESSAGE_SELECTTableAdapter MAdapter = new DS_MESSAGETableAdapters.MESSAGE_SELECTTableAdapter();


    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Page.IsPostBack == false)
        {
            HVDT = HVAdapter.Select_View_more(1);
            lblblock.Text = HVDT.Rows[0]["blockno"].ToString();
            lbltype.Text = HVDT.Rows[0]["type"].ToString();
            lbldetail.Text = HVDT.Rows[0]["detail"].ToString();
            lblsociety.Text = HVDT.Rows[0]["sname"].ToString();
            lbladd.Text = HVDT.Rows[0]["address"].ToString();
            lblcity.Text = HVDT.Rows[0]["city"].ToString();
            lblpin.Text = HVDT.Rows[0]["pincode"].ToString();
            Image2.ImageUrl = HVDT.Rows[0]["image"].ToString();

            lblname.Text = HVDT.Rows[0]["username"].ToString();
            lblemail.Text = HVDT.Rows[0]["email"].ToString();
            lblmobile.Text = HVDT.Rows[0]["mobile"].ToString();
            Image3.ImageUrl = HVDT.Rows[0]["img"].ToString();
        }
    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        MAdapter.Insert(Session["email"].ToString(), lblemail.Text, txtsub.Text, txtmsg.Text);
        Label1.Text = "Message sent successfully";
        txtmsg.Text = "";
       
        txtsub.Text = "";
    }
}