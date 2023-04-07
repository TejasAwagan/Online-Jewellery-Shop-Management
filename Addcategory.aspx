<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Addcategory.aspx.vb" Inherits="Addcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 213px;
        }
        .auto-style5 {
            width: 240px;
        }
        .auto-style6 {
            width: 332px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="addcategory" runat="server">
      <br />
        <br />  
    <center>
        <h1 style="font-size: 35px; color: #A97891;">Add Category</h1>
    <table frame="box">
        <tr>
            <td class="auto-style5" >
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Enter Category Name" Font-Size="20px"></asp:Label>
            </td>
            <td class="auto-style6" >
                <asp:TextBox ID="TextBox1" runat="server" Width="184px"></asp:TextBox>
            </td>
            <td >
                <asp:Button ID="Button1" runat="server" Text="Add" Width="85px" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DemoDBConnectionString %>" SelectCommand="SELECT * FROM [tbl_category]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </center>
    </form>
</asp:Content>

