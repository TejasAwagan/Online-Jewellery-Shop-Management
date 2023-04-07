<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddToCart.aspx.cs" Inherits="AddToCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
         <form id="aCart" runat="server"> 
             <H3>You have Added Following Product in Your Cart</H3>
            <asp:Label ID="Label1" runat="server" Text="You Have Product"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="" Font-Bold="true" ForeColor="Red">

            </asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ShopCart.aspx">Continue Shopping</asp:HyperLink>
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="308px" Width="601px" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="Sr. No.">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="prodid" HeaderText="Product ID">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="prodimg" HeaderText="Product Image">
                <ControlStyle BorderStyle="Solid" Height="100px" Width="100px" />
                <ItemStyle HorizontalAlign="Center" Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="prodname" HeaderText="Product Name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="proprice" HeaderText="Product Price">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="prodgram" HeaderText="Grams">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="totalprice" HeaderText="Total Price"/>
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="true" >

            <ItemStyle BackColor="#0066FF" ForeColor="White" />
            </asp:CommandField>

            <asp:CommandField SelectText="Modify" ShowSelectButton="True" >

            <ItemStyle BackColor="#0033CC" ForeColor="White" />
            </asp:CommandField>

        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Height="50px" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" BorderStyle="Solid" BorderColor="White" BorderWidth="1px" ForeColor="White"/>
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Checkout" BackColor="Yellow" Font-Size="Smaller" OnClick="Button1_Click" Width="110px" />
             </form> 
        </center>
</asp:Content>

