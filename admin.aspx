<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="admin.aspx.vb" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 387px;
            
        }
        .auto-style3 {
            height: 71%;
            width: 402px;
        }
        .auto-style4 {
            width: 402px;
        }
        .auto-style5 {
            width: 387px;
            height: 35px;
        }
        .auto-style6 {
            width: 402px;
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="adminform" runat ="server">

     
    <h1 style="font-size: 35px; color: #A97891;">Welcome Admin..!</h1>
    <center>
    <table>
        
        <tr>
            <td class="auto-style2"><asp:Button ID="Button1" runat="server" Text="Show Products" Height="32px" Width="90%" BackColor="#FAB95B" /></td>
            <td class="auto-style2"><asp:Button ID ="Button3" runat="server" Text="Add Category" Width="90%" BackColor="#FAB95B" Height="32px" />  </td>
        </tr>
        <tr >
            <td class="auto-style4"><asp:Button ID="Button4" runat="server" Text="Edit/Add Products" Width="90%" BackColor="#FAB95B" Height="32px" /></td>
            <td><asp:Button class="auto-style2" ID="Button5" runat="server" Text="Logout" Height="32px" Width="90%" BackColor="#FAB95B"/></td>
        </tr>
        
  
    </table>
        </center>    
      <br /><br /><br /><br />     

   </form>

</asp:Content>

