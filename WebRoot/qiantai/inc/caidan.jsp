<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <link href="<%=path %>/css/templatemo_style.css" rel="stylesheet" type="text/css" />
      
      <script type="text/javascript">
	    function mycart()
        {
            <c:if test="${sessionScope.user==null}">
                  alert("Please log in first!");
            </c:if>
            
            <c:if test="${sessionScope.user!=null}">
                var url="<%=path %>/qiantai/cart/mycart.jsp";
                window.open(url,"_self");
            </c:if>
        } 
         
        function myorder()
        {
            <c:if test="${sessionScope.user==null}">
                  alert("Please log in first!");
            </c:if>
            
            <c:if test="${sessionScope.user!=null}">
                var url="<%=path %>/buy?type=myorder";
                window.open(url,"_self");
            </c:if>
        } 
	  </script>
  </head>
  
  <body>
       <div class="templatemo_topmenu">
	       <ul>
	         <li><a href="<%=path %>/index" class="current">HOME</a></li>
	         <li><a href="<%=path %>/goods?type=goodsAll" class="current">PRODUCTS</a></li>
	         <li><a href="#" onclick="mycart()">CART</a></li>
	         <li><a href="#" onclick="myorder()">ORDER</a></li>
	       </ul>
	   </div>
  </body>
</html>
