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
		function buy1(kucun)
        {
            <c:if test="${sessionScope.user==null}">
                alert("Please log in first");
            </c:if>
            <c:if test="${sessionScope.user!=null}">
	            if(document.buy.quantity.value=="")
	            {
	                alert("Please input the quantity you want to buy");
	                return false;
	            }
	            document.buy.submit();
            </c:if>
        }
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
		     <h3>PRODUCT DETAILS</h3>
		     <div class="templatemo_left_content">
		         <p>Product number: ${requestScope.goods.bianhao }</p>
		         <p>Product name: ${requestScope.goods.mingcheng }</p>
		         <p>Product price: ${requestScope.goods.shichangjia }</p>
		         <p>Description: <c:out value="${requestScope.goods.jieshao }" escapeXml="false"></c:out></p>
                 <p>
                   <form action="<%=path %>/buy?type=addToCart" method="post" name="buy">   
                     Quantity: <input type="text" name="quantity" value="1" size="8" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
				   <input type="hidden" name="goods_id" value="${requestScope.goods.id }"/>
				   <input type="button" value="Buy" onclick="buy1(${requestScope.goods.kucun })"/>
				   </form>
                 </p>
		     </div>
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
