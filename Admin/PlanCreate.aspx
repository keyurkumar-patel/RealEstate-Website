<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="PlanCreate.aspx.cs" Inherits="Admin_PlanCreate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
  <h3>Enter New Plan Detail </h3>

            <table width="100%" class="boxbg">
            <tr>
                <td align="center" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label1" runat="server" Text="Plan Id:" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
                <td align="left" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txt_PlanId" runat="server" CausesValidation="True" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txt_PlanId" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label2" runat="server" Text="Plan Name:" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
                <td align="left" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txt_PlanName" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txt_PlanName" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label9" runat="server" Text="Down Payment:" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
                <td align="left" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txt_DPayment" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txt_DPayment" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txt_DPayment" ErrorMessage="Proper numeric digit only" 
                        Font-Names="Calibri" ForeColor="Red" ValidationExpression="\d{1,10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label8" runat="server" Text="EMI:" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
                <td align="left" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txt_EMI" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txt_EMI" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txt_EMI" ErrorMessage="Proper numeric digit only" 
                        Font-Names="Calibri" ForeColor="Red" ValidationExpression="\d{1,10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label3" runat="server" Text="No Of EMI:" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
                <td align="left" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txt_EMINo" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txt_EMINo" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txt_EMINo" ErrorMessage="Proper numeric digit only" 
                        Font-Names="Calibri" ForeColor="Red" ValidationExpression="\d{1,3}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label4" runat="server" Text="Details:" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
                <td align="left" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txt_Details" runat="server" Height="68px" TextMode="MultiLine" 
                        Width="209px" Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txt_Details" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    &nbsp;</td>
                <td align="left" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Button ID="bt_Submit" runat="server" onclick="bt_Submit_Click" 
                        Text="Submit Form" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px" />
        <asp:Label ID="lbl_msg" runat="server" Font-Names="arial, helvetica, sans-serif" 
                        ForeColor="Green" Font-Size="12px"></asp:Label>
                </td>
            </tr>
        </table>

</asp:Content>

