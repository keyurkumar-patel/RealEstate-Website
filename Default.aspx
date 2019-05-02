<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<link rel="stylesheet" href="jquery.jcarousel.css" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.jcarousel.pack.js"></script>
	<script type="text/javascript" src="js/func.js"></script>

  <div class="slider">
			<div class="slider-nav">
				
                <a href="#" class="left notext">1</a>
				<a href="#" class="left notext">2</a>
				<a href="#" class="left notext">3</a>
                <a href="#" class="left notext">4</a>
                <a href="#" class="left notext">5</a>
                <a href="#" class="left notext">6</a>
                <a href="#" class="left notext">7</a>
                <a href="#" class="left notext">8</a>
				<a href="#" class="left notext">9</a>
				<div class="cl">&nbsp;</div>
			</div>
			<ul>
			    <li>
			    	<div class="item">
						<img src="Images/Real_Estate (1).jpg" height="303px"  alt=""/>
			    	</div>
			    </li>
			    <li>
			    	<div class="item">
						
			    		<img src="Images/Real_Estate (2).jpg" alt="" height="303px" />
			    	</div>
			    </li>
			    <li>
			    	<div class="item">
						
			    		<img src="Images/Real_Estate (3).jpg" alt="" height="303px"  />
			    	</div>
			    </li>
                 <li>
			    	<div class="item" >
						
			    		<img src="Images/Real_Estate (4).jpg" alt="" height="303px" />
			    	</div>
			    </li>
                 <li>
			    	<div class="item">
						
			    		<img src="Images/Real_Estate (5).jpg" alt="" height="303px"  />
			    	</div>
			    </li>
                 <li>
			    	<div class="item">
						
			    		<img src="Images/Real_Estate (6).jpg" alt="" height="303px"  />
			    	</div>
			    </li>
                <li>
			    	<div class="item">
						
			    		<img src="Images/Real_Estate (7).jpg" alt="" height="303px"  />
			    	</div>
			    </li>
                 <li>
			    	<div class="item">
						
			    		<img src="Images/Real_Estate (8).jpg" alt="" height="303px"  />
			    	</div>
			    </li>
                 <li>
			    	<div class="item">
						
			    		<img src="Images/Real_Estate (9).jpg" alt="" height="303px"  />
			    	</div>
			    </li>
			</ul>
		</div>
        <br /><br />
        <table  class="boxbg"  cellspacing="1"> 
        <tr bgcolor="white">
            <td width="500px" height="300px">
                <table width="500px">
                    <tr class="bgbluegrey" align="center">
                        <td  style=" height:25px;">
                            <b>Property Deal</b>
                        </td>
                    </tr>
                    <tr>
                    <td>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; We deal with all kinds of residential properties such as flats, plots, luxury apartments, penthouses, studios, duplex row houses, bungalows, farmhouses and commercial properties such as offices, shops, retail showrooms, IT & industrial spaces, agricultural and non-agricultural land for development in and around Surat.

Our services are managed with high priority and integrity that includes the Project Marketing, Sales & Investment services and Property Management.
                    </td>
                    </tr>
                 <tr class="bgbluegrey" align="center">
                        <td  style=" height:25px;">
                            <b>NRI Services</b>
                        </td>
                    </tr>
                    <tr>
                    <td>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Real Estate is always a worthwhile investment. We provide investment opportunities in Real Estate. Whether bought, sold, rented or owned for commercial or residential purposes, it requires tremendous planning, research and strategy. At the same time we also realize that several factors go into providing real estate solutions that protect our customer's investment, most importantly Clear title, Quality of Product & Cost-effectiveness. We are empowered with an in depth knowledge of the real estate market and thus can provide you effective guidance in terms of investments.
                    </td>
                    </tr>
                 <tr class="bgbluegrey" align="center">
                        <td  style=" height:25px;">
                           <b>Property Marketing</b>
                        </td>
                    </tr>
                    <tr>
                    <td>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Our Project Management division offers services that promote business objectives, reduce costs, improve efficiency, increase selling and provides custom-solutions that meet individual client's project management needs. In broad terms, we manage end-to-end procurement, design & branding, marketing and deliver facilities that are closely aligned with the clients' overall business objectives.
                    </td>
                    </tr>
                </table>


            </td>
           
           <td width="400px">
                <table width="400px" style="vertical-align:top;" height="360px">
                    <tr  align="center" class="bgbluegrey">
                        <td style=" height:25px;" >
                            <b>News And Updates   </b>
                        </td>
                       
                    </tr>
                     <tr>
                        <td style=" height:355px;">
                            
                           

                            <marquee behavior="scroll" direction="up" scrollamount="2" >
                            <img src="Images/Home.png" />
                                <h3 style="color:Red; font-weight:bold;">Welcome To Our Real Estate</h3>

Our Real Estate is a multi-dimensional real estate consulting firm that delivers a range of advisory services to cater to the complete real estate requirements of business enterprises, property developers, institutional investors and high net worth individuals (HNIs). Our services and solutions help clients to turn their fixed assets into dynamic assets.

Our Real Estate specializes in providing a range of products and services for all types of residential and commercial properties, from retail units, office premises through to warehouses, industrial units, FarmHouse,villas ,plots ,agricultural and non-agricultural land in Surat.

With our extensive database and experience, We have the finest selection of all kind of property in prime locations in and around Surat.
                            
                            </marquee>
                        </td>
                       
                    </tr>
                </table>
           </td>
        </tr>
        </table>
</asp:Content>
