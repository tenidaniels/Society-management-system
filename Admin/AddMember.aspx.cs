using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddMember : System.Web.UI.Page
{
    DS_SOCIETY.SOCIETY_SELECTDataTable SDT = new DS_SOCIETY.SOCIETY_SELECTDataTable();
    DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter SAdapter = new DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter();

    DS_HOUSE.HOUSE_SELECTDataTable HDT = new DS_HOUSE.HOUSE_SELECTDataTable();
    DS_HOUSETableAdapters.HOUSE_SELECTTableAdapter HAdapter = new DS_HOUSETableAdapters.HOUSE_SELECTTableAdapter();

    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            SDT = SAdapter.Select_Society();
            drpsociety.DataSource = SDT;
            drpsociety.DataTextField = "SName";
            drpsociety.DataValueField = "sid";
            drpsociety.DataBind();
            drpsociety.Items.Insert(0, "SELECT");
        }
    }
    protected void txtdetai1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void drpsociety_SelectedIndexChanged(object sender, EventArgs e)
    {
        HDT = HAdapter.Seelct_By_SNAME_FOR_NEW_HOUSE(drpsociety.SelectedItem.Text);
        drpno.DataSource = HDT;
        drpno.DataTextField = "BlockNo";
        drpno.DataValueField = "HID";
        drpno.DataBind();

        drpno.Items.Insert(0, "SELECT");

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        if (drpdd.SelectedIndex == 0 || drpmm.SelectedIndex == 0 || drpyyyy.SelectedIndex == 0)
        {

            lblmsg.Text = "Select  Proper Birth Date";
        }
        else
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/Member/") + drpno.SelectedItem.Text +"_"+ FileUpload1.FileName);
                DateTime bdate = Convert.ToDateTime(drpdd.SelectedItem.Text + " " + drpmm.SelectedItem.Text + " " + drpyyyy.SelectedItem.Text);

                UAdapter.Insert(txtfname.Text, txtlname.Text, txtemail.Text, txtmobile.Text, bdate, Convert.ToInt32(drpno.SelectedItem.Text), drpsociety.SelectedItem.Text, Convert.ToInt32(txtmember.Text), txtuname.Text, txtupass.Text,"~/Member/"+drpno.SelectedItem.Text +"_"+FileUpload1.FileName.ToString());
                lblmsg.Text = "Member Added Successfully";
                txtfname.Text = "";
                txtlname.Text = "";
                txtemail.Text = "";
                txtmobile.Text = "";
                drpdd.SelectedIndex = 0;
                drpmm.SelectedIndex = 0;
                drpyyyy.SelectedIndex = 0;
                txtuname.Text = "";
                txtmember.Text = "";
                drpsociety.SelectedIndex = 0;
                drpno.Items.Clear();

            }
            else
            {
                lblmsg.Text = "Select User Photo";
            }
        }
    }
}