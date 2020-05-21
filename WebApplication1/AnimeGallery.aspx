<%@ Page Language="C#"  MasterPageFile="~/Partical2.Master" AutoEventWireup="true" CodeBehind="AnimeGallery.aspx.cs" Inherits="Costume.AnimeGallery" %>



    
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/CS_Style.css" type="text/css" rel="stylesheet" />
    <div style="width:100%;float:left;font-size:50px;font-family:Arial">
        <div style="padding-left:15%">
            <asp:Label ID="LabelAnime" runat="server" Text="Anime"></asp:Label></div>
        
    </div>
<asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal"  BorderColor="#66B3FF" BorderWidth="2px" CellPadding="30" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" GridLines="Horizontal" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" BackColor="White" BorderStyle="None">
                <AlternatingItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                <FooterStyle Font-Names="Arial" BackColor="White" ForeColor="#000066" />
                
                <ItemStyle Width="24%" HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#000066" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                <ItemTemplate>
                    
                       
                        <div class="auto-style17">
                            
                            <div class="polaroid">
                                <asp:Image ID="Image2" runat="server"   Height="170px" ImageAlign="Middle" ImageUrl='<%# Eval("ProductImage") %>' Width="220px"/>
                               
                            </div>
                            <br />
                            &nbsp;<asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' Font-Bold="True" Font-Names="Arial" Font-Size="Large" />
                            <br />
                            <br />
                            &nbsp;<font color="#66B3FF"  style=" font-weight: bold;">RM</font> <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Eval("ProductPrice") %>' ForeColor="#66B3FF" Font-Bold="True" />
                            <br />
                            <br />
                            <div style="width:100%;height:100%">
                            <asp:Button ID="btnView" Width="100%" runat="server" CommandArgument='<%# Eval("ProductCode") %>' CommandName="viewdetails" OnClick="btnView_Click" Text="View"  class="buttonDesign buttonDesign:hover"/>
                            </div>
                            <br />

                        </div>
                      

                </ItemTemplate>
                <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SeparatorStyle BackColor="Fuchsia" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" Font-Names="Arial" />
            </asp:DataList>



            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Products] WHERE ([ProductAnime] = @AnimeName)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="AnimeName" QueryStringField="name" />
                </SelectParameters>
            </asp:SqlDataSource>
</asp:Content>
