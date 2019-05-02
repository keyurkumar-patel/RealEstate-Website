<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   <table align="center" class="boxbg" width="250px">
                    <tr class="bgbluegrey" align="center">
                        <td colspan="2" style=" height:30px;">
                        <b style="color:Black;">Admin Login Detail</b>
                            </td>
                    </tr>
                    <tr >
                        <td style=" height:25px;">
                            Use Name:
                        </td>
                        <td>
                            <asp:TextBox ID="Txt_User_Id" runat="server" CssClass="EntryText"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style=" height:25px;">
                            PassWord:
                        </td>
                        <td>
                            <asp:TextBox ID="Txt_Password" runat="server" TextMode="Password"  CssClass="EntryText"></asp:TextBox>
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2" style=" height:25px;">
                        <asp:Button Width="80px" ID="Btn_Login" runat="server" CssClass="BtnClass" 
                                Text="Login" onclick="Btn_Login_Click" />
                        </td>
                    </tr>
                </table>
</asp:Content>

