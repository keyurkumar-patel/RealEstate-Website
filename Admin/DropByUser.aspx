<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="DropByUser.aspx.cs" Inherits="Admin_DropByUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <h3>Drop By User&nbsp; </h3>

            <table style="width:100%;" class="boxbg">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="PrintArea" runat="server">
                        <table style="width:100%;">
                            <tr>
                                <td width="150" class="style1" 
                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                    User Id :</td>
                                <td class="style1" 
                                    style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                    <asp:Label ID="lbluserid" runat="server" 
                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                    Name :</td>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                    <asp:Label ID="lblname" runat="server" 
                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                    City :</td>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                    <asp:Label ID="lblcity" runat="server" 
                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                    Plan :</td>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                    <asp:Label ID="lblplan" runat="server" 
                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                    Total Paid Amount :</td>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                    <asp:Label ID="lblPaidamt" runat="server" 
                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                    Cut Of Interest :</td>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                    <asp:DropDownList ID="drpCInt" runat="server" AutoPostBack="True" 
                                        onselectedindexchanged="drpCInt_SelectedIndexChanged" 
                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px">
                                        <asp:ListItem>Select %</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>26</asp:ListItem>
                                        <asp:ListItem>27</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>29</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                        <asp:ListItem>31</asp:ListItem>
                                        <asp:ListItem>32</asp:ListItem>
                                        <asp:ListItem>33</asp:ListItem>
                                        <asp:ListItem>34</asp:ListItem>
                                        <asp:ListItem>35</asp:ListItem>
                                        <asp:ListItem>36</asp:ListItem>
                                        <asp:ListItem>37</asp:ListItem>
                                        <asp:ListItem>38</asp:ListItem>
                                        <asp:ListItem>39</asp:ListItem>
                                        <asp:ListItem>40</asp:ListItem>
                                        <asp:ListItem>41</asp:ListItem>
                                        <asp:ListItem>42</asp:ListItem>
                                        <asp:ListItem>43</asp:ListItem>
                                        <asp:ListItem>44</asp:ListItem>
                                        <asp:ListItem>45</asp:ListItem>
                                        <asp:ListItem>46</asp:ListItem>
                                        <asp:ListItem>47</asp:ListItem>
                                        <asp:ListItem>48</asp:ListItem>
                                        <asp:ListItem>49</asp:ListItem>
                                        <asp:ListItem>50</asp:ListItem>
                                        <asp:ListItem>51</asp:ListItem>
                                        <asp:ListItem>52</asp:ListItem>
                                        <asp:ListItem>53</asp:ListItem>
                                        <asp:ListItem>54</asp:ListItem>
                                        <asp:ListItem>55</asp:ListItem>
                                        <asp:ListItem>56</asp:ListItem>
                                        <asp:ListItem>57</asp:ListItem>
                                        <asp:ListItem>58</asp:ListItem>
                                        <asp:ListItem>59</asp:ListItem>
                                        <asp:ListItem>60</asp:ListItem>
                                        <asp:ListItem>61</asp:ListItem>
                                        <asp:ListItem>62</asp:ListItem>
                                        <asp:ListItem>63</asp:ListItem>
                                        <asp:ListItem>64</asp:ListItem>
                                        <asp:ListItem>65</asp:ListItem>
                                        <asp:ListItem>66</asp:ListItem>
                                        <asp:ListItem>67</asp:ListItem>
                                        <asp:ListItem>68</asp:ListItem>
                                        <asp:ListItem>69</asp:ListItem>
                                        <asp:ListItem>70</asp:ListItem>
                                        <asp:ListItem>71</asp:ListItem>
                                        <asp:ListItem>72</asp:ListItem>
                                        <asp:ListItem>73</asp:ListItem>
                                        <asp:ListItem>74</asp:ListItem>
                                        <asp:ListItem>75</asp:ListItem>
                                        <asp:ListItem>76</asp:ListItem>
                                        <asp:ListItem>77</asp:ListItem>
                                        <asp:ListItem>78</asp:ListItem>
                                        <asp:ListItem>79</asp:ListItem>
                                        <asp:ListItem>80</asp:ListItem>
                                        <asp:ListItem>81</asp:ListItem>
                                        <asp:ListItem>82</asp:ListItem>
                                        <asp:ListItem>83</asp:ListItem>
                                        <asp:ListItem>84</asp:ListItem>
                                        <asp:ListItem>85</asp:ListItem>
                                        <asp:ListItem>86</asp:ListItem>
                                        <asp:ListItem>87</asp:ListItem>
                                        <asp:ListItem>88</asp:ListItem>
                                        <asp:ListItem>89</asp:ListItem>
                                        <asp:ListItem>90</asp:ListItem>
                                        <asp:ListItem>91</asp:ListItem>
                                        <asp:ListItem>92</asp:ListItem>
                                        <asp:ListItem>93</asp:ListItem>
                                        <asp:ListItem Value="94"></asp:ListItem>
                                        <asp:ListItem Value="95"></asp:ListItem>
                                        <asp:ListItem Value="96"></asp:ListItem>
                                        <asp:ListItem Value="97"></asp:ListItem>
                                        <asp:ListItem Value="98"></asp:ListItem>
                                        <asp:ListItem Value="99"></asp:ListItem>
                                        <asp:ListItem Value="100"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: right; padding-right: 5px">
                                    Total Refund Amount :</td>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: left; padding-left: 5px">
                                    <asp:Label ID="lblTAmt" runat="server" 
                                        Font-Names="arial, helvetica, sans-serif" Font-Size="12px"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 80px">
                    <asp:Button ID="btnPay" runat="server" Text="Pay" onclick="btnPay_Click" 
                        Width="164px" Font-Names="arial, helvetica, sans-serif" Font-Size="12px" />
                    <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="12px" 
                        ForeColor="Green"></asp:Label>
                </td>
            </tr>
        </table>
</asp:Content>

