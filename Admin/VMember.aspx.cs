using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_VMember : System.Web.UI.Page
{
    DS_SOCIETY.SOCIETY_SELECTDataTable SDT = new DS_SOCIETY.SOCIETY_SELECTDataTable();
    DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter SAdapter = new DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter();
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
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
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        UAdapter.Delete(Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value));
        lblmsg.Text = "Member Deleted Successfully";
        UDT = UAdapter.Select_By_SNAM(drpsociety.SelectedItem.Text);
        GridView1.DataSource = UDT;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridView1.PageIndex = e.NewSelectedIndex;
        UDT = UAdapter.Select_By_SNAM(drpsociety.SelectedItem.Text);
        GridView1.DataSource = UDT;
        GridView1.DataBind();
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        UDT = UAdapter.Select_By_SNAM(drpsociety.SelectedItem.Text);
        GridView1.DataSource = UDT;
        GridView1.DataBind();

        lblmsg.Text = GridView1.Rows.Count + " - Record Found";
        
    }
}