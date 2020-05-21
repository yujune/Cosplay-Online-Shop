<%@ Page Language="C#" MasterPageFile="~/Partical2.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Costume.Payment" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

        AddressBox {
            width:80%;
            text-align:center;
        }

        .auto-style21 {
            width: 529px;
            height: 33px;
        }

        .buttonDesign {
          padding: 16px 32px;

          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 16px;
          margin: 4px 2px;
          -webkit-transition-duration: 0.4s; /* Safari */
          transition-duration: 0.4s;
          cursor: pointer;
          background-color: white;
          

        }

        .buttonPurchase{
            border: 2px solid #56e03a;
            color:#56e03a;
        }

        .buttonReset{

            border: 2px solid #f44336;
            color:#f44336;
        

        }

        .buttonReset:hover {
         
          background-color: #f44336;
          color: white;
        }

        .buttonPurchase:hover {
             
          background-color: #56e03a;
          color: white;
        }
    </style>
        <div style="margin:0px 20% 0px 20%;width:60%">
            <table style="width:100%;border-collapse:collapse;">
                <thead style="font-size:40px;background-color:#3c3c3c;color:white">
                    <tr><th>Payment</th></tr>
                </thead>
                <tbody style="">


                    <tr>
                        <td>
                                <asp:Label ID="Label1" Width="100%" runat="server" Text="Address 1"></asp:Label>
                            
                            </td>
                    </tr>
                    <tr>
                        <td>
                                <asp:TextBox ID="TextBox_Address1" BackColor="#f5f5f5" Height="30px" Width="95%" CssClass="AddressBox" runat="server"></asp:TextBox>
                            
                            </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" Width="100%" runat="server" Text="Address 2" ></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox BackColor="#f5f5f5" ID="TextBox_Address2" Height="30px" Width="95%" CssClass="AddressBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" Width="100%" runat="server" Text="Address 3"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox_Address3" BackColor="#f5f5f5" Height="30px" Width="95%" CssClass="AddressBox" runat="server"></asp:TextBox>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" Width="100%" runat="server" Text="Payment Method"></asp:Label></td>
                    </tr>

                    <tr>
                        <td>
                            <asp:DropDownList BackColor="#f5f5f5" Height="25px" Width="95%" ID="DDL_Payments" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem>Debit/Credit Card</asp:ListItem>
                                <asp:ListItem>Online Banking</asp:ListItem>
                                <asp:ListItem>MolPay</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="margin-right: 5px; text-align: center">
                            <asp:Button ID="btnReset" runat="server" class="buttonDesign buttonReset buttonReset:hover" Text="Reset" Width="132px" OnClick="btnReset_Click" />
                            <asp:Button ID="btnPurchase" class="buttonDesign buttonPurchase buttonPurchase:hover" runat="server" Text="Purchase" OnClientClick="javascript:alert('Thank you for your Purchase! Your receipt has been sent to your email.')" OnClick="btnPurchase_Click" />
                        </td>
                    </tr>
                </tbody>
            </table>
            
        </div>
</asp:Content>
