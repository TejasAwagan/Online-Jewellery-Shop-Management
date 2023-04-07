<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PlacedSuccessfully.aspx.cs" Inherits="PlacedSuccessfully" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 70px;
        }
        .auto-style3 {
            height: 83px;
        }
        .auto-style4 {
            height: 40px;
        }
        .auto-style5 {
            height: 238px;
        }
        .auto-style6 {
            font-weight: normal;
        }
        .auto-style7 {
            height: 83px;
            width: 348px;
        }
        .auto-style8 {
            color: #FF0000;
        }
        .auto-style9 {
            font-weight: normal;
            color: #0066FF;
        }
        .auto-style10 {
            font-weight: normal;
            color: #FF0000;
            font-size: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
     <form id="form1" runat="server">
    
        <asp:Label ID="Label1" runat="server" Text="Diana's Jewellery Shop" style="color: #FF66FF; font-size: x-large"></asp:Label>
        &nbsp;<br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Your Order has been placed Successfully. Thank You !.." style="color: #FF0000; font-size: medium"></asp:Label><br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Generate Invoice as PDF"></asp:Label><br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Download Invoice" Width="135px" OnClick="Button1_Click" />
        <br />
        <br />
        Order ID :<span class="auto-style8">
        <asp:Label ID="Label4" runat="server"></asp:Label>
         </span>
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1" border="2">
            <tr>
                <td colspan="2">Retail Invoice</td>
                
            </tr>
            <tr>
                <td colspan="2" class="auto-style2">Order ID :&nbsp;
                    <asp:Label ID="Label5" runat="server" style="color: #FF0000"></asp:Label>
                    <br />
                    <br />
                    Order Date :
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style7"><span class="auto-style9">Buyer Address</span> :<br />
                    <br />
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
                <td class="auto-style3"><span class="auto-style9">Seller Address</span> :
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Diana's Jewellery Shop, Dubai, www.dianasjewellery.com"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style4"></td>
                
            </tr>
            <tr>
                <td colspan="2" class="auto-style5">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="205px" Width="808px" BorderStyle="Solid">
                        <Columns>
                            <asp:BoundField DataField="sno" HeaderText="Serial No.">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="prodid" HeaderText="Product ID">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="prodname" HeaderText="Product Name">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="prodgram" HeaderText="Grams">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="proprice" HeaderText="Product Price">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </td>
                
            </tr>
            <tr>
                <td colspan="2"><span class="auto-style10">Grand Total</span> :
                    <asp:Label ID="Label9" runat="server" style="color: #FFFFFF; font-size: 20px"></asp:Label>
                </td>
                
            </tr>
            <tr >
                <td colspan="2">

                    Declaration : We declare that this Invoice shows actual price of the Goods&nbsp; Described inclusive of taxes that all perticulars are True And correct. In case you find selling price on this invoice to be more than MRP mentioned on Product, Please Informed wrong <a href="mailto:MRP@www.dianasjewellery.com">MRP@www.dianasjewellery.com</a><br />
                    <br />
                    <span class="auto-style6">THIS IS COMPUTER GENERATED INVOICE AND DOES NOT REQUIRED SIGNATURE.</span><br />
&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
            </asp:Panel>
    
                
    </form>
        </center>
</asp:Content>
    


