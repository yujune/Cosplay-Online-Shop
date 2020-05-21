<%@ Page Language="C#"  MasterPageFile="~/Partical2.Master" AutoEventWireup="true" CodeBehind="testinglogin.aspx.cs" Inherits="WebApplication1.testinglogin" %>
<%@ Register TagPrefix="SuperLogin" TagName="testinglogin" Src="~/customerloginctrl.ascx" %>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	 <SuperLogin:testinglogin ID="ctltestinglogin" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content><asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

</asp:Content>