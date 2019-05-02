<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="PayLoanAtaTime.aspx.cs" Inherits="Admin_PayLoanAtaTime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <h3>Pay Loan At a Time </h3>

            <table style="width:100%;" class="boxbg">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="PrintArea" runat="server">
                        <table style="width:100%;">
                            <tr>
                                <td width="150" colspan="2" 
                                    
                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: left; padding-left: 90px;">
                                    Pay Loan At a Time :</td>
                            </tr>
                            <tr>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px" 
                                    width="150">
                                    User Id :</td>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                    <asp:Label ID="lbluserid" runat="server" 
                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                    Name :</td>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                    <asp:Label ID="lblname" runat="server" 
                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                    City :</td>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                    <asp:Label ID="lblcity" runat="server" 
                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                    Plan&nbsp; ;</td>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                    <asp:Label ID="lblplan" runat="server" 
                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                    Total Paid Amount :</td>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                    <asp:Label ID="lblPaidamt" runat="server" 
                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                    Total Remain Amount :</td>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                    <asp:Label ID="lblRemainamt" runat="server" Text="0.00" 
                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                    Total Amount to Pay :</td>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                    <asp:Label ID="lblTAmt" runat="server" 
                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px">0.00</asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 50px">
                    <asp:Button ID="btnPay" runat="server" Text="Pay" onclick="btnPay_Click" 
                        Width="164px" Font-Names="arial, helvetica, sans-serif" Font-Size="12px" />
                    <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="12px" 
                        ForeColor="Green"></asp:Label>
                </td>
            </tr>
        </table>

</asp:Content>

