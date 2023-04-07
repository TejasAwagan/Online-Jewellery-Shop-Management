using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ShopCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt =new DataTable();
        dt=(DataTable)Session["Buyitems"];
        if(dt!=null)
        {
            Label7.Text=dt.Rows.Count.ToString();
        }
        else
        {
            Label7.Text="0";
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        DropDownList dlist=(DropDownList)(e.Item.FindControl("DropDownList1"));
                    Response.Redirect("AddToCart.aspx?id=" + e.CommandArgument.ToString() + "&Qty=" + dlist.SelectedItem.ToString());
        
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}