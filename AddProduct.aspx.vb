Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.UI.WebControls
Imports System.io

Partial Class AddProduct
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("dbconnect").ConnectionString)
        Dim sda As New SqlDataAdapter
        Dim ds As New DataSet
        con.Open()
        If FileUpload1.HasFile Then
            Dim strimg As String = FileUpload1.FileName.ToString
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/") + strimg)

            Dim cmd As New SqlCommand("insert into tbl_product(prodname,prodcat,prodgram,proprice,sDesc,lDesc,prodimg)values(@prodname,@prodcat,@prodgram,@proprice,@sDesc,@lDesc,@prodimg)", con)
            'cmd.Parameters.AddWithValue("@prodid", TextBox1.Text)'
            cmd.Parameters.AddWithValue("@prodname", TextBox2.Text)
            cmd.Parameters.AddWithValue("@prodcat", DropDownList1.SelectedValue.ToString)
            cmd.Parameters.AddWithValue("@prodgram", TextBox3.Text)
            cmd.Parameters.AddWithValue("@proprice", TextBox4.Text)
            cmd.Parameters.AddWithValue("@sDesc", TextBox5.Text)
            cmd.Parameters.AddWithValue("@lDesc", TextBox6.Text)
            strimg = "\Upload\" + strimg.ToString
            cmd.Parameters.AddWithValue("@prodimg", strimg.ToString)
            cmd.ExecuteNonQuery()

            lblresult.Text = "Product Saved Successfully !!!"
        Else
            lblresult.Text = "Please Upload Image"

        End If
        con.Close()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        Response.Redirect("AddProduct.aspx")


    End Sub

    Protected Sub xcPage_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("dbconnect").ConnectionString)
        Dim cmd As New SqlCommand
        Dim numid As New Integer
        con.Open()
        cmd = New SqlCommand("select max(prodid) from tbl_product", con)
        cmd.ExecuteNonQuery()
        If IsDBNull(cmd.ExecuteScalar) Then
            numid = 1
            TextBox1.Text = numid
        Else
            numid = cmd.ExecuteScalar + 1
            TextBox1.Text = numid
        End If

    End Sub

    
   
    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Image1.ImageUrl = "~/Upload/" & Path.GetFileName(FileUpload1.FileName)
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("dbconnect").ConnectionString)
        Dim sda As SqlDataReader
        Dim cmd As New SqlCommand
        Dim numid As String
        numid = InputBox("Enter Product Id")

        con.Open()
        cmd = New SqlCommand("select prodid,prodname,prodgram,proprice,sDesc,lDesc from tbl_product where prodid='" + numid + "'", con)
        cmd.CommandType = CommandType.Text
        sda = cmd.ExecuteReader()
        sda.Read()
        TextBox1.Text = sda("prodid").ToString
        TextBox2.Text = sda("prodname").ToString
        TextBox3.Text = sda("prodgram").ToString
        TextBox4.Text = sda("proprice").ToString
        TextBox5.Text = sda("sDesc").ToString
        TextBox6.Text = sda("lDesc").ToString

        con.Close()
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Response.Redirect("admin.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("ShowProduct.aspx")
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("EditProduct.aspx")
    End Sub
End Class
