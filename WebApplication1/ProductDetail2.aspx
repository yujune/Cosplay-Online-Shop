<%@ Page Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="ProductDetail2.aspx.cs" Inherits="Costume.ProductDetail2" %>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 8px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            height: 68px;
        }
        .auto-style6 {
            width: 8px;
            height: 26px;
        }
        .auto-style7 {
            height: 52px;
        }
        .auto-style8 {
            height: 41px;
        }
        .buttonDesign {
          padding: 16px 32px;
          
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 16px;
          margin: 4px 2px;
          cursor: pointer;
          background-color: white;
          

        }

        .buttonEdit{
            border: 2px solid #66B3FF;
            color:#66B3FF;
        }

        .buttonDelete{

            border: 2px solid #f44336;
            color:#f44336;

        }

        .buttonDelete:hover {
         
          background-color: #f44336;
          color: white;
        }

        .buttonEdit:hover {
             
          background-color: #66B3FF;
          color: white;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            height: 27px;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            height: 27px;
            text-align: right;
        }
        .auto-style13 {
            height: 41px;
            text-align: right;
            width: 184px;
        }
        .auto-style14 {
            height: 52px;
            text-align: right;
            width: 184px;
        }
        .auto-style15 {
            height: 26px;
            text-align: right;
            width: 184px;
        }
        .auto-style16 {
            height: 68px;
            text-align: right;
            width: 184px;
        }
        .auto-style17 {
            width: 8px;
            height: 58px;
        }
        .auto-style18 {
            height: 58px;
        }
        .auto-style19 {
            height: 58px;
            text-align: right;
        }
        .auto-style20 {
            height: 26px;
            width: 184px;
        }
        .auto-style21 {
            text-align: right;
            width: 184px;
        }
        .auto-style22 {
            height: 58px;
            width: 184px;
        }
        .auto-style23 {
            width: 184px;
        }

        .textBold{
            font-weight:bold;
        }
        .auto-style24 {
            margin-right: 0px;
        }
        </style>

    

        
        <div>
            <div>
                <table class="auto-style1" style="border-collapse:collapse;border:1px solid #babec3">
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style4"></td>
                            <td class="auto-style20"></td>
                            <td class="auto-style4"></td>
                        </tr>
                        <tr>
                            <td class="auto-style2" rowspan="7">
                                <asp:Image ID="Image1" runat="server" Height="402px" ImageUrl='<%# Eval("ProductImage") %>' Width="465px" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2" style="text-align:left;">
                                <div style="margin-left:10%">
                                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' Font-Bold="true" Font-Size="XX-Large" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style21">Price: </td>
                            <td style="font-size:larger;color:#66B3FF"><asp:Label ID="Label1" runat="server" Text='RM' Font-Bold="true" />
                                <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' Font-Bold="true" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8"></td>
                            <td class="auto-style13">&nbsp;Description:</td>
                            <td class="auto-style8" style="color:#3e3e3e">
                                <asp:Label ID="ProductDescriptionLabel" runat="server" Text='<%# Bind("ProductDescription") %>' Font-Bold="true" />
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style8"></td>
                            <td class="auto-style13">&nbsp;Size:</td>
                            <td >
                                <asp:DropDownList ID="DropDownList_Size" Font-Size="Larger"  runat="server">
        <asp:ListItem>XS</asp:ListItem>
        <asp:ListItem>S</asp:ListItem>
        <asp:ListItem Selected="True">M</asp:ListItem>
        <asp:ListItem>L</asp:ListItem>
        <asp:ListItem>XL</asp:ListItem>
        <asp:ListItem>XXL</asp:ListItem>
    </asp:DropDownList>
    
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8"></td>
                            <td class="auto-style13">&nbsp;Quantity:</td>
                            <td>
                                <asp:TextBox ID="TextBoxQuantity" runat="server" Width="25px" Font-Size="Larger">1</asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Please enter your quantity" ControlToValidate="TextBoxQuantity" ForeColor="red">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxQuantity" Display="None" ErrorMessage="Please enter quantity correctly" ForeColor="Red" ValidateRequestMode="Enabled" ValidationExpression="^0*[1-9]\d*$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style4"><asp:LinkButton ID="WishlistButton" runat="server" CausesValidation="False" class="buttonDesign buttonDelete buttonDelete:hover" CommandName="AddToWishList" OnClick="WishListButton_Click" OnClientClick="javascript:alert('Your item is added into Wishlist.')" Text="Add to Wishlist" /></td>
                            <td class="auto-style20"><asp:LinkButton ID="CartButton" runat="server" class="buttonDesign buttonEdit buttonEdit:hover" CommandName="AddToCart" OnClick="CartButton_Click" Text="Add to Cart" /></td>
                            <td class="auto-style4"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style22">
                                
                            <asp:ValidationSummary ID="ValidationSummary2" runat="server" DisplayMode="List" ShowMessageBox="true" ForeColor="red"/></td>
                            <td class="auto-style19">
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style23">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style23">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>


            
        </div>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Products] WHERE ([ProductCode] = @ProductCode)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductCode" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content><asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

</asp:Content>



