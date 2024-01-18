using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddSociety : System.Web.UI.Page
{
    DS_SOCIETY.SOCIETY_SELECTDataTable SDT = new DS_SOCIETY.SOCIETY_SELECTDataTable();
    DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter SAdapter = new DS_SOCIETYTableAdapters.SOCIETY_SELECTTableAdapter();

    DS_HOUSE.HOUSE_SELECTDataTable HDT = new DS_HOUSE.HOUSE_SELECTDataTable();
    DS_HOUSETableAdapters.HOUSE_SELECTTableAdapter HAdapter = new DS_HOUSETableAdapters.HOUSE_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmg.Text = "";
        if (Page.IsPostBack == false)
        {
            SDT = SAdapter.Select_Society();
            GridView1.DataSource = SDT;
            GridView1.DataBind();
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Society/") + txtsname.Text+"_" + FileUpload1.FileName);
            SAdapter.Insert(txtsname.Text, txtadd.Text, txtcity.Text, txtpincode.Text, Convert.ToInt32(txtnohouse.Text), "~/Society/" + txtsname.Text + "_" + FileUpload1.FileName.ToString());
            lblmg.Text = "Society Added Successfully";

            txtadd.Text = "";
            txtcity.Text = "";
            txtnohouse.Text = "";
            txtpincode.Text = "";
            txtsname.Text = "";

        }
        else
        {
            lblmg.Text = "Select Society Photo";
        }
            SDT = SAdapter.Select_Society();

        GridView1.DataSource = SDT;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SDT = SAdapter.Select_By_SID(Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value));
        HDT = HAdapter.Select_BY_SNAME(SDT.Rows[0]["sname"].ToString());

        if (HDT.Rows.Count > 0)
        {
            lblmg.Text = "Please, delete first all houses of this society";
        }
        else
        {

            SAdapter.Delete(Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value));
            SDT = SAdapter.Select_Society();

            GridView1.DataSource = SDT;
            GridView1.DataBind();
            lblmg.Text = "Society  Deleted";
        }
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridView1.PageIndex = e.NewSelectedIndex;
        SDT = SAdapter.Select_Society();

        GridView1.DataSource = SDT;
        GridView1.DataBind();
    }
}