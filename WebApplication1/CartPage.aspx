<%@ Page Language="C#" MasterPageFile="~/login.Master"  AutoEventWireup="true" CodeBehind="CartPage.aspx.cs" Inherits="Costume.CartPage" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	 <style>
        
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
        <div style="padding-left:15%">Your Cart</div>
        
        <hr />
    </div>
        <div>
            


            <asp:Repeater ID="Rpt1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Rpt1_ItemCommand">
                <ItemTemplate>
                    <div style="width:100%;float:left;">
                        <div style="float:left;width:25%;margin-left:15%">
                            <asp:Image ID="Image2" runat="server"   Height="200px" ImageAlign="Middle" ImageUrl='<%# Eval("ProductImage") %>' Width="200px"/>
                        </div>
                        <div style="float:left;width:50%;height:30px;margin-top:10px;">
                            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' Font-Bold="True" Font-Names="Arial" Font-Size="Large" />
                        </div>
                        <div style="float:left;width:50%;height:30px;">
                            <font color="#66B3FF"  style=" font-weight: bold;">RM</font> <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Eval("ProductPrice") %>' ForeColor="#66B3FF" Font-Bold="True" />
                        </div>
                        <div style="float:left;width:50%;height:30px;">
                            <font color="#66B3FF"  style=" font-weight: bold;">Quantity:</font>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Quantity") %>' ForeColor="gray" Font-Bold="True" />
                        </div>
                        <div style="float:left;width:50%;height:30px;">
                            <font color="#66B3FF"  style=" font-weight: bold;">Size:</font>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Size") %>' ForeColor="gray" Font-Bold="True" />
                        </div>
                        <div style="float:left;width:50%;height:30px;">
                            <asp:Button Width="30%" ID="btnView" runat="server" CommandArgument='<%# Eval("ProductCode") %>' CommandName="viewproduct" Text="View"  class="buttonDesign buttonView buttonView:hover"/>
                            
                        <asp:Button Width="30%" ID="Button_Delete" runat="server" CommandArgument='<%# Eval("CartNumber") %>' CommandName="deleteCart" Text="Delete" class="buttonDesign buttonReset buttonReset:hover" />
                        </div>
                        
                    
                        
                    </div>
                    
                    <br />
                    <br />
                    <hr />
                </ItemTemplate>
            </asp:Repeater>
            <div style="text-align:right;float:left;width:50%;padding-right:50%;font-size:22px;">
                
                    <span>Grand Total:</span>
                <b>
                     <span>RM</span>
                    <asp:Label ID="GrandTotal" runat="server" Text="???"></asp:Label>
                </b>
            </div>
            <div style="text-align:center;float:left;width:100%;">
                <table style="width:50%;margin:20px 32% 20px;">
                    <tr style="">
                        <td style="margin-right:5%;width:100%">
                            
                            
                            
                        </td>
                    </tr>
                    
                </table>
                <div style="width:50%;margin:20px 32% 20px;">
                    <div style="width:40%;float:left;margin:0px 2% 0px 2%">
                        <asp:Button ID="btnReset" Width="100%" runat="server" class="buttonDesign buttonReset buttonReset:hover" Text="Reset" OnClick="btnReset_Click" OnClientClick="javascript:alert('Your cart is now empty...')" />
                    </div>
                    <div style="width:40%;float:left;margin:0px 2% 25px 2%">
                        <asp:Button ID="btnPurchase" Width="100%" class="buttonDesign buttonPurchase buttonPurchase:hover" runat="server" Text="Purchase" OnClick="btnPurchase_Click" />
                    </div>
                </div>

            </div>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Cart],[Products] WHERE ( [Cart].ProductCode = [Products].ProductCode )"></asp:SqlDataSource>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content><asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

</asp:Content>
   

