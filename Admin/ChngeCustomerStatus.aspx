<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="ChngeCustomerStatus.aspx.cs" Inherits="Admin_ChngeCustomerStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <h3>Change Customer Status </h3>


            <table style="width:100%;" class="boxbg">
            <tr>
                <td colspan="2" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" width="150" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Customer Id :-</td>
                <td class="style1" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="UserId" DataValueField="UserId" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        AppendDataBoundItems="True" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px">
                        <asp:ListItem Selected="True" Value="---- SELECT ----">---- SELECT ----</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                        SelectCommand="SELECT [UserId] FROM [UserInfo] WHERE ([Status] = @Status)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Continue" Name="Status" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Name ;-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Label ID="lblname" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    City :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Label ID="lblCity" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Plan :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Label ID="lblPlan" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Status :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Label ID="lblStatus" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    &nbsp;Down Payment :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Label ID="lblDPayment" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    EMI :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Label ID="lblEMI" runat="server" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Total Remainig EMI :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Label ID="lblRemainEmi" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px">
                        <asp:ListItem>Drop By Company</asp:ListItem>
                        <asp:ListItem>Drop by Customer</asp:ListItem>
                        <asp:ListItem>Pay Loan At a Time</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="RadioButtonList1" ErrorMessage="Please Select Status First" 
                        ForeColor="Red" Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" 
                        Text="Update" Font-Names="arial, helvetica, sans-serif" Font-Size="12px" 
CssClass="BtnClass" />
                </td>
            </tr>
        </table>
</asp:Content>

