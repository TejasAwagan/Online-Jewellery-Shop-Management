using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class PlaceOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("prodid");
            dt.Columns.Add("prodname");
            dt.Columns.Add("prodgram");
            dt.Columns.Add("proprice");
            dt.Columns.Add("prodimg");




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
                    int quantity = Convert.ToInt32(Request.QueryString["Qty"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["Buyitems"] = dt;
                    GridView1.FooterRow.Cells[4].Text = "totalamount";
                    GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
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
                    dr["sno"] = sr + 1;
                    dr["prodid"] = ds.Tables[0].Rows[0]["prodid"].ToString();
                    dr["prodimg"] = ds.Tables[0].Rows[0]["prodimg"].ToString();
                    dr["prodname"] = ds.Tables[0].Rows[0]["prodname"].ToString();

                    dr["proprice"] = ds.Tables[0].Rows[0]["proprice"].ToString();
                    dr["prodgram"] = Request.QueryString["Qty"].ToString();
                    //dr["prodquantity"] = ds.Tables[0].Rows[0]["prodquantity"].ToString();
                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity = Convert.ToInt32(Request.QueryString["Qty"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["Buyitems"] = dt;
                    GridView1.FooterRow.Cells[4].Text = "totalamount";
                    GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");
                }
            }
            else
            {
                dt = (DataTable)Session["Buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[4].Text = "totalamount";
                    GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                }

            }
            //Label2.Text = GridView1.Rows.Count.ToString();
        }
        Label4.Text = DateTime.Now.ToShortDateString();
        findorderid();

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
    public void findorderid()
    {
        String pass = "abcdefghijklmnopqrstuvwxyz123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(35 * r.NextDouble())];
        }
        String orderid;
        orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);
        Label3.Text = orderid;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt;
        dt = (DataTable)Session["Buyitems"];
        for(int i=0;i<=dt.Rows.Count-1;i++)
        {
            String updatepass="insert into tbl_OrderDetails(orderid,sno,prodid,prodname,proprice,prodgram,dateoforder) values('"+Label3.Text+"',"+dt.Rows[i]["sno"]+","+dt.Rows[i]["prodid"]+",'"+dt.Rows[i]["prodname"]+"',"+dt.Rows[i]["proprice"]+","+dt.Rows[i]["prodgram"]+",'"+Label4.Text+"')";
                String mycon1="Data Source=.\\SQLEXPRESS;Initial Catalog=DemoDB;Integrated Security=True";
            SqlConnection s=new SqlConnection(mycon1);
            s.Open();
            SqlCommand cmd1=new SqlCommand();
            cmd1.CommandText=updatepass;
            cmd1.Connection=s;
            cmd1.ExecuteNonQuery();
            s.Close();
        }
        saveaddress();
        Response.Redirect("PlacedSuccessfully.aspx?orderid="+Label3.Text);
    }
    public void saveaddress()
    {
        String updatepass="insert into tbl_OrderAddress(orderid,address,mobilenumber) values('"+Label3.Text+"','"+TextBox1.Text+"','"+TextBox2.Text+"')";
            String mycon1="Data Source=.\\SQLEXPRESS;Initial Catalog=DemoDB;Integrated Security=True";
            SqlConnection s=new SqlConnection(mycon1);
            s.Open();
            SqlCommand cmd1=new SqlCommand();
            cmd1.CommandText=updatepass;
            cmd1.Connection=s;
            cmd1.ExecuteNonQuery();
            s.Close();
    }
}


    