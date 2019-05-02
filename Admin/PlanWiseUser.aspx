<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="PlanWiseUser.aspx.cs" Inherits="Admin_PlanWiseUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>Plan Wise User </h3>

            <table style="width:100%;" class="boxbg">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 10px">
                    Select Plan Id :-&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="PlanId" DataValueField="PlanId" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px" 
                        AppendDataBoundItems="True">
                        <asp:ListItem Value="0">Select Plan Id</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                        SelectCommand="SELECT [PlanId] FROM [Plan]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 10px">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" 
                        ForeColor="#333333" GridLines="None" 
                       >
                        <AlternatingRowStyle BackColor="#CFD1D2" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                            <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" >
                            <ItemStyle Width="70px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Contact" HeaderText="Contact" 
                                SortExpression="Contact" >
                            <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Status" HeaderText="Status" 
                                SortExpression="Status" >
                            <ItemStyle Width="70px" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#BCBCBC" Font-Bold="True" ForeColor="Black" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                        SelectCommand="SELECT [Name], [City], [Contact], [Status] FROM [UserInfo] WHERE ([PlanId] = @PlanId)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="PlanId" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 10px">
                    Users :- 
                    <asp:Label ID="lbluserno" runat="server" Text="00" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                </td>
            </tr>
        </table>
</asp:Content>

