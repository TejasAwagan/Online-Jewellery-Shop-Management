<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditOrder.aspx.cs" Inherits="EditOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 613px;
        }
        .auto-style3 {
            height: 26px;
            background-color: #000000;
        }
        .auto-style4 {
            width: 613px;
            height: 26px;
        }
        .auto-style5 {
            font-weight: normal;
            color: #000000;
            height: 78px;
        }
        .auto-style6 {
            background-color: #000000;
        }
        .auto-style7 {
            background-color: #999999;
        }
        .auto-style8 {
            width: 613px;
            height: 78px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   <form id="form1" runat="server">
        <center>
        <asp:Label ID="Label1" runat="server" Text="Cart" Font-Size="Larger" style="font-weight: 700; font-size: xx-large"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Modify Product" style="font-size: x-large" align="center" ></asp:Label>
        <br />
        <br />
        <table  style="width:60%; height:450px; background-color: #C0C0C0;" border="1">
            <tr>
                <td class="auto-style6">S.no</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Label" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Product ID</td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Label" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Product Name</td>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Label" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Product Price</td>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Label" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Grams</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Total Price</td>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Save" Font-Bold="True" Font-Size="18px" Height="30px" OnClick="Button1_Click" Width="180px"  />

                </td>
                
            </tr>
        </table>
            </center>
     </form> 
    
</asp:Content>

