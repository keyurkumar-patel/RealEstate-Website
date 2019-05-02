<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="DropByComp.aspx.cs" Inherits="Admin_DropByComp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <h3>Drop By Company</h3>

            <table width="100%" class="boxbg">
    <tr><td colspan="3">
    <asp:Panel ID="PrintArea" runat="server">
        <table width="300">
            <tr>
                <td 
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    &nbsp;</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px; width: 150px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px; padding-left: 10px;" 
                    width="150">
                    User Id :</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px; width: 150px">
                    <asp:Label ID="lblUserid" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px; padding-left: 10px;">
                    Name :</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px; width: 150px">
                    <asp:Label ID="lblName" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px; padding-left: 10px;">
                    City :</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px; width: 150px">
                    <asp:Label ID="lblCity" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px; padding-left: 10px;">
                    Plan :</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px; width: 150px">
                    <asp:Label ID="lblPlan" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px; padding-left: 10px;">
                    Total Paid mount :</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px; width: 150px">
                    <asp:Label ID="lblpAmt" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px; padding-left: 10px;">
                    Total Days :</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px; width: 150px">
                    <asp:Label ID="lblTDays" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px; padding-left: 10px;">
                    To give Interest :</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px; width: 150px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px">
                        <asp:ListItem>Select %</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px; padding-left: 10px;">
                    Total Amount :</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px; width: 150px">
                    <asp:Label ID="lblTAmt" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="12px" 
                        ForeColor="Green"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel></td></tr><tr><td colspan="3" style="padding-left: 90px">
                    <asp:Button ID="btnPay" runat="server" onclick="Button1_Click" Text="Pay" 
                        Width="111px" />
                </td></tr></table>
</asp:Content>

