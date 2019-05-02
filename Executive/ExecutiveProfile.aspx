<%@ Page Title="" Language="C#" MasterPageFile="~/Executive/Executive.Master" AutoEventWireup="true" CodeFile="ExecutiveProfile.aspx.cs" Inherits="Executive_ExecutiveProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<table align="left" width="250" class="boxbg">
            <tr>
                <td align="right" class="style3" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left" colspan="2" style="padding-left: 20px">
                    <asp:Label ID="Label7" runat="server" Font-Size="14px" 
                        Text="Executive Profile" Font-Names="arial, helvetica, sans-serif" 
                        Font-Underline="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13" style="text-align: right; padding-right: 5px">
                    <asp:Label ID="Label8" runat="server" Text="Executive ID:" Font-Names="arial, helvetica, sans-serif" 
                        Font-Underline="False" Font-Size="12px"></asp:Label>
                </td>
                <td align="left" class="style14" style="text-align: left; padding-left: 5px">
                    <asp:Label ID="lbl_EmpID" runat="server" Font-Names="arial, helvetica, sans-serif" 
                        Font-Underline="False" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style18" style="text-align: right; padding-right: 5px">
                    <asp:Label ID="Label1" runat="server" Text="Name:" Font-Names="arial, helvetica, sans-serif" 
                        Font-Underline="False" Font-Size="12px"></asp:Label>
                </td>
                <td align="left" class="style19" style="text-align: left; padding-left: 5px">
                    <asp:Label ID="lbl_EmpName" runat="server" Font-Names="arial, helvetica, sans-serif" 
                        Font-Underline="False" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style18" style="text-align: right; padding-right: 5px">
                    <asp:Label ID="Label2" runat="server" Text="Address:" Font-Names="arial, helvetica, sans-serif" 
                        Font-Underline="False" Font-Size="12px"></asp:Label>
                </td>
                <td align="left" class="style19" style="text-align: left; padding-left: 5px">
                    <asp:Label ID="lbl_Address" runat="server" Font-Names="arial, helvetica, sans-serif" 
                        Font-Underline="False" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style18" style="text-align: right; padding-right: 5px">
                    <asp:Label ID="Label3" runat="server" Text="Contact No:" Font-Names="arial, helvetica, sans-serif" 
                        Font-Underline="False" Font-Size="12px"></asp:Label>
                </td>
                <td align="left" class="style19" style="text-align: left; padding-left: 5px">
                    <asp:Label ID="lbl_Contact" runat="server" Font-Names="arial, helvetica, sans-serif" 
                        Font-Underline="False" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style18" style="text-align: right; padding-right: 5px">
                    <asp:Label ID="Label4" runat="server" Text="Join Date:" Font-Names="arial, helvetica, sans-serif" 
                        Font-Underline="False" Font-Size="12px"></asp:Label>
                </td>
                <td align="left" class="style19" style="text-align: left; padding-left: 5px">
                    <asp:Label ID="lbl_JoinDate" runat="server" Font-Names="arial, helvetica, sans-serif" 
                        Font-Underline="False" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style18" style="text-align: right; padding-right: 5px">
                    <asp:Label ID="Label5" runat="server" Text="Emp Type:" Font-Names="arial, helvetica, sans-serif" 
                        Font-Underline="False" Font-Size="12px"></asp:Label>
                </td>
                <td align="left" class="style19" style="text-align: left; padding-left: 5px">
                    <asp:Label ID="lbl_EmpType" runat="server" Font-Names="arial, helvetica, sans-serif" 
                        Font-Underline="False" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td align="left" class="style19" style="text-align: left; padding-left: 5px">
        <asp:Label ID="lbl_msg" runat="server" Font-Names="arial, helvetica, sans-serif" 
                        Font-Underline="False" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td align="left" class="style19">

                 
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

