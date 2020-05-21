<%@ Page Language="C#"  MasterPageFile="~/coslogin.Master" AutoEventWireup="true" CodeBehind="cosprofile.aspx.cs" Inherits="WebApplication1.cosprofile" %>


<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<style>
	        .signupcos tr, td {
 			padding: 10px 0px 10px 0px;
			align-content:center;
			align-items:center;
		    }
		.signupcos {
			padding-left:600px;
			
		}
		.update {
				color:white;
				background-color:#66b3ff;
				width:100px;
				height:40px;
		}
		.cancel {
				color:white;
				background-color:#66b3ff;
				width:100px;
				height:40px;
				
				
			}
		

</style>
				<div><table class="signupcos">
                    <tr><td><asp:Label ID="firstname" runat="server" Text="First Name" CssClass="firstname"></asp:Label></td>
                    <td>
						<asp:TextBox ID="txtfirstname" runat="server" Height="32px" Width="150px" ></asp:TextBox></td></tr>


                    <tr><td><asp:Label ID="LastName" runat="server" Text="Last Name" CssClass="LastName"></asp:Label></td>
                    <td><asp:TextBox ID="txtlastname" runat="server" Height="32px" Width="150px"  ></asp:TextBox></td></tr>

                    <tr><td><asp:Label ID="Email" runat="server" Text="Email Address" CssClass="Email"></asp:Label></td>
                    <td><asp:TextBox ID="txtemail" runat="server" Height="32px" Width="150px"  ></asp:TextBox></td></tr>

                    <tr><td><asp:Label ID="Password" runat="server" Text="Password" CssClass="Password"></asp:Label></td>
                    <td><asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="32px" Width="150px" ></asp:TextBox></td></tr>

			
                    <tr><td><asp:Label ID="Contact" runat="server" Text="Contact Number" CssClass="Contact"></asp:Label></td>
                    <td><asp:TextBox ID="txtcontact" runat="server" Height="32px" Width="150px" ></asp:TextBox></td></tr>
                   <tr><td><asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" CssClass="update" /></td>
					  <td><asp:Button ID="cancel" runat="server" Text="Cancel" CssClass="cancel" OnClick="cancel_Click" /></td>
                  </tr>
						</table></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content><asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

</asp:Content>