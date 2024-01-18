using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MySell : System.Web.UI.Page
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
        if (Page.IsPostBack == false)
        {

            UDT = UAdapter.Select_By_UID(Convert.ToInt32(Session["uid"].ToString()));
            HDT = HAdapter.Select_By_SNAME_BLOCKNO(UDT.Rows[0]["societyname"].ToString(), Convert.ToInt32(UDT.Rows[0]["Houseid"].ToString()));

            Image3.ImageUrl = HDT.Rows[0]["image"].ToString();
            lblsname.Text = HDT.Rows[0]["sname"].ToString();
            lblbno.Text = HDT.Rows[0]["blockno"].ToString();
            lbltype.Text = HDT.Rows[0]["type"].ToString();
            ViewState["HID"] = HDT.Rows[0]["HID"].ToString();
            SellDT = SellAdapter.Select_By_UID(Convert.ToInt32(Session["uid"].ToString()));
            GridView2.DataSource = SellDT;
            GridView2.DataBind();
            if (SellDT.Rows.Count == 1)
            {
                lblrent.Text = SellDT.Rows[0]["sell"].ToString();
            }
            else
            {
                lblrent.Text = "--";
            }
        }

    }
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int sid = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
        TextBox lblr = GridView2.Rows[e.RowIndex].FindControl("txtr") as TextBox;
        SellAdapter.SELL_UPDATE_SELL(sid, Convert.ToDouble(lblr.Text));
        GridView2.EditIndex = -1;
        SellDT = SellAdapter.Select_By_UID(Convert.ToInt32(Session["uid"].ToString()));
        GridView2.DataSource = SellDT;
        GridView2.DataBind();
        if (SellDT.Rows.Count == 1)
        {
            lblrent.Text = SellDT.Rows[0]["sell"].ToString();
        }
        else
        {
            lblrent.Text = "--";
        }
    }
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex = e.NewEditIndex;
        SellDT = SellAdapter.Select_By_UID(Convert.ToInt32(Session["uid"].ToString()));
        GridView2.DataSource = SellDT;
        GridView2.DataBind();

    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int sid = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
        SellAdapter.Delete(sid);

        SellDT = SellAdapter.Select_By_UID(Convert.ToInt32(Session["uid"].ToString()));
        GridView2.DataSource = SellDT;
        GridView2.DataBind();
        lblrent.Text = "--";

    }
    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        SellDT = SellAdapter.Select_By_UID(Convert.ToInt32(Session["uid"].ToString()));
        GridView2.DataSource = SellDT;
        GridView2.DataBind();
    }
}