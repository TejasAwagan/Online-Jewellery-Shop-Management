<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ShowProduct.aspx.vb" Inherits="ShowProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="frmshowprod" runat="server">
        <center>
        <br />
        <h1 style="font-size: 35px; color: #A97891;">Product List</h1>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  BorderColor="gray" BorderStyle="none" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="white" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="prodid" HeaderText="P ID" SortExpression="prodid" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="prodname" HeaderText="P NAME" SortExpression="prodname" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="prodgram" HeaderText="P GRAM" SortExpression="prodgram" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="proprice" HeaderText="P PRICE" SortExpression="proprice" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="sDesc" HeaderText="SHORT DESC" SortExpression="sDesc" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="lDesc" HeaderText="LONG DESC" SortExpression="lDesc" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="prodimg" HeaderText="PRODUCT IMAGE">
                    <ControlStyle Height="100px" Width="100px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="white"/>
            <HeaderStyle Backcolor="#562051" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="white" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" ForeColor="white" BorderStyle="Solid" BorderWidth="1px"/>
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DemoDBConnectionString3 %>" SelectCommand="SELECT * FROM [tbl_product]"></asp:SqlDataSource>
            </center>
    </form>

</asp:Content>

