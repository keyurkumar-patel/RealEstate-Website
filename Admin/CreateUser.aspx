<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="Admin_CreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<script language=javascript type="text/javascript" >
    function PopupPicker(ctl) {
        var PopupWindow = null;
        PopupWindow = window.open('DatePicker.aspx?ctl=' + ctl, '', 'width=250,height=250');
        PopupWindow.focus();
    }
    
    </script>
 <h3>Create New User </h3>


            <table style="width:100%;" class="boxbg">
        <tr>
            <td width="130">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                Name :-</td>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                <asp:TextBox ID="txtname" runat="server" 
                    Font-Names="arial, helvetica, sans-serif" Font-Size="12px" CssClass="EntryText"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                Address:-</td>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                <asp:TextBox ID="txtadress" runat="server" 
                    Font-Names="arial, helvetica, sans-serif" Font-Size="12px" CssClass="EntryText"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                State :-</td>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                <asp:DropDownList ID="drpstate" runat="server" AutoPostBack="True" 
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
                <asp:DropDownList ID="drpcity" runat="server" DataSourceID="SqlDataSource2" 
                    DataTextField="CityName" DataValueField="CityId" 
                    Font-Names="arial, helvetica, sans-serif" Font-Size="12px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                    
                    SelectCommand="SELECT [CityId], [CityName] FROM [City] WHERE ([StateId] = @StateId)">
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
                <asp:TextBox ID="txtcontact" runat="server" 
                    Font-Names="arial, helvetica, sans-serif" Font-Size="12px" CssClass="EntryText"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                User Id :-</td>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                <asp:TextBox ID="txtuid" runat="server" CssClass="EntryText"
                    Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                Password :-</td>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                <asp:TextBox ID="txtpassword" runat="server"  CssClass="EntryText"
                    Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                Plan Id:-</td>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                <asp:DropDownList ID="drpplanid" runat="server" DataSourceID="SqlDataSource3" 
                    DataTextField="PlanName" DataValueField="PlanId" 
                    Font-Names="arial, helvetica, sans-serif" Font-Size="12px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                    SelectCommand="SELECT [PlanId], [PlanName] FROM [Plan]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                Rate Of Interest:-</td>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                <asp:TextBox ID="txtrateofInt" runat="server" 
                    Font-Names="arial, helvetica, sans-serif" Font-Size="12px" CssClass="EntryText"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                &nbsp;</td>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click"  CssClass="BtnClass"
                    Text="Submit" Font-Names="arial, helvetica, sans-serif" Font-Size="12px" />
            </td>
        </tr>
    </table>
</asp:Content>

