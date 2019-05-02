<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="ReceiptForm.aspx.cs" Inherits="Admin_ReceiptForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <h3>Receipt</h3>
 <script language=javascript >
     function PopupPicker(ctl) {
         var PopupWindow = null;
         PopupWindow = window.open('DatePicker.aspx?ctl=' + ctl, '', 'width=250,height=250');
         PopupWindow.focus();
     }
    
    </script>
            <table align="center"  class="boxbg">
            <tr>
                <td class="style65">
                    &nbsp;</td>
                <td class="style64">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <table class="style1">
                            <tr>
                                <td style="text-align: left" class="style58" valign="top">
                                    <asp:View ID="View_OldUser" runat="server">
                                        <table align="left">
                                            <tr>
                                                <td class="style53">
                                                    <asp:LinkButton ID="BLink_NewUser" runat="server" CausesValidation="False" 
                                                        Font-Size="Smaller" onclick="BLink_NewUser_Click" style="text-align: left"> Click for New User</asp:LinkButton>
                                                </td>
                                                <td class="style54" align="justify">
                                                    <asp:Label ID="Label8" runat="server" Font-Names="Calibri" Text="User Id:"></asp:Label>
                                                </td>
                                                <td class="style55">
                                                    <asp:DropDownList ID="DDList_CustomerId" runat="server" AutoPostBack="True" 
                                                        DataSourceID="forUserId" DataTextField="UserId" DataValueField="UserId" 
                                                        Width="126px" 
                                                        onselectedindexchanged="DDList_CustomerId_SelectedIndexChanged" 
                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px">
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                        ControlToValidate="DDList_CustomerId" ErrorMessage="*Select User Id" 
                                                        Font-Names="Calibri" ForeColor="Red" InitialValue="--Select--"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style25" colspan="3">
                                                    <asp:Panel ID="PrintArea" runat="server" Height="321px" style="margin-top: 0px" 
                                                        Width="350px">
                                                        <table class="style50">
                                                            <tr align="center">
                                                                
                                                                <td class="style56" colspan="2">
                                                                    <asp:Label ID="Label_title" runat="server" Font-Names="Calibri" 
                                                                        Font-Size="X-Large" Font-Underline="True">Receipt</asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style60" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label45" runat="server" Font-Names="arial, helvetica, sans-serif" 
                                                                        Text="Receipt Date:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style56" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_ReceiptDate" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style59" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label44" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Text="Receipt Id:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style52" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_ReceiptId" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style59" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label1" runat="server" Font-Names="arial, helvetica, sans-serif" 
                                                                        Text="Customer Name:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style52" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_Name2" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style59" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label38" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Text="Address:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style52" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_Address2" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style59" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label39" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Text="City:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style52" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_City2" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style59" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label41" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Text="Plan Name:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style52" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_PlanName" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style59" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label43" runat="server" Font-Names="arial, helvetica, sans-serif" 
                                                                        Text="EMI Due Date:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style52" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_EMIDueDate" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style59" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label47" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Text="EMI No:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style52" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_EMIno" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style59" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label42" runat="server" Font-Names="arial, helvetica, sans-serif" 
                                                                        Text="Down Payment/ EMI:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style52" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_EMIAmt" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style59" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:CheckBox ID="ChBx_CountPenalty" runat="server" Font-Names="arial, helvetica, sans-serif" 
                                                                        Text="Count Penalty ? :" 
                                                                        TextAlign="Left" AutoPostBack="True" 
                                                                        oncheckedchanged="ChBx_CountPenalty_CheckedChanged" Font-Size="12px" />
                                                                </td>
                                                                <td class="style52" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_PenaltyAmt" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style59" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label46" runat="server" Font-Names="arial, helvetica, sans-serif" 
                                                                        Text="Total Amount:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style52" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_TotAmt" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style59" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label48" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Text="Received By:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style52" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_ReceivedBy" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" 
                                                    style="font-family: arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 150px">
                                                    <asp:Button ID="bt_Submit" runat="server" 
                                                        Font-Names="arial, helvetica, sans-serif" Text="Submit"  CssClass="BtnClass"
                                                        onclick="bt_Submit_Click" Font-Size="12px" />
                                                    <asp:Label ID="lbl_msg" runat="server" 
                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px" ForeColor="Green" 
                                                        style="text-align: center"></asp:Label>
                                                    <asp:HyperLink ID="HLinkPrint" runat="server" Target="_blank" Visible="False">[HLinkPrint]</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style25" colspan="3">
                                                    <asp:GridView ID="GridView1" runat="server" DataSourceID="RemainEMIData" 
                                                        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                                                        GridLines="None">
                                                        <AlternatingRowStyle BackColor="#CFD1D2" ForeColor="#284775" />
                                                        <Columns>
                                                            <asp:BoundField DataField="Serial" HeaderText="Serial" InsertVisible="False" 
                                                                ReadOnly="True" SortExpression="Serial" >
                                                            <ItemStyle Width="70px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="EMIno" HeaderText="EMIno" SortExpression="EMIno" >
                                                            <ItemStyle Width="70px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" >
                                                            <ItemStyle Width="150px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="EMI" HeaderText="EMI" SortExpression="EMI" >
                                                            <ItemStyle Width="70px" />
                                                            </asp:BoundField>
                                                        </Columns>
                                                        <EditRowStyle BackColor="#999999" />
                                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                        <HeaderStyle BackColor="#BCBCBC" Font-Bold="True" ForeColor="Black" 
                                                            Font-Names="arial, helvetica, sans-serif" Font-Size="12px" />
                                                        <PagerStyle BackColor="#BCBCBC" ForeColor="Black" HorizontalAlign="Center" />
                                                        <RowStyle BackColor="White" ForeColor="#333333" HorizontalAlign="Center" 
                                                            Font-Names="arial, helvetica, sans-serif" Font-Size="12px" />
                                                        <SelectedRowStyle Font-Names="arial, helvetica, sans-serif" Font-Size="12px" 
                                                            BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                    </asp:GridView>
                                                    <asp:SqlDataSource ID="RemainEMIData" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                                                        
                                                        SelectCommand="SELECT [Serial], [EMIno], [Date], [EMI] FROM [RemainEMI] WHERE ([UserId] = @UserId)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="DDList_CustomerID" Name="UserId" 
                                                                PropertyName="SelectedValue" Type="String" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                    <asp:SqlDataSource ID="forUserId" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                                                        SelectCommand="SELECT DISTINCT UserId FROM RemainEMI"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            </table>
                                            <br />
                                       
                                    </asp:View>
                                </td>
                                <td valign="top">
                                    <asp:View ID="View_NewUser" runat="server">
                                        <table align="left" class="style8">
                                            <tr>
                                                <td class="style25">
                                                    <asp:LinkButton ID="BLink_OldUser" runat="server" CausesValidation="False" 
                                                        Font-Size="Smaller" onclick="BLink_OldUser_Click">Back to Receipt</asp:LinkButton>
                                                </td>
                                                <td class="style24">
                                                    <asp:Label ID="Label11" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                                        Font-Size="X-Large" Font-Underline="True" Text="Enter about New User"></asp:Label>
                                                </td>
                                                <td class="style4">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style20" colspan="3">
                                                    <asp:Panel ID="Panel_NewUser" runat="server" Height="331px">
                                                        <table class="style1">
                                                            <tr>
                                                                <td class="style31" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label13" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Text="Booking Id:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style66" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:DropDownList ID="DDList_BookingId" runat="server" AutoPostBack="True" 
                                                                        DataSourceID="Booking" DataTextField="BookingId" DataValueField="BookingId" 
                                                                        Height="18px" onselectedindexchanged="DDList_BookinId_SelectedIndexChanged" 
                                                                        Width="123px" Font-Names="arial, helvetica, sans-serif" Font-Size="12px">
                                                                    </asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                                        ControlToValidate="DDList_BookingId" ErrorMessage="*Select Id" 
                                                                        Font-Names="arial, helvetica, sans-serif" ForeColor="Red" 
                                                                        InitialValue="--Select--" Font-Size="12px"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style31" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label14" runat="server" Font-Names="arial, helvetica, sans-serif" 
                                                                        Text="Customer Name:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style66" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_Name" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style31" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label15" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Text="Address:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style66" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_Address" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style31" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label25" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Text="City:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style66" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_City" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style31" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label26" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Text="State:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style66" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_State" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style31" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label16" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Text="Contact No:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style66" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_Contact" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style31" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label29" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Text="Email Id:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style66" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_EmaiId" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style31" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label27" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Text="Plan Id:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style66" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_PlanId" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style31" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label12" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Text="User Id:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style66" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:Label ID="lb_UserId" runat="server" 
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style31" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label36" runat="server" Font-Names="arial, helvetica, sans-serif" 
                                                                        Text="Next EMI Date:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td align="justify" class="style66" valign="baseline" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:TextBox ID="txt_EMIDate" runat="server" CssClass="EntryText"
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                                                                    
                                                                    <img alt="..." src="_images/images.jpg" onclick="PopupPicker('txt_EMIDate')"/>
                                                                    
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style26" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label35" runat="server" Font-Names="arial, helvetica, sans-serif" 
                                                                        Text="Per Day Penalty:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style67" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:TextBox ID="txt_Penalty" runat="server" CssClass="EntryText"
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                                        ControlToValidate="txt_Penalty" ErrorMessage="**" Font-Names="Calibri" 
                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                                                        ControlToValidate="txt_Penalty" ErrorMessage="1 to 4 numeric digit only" 
                                                                        Font-Names="Calibri" ForeColor="Red" ValidationExpression="\d{1,4}"></asp:RegularExpressionValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style26" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label33" runat="server" Font-Names="arial, helvetica, sans-serif" 
                                                                        Text="Enter Password:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style67" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:TextBox ID="txt_Password" runat="server" TextMode="Password" CssClass="EntryText"
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                                        ControlToValidate="txt_Password" ErrorMessage="**" Font-Names="Calibri" 
                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style31" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                                                    <asp:Label ID="Label34" runat="server" Font-Names="arial, helvetica, sans-serif" 
                                                                        Text="Re Enter Password:" Font-Size="12px"></asp:Label>
                                                                </td>
                                                                <td class="style66" 
                                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                                                    <asp:TextBox ID="txt_ConfirmPassword" runat="server" TextMode="Password" CssClass="EntryText"
                                                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:TextBox>
                                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                                        ControlToCompare="txt_Password" ControlToValidate="txt_ConfirmPassword" 
                                                                        ErrorMessage="*Password does not match" 
                                                                        Font-Names="arial, helvetica, sans-serif" ForeColor="Red" 
                                                                        SetFocusOnError="True" Font-Size="12px"></asp:CompareValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style25">
                                                    &nbsp;</td>
                                                <td class="style24">
                                                    <asp:Button ID="bt_Submit2" runat="server" Font-Names="arial, helvetica, sans-serif" CssClass="BtnClass"
                                                        onclick="bt_Submit2_Click" Text="Submit" Font-Size="12px" />
                                                    <asp:Label ID="lbl_msg2" runat="server" 
                                                        Font-Names="arial, helvetica, sans-serif" ForeColor="Green" 
                                                        style="text-align: center" Font-Size="12px"></asp:Label>
                                                </td>
                                                <td class="style4">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style25">
                                                    &nbsp;</td>
                                                <td class="style24">
                                                    <asp:SqlDataSource ID="Booking" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                                                        
                                                        
                                                        SelectCommand="SELECT [BookingId] FROM [Booking] where BookingId not in(select BookingId from UserInfo)"></asp:SqlDataSource>
                                                </td>
                                                <td class="style4">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    </td>
                            </tr>
                        </table>
                    </asp:MultiView>
                </td>
            </tr>
            <tr>
                <td class="style65">
                                                    &nbsp;</td>
                <td class="style64">
                                                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

