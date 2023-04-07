Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Partial Class reg
    Inherits System.Web.UI.Page
    Public Con As New SqlConnection(ConfigurationManager.ConnectionStrings("dbconnect").ConnectionString)
    Public Con1 As New SqlConnection(ConfigurationManager.ConnectionStrings("dbconnect").ConnectionString)
    Public gender, u As String
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim cmd1 As New SqlCommand
        Dim sda As New SqlDataAdapter
        Dim ds As New DataSet
        Dim strqry As String
        strqry = TextBox3.Text
        u = "User"
        cmd1.CommandText = "select uemail from tbl_reg where uemail='" + strqry + "'"
        cmd1.Connection = Con1
        sda.SelectCommand = cmd1
        sda.Fill(ds, "tbl_reg")
        If ds.Tables(0).Rows.Count > 0 Then
            lblres.Text = "This Email Id already Exit, Enter another email Id "
            TextBox3.Text = ""
            TextBox3.Focus()

        Else

            gender = RadioButtongen.SelectedValue
            Con.Open()
            Dim cmd As New SqlCommand("Insert into tbl_reg(fname,udob,uemail,mobno,gen,uadd,upin,pwd,cat) values(@fname,@udob,@uemail,@mobno,@gen,@uadd,@upin,@pwd,@cat)", Con)
            cmd.Parameters.AddWithValue("@fname", TextBox1.Text)
            cmd.Parameters.AddWithValue("@udob", TextBox2.Text)
            cmd.Parameters.AddWithValue("@uemail", TextBox3.Text)
            cmd.Parameters.AddWithValue("@mobno", TextBox4.Text)
            cmd.Parameters.AddWithValue("@gen", gender)
            cmd.Parameters.AddWithValue("@uadd", TextBox5.Text)
            cmd.Parameters.AddWithValue("@upin", TextBox6.Text)
            cmd.Parameters.AddWithValue("@pwd", TextBox8.Text)
            cmd.Parameters.AddWithValue("@cat", u)
            cmd.ExecuteNonQuery()
            Response.Redirect("login.aspx")
            Con.Close()
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

    End Sub

    Protected Sub TextBox3_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged

    End Sub
End Class


