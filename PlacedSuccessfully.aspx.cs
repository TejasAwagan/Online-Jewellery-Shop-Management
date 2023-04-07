using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

public partial class PlacedSuccessfully : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Text = Request.QueryString["orderid"];
        Label5.Text = Label4.Text;
        findorderdate(Label4.Text);
        findaddress(Label5.Text);
        showgrid(Label4.Text);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        exportpdf();

    }
    public void exportpdf()
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        Panel1.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();

    }
    public void findorderdate(String Orderid)
    {
        String mycon = "Data Source=.\\SQLEXPRESS; Initial Catalog=DemoDB; Integrated Security=True";
        String myquery = "Select * from tbl_OrderDetails where orderid='" + Orderid + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da=new SqlDataAdapter();
        da.SelectCommand=cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label7.Text = ds.Tables[0].Rows[0]["dateoforder"].ToString();
        }
        con.Close();
    }
    public void findaddress(String Orderid)
    {
        String mycon = "Data Source=.\\SQLEXPRESS; Initial Catalog=DemoDB; Integrated Security=True";
        String myquery = "Select * from tbl_OrderAddress where orderid='" + Orderid + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da=new SqlDataAdapter();
        da.SelectCommand=cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label8.Text = ds.Tables[0].Rows[0]["address"].ToString();
        }
        con.Close();

    }

    //Grid Code 1
    public void showgrid(String orderid)
    {
        DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("prodid");
            dt.Columns.Add("prodname");
            dt.Columns.Add("prodgram");
            dt.Columns.Add("proprice");
            dt.Columns.Add("totalprice");
            String mycon = "Data Source=.\\SQLEXPRESS; Initial Catalog=DemoDB; Integrated Security=True";
        SqlConnection con = new SqlConnection(mycon);
        String myquery = "Select * from tbl_Orderdetails where orderid='" + orderid + "'";
        SqlCommand cmd=new SqlCommand();
        cmd.CommandText=myquery;
        cmd.Connection=con;
        SqlDataAdapter da=new SqlDataAdapter();
        da.SelectCommand=cmd;
        DataSet ds=new DataSet();
        da.Fill(ds);
        int totalrows=ds.Tables[0].Rows.Count;
        int i=0;
        int grandtotal=0;

        //grid code 2

        while(i<totalrows)
        {
            dr=dt.NewRow();
            dr["sno"]=ds.Tables[0].Rows[i]["sno"].ToString();
            dr["prodid"]=ds.Tables[0].Rows[i]["prodid"].ToString();
            dr["prodname"]=ds.Tables[0].Rows[i]["prodname"].ToString();
            dr["prodgram"]=ds.Tables[0].Rows[i]["prodgram"].ToString();
            dr["proprice"]=ds.Tables[0].Rows[i]["proprice"].ToString();
            int price=Convert.ToInt32(ds.Tables[0].Rows[i]["proprice"].ToString());
            int gram=Convert.ToInt32(ds.Tables[0].Rows[i]["prodgram"].ToString());
            int totalprice=price*gram;
            dr["totalprice"]=totalprice;
            grandtotal=grandtotal+totalprice;
            dt.Rows.Add(dr);
            i=i+1;
    }
        GridView1.DataSource=dt;
        GridView1.DataBind();
        Label9.Text=grandtotal.ToString();
}
    public override void VerifyRenderingInServerForm(Control control)
    {

    }
    
}