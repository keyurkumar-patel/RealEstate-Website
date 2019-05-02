<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="EditEmployeeDetail.aspx.cs" Inherits="Admin_EditEmployeeDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <h3>Edit Employee Detail </h3>

            <table style="width:100%;" class="boxbg">
            <tr>
                <td width="150">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Employee Id :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:DropDownList ID="drpEmpId" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="EmpId" DataValueField="EmpId" 
                        onselectedindexchanged="drpEmpId_SelectedIndexChanged" 
                        AppendDataBoundItems="True" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px">
                        <asp:ListItem>---Select EmpId---</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                        SelectCommand="SELECT [EmpId] FROM [EmpInfo]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Name :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtName" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Address :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtAddress" runat="server" Height="61px" TextMode="MultiLine" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    State :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:DropDownList ID="drpState" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="StateName" 
                        DataValueField="StateId" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                        SelectCommand="SELECT [StateId], [StateName] FROM [State]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    City :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:DropDownList ID="drpcity" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource3" DataTextField="CityName" 
                        DataValueField="CityId" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                        SelectCommand="SELECT [CityId], [CityName] FROM [City] WHERE ([StateId] = @StateId)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="drpState" Name="StateId" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Contact No :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtcontact" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Email Id :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtEmailId" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Password :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtPassword" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Type :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <asp:DropDownList ID="drptype" runat="server" 
                        DataSourceID="SqlDataSource4" DataTextField="Type" DataValueField="Type" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                        SelectCommand="SELECT [Type] FROM [EmpType]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                        Text="Update" Width="132px" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px" />
                </td>
            </tr>
        </table>

</asp:Content>

