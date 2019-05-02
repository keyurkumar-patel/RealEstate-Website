<%@ Page Title="" Language="C#" MasterPageFile="~/manager/Manager.Master"  AutoEventWireup="true" CodeFile="BookingForm.aspx.cs" Inherits="Executive_BookingForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table  class="boxbg" align="center">
            <tr>
                <td align="left" colspan="2">
                    <asp:Label ID="Label7" runat="server" Font-Size="14px" 
                        Text="Enter Your Booking Detail" Font-Names="arial, helvetica, sans-serif" 
                        Font-Underline="True"></asp:Label>
                </td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left" colspan="6">
                    <h4 class="style1">----Details Of Applicant----</h4></td>
            </tr>
            <tr>
                <td align="right" class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label1" runat="server" Text="First Name :" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txt_CustomerName" runat="server" CausesValidation="True"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txt_CustomerName" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    <asp:Label ID="Label19" runat="server" Text="Middle Name :" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txt_MName" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txt_MName" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label20" runat="server" Text="Last Name :" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txt_LName" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txt_LName" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label2" runat="server" Text="Customer Address:" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txt_Address" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px" 
                        CssClass="textarea" Height="54px" TextMode="MultiLine" Width="119px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txt_Address" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="DDList_State" ErrorMessage="*Select State" 
                        Font-Names="Calibri" ForeColor="Red" InitialValue="--Select--"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label9" runat="server" Text="State:" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:DropDownList ID="DDList_State" runat="server" AutoPostBack="True" 
                        DataSourceID="State" DataTextField="StateName" DataValueField="StateId" 
                        onselectedindexchanged="DDList_State_SelectedIndexChanged" Width="120px" 
                        Font-Names="arial,helvetica,sans-serif" Font-Size="12px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="State" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                        SelectCommand="SELECT [StateId], [StateName] FROM [State]">
                    </asp:SqlDataSource>
                </td>
                <td class="style3">
                    <asp:Label ID="Label11" runat="server" Text="Resi Ph No:" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txt_ResiNo" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="txt_ResiNo" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="DDList_City" ErrorMessage="*Select City" 
                        Font-Names="Calibri" ForeColor="Red" InitialValue="--Select--"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label8" runat="server" Text="City:" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:DropDownList ID="DDList_City" runat="server" DataSourceID="City" 
                        DataTextField="CityName" DataValueField="CityName" Width="121px" 
                        AppendDataBoundItems="True" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="City" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
                        SelectCommand="SELECT [CityName], [CityId] FROM [City] WHERE ([StateId] = @StateId)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DDList_State" Name="StateId" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style3">
                    <asp:Label ID="Label10" runat="server" Text="Off Ph No:" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txt_OffNo" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="txt_OffNo" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label3" runat="server" Text="Contact No:" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" colspan="5">
                    <asp:TextBox ID="txt_Contact" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px" 
                        CssClass="textarea"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txt_Contact" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txt_Contact" ErrorMessage="Enter 10 numeric Digit" 
                        Font-Names="Calibri" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label4" runat="server" Text="Email ID:" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" colspan="5">
                    <asp:TextBox ID="txt_Email" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px" 
                        CssClass="textarea"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txt_Email" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txt_Email" ErrorMessage="Enter Valid Email ID" 
                        Font-Names="Calibri" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label12" runat="server" Text="Birth Date:" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">

                 <asp:TextBox ID="txt_BDate" runat="server" Width="103px" />
            <script type="text/javascript">//<![CDATA[
                Zapatec.Calendar.setup({
                    firstDay: 1,
                    weekNumbers: false,
                    showOthers: true,
                    electric: false,
                    inputField: "txt_BDate",
                    button: "txt_BDate",
                    ifFormat: "%m/%d/%Y",
                    daFormat: "%Y/%m/%d"
                });
    //]]></script>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                        ControlToValidate="txt_BDate" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                    mm/dd/yy</td>
                <td class="style3">
                    <asp:Label ID="Label13" runat="server" Text="Marriage Anniversary" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txt_MDate" runat="server" Width="106px" />
            <script type="text/javascript">//<![CDATA[
                Zapatec.Calendar.setup({
                    firstDay: 1,
                    weekNumbers: false,
                    showOthers: true,
                    electric: false,
                    inputField: "txt_MDate",
                    button: "txt_MDate",
                    ifFormat: "%m/%d/%Y",
                    daFormat: "%Y/%m/%d"
                });
    //]]></script>
                </td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                        ControlToValidate="rbRstatus" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label14" runat="server" Text="Resi Status :" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:RadioButtonList ID="rbRstatus" runat="server" Font-Names="Calibri" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Own</asp:ListItem>
                        <asp:ListItem>Rent</asp:ListItem>
                        <asp:ListItem>Parented</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style3">
                    <asp:Label ID="Label15" runat="server" Text="Nationality :" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left">
                    <asp:RadioButtonList ID="rbNation" runat="server" Font-Names="Calibri" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Indian</asp:ListItem>
                        <asp:ListItem>NRI</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                        ControlToValidate="rbNation" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label16" runat="server" Text="Profession :" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txt_Profe" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txt_Profe" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    <asp:Label ID="Label17" runat="server" Text="Designation :" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txt_Design" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="txt_Design" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label18" runat="server" Text="PAN No :" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txt_Pan" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="txt_Pan" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label5" runat="server" Text="Booking Code:" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:Label ID="lblBookingCode" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style4" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label6" runat="server" Text="Plan ID:" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" colspan="5">
                    <asp:DropDownList ID="DDList_PlanID" runat="server" Width="131px" 
                        DataSourceID="PlanData" DataTextField="PlanID" DataValueField="PlanID" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px">
                    </asp:DropDownList> <asp:SqlDataSource ID="PlanData" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RealEstate %>" 
        SelectCommand="SELECT [PlanID] FROM [Plan]"></asp:SqlDataSource>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="DDList_PlanID" ErrorMessage="* Select PlanId" 
                        Font-Names="Calibri" ForeColor="Red" InitialValue="--Select--"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style4" 
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px" 
                    colspan="2">
                    &nbsp;</td>
                <td align="right" class="style4" 
                    
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    &nbsp;</td>
                <td align="right" class="style4" 
                    
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    &nbsp;</td>
                <td align="right" class="style4" 
                    
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    &nbsp;</td>
                <td align="right" class="style4" 
                    
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style4" 
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px" 
                    colspan="6">
                    <h4 class="style1">----Details Of Co-Applicant----</h4></td>
            </tr>
            <tr>
                <td align="right" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label21" runat="server" Text="First Name :" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txt_CoFName" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="txt_CoFName" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    <asp:Label ID="Label22" runat="server" Text="Middle Name :" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txt_CoMName" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                        ControlToValidate="txt_CoMName" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label23" runat="server" Text="Last Name :" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txt_CoLName" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                        ControlToValidate="txt_CoLName" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label24" runat="server" Text="Complete Address:" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txt_CoAdd" runat="server" 
                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px" 
                        CssClass="textarea" Height="54px" TextMode="MultiLine" Width="119px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                        ControlToValidate="txt_CoAdd" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label26" runat="server" Text="Off Ph No:" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txt_CoOffNo" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                        ControlToValidate="txt_CoOffNo" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    <asp:Label ID="Label25" runat="server" Text="Resi Ph No:" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txt_CoResiNo" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                        ControlToValidate="txt_CoResiNo" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label27" runat="server" Text="Contact No:" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2" colspan="5">
                    <asp:TextBox ID="txt_CoContact" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                        ControlToValidate="txt_CoContact" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txt_CoContact" ErrorMessage="Enter 10 numeric Digit" 
                        Font-Names="Calibri" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label28" runat="server" Text="Email Id:" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2" colspan="5">
                    <asp:TextBox ID="txt_CoEmailId" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txt_CoEmailId" ErrorMessage="Enter Valid Email ID" 
                        Font-Names="Calibri" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label29" runat="server" Text="Birth Date:" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txt_CoBDate" runat="server" Width="106px" />
            <script type="text/javascript">//<![CDATA[
                Zapatec.Calendar.setup({
                    firstDay: 1,
                    weekNumbers: false,
                    showOthers: true,
                    electric: false,
                    inputField: "txt_CoBDate",
                    button: "txt_CoBDate",
                    ifFormat: "%m/%d/%Y",
                    daFormat: "%Y/%m/%d"
                });
    //]]></script>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
                        ControlToValidate="txt_CoBDate" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    mm/dd/yy</td>
                <td class="style3">
                    <asp:Label ID="Label31" runat="server" Text="Marriage Anniversary :" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txt_CoMDate" runat="server" Width="106px" />
            <script type="text/javascript">//<![CDATA[
                Zapatec.Calendar.setup({
                    firstDay: 1,
                    weekNumbers: false,
                    showOthers: true,
                    electric: false,
                    inputField: "txt_CoMDate",
                    button: "txt_CoMDate",
                    ifFormat: "%m/%d/%Y",
                    daFormat: "%Y/%m/%d"
                });
    //]]></script>
                    </td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                        ControlToValidate="rbCoRstatus" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label30" runat="server" Text="Resi Status :" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:RadioButtonList ID="rbCoRstatus" runat="server" Font-Names="Calibri" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Own</asp:ListItem>
                        <asp:ListItem>Rent</asp:ListItem>
                        <asp:ListItem>Parented</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
                        ControlToValidate="rbCoNation" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label32" runat="server" Text="Nationality :" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left">
                    <asp:RadioButtonList ID="rbCoNation" runat="server" Font-Names="Calibri" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Indian</asp:ListItem>
                        <asp:ListItem>NRI</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label34" runat="server" Text="Profession :" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txt_CoProfe" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
                        ControlToValidate="txt_CoProfe" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    <asp:Label ID="Label33" runat="server" Text="Designation :" 
                        Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="txt_CoDesign" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                        ControlToValidate="txt_CoDesign" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    <asp:Label ID="Label35" runat="server" Text="PAN No :" Font-Names="Calibri"></asp:Label>
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txt_CoPan" runat="server"  CssClass="textarea"
                        Font-Size="12px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                        ControlToValidate="txt_CoPan" ErrorMessage="*" 
                        Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style3" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                    &nbsp;</td>
                <td align="left" class="style2">
                    <asp:Button ID="bt_Submit" runat="server" onclick="bt_Submit_Click" 
                        Text="Submit Form" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        HeaderText="Following Fieds are Required Properly" ShowMessageBox="True" 
                        ShowSummary="False" Font-Names="arial, helvetica, sans-serif" 
                        Font-Size="12px" />
        <asp:Label ID="lbl_msg" runat="server" Font-Names="Calibri" ForeColor="Green"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

