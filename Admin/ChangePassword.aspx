<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <h3>Change Admin Password</h3>

            <table style="width:500px;  margin-top:100px;" class="boxbg">
            <tr>
                <td colspan="2" 
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: center">
                    Change Password</td>
            </tr>
            <tr>
                <td width="150" 
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; width: 150px; padding-right: 5px;">
                    Current Password
                    :
                </td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtCurrent" runat="server" TextMode="Password" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px" CssClass="EntryText"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtCurrent" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; width: 150px; padding-right: 5px;">
                    New Password :</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtnew" runat="server" TextMode="Password" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px" CssClass="EntryText"

></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtnew" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; width: 150px; padding-right: 5px;">
                    Confirm Password :</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtConfrm" runat="server" TextMode="Password" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px" CssClass="EntryText"

></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtConfrm" ControlToValidate="txtnew" ErrorMessage="*" 
                        ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="Submit" Width="150px" Font-Names="arial, helvetica, sans-serif" CssClass="BtnClass"
                        Font-Size="12px" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblmsg" runat="server" Font-Names="Arial" Font-Size="12px" 
                        ForeColor="Green"></asp:Label>
                </td>
            </tr>
        </table>
</asp:Content>

