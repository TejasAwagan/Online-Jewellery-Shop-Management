Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.UI.WebControls
Partial Class Addcategory
    Inherits System.Web.UI.Page
    Public Con As New SqlConnection(ConfigurationManager.ConnectionStrings("dbconnect").ConnectionString)

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Con.Open()
        Dim cmd As New SqlCommand("Insert into tbl_category(catname) values(@catname)", Con)
        cmd.Parameters.AddWithValue("@catname", TextBox1.Text)
            cmd.ExecuteNonQuery()
        TextBox1.Text = ""
        Con.Close()
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('Category Added Successfully !!!');", True)
    End Sub
End Class
