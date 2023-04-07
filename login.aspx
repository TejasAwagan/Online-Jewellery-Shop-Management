<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="frmlog" runat="server">
    
    <center>
            <h2 style="font-size: 35px; color: #A97891;">Login Here</h2><br />
            <asp:Label ID="Label1" runat="server" Text="UserName"  Font-Size="18px" ForeColor="#00CC00" align="left"></asp:Label><br /><br />
            <asp:TextBox ID="TextBox1" runat="server" Width="329px" Height="30px"  ></asp:TextBox><br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password" Font-Size="18px" ForeColor="#00CC00"></asp:Label><br /><br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="329px" Height="30px"></asp:TextBox><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Sign In" BackColor="#1C8ADB" Font-Size="21px" ForeColor="White" Height="33px" Width="116px" Font-Bold="True" Font-Italic="False" Font-Overline="False" />&nbsp&nbsp&nbsp&nbsp&nbsp
          <a href ="reg.aspx" >  <asp:Button  ID="Button2" runat="server" Text="New User ?" BackColor="#1C8ADB" Font-Size="21px" ForeColor="White" Height="33px" Width="138px" Font-Bold="True" Font-Strikeout="False"/> </a>
    </center>
        </form>    
   </asp:Content>

