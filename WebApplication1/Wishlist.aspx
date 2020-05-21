<%@ Page Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="Wishlist.aspx.cs" Inherits="Costume.Wishlist" %>


<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .auto-style21 {
            width: 529px;
            height: 33px;
        }

        .buttonDesign {
          padding: 16px 32px;

          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 16px;
          margin: 4px 2px;
          -webkit-transition-duration: 0.4s; /* Safari */
          transition-duration: 0.4s;
          cursor: pointer;
          background-color: white;
          

        }

        .buttonDelete{

            border: 2px solid #f44336;
            color:#f44336;
        

        }

            .buttonDelete:hover {
                background-color: #f44336;
                color: white;
            }

        .buttonPurchase{
            border: 2px solid #56e03a;
            color:#56e03a;
        }

        .buttonReset{

            border: 2px solid #f44336;
            color:#f44336;
        

        }

        .buttonReset:hover {
         
          background-color: #f44336;
          color: white;
        }

        .buttonPurchase:hover {
             
          background-color: #56e03a;
          color: white;
        }

            

            .buttonView{

            border: 2px solid #66B3FF;
            color:#66B3FF;
        

        }

            .buttonView:hover {
        background-color: #66B3FF;
        color: white;
        border: 2px solid #66B3FF;
    }
    </style>
    <div style="width:100%;float:left;font-size:50px;font-family:Arial">
        <div style="padding-left:15%">Your Wishlist</div>
        
        <hr />
    </div>
        <asp:Repeater ID="Rpt1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Rpt1_ItemCommand">
                <ItemTemplate>
                    <div style="width:100%;float:left;">
                        <div style="float:left;width:25%;margin-left:15%">
                            <asp:ImageButton ID="Image2" runat="server" CommandArgument='<%# Eval("ProductCode") %>' CommandName="viewProduct"   Height="200px" ImageAlign="Middle" ImageUrl='<%# Eval("ProductImage") %>' Width="200px"/>
                        </div>
                        <div style="float:left;width:50%;height:30px;margin-top:40px;">
                            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' Font-Bold="True" Font-Names="Arial" Font-Size="Large" />
                        </div>
                        <div style="float:left;width:50%;height:30px;">
                            <font color="#66B3FF"  style=" font-weight: bold;">RM</font> <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Eval("ProductPrice") %>' ForeColor="#66B3FF" Font-Bold="True" />
                        </div>
                        <div style="float:left;width:50%;height:30px;">
                            <font color="#66B3FF"  style=" font-weight: bold;"></font>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductDescription") %>' ForeColor="gray" Font-Bold="True" />
                        </div>
                        <div style="float:left;width:50%;height:30px;">
                            
                                <asp:Button Width="30%" ID="btnView" runat="server" CommandArgument='<%# Eval("ProductCode") %>' CommandName="viewproduct" OnClick="btnView_Click" Text="View"  class="buttonDesign buttonView buttonView:hover"/>
                            
                                <asp:Button Width="30%" ID="Button_Delete" runat="server" CommandArgument='<%# Eval("WishlistNumber") %>' CommandName="deleteWishlist" Text="Delete" class="buttonDesign buttonReset buttonReset:hover" />
                            
                            
                                
                            
                        </div>
                        
                    
                        
                    </div>
                    
                    <br />
                    <br />
                    <hr />
                </ItemTemplate>
            </asp:Repeater>
            <div style="text-align:center;float:left;width:100%;">
                <table style="width:30%;margin:20px 32% 20px;">
                    <tr style="">
                        <td style="margin-right:5px;">
                            <asp:Button ID="btnReset" runat="server"  class="buttonDesign buttonReset buttonReset:hover" Text="Reset" Width="132px" OnClick="btnReset_Click" OnClientClick="javascript:alert('Your cart is now empty...')"/>
                        </td>
                    </tr>
                </table>

            </div>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Wishlist],[Products] WHERE ([WIshlist].ProductCode=[Products].ProductCode)
"></asp:SqlDataSource>
        

</asp:Content>

