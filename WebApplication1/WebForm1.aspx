<%@ Page Language="C#" MasterPageFile="~/Partical2.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>



     <asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           
         <asp:Table ID="Table1" runat="server" Style="margin-right:5px">
    <asp:TableRow>
    <asp:TableCell>Name:</asp:TableCell>
        <asp:TableCell></asp:TableCell>
    <asp:TableCell> <asp:TextBox ID="txtName" runat="server"></asp:TextBox></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
    <asp:TableCell>Programmed:</asp:TableCell>
        <asp:TableCell></asp:TableCell>
    <asp:TableCell><asp:DropDownList ID="ddlProg" runat="server">
                <asp:ListItem Value="Rsf">RSF</asp:ListItem>
                <asp:ListItem Value="RSD">RSD</asp:ListItem>
                <asp:ListItem Value="RIT">RIT</asp:ListItem>
                
        </asp:DropDownList></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>Area of Interes:</asp:TableCell>
        <asp:TableCell></asp:TableCell>
        <asp:TableCell>
            <asp:CheckBoxList ID="cbIInterest" runat="server">
            <asp:ListItem>Database</asp:ListItem>
            <asp:ListItem>Programming</asp:ListItem>
            <asp:ListItem>Networking</asp:ListItem>
        </asp:CheckBoxList></asp:TableCell>

    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell></asp:TableCell>
         <asp:TableCell><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click1"/></asp:TableCell>
    </asp:TableRow>
   
</asp:Table>
    
    <p>
    <asp:Label ID="lblSelect" runat="server" Text=""></asp:Label>
    </p>
          </asp:Content>

