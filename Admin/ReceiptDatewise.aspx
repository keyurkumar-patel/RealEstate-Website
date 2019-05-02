<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="ReceiptDatewise.aspx.cs" Inherits="Admin_ReceiptDatewise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
  <h3>EMI Receipt Date Wise </h3>

            <table class="style1" class="boxbg">
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
            <td colspan="4" style="text-align: center">
                &nbsp;</td>
            <td style="text-align: center" class="style15">
                &nbsp;</td>
            <td style="text-align: center" class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right" valign="middle">
                Select Date :</td>
            <td class="style4" valign="middle">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_ReceiptDate1" ErrorMessage="*" Font-Names="Calibri" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txt_ReceiptDate1" runat="server"></asp:TextBox>
                 
            </td>
            <td class="style2" valign="middle">
                <img src="_images/images.jpg" 
                    style="margin-top:3px;width:23px; height:16px; cursor:hand;"  onclick="PopupPicker('txt_ReceiptDate1')"  /></td>
            <td class="style2" valign="middle">
                to</td>
            <td class="style12" valign="middle">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_ReceiptDate2" ErrorMessage="*" Font-Names="Calibri" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txt_ReceiptDate2" runat="server"></asp:TextBox>
            </td>
            <td class="style15" valign="middle">
                <img src="_images/images.jpg" 
                    style="margin-top:3px;width:23px; height:16px; cursor:hand;"  onclick="PopupPicker('txt_ReceiptDate2')" /></td>
            <td class="style15" style="margin-left: 120px" valign="middle">
                <asp:Button ID="bt_Show" runat="server" Text="Show" onclick="bt_Show_Click" />
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td align="center" colspan="4">
                
        <asp:Label ID="lbl_msg" runat="server" Font-Names="Calibri" ForeColor="Blue"></asp:Label>
                
            </td>
            <td class="style15">
                &nbsp;</td>
            <td class="style15" style="margin-left: 120px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="7">
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
        <FooterStyle BackColor="#BCBCBC" Font-Bold="True" ForeColor="Black" />
        <HeaderStyle BackColor="#BCBCBC" Font-Bold="True" ForeColor="Black" 
            Font-Names="arial, helvetica, sans-serif" Font-Size="12px" />
        <PagerStyle BackColor="#BCBCBC" ForeColor="Black" HorizontalAlign="Center" 
            Font-Names="arial, helvetica, sans-serif" Font-Size="12px" />
        <RowStyle BackColor="White" ForeColor="#333333" 
            Font-Names="arial, helvetica, sans-serif" Font-Size="12px" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="7">
                <asp:Label ID="lbltag" runat="server" Text="Total Amount : " Visible="False"></asp:Label>
                <asp:Label ID="lblAmt" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="7">
                <asp:HiddenField ID="HiddenDate" runat="server" />
            </td>
        </tr>
        </table>

        <center>
    <br />
    <asp:SqlDataSource ID="ReceiptData" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
        
            SelectCommand="SELECT PaidEMI.ReceiptId, PaidEMI.UserId, PaidEMI.EMIAmt, PaidEMI.ROI, PaidEMI.TotalAmt, PaidEMI.Date, PaidEMI.ReceivedBy, UserInfo.Name FROM PaidEMI INNER JOIN UserInfo ON PaidEMI.UserId = UserInfo.UserId WHERE (PaidEMI.Date BETWEEN @date1 AND @date2)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txt_ReceiptDate1" Name="date1" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="HiddenDate" Name="date2" 
                PropertyName="Value" />
        </SelectParameters>
    </asp:SqlDataSource>
    </center>
</asp:Content>

