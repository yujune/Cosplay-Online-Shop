<%@ Page Language="C#" MasterPageFile="~/login.Master"  AutoEventWireup="true" CodeBehind="PurchaseHistory.aspx.cs" Inherits="Costume.PurchaseHistory" %>


	<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<style type="text/css">
        .auto-style1 {
            height: 4px;


        }

        #payTable td {
            border-bottom:1px solid gray;
        }

        #payTable th {
            border-right:1px solid white;
        }
    </style>
		       <div style="margin:0px 15% 0px 15%">
            
            <div style="font-size:40px;background-color:#66B3FF;color:white;height:50px;width:70%"><span style="margin-left:10px;">Payment History</span></div>
            <table id="payTable" style="width:70%;border:1px solid #66B3FF;border-collapse:collapse;">
                <thead style="font-size:26px;background-color:#66B3FF;color:white;height:40px;">
                    <tr>
                        <th>Date</th>
                        <th>Order Code</th>
                        <th>Payment Method</th>
                        <th style="border-right:1px solid #66B3FF;">Amount</th>
                    </tr>
                </thead>
                <tbody style="text-align:center">
                    <asp:Repeater ID="Rpt1" runat="server" DataSourceID="SqlDataSource1">

                        <ItemTemplate>
                            <tr>
                                <td><asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("Date") %>' Font-Bold="True" Font-Names="Arial" Font-Size="Large" /></td>
                                <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("OrderCode") %>' Font-Bold="True" Font-Names="Arial" Font-Size="Large" /></td>
                                <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("PaymentMethod") %>' Font-Bold="True" Font-Names="Arial" Font-Size="Large" /></td>
                                <td><asp:Label ID="Label4" runat="server" Text='RM ' Font-Bold="True" Font-Names="Arial" Font-Size="Large" /><asp:Label ID="Label3" runat="server" Text='<%# Eval("Amount") %>' Font-Bold="True" Font-Names="Arial" Font-Size="Large" /></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Order] ORDER BY [Date] DESC"></asp:SqlDataSource>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content><asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

</asp:Content>


  
 

