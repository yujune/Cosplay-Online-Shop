<%@ Page Language="C#" MasterPageFile="~/CosplayerShop.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="Costume.ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/ProductDetails.css" type="text/css" rel="stylesheet" />

          <div style="width:100%;text-align:center">
            <div style="margin:2px auto" class="auto-style33" >
            <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ProductCode" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center" Width="826px" OnItemDeleted="FormView1_ItemDeleted" CssClass="auto-style24">
                <EditItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style28">&nbsp;</td>
                            <td colspan="2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style9" colspan="3">
                                <asp:Image ID="Image2" runat="server" Height="363px" Width="430px" ImageUrl='<%# Eval("ProductImage") %>' />
                            </td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">&nbsp;</td>
                            <td class="auto-style29">&nbsp;</td>
                            <td class="auto-style10" colspan="2">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">Name:</td>
                            <td class="auto-style10" colspan="2" style="text-align:left">
                                <asp:TextBox Width="50%" ID="ProductNameTextBox0" runat="server" Text='<%# Bind("ProductName") %>' />
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style10"></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="auto-style10">Description:</td>
                            <td class="auto-style45" colspan="2">
                                <asp:TextBox Width="100%" ID="ProductDescriptionTextBox0" runat="server" Text='<%# Bind("ProductDescription") %>' />
                            </td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" class="auto-style10">Category: </td>
                            <td colspan="2" class="auto-style10" style="text-align:left">
                                <asp:TextBox Width="50%" ID="ProductCategoryTextBox0" runat="server" Text='<%# Bind("ProductCategory") %>' />
                            </td>
                            <td class="auto-style34"></td>
                            <td class="auto-style34"></td>
                        </tr>
                        <tr>
                            <td colspan="2"><span class="textBold">Price</span></td>
                            <td class="auto-style10" colspan="2" style="text-align:left">
                                <asp:TextBox Width="50%" ID="ProductPriceTextBox0" runat="server" Text='<%# Bind("ProductPrice") %>' />
                            </td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">Anime:</td>
                            <td colspan="2" style="text-align:left">
                                <asp:TextBox Width="50%" ID="ProductAnimeTextBox0" runat="server" Text='<%# Bind("ProductAnime") %>' />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">Stock:</td>
                            <td class="auto-style10" colspan="2" style="text-align:left">
                                <asp:TextBox Width="50%" ID="ProductStockTextBox0" runat="server" Text='<%# Bind("ProductStock") %>' />
                            </td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style31"></td>
                            <td class="auto-style32"></td>
                            <td class="auto-style31" colspan="2"></td>
                            <td class="auto-style31">&nbsp;</td>
                            <td class="auto-style31"></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="width:50%; text-align:right">
                                &nbsp;</td>
                            <td>
                                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" class="buttonDesign buttonDelete buttonDelete:hover" CommandName="Cancel" OnClick="UpdateCancelButton_Click" Text="Cancel" />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" class="buttonDesign buttonEdit buttonEdit:hover" CommandName="Update" Text="Update" />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td style="width:50%">
                                &nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    &nbsp;
                </EditItemTemplate>
                <EditRowStyle BackColor="#FAFAFA" ForeColor="black" Font-Bold="False" Font-Names="Arial" />
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#66B3FF" Font-Bold="True" ForeColor="White" Font-Names="Arial" Font-Size="Large" Height="70px" />
                <HeaderTemplate>
                    &nbsp;&nbsp;&nbsp; Products Details
                </HeaderTemplate>
                <InsertItemTemplate>
                    ProductName:
                    <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />
                    ProductDescription:
                    <asp:TextBox ID="ProductDescriptionTextBox" runat="server" Text='<%# Bind("ProductDescription") %>' />
                    <br />
                    ProductCategory:
                    <asp:TextBox ID="ProductCategoryTextBox" runat="server" Text='<%# Bind("ProductCategory") %>' />
                    <br />
                    ProductPrice:
                    <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                    <br />
                    ProductAnime:
                    <asp:TextBox ID="ProductAnimeTextBox" runat="server" Text='<%# Bind("ProductAnime") %>' />
                    <br />
                    ProductImage:
                    <asp:TextBox ID="ProductImageTextBox" runat="server" Text='<%# Bind("ProductImage") %>' />
                    <br />
                    ProductStock:
                    <asp:TextBox ID="ProductStockTextBox" runat="server" Text='<%# Bind("ProductStock") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style4"></td>
                            <td class="auto-style39"></td>
                            <td class="auto-style4"></td>
                        </tr>
                        <tr>
                            <td class="auto-style2" rowspan="7">
                                <asp:Image ID="Image1" runat="server" Height="402px" ImageUrl='<%# Eval("ProductImage") %>' Width="465px" />
                            </td>
                            <td>&nbsp;</td>
                            <td class="auto-style44">Code: </td>
                            <td class="resultAlign" >
                                <asp:Label ID="ProductCodeLabel0" runat="server" Text='<%# Eval("ProductCode") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style44">Name: </td>
                            <td class="resultAlign" >
                                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style44">Category: </td>
                            <td class="resultAlign">
                                <asp:Label ID="ProductCategoryLabel0" runat="server" Text='<%# Bind("ProductCategory") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style44">Price: </td>
                            <td class="resultAlign">RM
                                <asp:Label  ID="ProductPriceLabel0" runat="server" Text='<%# Bind("ProductPrice") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style44">Anime:</td>
                            <td class="resultAlign">
                                <asp:Label  ID="ProductAnimeLabel0" runat="server" Text='<%# Bind("ProductAnime") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7"></td>
                            <td class="auto-style44">Stock Number: </td>
                            <td class="resultAlign">
                                <asp:Label ID="ProductStockLabel0" runat="server" Text='<%# Bind("ProductStock") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8"></td>
                            <td class="auto-style44">&nbsp;Description:</td>
                            <td class="resultAlign">
                                <asp:Label  ID="ProductDescriptionLabel" runat="server" Text='<%# Bind("ProductDescription") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4" colspan="4"></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td >
                                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" class="buttonDesign buttonDelete buttonDelete:hover" CommandName="Delete" OnClick="DeleteButton_Click" OnClientClick="javascript:alert('Deleted Successfully!')" Text="Delete" />
                            </td>
                            <td>
                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" class="buttonDesign buttonEdit buttonEdit:hover" CommandName="Edit" OnClick="EditButton_Click" Text="Edit" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style45">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    &nbsp;
                    
                </ItemTemplate>
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle Font-Names="Arial" />
            </asp:FormView>
        </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductCode] = @original_ProductCode AND [ProductName] = @original_ProductName " InsertCommand="INSERT INTO [Products] ([ProductName], [ProductDescription], [ProductCategory], [ProductPrice], [ProductAnime], [ProductImage], [ProductStock]) VALUES (@ProductName, @ProductDescription, @ProductCategory, @ProductPrice, @ProductAnime, @ProductImage, @ProductStock)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products] WHERE ([ProductCode] = @ProductCode)" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [ProductDescription] = @ProductDescription, [ProductCategory] = @ProductCategory, [ProductPrice] = @ProductPrice, [ProductAnime] = @ProductAnime,[ProductStock] = @ProductStock WHERE [ProductCode] = @original_ProductCode AND [ProductName] = @original_ProductName">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductCode" Type="Decimal" />
                <asp:Parameter Name="original_ProductName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDescription" Type="String" />
                <asp:Parameter Name="ProductCategory" Type="String" />
                <asp:Parameter Name="ProductPrice" Type="Decimal" />
                <asp:Parameter Name="ProductAnime" Type="String" />
                <asp:Parameter Name="ProductImage" Type="String" />
                <asp:Parameter Name="ProductStock" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductCode" QueryStringField="id" Type="Decimal" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDescription" Type="String" />
                <asp:Parameter Name="ProductCategory" Type="String" />
                <asp:Parameter Name="ProductPrice" Type="Decimal" />
                <asp:Parameter Name="ProductAnime" Type="String" />
                <asp:Parameter Name="ProductStock" Type="Decimal" />
                <asp:Parameter Name="original_ProductCode" Type="Decimal" />
                <asp:Parameter Name="original_ProductName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
</asp:Content>
