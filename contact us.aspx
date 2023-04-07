<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="contact us.aspx.vb" Inherits="contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <form action ="#" runat="server" >
        <center>
        <h1 style="font-size: 35px; color: #A97891;">&nbsp;</h1>
            <h1 style="font-size: 35px; color: #A97891;">Contact Us..</h1>
        <table align="center">
        <input type ="text" placeholder="Your Name.." align="middle" style="width: 20%; height: 28px; font-family: sans-serif; font-weight: bold; font-size: 13px;" /><br /><br />
        <input type ="text" placeholder="Email Address.." align="middle" style="width: 20%; height: 28px; font-family: sans-serif; font-weight: bold; font-size: 13px;" /><br /><br />
        <input type ="text" placeholder="Message.." align="middle" style="width: 20%; height: 28px; font-family: sans-serif; font-weight: bold; font-size: 13px;" /><br /><br />
        <input type ="submit" value="Send Message.." align="middle" style="width: 20%; height: 30px; background-color: 8FBAF3;" font-family: sans-serif; font-weight: bold; font-size: 15px;" />
        </center>
        </table>
    </form>
   </asp:Content>

