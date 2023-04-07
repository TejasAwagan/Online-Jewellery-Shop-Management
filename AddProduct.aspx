<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddProduct.aspx.vb" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 175px;
        }
        .auto-style2 {
            width: 60%;
        }
        .auto-style3 {
            height: 175px;
            width: 60%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id ="addproduct" runat ="server" >
    <center>
        <h1 style="font-size: 35px; color: #A97891;">Add Products</h1>
    <table style="border-style: solid; border-width: 2px">
        <tr>
            <td style="border-style: solid; border-width: 2px">Product ID</td>
            <td style="border-style: solid; border-width: 2px" align ="center" >:</td>
            <td style="border-style: solid; border-width: 2px" class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>    
            <td style="border-style: solid; border-width: 2px">Product Name</td>
            <td style="border-style: solid; border-width: 2px" align ="center">:</td>
            <td style="border-style: solid; border-width: 2px" class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <td style="border-style: solid; border-width: 2px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ForeColor="Red" ErrorMessage="*Enter Product Name properly"></asp:RequiredFieldValidator>
            </td>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 2px">Category</td>
            <td style="border-style: solid; border-width: 2px" align ="center">:</td>
            <td style="border-style: solid; border-width: 2px" class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="catname" DataValueField="catname">
                    <asp:ListItem>Gold</asp:ListItem>
                    <asp:ListItem>Platinum</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="border-style: solid; border-width: 2px">

            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 2px">Grams</td>
            <td style="border-style: solid; border-width: 2px" align ="center">:</td>
            <td style="border-style: solid; border-width: 2px" class="auto-style2">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            <td style="border-style: solid; border-width: 2px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ForeColor="Red" ErrorMessage="*Enter Value in Grams "></asp:RequiredFieldValidator>
            </td>    
            
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 2px">Price</td>
            <td style="border-style: solid; border-width: 2px" align ="center">:</td>
            <td style="border-style: solid; border-width: 2px" class="auto-style2">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
           <td style="border-style: solid; border-width: 2px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ForeColor="Red" ErrorMessage="*Enter the Proper Price of Product"></asp:RequiredFieldValidator>
           </td>     
            
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 2px">Short Description</td>
            <td style="border-style: solid; border-width: 2px" align ="center">:</td>
            <td style="border-style: solid; border-width: 2px" class="auto-style2">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <td style="border-style: solid; border-width: 2px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ForeColor="Red" ErrorMessage="*Enter Short Description Properly"></asp:RequiredFieldValidator>
            </td>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 2px">Long Description</td>
            <td style="border-style: solid; border-width: 2px" align ="center">:</td>
            <td style="border-style: solid; border-width: 2px" class="auto-style2">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <td style="border-style: solid; border-width: 2px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ForeColor="Red" ErrorMessage="*Enter long Description Properly"></asp:RequiredFieldValidator>
            </td>
            </td>     
        </tr>   
        <tr>
            <td style="border-style: solid; border-width: 2px" class="auto-style1">Image</td>
            <td style="border-style: solid; border-width: 2px" align ="center" class="auto-style1">:</td>
            <td style="border-style: solid; border-width: 2px" align ="center" class="auto-style3" >
                <asp:Image ID="Image1" runat="server" Width="100px" Height ="100px" BorderWidth ="3" /> <br /><br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button6" runat="server" Text="Show Image"  />
            </td>
         <tr>
            
            <td colspan="4"><asp:Label ID ="lblresult" runat ="server" Text ="" ForeColor="Green" Font-Bold="true"></asp:Label></td>
        </tr>
        <tr>
            
            <td colspan ="4" align="center">
                <asp:Button ID="Button1" runat="server" Text="Add" Width="80px" Font-Bold="True" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:Button ID="Button2" runat="server" Text="Update" Width="80px" Font-Bold="True" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Button ID="Button3" runat="server" Text="Delete" Width="80px" Font-Bold="True" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Button ID="Button4" runat="server" Text="Show Product" Width="101px" Font-Bold="True" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Button ID="Button5" runat="server" Text="Exit" Width="80px" Font-Bold="True"/>
            </td>
        </tr>
            <tr>
                <td colspan="4">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DemoDBConnectionString2 %>" SelectCommand="SELECT * FROM [tbl_category]"></asp:SqlDataSource>
                </td>
            </tr> 

    </table>
    </center>
    </form>
</asp:Content>

