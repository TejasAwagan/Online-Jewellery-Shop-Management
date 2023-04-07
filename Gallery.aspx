<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Gallery.aspx.vb" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 440px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <br />
        <br />
        <h1 style="font-family: 'Playfair Display', sans-serif; font-size: 35px; clip: rect(5px, auto, auto, auto);">Welcome To Diana's Collection</h1>
        <hr />
        <h1 align="center" style="font-family: sans-serif; font-size: 25px; text-transform: capitalize; background-color: #562051; text-decoration: blink;">Gold Jewellery</h1>
        
        <table align="center" width="60%">
            <tr>
                <td align="center" >
                    <asp:Image ID="Image1" runat="server" Width ="280px" Height="220px" align="center" ImageUrl ="~/images/gallery/gold/1.jpg" />
                </td>
                <td align="center" >
                    <asp:Image ID="Image2" runat="server" Width ="280px" Height="220px" align="center" ImageUrl ="~/images/gallery/gold/2.jpg" />
                </td>
                <td align="center" >
                    <asp:Image ID="Image3" runat="server" Width ="280px" Height="220px" align="center" ImageUrl ="~/images/gallery/gold/3.jpg"/>
                </td>
            </tr>

            <tr>
                <td align="center">
                    <asp:Image ID="Image4" runat="server" Width ="280px" Height="220px" align="center" ImageUrl ="~/images/gallery/gold/4.jpg"/>
                </td>
                <td align="center">
                    <asp:Image ID="Image5" runat="server" Width ="280px" Height="220px" align="center" ImageUrl="~/images/gallery/gold/5.jpg"/>
                </td>
                <td align="center">
                    <asp:Image ID="Image6" runat="server" Width ="280px" Height="220px" align="center" ImageUrl ="~/images/gallery/gold/6.jpg"/>
                </td>
            </tr>
        </table>
          
              <table align="center" width="60%">
            <hr />
            <h1 align="center" style="font-size: 25px; font-family: sans-serif; text-transform: capitalize; background-color: #562051;">Platinum Jewellery</h1>
            
            <tr>
                <td align="center">
                    <asp:Image ID="Image7" runat="server" Width ="280px" Height="220px" align="center" ImageUrl="~/images/gallery/platinum/1.jpg" />
                </td>
                <td align="center">
                    <asp:Image ID="Image8" runat="server" Width ="280px" Height="220px" align="center" ImageUrl ="~/images/gallery/platinum/7.jpg"  />
                </td>
                <td align="center">
                    <asp:Image ID="Image9" runat="server" Width ="280px" Height="220px" align="center" ImageUrl ="~/images/gallery/platinum/3.jpg" />
                </td>
            </tr>

            <tr>
                <td align="center">
                    <asp:Image ID="Image10" runat="server" Width ="280px" Height="220px" align="center" ImageUrl ="~/images/gallery/platinum/6.jpg" />
                </td>
                <td align="center">
                    <asp:Image ID="Image11" runat="server" Width ="280px" Height="220px" align="center" ImageUrl ="~/images/gallery/platinum/4.jpg" />
                </td>
                <td align="center" >
                    <asp:Image ID="Image12" runat="server" Width ="280px" Height="220px" align="center" ImageUrl ="~/images/gallery/platinum/7.jpg" />
                </td>
            </tr>

        </table>
  
    </center>
    

</asp:Content>

