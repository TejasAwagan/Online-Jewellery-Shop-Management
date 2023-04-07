<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EditProduct.aspx.vb" Inherits="EditProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <Center>
        <table bgcolor="#A97891" width="100%" >
            <tr>
                <td align ="center" colspan="3" width="100%">
                    <h1>Edit Product Form</h1>
                </td>
            </tr>
            <tr>
                <td>
                     <table>  
                <tr>  
                    <td class="auto-style1">  
                        <asp:Label ID="lblPName" runat="server" Text="Product Name"></asp:Label>  
                        <asp:TextBox ID="txtPName" runat="server"></asp:TextBox>  
                    </td>  
                    <td class="auto-style1">  
                        <asp:Label ID="lblcat" runat="server" Text="Category"></asp:Label>  
                        <asp:DropDownList ID="dropcat" runat="server" DataSourceID="SqlDataSource1" DataTextField="catname" DataValueField="catname">
                            <asp:ListItem>Gold</asp:ListItem>
                            <asp:ListItem>Platinum</asp:ListItem>
                            <asp:ListItem>Silver</asp:ListItem>
                        </asp:DropDownList>  
                    </td>  
                    <td class="auto-style1">  
                        <asp:Label ID="lblsdesc" runat="server" Text="Short Description"></asp:Label>  
                        <br />
                        <asp:TextBox ID="txtsdesc" runat="server"></asp:TextBox>  
                    </td>  
                    <td class="auto-style1">  
                        <asp:Label ID="lblldesc" runat="server" Text="Long Description"></asp:Label>  
                        <asp:TextBox ID="txtldesc" runat="server"></asp:TextBox>  
                    </td>  
                    <td class="auto-style1">  
                        <asp:Label ID="lblprice" runat="server" Text="Price"></asp:Label>  
                        <asp:TextBox ID="txtprie" runat="server"></asp:TextBox>  
                    </td>  
                    <td class="auto-style1">  
                        <asp:Label ID="lblqty1" runat="server" Text="Grams"></asp:Label>  
                        <asp:TextBox ID="txtqty1" runat="server"></asp:TextBox>  
                    </td>  
                    <!--<td>  
                        <asp:Label ID="lbldisct" runat="server" Text="Discount"></asp:Label>  
                        <asp:TextBox ID="txtdis" runat="server"></asp:TextBox>  
                    </td>  -->
                    <td class="auto-style1">  
                        <asp:Label ID="lblimage" runat="server" Text="Image"></asp:Label>  
                        <asp:FileUpload ID="FileUpload1" runat ="server" />
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        <asp:Button ID="Submit" runat="server" Text="Submit"/>  
                        <asp:Button ID="Reset" runat="server" Text="Reset"/> </td>  
                    <td>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DemoDBConnectionString4 %>" SelectCommand="SELECT [catname] FROM [tbl_category]"></asp:SqlDataSource>

                    </td>
                </tr>  
                </table>

                </td>
            </tr>
            <tr>
                <td width="100%" align="center">
                 
                          <asp:GridView ID="GridView1" runat="server" PageSize="3" AutoGenerateColumns="false" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting">  
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />  
                    <RowStyle BackColor="White" ForeColor="#330099" />  
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />  
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />  
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />  
                    <Columns>  
                        <asp:TemplateField HeaderText="Prod Id">  
                            <ItemTemplate>  
                                <asp:Label ID="lblprodid" runat="server" Text='<%#Eval("prodid")%>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="Product Name">  
                            <ItemTemplate>  
                                <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("prodname")%>'> </asp:TextBox>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="Category">  
                            <ItemTemplate>  
                                <asp:TextBox ID="txtcate" runat="server" Text='<%#Eval("prodcat")%>' Enabled="false"></asp:TextBox>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="Short Desc">  
                            <ItemTemplate>  
                                <asp:TextBox ID="txtsdes" runat="server" Text='<%#Eval("sDesc")%>'> </asp:TextBox>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="Long Desc">  
                            <ItemTemplate>  
                                
                                <asp:TextBox ID="txtldescp" runat="server" Text='<%#Eval("lDesc")%>'> </asp:TextBox>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="Price">  
                            <ItemTemplate>  
                                <asp:TextBox ID="txtpri" runat="server" Text='<%#Eval("proprice")%>'> </asp:TextBox>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                        <asp:TemplateField HeaderText="Quantity">  
                            <ItemTemplate>  
                                <asp:TextBox ID="txtqtyn" runat="server" Text='<%#Eval("prodgram")%>'> </asp:TextBox>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                       
                        <asp:TemplateField HeaderText="Image">  
                            <ItemTemplate>  
                                <asp:Image ID="Imagefile" runat ="server" ImageUrl ='<%#Eval("prodimg")%>' width="100px" Height ="100px"/>
                                <br />
                               <asp:FileUpload ID ="file1" runat ="server" /> 
                            </ItemTemplate>  
                        </asp:TemplateField> 
                        <asp:TemplateField HeaderText="Edit" ShowHeader="false">  
                            <EditItemTemplate>  
                                <asp:LinkButton ID="lnkbtnUpdate" runat="server" CausesValidation="true" Text="Update" CommandName="Update"></asp:LinkButton>  
                                <asp:LinkButton ID="lnkbtnCancel" runat="server" CausesValidation="false" Text="Cancel" CommandName="Cancel"></asp:LinkButton>  
                            </EditItemTemplate> <ItemTemplate>  
                            <asp:LinkButton ID="btnEdit" runat="server" CausesValidation="false" CommandName="Edit" Text="Edit"></asp:LinkButton>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" ShowHeader="true" />  
                        <asp:CommandField HeaderText="Select" ShowSelectButton="true" ShowHeader="true" /> </Columns>  
                
                </asp:GridView>
                    
                </td>
            </tr>
           
        </table>
    </Center>
    </div>
    </form>
</body>
</html>
