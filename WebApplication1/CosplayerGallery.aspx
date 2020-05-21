<%@ Page Language="C#" MasterPageFile="~/CosplayerShop.Master" AutoEventWireup="true" CodeBehind="CosplayerGallery.aspx.cs" Inherits="Costume.CosplayerGallery" %>


  


    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style type="text/css">
        .auto-style1 {
            width: 100%;
            height:100%;
            
            
        }
                
        .cellSize {
           
            width: 30%;
          
        }
        
        .border {
            
            border:1px solid black;

        }
        
              
       
        .auto-style11 {
            width: 100%;
            height: 246px;
            background-color: #FAFAFA;
            
            
        }
        
      
       
        .auto-style12 {
            height: 105px;
            text-align: left;
        }

        .auto-style13 {
            width: 75%;
            height: 275px;
            margin-bottom:2%
        }
        
      
       
        .auto-style15 {
            width: 40%;
        }
        
      
        .auto-style17 {
            text-align: center;
            height:100%
        }
        
      
       
        .buttonDesign {
          padding: 16px 32px;
          border: 2px solid black;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 16px;
          margin: 4px 2px;

          cursor: pointer;
          background-color: white;
          color:black;
      

        }

        .buttonDesign:hover {
             
          background-color: #66B3FF;
          color: white;
          border: 2px solid #66B3FF;

        }

        .polaroid {
          width: 100%;
          background-color: white;
          box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
          margin-bottom: 25px;
        }

        
        
        
       
        .auto-style20 {
            position:relative;
            bottom:60px
        }

        
        
        
       
        </style>
        <div style="text-align:center">
             <div style="text-align:center">
           

                <div  style="margin: 0 auto; " class="auto-style13" >
                    <table class="auto-style11">
                    <tr><td ><h1 class="auto-style20">About Shop :</h1></td><td class="auto-style12"><asp:Label ID="Label5" runat="server" Text="We provide you up to 100 different costumes !</br> Dont Miss out your chance to grab your costume.</br>You must always support us and thank you!" Font-Italic="False" Font-Size="X-Large" Font-Family="Arial"></asp:Label></td></tr>
                    </table>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </div>
          
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal" BorderColor="#66B3FF" BorderWidth="2px" CellPadding="30" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" GridLines="Horizontal" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" BackColor="White" BorderStyle="None">
                <AlternatingItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                
                <FooterStyle Font-Names="Arial" BackColor="White" ForeColor="#000066" />
                <HeaderStyle Font-Names="Arial" BackColor="#66B3FF" Font-Bold="True" Font-Size="Large" ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                <HeaderTemplate>
                    All Products
                </HeaderTemplate>
                <ItemStyle Width="18%" HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#000066" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                <ItemTemplate>


                    <div class="auto-style17">

                        <div class="polaroid">
                            <asp:Image ID="Image2" runat="server" Height="170px" ImageAlign="Middle" ImageUrl='<%# Eval("ProductImage") %>' Width="200px" />

                        </div>
                        <br />
                        &nbsp;<asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' Font-Bold="True" Font-Names="Arial" Font-Size="Large" />
                        <br />
                        <br />
                        &nbsp;<font color="#66B3FF" style="font-weight: bold;">RM</font>
                        <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Eval("ProductPrice") %>' ForeColor="#66B3FF" Font-Bold="True" />
                        <br />
                        <br />
                        <div style="width: 100%; height: 100%">
                            <asp:Button ID="btnView" Width="50%" Height="50px" runat="server" CommandArgument='<%# Eval("ProductCode") %>' CommandName="viewproduct" OnClick="btnView_Click" Text="View" class="buttonDesign buttonDesign:hover" />
                        </div>
                        <br />

                    </div>


                </ItemTemplate>
                <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SeparatorStyle BackColor="Fuchsia" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" Font-Names="Arial" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>

      
           
        </div>

    </asp:Content>
        
        
