<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%String path = request.getContextPath();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<script type="text/javascript">
	</script>
	
	<style rel="stylesheet" type="text/css">
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
		     <h1>myNEWS.com</h1>
		     <table width="99%" border="0" cellpadding="8" cellspacing="8" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
	              <tr>
	                  <td align="center" style="color: red">Order successful!</td>
	              </tr>
	              <tr>
	                  <td>Order ID: ${requestScope.order.bianhao }</td>
	              </tr>
	              
	              <tr>
	                  <td>Total price: ${requestScope.order.jine }</td>
	              </tr>
	              <tr>
	                  <td>Order time: ${requestScope.order.shijian }</td>
	              </tr>
	              <tr>
	                  <td>Address: ${requestScope.order.songhuodizhi }</td>
	              </tr>
	              <tr>
	                  <td>Payment: ${requestScope.order.fukuanfangshi }</td>
	              </tr>
      		 </table>
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
