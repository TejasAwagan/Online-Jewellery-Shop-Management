<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="reg.aspx.vb" Inherits="reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 43px;
            width: 5%;
        }
        .auto-style5 {
            height: 34px;
        }
        .auto-style8 {
            width: 25%;
        }
        .auto-style9 {
            width: 25%;
            height: 34px;
        }
        .auto-style10 {
            height: 34px;
            width: 5%;
        }
        .auto-style12 {
            height: 43px;
        }
        .auto-style14 {
            width: 25%;
            height: 43px;
        }
        .auto-style15 {
            height: 93px;
        }
        .auto-style16 {
            width: 5%;
            height: 93px;
        }
        .auto-style17 {
            width: 25%;
            height: 93px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="frmreg" runat="server">
    <center>
        <h1 style="font-size: 30px">Registration Form</h1>
        
        <table width="90%" align="center" lhs="20%" rhs="20%">
            <!--row1-->
            <tr>
                
                <td width="20%" align="center" BorderStyle="Solid" BorderWidth="2px" class="auto-style5" >
                    <asp:Label ID="Label1" runat="server" Text="Full Name" Font-Size="18px" ></asp:Label>
                </td>
                <td align="center" class="auto-style10" >:</td>
                <td align="left" class="auto-style9" >
                    <asp:TextBox ID="TextBox1" runat="server" Width="232px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate ="TextBox1" ErrorMessage="Enter Name Properly" ForeColor="Red" ValidationExpression="[A-Z a-z]*$" ></asp:RegularExpressionValidator>
                </td>
            </tr>
            <!--row2-->
            <tr>
                <td width="20%" align="center">
                    <asp:Label ID="Label2" runat="server" Text="Date of Birth" Font-Size="18px"></asp:Label>
                </td>
                <td align="center" class="auto-style2">:</td>
                  <td align="left" class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" Width="232px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ForeColor="Red" ErrorMessage="*Enter DOB"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <!--row3-->
            <tr>
                <td width="20%" align="center" class="auto-style12">
                    <asp:Label ID="Label3" runat="server" Text="Email-Id" Font-Size="18px"></asp:Label>
                </td>
                <td align="center" class="auto-style2">:</td>
                  <td align="left" class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server" Width="232px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Valid Email-Id" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression=".+@.+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <!--row4-->
            <tr>
                <td width="20%" align="center" class="auto-style12">
                    <asp:Label ID="Label4" runat="server" Text="Mob No." Font-Size="18px"></asp:Label></td>
                <td align="center" class="auto-style2">:</td>
                  <td align="left" class="auto-style14">
                    <asp:TextBox ID="TextBox4" runat="server" Width="232px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Mob No properly" ControlToValidate="TextBox4" ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <!--row5-->
            <tr>
                <td width="20%" align="center" class="auto-style15">
                    <asp:Label ID="Label5" runat="server" Text="Gender" Font-Size="18px"></asp:Label>
                </td>
                <td align="center" class="auto-style16">:</td>
                  <td align="left" class="auto-style17" >
                      
                    <asp:RadioButtonList ID="RadioButtongen" runat="server" RepeatDirection ="horizontal">
                        <asp:ListItem Value ="Male">Male</asp:ListItem>
                        <asp:ListItem Value ="Female">Female</asp:ListItem>
                        <asp:ListItem Value ="Other">Other</asp:ListItem>
                    </asp:RadioButtonList>

                  </td>
            </tr>
            <!--row6-->
            <tr>
                <td width="20%" align="center" class="auto-style12">
                    <asp:Label ID="Label6" runat="server" Text="Address" Font-Size="18px"></asp:Label></td>
                <td align="center" class="auto-style2">:</td>
                  <td align="left" class="auto-style14">
                    <asp:TextBox ID="TextBox5" runat="server" Width="232px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ForeColor="Red" ErrorMessage="*Enter Your Address"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <!--row7-->
            <tr>
                <td width="20%" align="center" class="auto-style12">
                    <asp:Label ID="Label7" runat="server" Text="Pin code" Font-Size="18px"></asp:Label>
                </td>
                <td align="center" class="auto-style2">:</td>
                  <td align="left" class="auto-style14">
                    <asp:TextBox ID="TextBox6" runat="server" Width="232px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Proper PinCode" ControlToValidate="TextBox6" ValidationExpression="[0-9]{6}" ForeColor="red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <!--row8-->
            <tr>
                <td width="20%" align="center" class="auto-style12">
                    <asp:Label ID="Label8" runat="server" Text="Password" Font-Size="18px"></asp:Label>
                </td>
                <td align="center" class="auto-style2">:</td>
                  <td align="left" class="auto-style14">
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Width="232px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ForeColor="Red" ErrorMessage="*Enter Your Password"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <!--row9-->
            <tr>
                <td width="20%" align="center" class="auto-style12">
                    <asp:Label ID="Label9" runat="server" Text="Confirm Password" Font-Size="18px"></asp:Label></td>
                    
                <td align="center" class="auto-style2">:</td>
  <td align="left" class="auto-style14">
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Password" Width="232px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Incorrect Password" ForeColor ="Red" ControlToValidate ="TextBox8" ControlToCompare ="TextBox7"></asp:CompareValidator>
                </td>
            </tr>
            <!--row10-->
            <tr>
                <td align="left" colspan="3">
                    <br />
                    <center>
                    <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#33ccff" CssClass="btn" Font-Size="18px" Width="109px" />
                        &nbsp&nbsp&nbsp&nbsp
                    <asp:Button ID="Button2" runat="server" Text="Reset" Font-Size="18px" Width="109px" />
                        <br /><br />
                        <asp:Label ID ="lblres" runat ="server" Text ="" ForeColor ="Red" Font-Bold ></asp:Label>
                    </center>
              
                    
                      </td>
            </tr>
        </table>
    </center>
</form>

</asp:Content>

