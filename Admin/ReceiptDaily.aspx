<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="ReceiptDaily.aspx.cs" Inherits="Admin_ReceiptDaily" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
  <h3>EMI Receipt Daily Report </h3>

            <table class="style1" class="boxbg">
        <tr>
            <td class="style4" valign="bottom">
                <asp:Label ID="Label1" runat="server" Font-Names="arial, helvetica, sans-serif" 
                    Text="Select Date:" Font-Size="12px"></asp:Label>
                 
            </td>
            <td valign="bottom">
                <asp:TextBox ID="txt_ReceiptDate" runat="server"></asp:TextBox>
                 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_ReceiptDate" ErrorMessage="*" Font-Names="Calibri" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                 
            </td>
            <td class="style2" valign="bottom">
                <img src="_images/images.jpg" height="23px" width="16px"  onclick="PopupPicker('txt_ReceiptDate')" /></td>
            <td class="style19" valign="bottom">
                <asp:Button ID="bt_Show" runat="server" Text="Show" onclick="bt_Show_Click" 
                    Font-Names="arial, helvetica, sans-serif" Font-Size="12px" />
                </td>
            <td valign="bottom" width="200">
                &nbsp;</td>
            <td class="style18" valign="bottom">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" valign="bottom">
                &nbsp;</td>
            <td valign="bottom" align="center" colspan="3">
        <asp:Label ID="lbl_msg" runat="server" Font-Names="Calibri" ForeColor="Red"></asp:Label>
                 
            </td>
            <td valign="bottom" width="200">
                &nbsp;</td>
            <td class="style18" valign="bottom">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="6" style="margin-left: 40px">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" DataSourceID="ReceiptData" PageSize="20" 
            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="#CFD1D2" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ReceiptId" HeaderText="ReceiptId" 
                SortExpression="ReceiptId" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" 
                SortExpression="UserId" />
            <asp:BoundField DataField="EMIAmt" HeaderText="EMIAmt" 
                SortExpression="EMIAmt" />
            <asp:BoundField DataField="ROI" HeaderText="ROI" SortExpression="ROI" />
            <asp:BoundField DataField="TotalAmt" HeaderText="TotalAmt" 
                SortExpression="TotalAmt" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="ReceivedBy" HeaderText="ReceivedBy" 
                SortExpression="ReceivedBy" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#BCBCBC" Font-Bold="True" ForeColor="Black" 
            Font-Names="arial, helvetica, sans-serif" Font-Size="12px" />
        <PagerStyle BackColor="#BCBCBC" ForeColor="Black" HorizontalAlign="Center" 
            Font-Names="arial, helvetica, sans-serif" Font-Size="12px" />
        <RowStyle BackColor="White" ForeColor="#333333" 
            Font-Names="arial, helvetica, sans-serif" Font-Size="12px" />
        <SelectedRowStyle Font-Names="arial, helvetica, sans-serif" Font-Size="12px" 
            BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="6" 
                
                style="font-family: arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 10px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Total Amount : " 
                    Visible="False"></asp:Label>
                <strong>
                <asp:Label ID="lbltAmt" runat="server" Visible="False"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="6">
                <asp:HiddenField ID="HiddenDate" runat="server" />
            </td>
        </tr>
        </table>

</asp:Content>

