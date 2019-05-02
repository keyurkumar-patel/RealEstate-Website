<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Sale_Property.aspx.cs" Inherits="Sale_Property" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<table class="boxbg" width="500px">
        <tr class="bgbluegrey" align="center">
            <td colspan="2">
               <b>Sale Property</b></td>
            
        </tr>
        <tr>
            <td>
               Name: </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" CssClass="EntryText"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td>
            Address:
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Height="35px" TextMode="MultiLine" Width="200px" CssClass="EntryText"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
            Contact No.:
            </td>
            <td>
                <asp:TextBox ID="txtContact" runat="server" MaxLength="11" CssClass="EntryText"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
           Email Id:
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="EntryText"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            Detail:
            </td>
            <td>
                <asp:TextBox ID="txtDesc" runat="server" Height="35px" TextMode="MultiLine" Width="200px" CssClass="EntryText"></asp:TextBox>
            </td>
        </tr>
        <tr class="bgbluegrey">
            <td colspan="2">
            &nbsp;
            </td>
        </tr>
         <tr align="center">
           
            <td colspan="2">
               <asp:Button ID="btnSubmit" width="100px" runat="server" Text="Submit"  
                    style="height: 26px"  CssClass="BtnClass" onclick="btnSubmit_Click"/><%--onclick="btnSubmit_Click"--%>
            </td>
        </tr>
     
    </table>
</asp:Content>

