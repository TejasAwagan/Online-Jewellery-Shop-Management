<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="PlaceOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 36px;
        }
        .auto-style3 {
            width: 710px;
            height: 26px;
        }
        .auto-style4 {
            height: 36px;
            width: 710px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            width: 369px;
        }
        .auto-style7 {
            width: 369px;
            height: 90px;
        }
    .auto-style8 {
        height: 90px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
     <form id="form1" runat="server"> 
         <asp:Label ID="Label1" runat="server" Text="Diana's Jewellery Shop"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Checkout in Shopping Cart"></asp:Label>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Order ID</td>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Order Date</td>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.No.">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="prodid" HeaderText="Product ID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="prodname" HeaderText="Product Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="proprice" HeaderText="Product Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="prodgram" HeaderText="Grams">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">Type Your Addresss</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="57px" TextMode="MultiLine" Width="298px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Mobile No</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" Width="295px"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Place Order" OnClick="Button1_Click" Width="145px" />
                </td>
            </tr>
        </table>
    </form>
        </center>
</asp:Content>

