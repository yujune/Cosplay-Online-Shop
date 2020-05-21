<%@ Page Language="C#" MasterPageFile="~/CosplayerShop.Master" CodeBehind="UploadProducts.aspx.cs" Inherits="Costume.UploadProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/Upload.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        
        .auto-style27 {
            text-align: center;
            height: 20px;
        }
        
        .auto-style28 {
            width: 920px;
            height: 22px;
        }
        
        .auto-style34 {
            width: 920px;
            text-align: right;
            height: 30px;
        }
        
        .auto-style35 {
            width: 405px;
            height: 33px;
        }
        
    .auto-style36 {
        width: 920px;
        text-align: right;
        height: 60px;
    }
    .auto-style37 {
        height: 60px
    }
        
    </style>

    <div style="text-align:center; " class="auto-style23">
        <div style="width:50%; margin: 0 auto; text-align:left;">
        <table style="width:100%; background-color:#FAFAFA">
            <tr>
                <td class="auto-style7" colspan="4">
                    <asp:Label ID="lblProduct" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Products"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="4">
                    <asp:Image ID="imgProduct" runat="server" BorderStyle="Solid" Height="224px" ImageAlign="Middle" ImageUrl="~/ProductPicture/uploadImage.jpg" Width="266px" />
                    <br />
                    <br />
                    <asp:Label ID="lblerror" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style27" colspan="4">
                    <asp:FileUpload  style="width:30%" ID="FileUpload1" runat="server" />
                    <br />
                    <br />
                    <asp:Button class="buttonSize" ID="btnView" runat="server" OnClick="btnView_Click" Text="View"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style28"></td>
               
            </tr>
            <tr>
                <td class="auto-style18">
                </td>
                <td class="tdStyle">
                    <asp:Label ID="lblProductName" runat="server" class="textStyle" Text="Product Name: "></asp:Label>
                </td>
                <td class="tdStyle" colspan="2">
                    <asp:TextBox style="width:50%; height:inherit" ID="txtProductName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please enter your product name" ControlToValidate="txtProductname" ForeColor="red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="tdStyle">
                    <asp:Label ID="lblDescription" runat="server" class="textStyle" Text="Product Description:" EnableTheming="True"></asp:Label>
                </td>
                <td class="tdStyle" colspan="2">
                    <asp:TextBox ID="txtDescription" runat="server" Height="73px" OnTextChanged="txtDescription_TextChanged" TextMode="MultiLine" Width="401px" Wrap="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    </td>
                <td class="tdStyle">
                    <asp:Label ID="lblCategory" class="textStyle" runat="server" Text="Category:"></asp:Label>
                </td>
                <td class="tdStyle" colspan="2" >
                    <asp:DropDownList ID="ddlCategory" runat="server" class="textStyle" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                        <asp:ListItem>Shirt</asp:ListItem>
                        <asp:ListItem>Pants</asp:ListItem>
                        <asp:ListItem>Shoes</asp:ListItem>
                        <asp:ListItem>Wig</asp:ListItem>
                        <asp:ListItem>Glasses</asp:ListItem>
                        <asp:ListItem>Cap</asp:ListItem>
                        <asp:ListItem>Mask</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="tdStyle">
                    <asp:Label ID="lblPrice" runat="server" class="textStyle" Text="Price:"></asp:Label>
                </td>
                <td class="auto-style11tdStyle" colspan="2">
                    <asp:Textbox class="textStyle" ID="txtPrice" runat="server"></asp:Textbox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please enter your price" ControlToValidate="txtPrice" ForeColor="red">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPrice" Display="None" ErrorMessage="Please enter price correctly" ForeColor="Red" ValidateRequestMode="Enabled" ValidationExpression="^\d{0,8}(\.\d{1,4})?$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    </td>
                <td class="tdStyle">
                    <asp:Label ID="lblAnime" class="textStyle" runat="server" Text="Anime Category:"></asp:Label>
                </td>
                <td class="tdStyle" colspan="2">
                    <asp:DropDownList ID="ddlAnime" runat="server" class="textStyle">
                        <asp:ListItem>One Piece</asp:ListItem>
                        <asp:ListItem>Fairy Tails</asp:ListItem>
                        <asp:ListItem>Naruto</asp:ListItem>
                        <asp:ListItem>One Punch Man</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    </td>
                <td class="tdStyle">
                    <asp:Label ID="lblStockNum" runat="server" Text="Stock Number:" class="textStyle"></asp:Label>
                </td>
                <td class="tdStyle" colspan="2">
                    <asp:TextBox class="textStyle" ID="txtStockNum" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Please enter your stock number" ControlToValidate="txtStockNum" ForeColor="red">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtStockNum" Display="None" ErrorMessage="Please enter quantity correctly" ForeColor="Red" ValidateRequestMode="Enabled" ValidationExpression="^0*[1-9]\d*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style36">
                    </td>
                <td class="auto-style37">
                </td>
                <td class="auto-style37" colspan="2">
                    <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" class="buttonDesign buttonReset buttonReset:hover" Text="Reset"  />
                    <asp:Button ID="btnUpload" class="buttonDesign buttonUpload buttonUpload:hover" runat="server" OnClick="btnUpload_Click" Text="Upload" />
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="tdStyle"></td>
                <td class="tdStyle">
                    &nbsp;</td>
                <td class="auto-style35">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ShowMessageBox="true" ForeColor="red"/>
                    &nbsp;</td>
            </tr>
        </table>
        </div>
    </div>
</asp:Content>    
