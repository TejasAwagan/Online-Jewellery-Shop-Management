using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class AddToCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("prodid");
            dt.Columns.Add("prodimg");
            dt.Columns.Add("prodname");
            dt.Columns.Add("proprice");
            dt.Columns.Add("prodgram");
            
            dt.Columns.Add("totalprice");

            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {
                    dr = dt.NewRow();
                    String mycon = "Data Source=.\\SQLEXPRESS; Integrated Security=true; Initial Catalog=DemoDB";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "Select * from tbl_product where prodid=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["prodid"] = ds.Tables[0].Rows[0]["prodid"].ToString();
                    dr["prodimg"] = ds.Tables[0].Rows[0]["prodimg"].ToString();
                    dr["prodname"] = ds.Tables[0].Rows[0]["prodname"].ToString();
                    
                    dr["proprice"] = ds.Tables[0].Rows[0]["proprice"].ToString();
                    dr["prodgram"] = Request.QueryString["Qty"].ToString();
                    //dr["prodquantity"] = ds.Tables[0].Rows[0]["prodquantity"].ToString();
                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["proprice"].ToString());
                    int quantity=Convert.ToInt32(Request.QueryString["Qty"].ToString());
                    int totalprice=price*quantity;
                    dr["totalprice"]=totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["Buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text="totalamount";
                    GridView1.FooterRow.Cells[6].Text=grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");
                }
                else
                {
                    dt = (DataTable)Session["Buyitems"];
                    int sr;
                    sr = dt.Rows.Count;
                    dr = dt.NewRow();
                    String mycon = "Data Source=.\\SQLEXPRESS; Integrated Security=true; Initial Catalog=DemoDB";
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "Select * from tbl_product where prodid=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr+1;
                    dr["prodid"] = ds.Tables[0].Rows[0]["prodid"].ToString();
                    dr["prodimg"] = ds.Tables[0].Rows[0]["prodimg"].ToString();
                    dr["prodname"] = ds.Tables[0].Rows[0]["prodname"].ToString();
                    
                    dr["proprice"] = ds.Tables[0].Rows[0]["proprice"].ToString();
                    dr["prodgram"] = Request.QueryString["Qty"].ToString();
                    //dr["prodquantity"] = ds.Tables[0].Rows[0]["prodquantity"].ToString();
                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["proprice"].ToString());
                    int quantity=Convert.ToInt32(Request.QueryString["Qty"].ToString());
                    int totalprice=price*quantity;
                    dr["totalprice"]=totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["Buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text="totalamount";
                    GridView1.FooterRow.Cells[6].Text=grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");                }
            }
            else
            {
                dt = (DataTable)Session["Buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if(GridView1.Rows.Count>0)
                {
                    GridView1.FooterRow.Cells[5].Text="totalamount";
                    GridView1.FooterRow.Cells[6].Text=grandtotal().ToString();
                }
                
            }
            Label2.Text=GridView1.Rows.Count.ToString();
        }
    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["Buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        try
        {
            while (i <= nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
                i = i + 1;
            }
        }
        catch (IndexOutOfRangeException ex)
        {
            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('Error In Page !!!');" + ex.Message, true);
        }
        return gtotal;
    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["Buyitems"];
        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text;
            dtdata = sr.ToString();
            sr1 = Convert.ToInt32(qdata);
            if (sr == sr1)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();
                break;
            }
        }
        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["sno"] = i;
            dt.AcceptChanges();
        }
        Session["Buyitems"] = dt;
        Response.Redirect("AddToCart.aspx");

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("EditOrder.aspx?sno=" + GridView1.SelectedRow.Cells[0].Text);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("PlaceOrder.aspx");
    }
}
