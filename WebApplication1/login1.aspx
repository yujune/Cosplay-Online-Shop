<%@ Page Language="C#"  MasterPageFile="~/Partical2.Master"  AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="WebApplication1.login1" %>

<%@ Register TagPrefix="SuperLogin" TagName="login1" Src="~/cosplayerlogin.ascx" %>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	 <SuperLogin:login1 ID="ctllogin1" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content><asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

</asp:Content>
