<%@ Page Language="C#" MasterPageFile="~/Partical2.Master"  AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication1.Signup" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
		body {
			margin:0;
			padding:0;
			background-image:url("App_Themes/Lazaina_Pizza_Large1__1564825696_49751__1564825801_30539__1564825801_10327.jpg");
			background-size:cover;
			font-family:sans-serif;
		}
			.signin {
				position:absolute;
				top:50%;
				left:50%;
				transform:translate(-50%,-20%);
				width:400px;
				height:600px;
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
			.firstname,.LastName,.Email, .Password,.PasswordR,.Contact {
				color:white;
				
			}
           .signupcos tr, td {
 			padding: 10px 0px 10px 0px;
		    }
			.cancel {
				color:white;
				background-color:#66b3ff;
				width:100px;
				height:40px;
				
				
			}
			.submit{
				color:white;
				background-color:#66b3ff;
				width:100px;
				height:40px;
				
			}
		div {
			text-align:center;
		}

	</style>

		<div class="signin">
			<h2>Sign up</h2>
			<asp:HiddenField ID="hfUserID" runat="server" />
		
		<table class="signupcos">
                    <tr><td><asp:Label ID="firstname" runat="server" Text="First Name" CssClass="firstname"></asp:Label></td>
                    <td>
						<asp:TextBox ID="txtfirstname" runat="server" Height="32px" Width="150px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please enter your first name" ControlToValidate="txtfirstname" ForeColor="red">*</asp:RequiredFieldValidator></td></tr>


                    <tr><td><asp:Label ID="LastName" runat="server" Text="Last Name" CssClass="LastName"></asp:Label></td>
                    <td><asp:TextBox ID="txtlastname" runat="server" Height="32px" Width="150px"  ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Please enter your last name" ControlToValidate="txtlastname" ForeColor="red">*</asp:RequiredFieldValidator></td></tr>

                    <tr><td><asp:Label ID="Email" runat="server" Text="Email Address" CssClass="Email"></asp:Label></td>
                    <td><asp:TextBox ID="txtemail" runat="server" Height="32px" Width="150px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Please enter your email address" ControlToValidate="txtemail" ForeColor="red">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" Display="None" ErrorMessage="The email is not in email format" ForeColor="Red" ValidateRequestMode="Enabled" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td></tr>

                    <tr><td><asp:Label ID="Password" runat="server" Text="Password" CssClass="Password"></asp:Label></td>
                    <td><asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="32px" Width="150px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Please enter your password" ControlToValidate="txtpassword" ForeColor="red">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpassword" Display="None" ErrorMessage="Password should be at least 6 characters" ForeColor="Red" ValidateRequestMode="Enabled" ValidationExpression="\w{6,}"></asp:RegularExpressionValidator></td></tr>

			<tr><td><asp:Label ID="PasswordR" runat="server" Text="Password Repeat" CssClass="PasswordR"></asp:Label></td>
                    <td><asp:TextBox ID="txtpasswordr" runat="server" TextMode="Password" Height="32px" Width="150px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Please repeat your password" ControlToValidate="txtpasswordr" ForeColor="red">*</asp:RequiredFieldValidator></td></tr>
			
                    <tr><td><asp:Label ID="Contact" runat="server" Text="Contact Number" CssClass="Contact"></asp:Label></td>
                    <td><asp:TextBox ID="txtcontact" runat="server" Height="32px" Width="150px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="Please enter contact number" ControlToValidate="txtcontact" ForeColor="red">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtcontact" Display="None" ErrorMessage="The email is not in email format" ForeColor="Red" ValidateRequestMode="Enabled" ValidationExpression="^([\+]?(?:00)?[0-9]{1,3}[\s.-]?[0-9]{1,12})([\s.-]?[0-9]{1,4}?)$"></asp:RegularExpressionValidator></td></tr>
                    <tr><td>
						
						<asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" CssClass="submit"/>
                        </td>
						<td>
							
							<asp:Button ID="cancel" runat="server" Text="Cancel" CssClass="cancel" OnClick="cancel_Click" />
						</td>

                    </tr>
			<tr>
				<td colspan="2"><asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ShowMessageBox="true" ForeColor="red"/></td>
			</tr>
                        
                </table>
	
         
		
		<asp:Label ID="lblsuccess" runat="server" Text="Label" ></asp:Label>
		</div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content><asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

</asp:Content>
