<%@ Page Language="C#" MasterPageFile="~/Partical2.Master"  AutoEventWireup="true" CodeBehind="testinglogin2.aspx.cs" Inherits="WebApplication1.testinglogin2" %>
<%@ Register TagPrefix="SuperLogin" TagName="testinglogin2" Src="~/cosplayerlogin.ascx" %>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<SuperLogin:testinglogin2 ID="ctltestinglogin2" runat="server" />
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content><asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

</asp:Content>