<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="PlanDelete.aspx.cs" Inherits="Admin_PlanDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <h3>Delete Plan </h3>

            <table align="left" width="100%" class="boxbg">
            <tr>
                <td align="right" class="style3" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label1" runat="server" Text="Plan Id:" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:DropDownList ID="DDList_PlanId" runat="server" AutoPostBack="True" 
                        DataSourceID="PlanTable" DataTextField="PlanId" DataValueField="PlanId" 
                        onselectedindexchanged="DDList_PlanId_SelectedIndexChanged" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label2" runat="server" Text="Plan Name:" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style6" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txt_PlanName" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label9" runat="server" Text="Down Payment:" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txt_DPayment" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label8" runat="server" Text="EMI:" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txt_EMI" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label3" runat="server" Text="No Of EMI:" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txt_EMINo" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label4" runat="server" Text="Details:" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txt_Details" runat="server" Height="68px" TextMode="MultiLine" 
                        Width="209px" Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    &nbsp;</td>
                <td align="left" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Button ID="bt_Delete" runat="server" Font-Names="arial, helvetica, sans-serif" 
                        onclick="bt_Delete_Click" Text="Delete" Font-Size="12px" />
        <asp:Label ID="lbl_msg" runat="server" Font-Names="arial, helvetica, sans-serif" 
                        ForeColor="Green" Font-Size="12px"></asp:Label>
                    <asp:SqlDataSource ID="PlanTable" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                        SelectCommand="SELECT PlanId FROM [Plan]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>c
</asp:Content>

