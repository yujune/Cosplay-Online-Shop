<%@ Page Language="C#" MasterPageFile="~/Partical2.Master"  AutoEventWireup="true" CodeBehind="login2.aspx.cs" Inherits="WebApplication1.login2" %>

<%@ Register TagPrefix="SuperLogin" TagName="login2" Src="~/customerloginctrl.ascx" %>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	 <SuperLogin:login2 ID="ctllogin2" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content><asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

</asp:Content>