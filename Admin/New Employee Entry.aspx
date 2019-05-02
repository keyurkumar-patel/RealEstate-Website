<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="New Employee Entry.aspx.cs" Inherits="Admin_New_Employee_Entry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<h3>New Employee Entry </h3>

            <table style="width:100%;" class="boxbg">
            <tr>
                <td width="150">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
&nbsp;Name :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtName" runat="server" CssClass="EntryText"
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Address :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtAddress" runat="server" Height="53px" TextMode="MultiLine" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtAddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    State :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:DropDownList ID="drpState" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="StateName" 
                        DataValueField="StateId" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                        SelectCommand="SELECT [StateId], [StateName] FROM [State]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    City :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:DropDownList ID="drpcity" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="CityName" 
                        DataValueField="CityName" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtcontact" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Email Id :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtEmailId" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmailId" ErrorMessage="*" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtEmailId" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Emp Id :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtEmpId" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtEmpId" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Password :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:TextBox ID="txtpassword" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px" 
                        TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Type :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:DropDownList ID="drpType" runat="server" DataSourceID="SqlDataSource3" 
                        DataTextField="Type" DataValueField="Type" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                        SelectCommand="SELECT [Type] FROM [EmpType]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" CssClass="BtnClass"
                        Text="Submit" Width="122px" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px" />
                </td>
            </tr>
            </table>
</asp:Content>

