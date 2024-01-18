using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LHome : System.Web.UI.Page
{
    DS_HOUSE.HOUSE_SELECTDataTable HDT = new DS_HOUSE.HOUSE_SELECTDataTable();
    DS_HOUSETableAdapters.HOUSE_SELECTTableAdapter HAdapter = new DS_HOUSETableAdapters.HOUSE_SELECTTableAdapter();
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();
    DS_RENT.RENT_SELECTDataTable RentDT = new DS_RENT.RENT_SELECTDataTable();
    DS_RENTTableAdapters.RENT_SELECTTableAdapter RentAdapter = new DS_RENTTableAdapters.RENT_SELECTTableAdapter();

    DS_SELL.SELL_SELECTDataTable SellDT = new DS_SELL.SELL_SELECTDataTable();
    DS_SELLTableAdapters.SELL_SELECTTableAdapter SellAdapter = new DS_SELLTableAdapters.SELL_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblsell.Text = "";
        UDT = UAdapter.Select_By_UID(Convert.ToInt32(Session["uid"].ToString()));
        HDT = HAdapter.Select_By_SNAME_BLOCKNO(UDT.Rows[0]["societyname"].ToString(), Convert.ToInt32(UDT.Rows[0]["Houseid"].ToString()));

        Image3.ImageUrl = HDT.Rows[0]["image"].ToString();
        lblsname.Text = HDT.Rows[0]["sname"].ToString();
        lblbno.Text = HDT.Rows[0]["blockno"].ToString();
        lbltype.Text = HDT.Rows[0]["type"].ToString();
        ViewState["HID"] = HDT.Rows[0]["HID"].ToString();

    }
    protected void btnrent_Click(object sender, EventArgs e)
    {
        txtrent.Text = "";
        btnrentnow.Visible = true;
        txtrent.Visible = true;
        txtsell.Visible = false;
        btnsellnow.Visible = false;
        //RentAdapter.Insert(Convert.ToInt32(Session["HID"].ToString()),lblsname.Text,Convert.ToInt32(Session["uid"].ToString()),
    }
    protected void btnhupload_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/House/") + ViewState["HID"] + "_" + FileUpload1.FileName);
        HAdapter.HOUSE_CHANGE_IMAGE(Convert.ToInt32(ViewState["HID"].ToString()), "~/House/" + ViewState["HID"].ToString()+"_" +FileUpload1.FileName);
        lblhupload.Text = "House Image Updated";
        Response.Redirect("LHome.aspx");
    }
    protected void btnpupload_Click(object sender, EventArgs e)
    {
        FileUpload2.SaveAs(Server.MapPath("~/Member/") + lblbno.Text + "_" + FileUpload2.FileName);
        UAdapter.USERMST_CHANGE_PICTURE(Convert.ToInt32(Session["uid"].ToString()), "~/Member/" + lblbno.Text + "_" + FileUpload2.FileName);
        lblpupload.Text = "Profile Picture Updated";
        Response.Redirect("LHome.aspx");
    }
    protected void btnsell_Click(object sender, EventArgs e)
    {
        txtsell.Text = "";
        btnrentnow.Visible = false;
        txtrent.Visible = false;
        txtsell.Visible = true;
        btnsellnow.Visible = true;
    }
    protected void btnrentnow_Click(object sender, EventArgs e)
    {
        if (txtrent.Text == "")
        {
            lblsell.Text = "Enter rent price";
        }
        else
        {
            RentDT = RentAdapter.Select_By_UID(Convert.ToInt32(Session["uid"].ToString()));
            if (RentDT.Rows.Count > 0)
            {
                lblsell.Text = "Rent Request Already Sent.";
            }
            else
            {
                RentAdapter.Insert(Convert.ToInt32(ViewState["HID"].ToString()), lblsname.Text, Convert.ToInt32(Session["uid"].ToString()), Convert.ToDouble(txtrent.Text));
                txtrent.Visible = false;
                btnrentnow.Visible = false;
                txtrent.Text = "";
                lblsell.Text = "Rent Request Successfully";
            }
        }
    }
    protected void btnsellnow_Click(object sender, EventArgs e)
    {
        if (txtsell.Text == "")
        {
            lblsell.Text = "Enter sell price";
        }
        else
        {
            SellDT = SellAdapter.Select_By_UID(Convert.ToInt32(Session["uid"].ToString()));

            if (SellDT.Rows.Count > 0)
            {
                lblsell.Text = "Sell Request Already Sent.";
            }
            else
            {
                SellAdapter.Insert(Convert.ToInt32(ViewState["HID"].ToString()), lblsname.Text, Convert.ToInt32(Session["uid"].ToString()), Convert.ToDouble(txtsell.Text));
                txtsell.Visible = false;
                btnsellnow.Visible = false;
                txtsell.Text = "";
                lblsell.Text = "Sell Request Successfully";
            }
        }
    }
}