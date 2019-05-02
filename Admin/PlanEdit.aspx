<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="PlanEdit.aspx.cs" Inherits="Admin_PlanEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="form_main">
		    <h3>Edit Plan Detail </h3>

            <table align="left" width="100%" class="boxbg" >
            <tr>
                <td align="right" class="style3" colspan="2">
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
                    <asp:DropDownList ID="DDList_PlanId" runat="server" AppendDataBoundItems="True" 
                        AutoPostBack="True" DataSourceID="PlanTable" DataTextField="PlanId" 
                        DataValueField="PlanId" 
                        onselectedindexchanged="DDList_PlanId_SelectedIndexChanged" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px">
                        <asp:ListItem>--Select--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label2" runat="server" Text="Plan Name:" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
                <td align="left" class="style6" 
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
                    <asp:Button ID="bt_Update" runat="server" onclick="bt_Update_Click" 
                        Text="Update" Visible="False" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px" />
        <asp:Label ID="lbl_msg" runat="server" Font-Names="arial, helvetica, sans-serif" 
                        ForeColor="Green" Font-Size="12px"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" ForeColor="Red" 
                        HeaderText="Following Fields are Required Properly" ShowMessageBox="True" 
                        ShowSummary="False" Font-Size="12px" />
                    <br />
                    <asp:SqlDataSource ID="PlanTable" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                        SelectCommand="SELECT PlanId FROM [Plan]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
</asp:Content>

