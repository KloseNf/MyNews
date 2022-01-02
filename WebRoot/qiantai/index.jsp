<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%String path = request.getContextPath();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>myNEWS.com</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<script type="text/javascript">
	</script>
	
	<style rel="stylesheet" type="text/css">
		.list_noimg
		{
		      PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 1px; OVERFLOW: hidden; PADDING-TOP: 1px; BORDER-BOTTOM: #eee 1px solid; ZOOM: 1
		}
    </style>
  </head>
  
  <body>

<div id="templatemo_container">
      <!-- 左部分 -->
	  <div id="templatemo_left_section">
		   <div id="templatemo_left_header">
		     <div id="templatemo_left_title">myNEWS.com</div>
		     <div id="templatemo_left_slogan">more than news</div>
		     <div id="templatemo_latest"></div>
		   </div>
	
		   <div id="templatemo_left_menu">
		      <jsp:include flush="true" page="/qiantai/inc/caidan.jsp"></jsp:include> 
		   </div>
	
		   <div id="templatemo_left_content">
		     <h1>myNEWs.com</h1>
		     <p>myNEWS.com is a homegrown press and retail convenience chain located in Malaysia. Since its inception in 1997, myNEWS.com has evolved from a single newsstand to the largest homegrown retail convenience store chain in Malaysia. Founded by Dang Tai Luk, its first flagship store opened on 25 December 1996. As of Year 2018, myNEWS.com has more than 430 outlets, the majority of them are located in the urban areas of Peninsular Malaysia. It is currently serving over 2.5 million customers monthly and has more than 1600 employees.</p>
		     <p>myNEWS.com outlets carry products ranging from a large selection of magazines to convenience products such as household items, food and beverage, tobacco, personal hygiene and pharmaceutical products, snacks and drinks that includes its co-propriety brand of natural mineral water with Dasani. It also offers a variety of services available at selected outlets including prepaid top-up for mobile service providers, Touch ‘n Go reloads, bill payments, money remittance services and automated teller machines, photocopying, money changing agent to Western Union and Travelex, as well as courier services.</p>
		     <p>Market shopping behaviour has changed to favour the locations of modern trade such as shopping malls and hypermarkets as they are more convenient, accessible and appealing to the customers. Shoppers are lured by the locations of the outlets, environment, product display, promotions and the loyalty programs. As such, myNEWS.com was the first to move from the typical newsstand locations to modern trade by positioning themselves in key locations where most of their customers are located. For instance, shopping malls, hypermarkets, offices, hospitals, resorts, theme parks, transportation hubs and airports. </p>
		     <p>myNEWS currently has over 420 outlets mainly in Peninsular Malaysia and a few in East Malaysia. It is mainly concentrated in the Central region, operating in shopping complexes and business hubs like Mid Valley Megamall, 1 Utama Shopping Centre, Pavilion KL, Suria KLCC, Sunway Pyramid, Setia City Mall, Plaza Sentral, Damansara City Mall, and The Horizon Bangsar South. In other regions, myNEWS also operates outlets in some famous shopping centres, for example Dataran Pahlawan Melaka Megamall, Queensbay Mall, Jusco Tebrau City, Little Red Cube and The Spring. It also has outlets in transportation hubs, such as KLIA, KLIA2, Senai International Airport, Penang International Airport, Langkawi International Airport, and Kota Kinabalu International Airport. myNEWS outlets are also available at rail transport hubs, such as LRT and MRT stations.</p>
		   </div>
	  </div>
      <!-- 左部分 -->
      
      
      <!-- 右部分 -->
	  <div id="templatemo_right_section">
		    <div id="templatemo_right_top"></div>
		    <jsp:include flush="true" page="/qiantai/inc/right.jsp"></jsp:include> 
	  </div>
	  <!-- 右部分 -->
      <div id="templatemo_footer">
         Copyright ©  myNEWS.com | Designed by,
         <a href="<%=path %>/login.jsp">Administrator login</a>
      </div>
</div>
</body>
</html>
