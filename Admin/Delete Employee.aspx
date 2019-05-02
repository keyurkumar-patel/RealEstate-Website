<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="Delete Employee.aspx.cs" Inherits="Admin_Delete_Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   <h3>Delete Employee </h3>

            <table style="width:100%;" class="boxbg">
            <tr>
                <td width="150" class="style1">
                    </td>
                <td class="style1">
                    </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    Employee Id :-</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="EmpId" DataValueField="EmpId">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                                SelectCommand="SELECT [EmpId] FROM [EmpInfo]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                        onclick="btnDelete_Click" Width="116px" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px" />
                </td>
            </tr>
        </table>
</asp:Content>

