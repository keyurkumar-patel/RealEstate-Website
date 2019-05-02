<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="EditUser.aspx.cs" Inherits="Admin_EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <h3>Edit Detail Of User</h3>

            <table style="width:100%;" class="boxbg"> 
            <tr>
                <td width="150">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    User Id :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:DropDownList ID="drpuid" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="UserId" DataValueField="UserId" 
                        onselectedindexchanged="drpuid_SelectedIndexChanged" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px" 
                        AppendDataBoundItems="True">
                        <asp:ListItem Value="Select User Id">Select User Id</asp:ListItem>
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
                    Name:-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtname" runat="server" CssClass="EntryText"
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Address :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="EntryText"
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    State :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:DropDownList ID="drpstate" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="StateName" DataValueField="StateId" AutoPostBack="True" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                        SelectCommand="SELECT [StateName], [StateId] FROM [State]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    City :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:DropDownList ID="drpcity" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource3" DataTextField="CityName" 
                        DataValueField="CityName" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                        SelectCommand="SELECT [CityName], [CityId] FROM [City] WHERE ([StateId] = @StateId)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="drpstate" Name="StateId" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Contact :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtcontact" runat="server" CssClass="EntryText"
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Password :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtpassword" runat="server" CssClass="EntryText"
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Rate of Interest :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtrateofint" runat="server" CssClass="EntryText"
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Button ID="btnupdate" runat="server" Text="Update" CssClass="BtnClass"
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px" 
                        onclick="btnupdate_Click" />
                </td>
            </tr>
        </table>

</asp:Content>

