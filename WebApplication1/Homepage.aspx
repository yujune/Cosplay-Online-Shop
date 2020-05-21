<%@ Page Language="C#"  MasterPageFile="~/Partical2.Master"  AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Costume.Homepage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="css/CS_Style.css" type="text/css" rel="stylesheet" />
    <style>
        
        
    </style>
    
        <div id="contentall" style="width:100%" >
        <div id="content"></div>
            <div id="topPage">
                <div id="poster1">
                <a  href="AnimeGallery.aspx?name=Demon SLayer">
                <div style="float:left;text-align:center;height:345px;width:217px;background-color:black;color:white;font-size:76px;margin-left:7%">
                    UP TO 50% OFF
                </div>
                
                    <asp:Image  class="poster:hover" style="float:left;height:345px;width:45%;margin-left:0%;padding-left:0px;" ID="Image_Promo" runat="server" url="App_Data/onepiece.jpg" ImageUrl="~/AnimePicture/Demonslayer2.jpg"/>
                </a>
            </div>
            
            
            <div class="poster2" style="float:left;height:345px;width:15%;margin-left:5%;margin-right:2%" >
                <a href="AnimeGallery.aspx?name=Naruto">
                    <asp:Image ID="Image2" runat="server" class="poster:hover" url="AnimePicture/naruto.jpg" ImageUrl="~/AnimePicture/narutopic.jpg" Width="100%" Height="33%"/>
                </a>
                <a href="AnimeGallery.aspx?name=Spider Man">
                    <asp:Image ID="Image21" runat="server" class="poster:hover" url="AnimePicture/avenger.jpg" ImageUrl="~/AnimePicture/avenger.jpg" Width="100%" Height="33%"/>
                </a>
                <a href="AnimeGallery.aspx?name=Fairy Tail">
                    <asp:Image ID="Image22" runat="server" class="poster:hover" url="AnimePicture/ffxiii.jpg" ImageUrl="~/AnimePicture/ffxiii.jpg" Width="100%" Height="33%"/>
                </a>
                
            </div>
            </div>
            
            <br />
            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="5" RepeatDirection="Horizontal" BorderColor="#66B3FF" BorderWidth="2px" CellPadding="30" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" GridLines="Horizontal" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" BackColor="White" BorderStyle="None">
                <AlternatingItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                <HeaderStyle Font-Names="Arial" Font-Bold="False" Font-Size="Large" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                <FooterStyle Font-Names="Arial" BackColor="White" ForeColor="#000066" />
                <HeaderTemplate>
                    New Arrival
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
                            <asp:Button ID="btnView" Width="100%" runat="server" CommandArgument='<%# Eval("ProductCode") %>' CommandName="viewproduct" OnClick="btnView_Click" Text="View" class="buttonDesign buttonDesign:hover" />
                        </div>
                        <br />

                    </div>


                </ItemTemplate>
                <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SeparatorStyle BackColor="Fuchsia" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" Font-Names="Arial" />
            </asp:DataList>

            <br />

            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3" RepeatColumns="5" RepeatDirection="Horizontal" BorderColor="#66B3FF" BorderWidth="2px" CellPadding="30" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" GridLines="Horizontal" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" BackColor="White" BorderStyle="None">
                <AlternatingItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                <HeaderStyle Font-Names="Arial" Font-Bold="False" Font-Size="Large" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                <FooterStyle Font-Names="Arial" BackColor="White" ForeColor="#000066" />
                <HeaderTemplate>
                    What's Popular
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
                            <asp:Button ID="btnView" Width="100%" runat="server" CommandArgument='<%# Eval("ProductCode") %>' CommandName="viewproduct" OnClick="btnView_Click" Text="View" class="buttonDesign buttonDesign:hover" />
                        </div>
                        <br />

                    </div>


                </ItemTemplate>
                <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SeparatorStyle BackColor="Fuchsia" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" Font-Names="Arial" />
            </asp:DataList>

            <br />
            <br />
            </div>
            
            

    <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" BorderColor="#66B3FF" BorderWidth="2px" CellPadding="30" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" GridLines="Horizontal" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" BackColor="White" BorderStyle="None">
        <AlternatingItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
        <HeaderStyle Font-Names="Arial" BackColor="#66B3FF" Font-Bold="True" Font-Size="Large" ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
        <FooterStyle Font-Names="Arial" BackColor="White" ForeColor="#000066" />
        <HeaderTemplate>
            TV Show/ Movies
        </HeaderTemplate>
        <ItemStyle Width="24%" HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#000066" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
        <ItemTemplate>


            <div class="auto-style17">

                <div class="polaroid">
                    <asp:Image ID="Image2" runat="server" Height="170px" ImageAlign="Middle" ImageUrl='<%# Eval("AnimePicture") %>' Width="220px" />

                </div>
                <br />
                &nbsp;<asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("AnimeName") %>' Font-Bold="True" Font-Names="Arial" Font-Size="Large" />
                <br />
                <br />
                <div style="width: 100%; height: 100%">
                    <asp:Button ID="btnView" Width="100%" runat="server" CommandArgument='<%# Eval("AnimeName") %>' CommandName="viewanime" OnClick="btnView_Click" Text="View" class="buttonDesign buttonDesign:hover" />
                </div>
                <br />

            </div>


        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SeparatorStyle BackColor="Fuchsia" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" Font-Names="Arial" />
    </asp:DataList>
            
            <div style="height:100px;background-color:black;float:left;width:100%;padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;">
                <div style="color:white;text-align:left;width:97%;height:20px;margin:40px 0% 40px 3%">
                    Copyright ©Cosplay Galaxy. All Rights Reserved. 
                </div>
            </div>

            
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Anime]"></asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [NewArrival],[Products] WHERE ([NewArrival].NewProductCode = [Products].ProductCode)"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Popular],[Products] WHERE ([Popular].PopularProductCode = [Products].ProductCode)"></asp:SqlDataSource>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content><asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

</asp:Content>

   