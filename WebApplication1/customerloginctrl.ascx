<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="customerloginctrl.ascx.cs" Inherits="WebApplication1.customerloginctrl" %>
	<style>
		body {
			margin:0;
			padding:0;
			background-image:url("App_Themes/Lazaina_Pizza_Large1__1564825696_49751__1564825801_30539__1564825801_10327.jpg");
			background-size:cover;
			font-family:sans-serif;
		}
			.loginbox {
				position:absolute;
				top:50%;
				left:50%;
				transform:translate(-50%,-20%);
				width:350px;
				height:420px;
				padding:80px 40px;
				box-sizing:border-box;
				background-color:rgba(0,0,0,0.5);

			}
			h2 {
				padding:0;
				margin:0;
				text-align:center;
				color:white;
			}
			.Email, .Password {
				color:white;
				
				
			}
			.submit {
				color:white;
				background-color:#66b3ff;
				width:100%;
				
			}
			tr,td {
				padding:25px 0px 10px 0px;
			}
			div {
				text-align:center;
			}


	</style>

      
		<div class="loginbox">
			<asp:HiddenField ID="hfUserID" runat="server" />
			<h2>Sign In</h2>
			
		<table>

                    <tr><td><asp:Label ID="Email" runat="server" Text="Email Address" CssClass="Email"></asp:Label></td>
                    <td><asp:TextBox ID="txtemail" runat="server" Height="32px"  Width="150px" ></asp:TextBox>
						  &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please enter your email" ControlToValidate="txtemail" ForeColor="red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" Display="None" ErrorMessage="The email is not in email format" ForeColor="Red" ValidateRequestMode="Enabled" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>

			
                    <tr class="aaa"><td><asp:Label ID="Password" runat="server" Text="Password" CssClass="Password"></asp:Label></td>
                    <td><asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="32px"  Width="150px" ></asp:TextBox>
						 &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please enter your password" ControlToValidate="txtpassword" ForeColor="red">*</asp:RequiredFieldValidator>
                     <asp:CustomValidator ID="CustomValidator1" runat="server" Enabled="True" 
                    ErrorMessage="Invalid Username or Password" onservervalidate="Validate" ForeColor="Red"></asp:CustomValidator> 
                    </td></tr>
        </table>
		<div>
			  <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ShowMessageBox="true" ForeColor="red"/></div>

		<div><asp:Button ID="submit" runat="server" Text="Submit" Height="36px" Width="101px" CssClass="submit" /></div>
		</div>