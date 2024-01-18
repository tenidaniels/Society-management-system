using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_VHouse : System.Web.UI.Page
{
    DS_SOCIETY.SOCIETY_SELECTDataTable SDT = new DS_SOCIETY.SOCIETY_SELECTDataTable();
    DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter SAdapter = new DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter();
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();

    DS_HOUSE.HOUSE_SELECTDataTable HDT = new DS_HOUSE.HOUSE_SELECTDataTable();
    DS_HOUSETableAdapters.HOUSE_SELECTTableAdapter HAdapter = new DS_HOUSETableAdapters.HOUSE_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        if (Page.IsPostBack == false)
        {

            SDT = SAdapter.Select_Society();
            drpsocietyy.DataSource = SDT;
            drpsocietyy.DataTextField = "SName";
            drpsocietyy.DataValueField = "sid";
            drpsocietyy.DataBind();
            drpsocietyy.Items.Insert(0, "SELECT");
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        UDT = UAdapter.Select_BY_HID(Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value));
        if (UDT.Rows.Count > 0)
        {
            lblmsg.Text = "Please, Delete first member of this house";
        }
        else
        {
            HAdapter.Delete(Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value));
            HDT = HAdapter.Select_BY_SNAME(drpsocietyy.SelectedItem.Text);
            GridView1.DataSource = HDT;
            GridView1.DataBind();
            lblmsg.Text = "House Deleted Successsfully";
        }
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridView1.PageIndex = e.NewSelectedIndex;
        HDT = HAdapter.Select_BY_SNAME(drpsocietyy.SelectedItem.Text);
        GridView1.DataSource = HDT;
        GridView1.DataBind();
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        HDT = HAdapter.Select_BY_SNAME(drpsocietyy.SelectedItem.Text);
        GridView1.DataSource = HDT;
        GridView1.DataBind();
        lblmsg.Text = GridView1.Rows.Count + " - Record Found";
    }
}