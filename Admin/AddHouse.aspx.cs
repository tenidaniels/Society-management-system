using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddHouse : System.Web.UI.Page
{
    DS_SOCIETY.SOCIETY_SELECTDataTable SDT = new DS_SOCIETY.SOCIETY_SELECTDataTable();
    DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter SAdapter = new DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter();

    DS_HOUSE.HOUSE_SELECTDataTable HDT = new DS_HOUSE.HOUSE_SELECTDataTable();
    DS_HOUSETableAdapters.HOUSE_SELECTTableAdapter HAdapter = new DS_HOUSETableAdapters.HOUSE_SELECTTableAdapter();
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
            //HDT = HAdapter.SelectHouse();
            //GridView1.DataSource = HDT;
            //GridView1.DataBind();
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {

        if (Convert.ToInt32(txtblockname.Text) > Convert.ToInt32(ViewState["home"].ToString()))
        {
            lblmsg.Text = "BlockNo must be less than total no of house";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
        else
        {

            SDT = SAdapter.Select_By_SID(Convert.ToInt32(drpsociety.SelectedValue));

            HAdapter.Insert(Convert.ToInt32(txtblockname.Text), drptype.SelectedItem.Text, txtdetai.Text, drpsociety.SelectedItem.Text, SDT.Rows[0]["image"].ToString());
            lblmsg.Text = "House Added Successfully";
            lblmsg.ForeColor = System.Drawing.Color.Green;
            txtblockname.Text = "";
            txtdetai.Text = "";
            drptype.SelectedIndex = 0;


            SDT = SAdapter.Select_By_SID(Convert.ToInt32(drpsociety.SelectedValue));
            lblhome.Text = "Total House - " + SDT.Rows[0]["nohouse"].ToString();

            HDT = HAdapter.Select_BY_SNAME(drpsociety.SelectedItem.Text);
            if (HDT.Rows.Count == 0)
            {
                lblallocate.Text = "Allocated House - 0"; lblrem.Text = "Remaining House - " + SDT.Rows[0]["nohouse"].ToString();
            }
            else
            {
                int rem = Convert.ToInt32(SDT.Rows[0]["nohouse"].ToString()) - HDT.Rows.Count;
                lblrem.Text = "Remaining House - " + rem.ToString();
                lblallocate.Text = "Allocated House - " + HDT.Rows.Count.ToString();
            }
        }
    }
    protected void drpsociety_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drpsociety.SelectedIndex == 0)
        {
            lblhome.Text = "";
            lblallocate.Text = "";
            lblrem.Text = "";
        }
        else
        {

            SDT = SAdapter.Select_By_SID(Convert.ToInt32(drpsociety.SelectedValue));
            lblhome.Text = "Total House - " + SDT.Rows[0]["nohouse"].ToString();
            ViewState["home"] = SDT.Rows[0]["nohouse"].ToString();

            HDT = HAdapter.Select_BY_SNAME(drpsociety.SelectedItem.Text);
            if (HDT.Rows.Count == 0)
            {
                lblallocate.Text = "Allocated House - 0";
                lblrem.Text = "Remaining House - " + SDT.Rows[0]["nohouse"].ToString();
            }
            else
            {
                int rem = Convert.ToInt32(SDT.Rows[0]["nohouse"].ToString()) - HDT.Rows.Count;
                lblrem.Text = "Remaining House - " + rem.ToString();
                lblallocate.Text = "Allocated House - " + HDT.Rows.Count.ToString();
            }
        
        }
    }
}