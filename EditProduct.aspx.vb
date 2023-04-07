Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.UI.WebControls
Partial Class EditProduct
    Inherits System.Web.UI.Page
    Public sda As New SqlDataAdapter()
    Public con As New SqlConnection(ConfigurationManager.ConnectionStrings("dbconnect").ConnectionString)
    Public ds As New DataSet()
    Public cmd As New SqlCommand()

    Public Sub BindData()
        If con.State <> ConnectionState.Open Then
            con.Open()

            cmd.CommandText = "Select * from tbl_product"
            cmd.Connection = con
            sda = New SqlDataAdapter(cmd)
            sda.Fill(ds)
            cmd.ExecuteNonQuery()
            GridView1.DataSource = ds
            GridView1.DataBind()
            con.Close()

        End If
    End Sub




    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            BindData()

        End If
        ' If con.State <> ConnectionState.Open Then
        'con.Open()
        'cmd = New SqlCommand("select * from tbl_category", con)
        'sda = New SqlDataAdapter(cmd)
        'Dim dt As New DataTable
        'sda.Fill(dt)
        'dropcat.DataSource = dt
        'dropcat.DataTextField = "catname"
        'dropcat.DataValueField = "catname"
        'dropcat.DataBind()
        'dropcat.Items.Insert(0, New ListItem("", ""))
        'End If
    End Sub

    Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        BindData()

    End Sub

    Protected Sub GridView1_RowCancelingEdit(sender As Object, e As GridViewCancelEditEventArgs) Handles GridView1.RowCancelingEdit

        GridView1.EditIndex = -1
        BindData()
    End Sub

    Protected Sub GridView1_RowDeleting(sender As Object, e As GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        If con.State <> ConnectionState.Open Then
            con.Open()
        End If


        cmd.Connection = con

        Dim lbldeleteID As Label = DirectCast(GridView1.Rows(e.RowIndex).FindControl("lblprodid"), Label)
        cmd.CommandText = "Delete from tbl_product where prodid='" & lbldeleteID.Text & "'"
        cmd.ExecuteNonQuery()
        BindData()
        con.Close()
        Response.Redirect("EditProduct.aspx")

    End Sub

    Protected Sub GridView1_RowEditing(sender As Object, e As GridViewEditEventArgs) Handles GridView1.RowEditing
        GridView1.EditIndex = e.NewEditIndex
        BindData()
    End Sub

    Protected Sub GridView1_RowUpdating(sender As Object, e As GridViewUpdateEventArgs) Handles GridView1.RowUpdating
        If con.State <> ConnectionState.Open Then
            con.Open()
        End If

        Dim fileu1 As FileUpload = DirectCast(GridView1.Rows(e.RowIndex).FindControl("file1"), FileUpload)
        Dim lblprodId As Label = DirectCast(GridView1.Rows(e.RowIndex).FindControl("lblprodid"), Label)
        Dim txtpname As TextBox = DirectCast(GridView1.Rows(e.RowIndex).FindControl("txtName"), TextBox)
        Dim txtpcat As TextBox = DirectCast(GridView1.Rows(e.RowIndex).FindControl("txtcate"), TextBox)
        Dim txtsdesc As TextBox = DirectCast(GridView1.Rows(e.RowIndex).FindControl("txtsdes"), TextBox)
        Dim txtldesc As TextBox = DirectCast(GridView1.Rows(e.RowIndex).FindControl("txtldescp"), TextBox)
        Dim txtpprice As TextBox = DirectCast(GridView1.Rows(e.RowIndex).FindControl("txtpri"), TextBox)
        Dim txtpqty As TextBox = DirectCast(GridView1.Rows(e.RowIndex).FindControl("txtqtyn"), TextBox)
        Dim txtpdisc As TextBox = DirectCast(GridView1.Rows(e.RowIndex).FindControl("txtdiscn"), TextBox)

        Dim strimage As String = fileu1.FileName.ToString
        'fileu1.PostedFile.SaveAs(Server.MapPath("~/Upload/") + strimage)
        strimage = "Upload\" + strimage.ToString
        cmd.Connection = con
        cmd.CommandText = "Update tbl_product set prodname='" & txtpname.Text & "',prodcat='" &
txtpcat.Text & "',sDesc='" & txtsdesc.Text & "',lDesc='" & txtldesc.Text & "',proprice='" &
txtpprice.Text & "',prodgram='" & txtpqty.Text & "',prodimg='" & strimage & "' where prodid='" & lblprodId.Text & "'"

        cmd.ExecuteNonQuery()
        GridView1.EditIndex = -1
        BindData()
        con.Close()
        Response.Redirect("EditProduct.aspx")
    End Sub

    Protected Sub Submit_Click(sender As Object, e As EventArgs) Handles Submit.Click
        If con.State <> ConnectionState.Open Then
            con.Open()
        End If

        Dim strimage As String = FileUpload1.FileName.ToString
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/") + strimage)
        strimage = "Upload\" + strimage.ToString
        cmd = New SqlCommand("Insert into tbl_product(prodname,prodcat,prodgram,proprice,sDesc,lDesc,prodimg) Values('" & txtPName.Text & "','" & dropcat.Text.ToString & "','" & txtqty1.Text & "','" & txtprie.Text & "','" & txtsdesc.Text & "','" & txtldesc.Text & "','" & strimage & "')", con)
        cmd.ExecuteNonQuery()
        con.Close()

        Response.Redirect("EditProduct.aspx")
        'ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('Product Added in Database Successfully !!!');", True)
    End Sub

    Protected Sub Reset_Click1(sender As Object, e As EventArgs) Handles Reset.Click
        txtPName.Text = ""
        txtsdesc.Text = ""
        txtsdesc.Text = ""
        txtldesc.Text = ""
        txtprie.Text = ""
        txtqty1.Text = ""
        txtdis.Text = "" '
    End Sub
End Class
