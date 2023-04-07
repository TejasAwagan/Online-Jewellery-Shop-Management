<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShopCart.aspx.cs" Inherits="ShopCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <form id="sCart" runat="server"> 
        <br />
        
       <asp:Label ID="Label1" runat="server" Text="Online Shop" Font-Size="XX-Large" ForeColor="#FF0066" Font-Bold="True"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="You have products in Your cart" Font-Size="Large" ForeColor="#9933FF" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="" Font-Bold="true" ForeColor="Green" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx">Shop Cart</asp:HyperLink>
    <br />
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" Height="487px" Width="670px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <AlternatingItemStyle />
        <FooterStyle ForeColor="White"  />
        <HeaderStyle  Font-Bold="True" ForeColor="#E7E7FF" />
        <ItemStyle ForeColor="White" />
        <ItemTemplate>
            <table border="1" class="auto-style1" align="center">
                <tr>
                    <td class="auto-style3" style="text-align: center">Product ID :-
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("prodid") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: center; font-weight: 700; color: #FF3399">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("prodname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: center">
                        <asp:Image ID="Image1" runat="server" BorderStyle="Inset" Height="150px" ImageUrl='<%# Eval("prodimg") %>' Width="150px" />
                    </td>

                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: center; font-weight: 700">Rs.:-
                        <asp:Label ID="Label5" runat="server" style="color: #FF3300" Text='<%# Eval("proprice") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: center; font-weight: 700">Description:-
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("sDesc") %>'></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style3" style="text-align: center">Quantity
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: center">
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="addtocart" Height="57px" ImageUrl="~/ImageforButton/360_F_30215082_UkRQTbOQsiTtcjkTunYNjFoaaccgkRW5.jpg" Width="155px" CommandArgument ='<%# Eval("prodid") %>'/>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#9471DE" ForeColor="White" Font-Bold="true" />
    </asp:DataList>
<br />
<br />
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DemoDBConnectionString3 %>" SelectCommand="SELECT * FROM [tbl_product]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        
        </form> 
        </center>
</asp:Content>

