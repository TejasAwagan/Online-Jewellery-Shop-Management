Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class login
    Inherits System.Web.UI.Page
    Public Con As New SqlConnection(ConfigurationManager.ConnectionStrings("dbconnect").ConnectionString)
    Public cmd As New SqlCommand()
    Public sda As New SqlDataAdapter()
    Public ds As New DataSet()

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Con.Open()
        cmd.CommandText = "select * from tbl_reg where uemail='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'"
        cmd.Connection = Con
        sda.SelectCommand = cmd
        sda.Fill(ds, "tbl_reg")
        If ds.Tables(0).Rows.Count > 0 Then
            If ds.Tables(0).Rows(0)("cat").ToString = "admin" Then
                Response.Redirect("admin.aspx")
            Else
                Response.Redirect("ShopCart.aspx")
            End If

            Label1.Text = "Login Successfuly !"
            Response.Redirect("Home.aspx")
        Else
            Label1.Text = "Login failed !"

        End If
        Con.Close()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("reg.aspx")

    End Sub
End Class
