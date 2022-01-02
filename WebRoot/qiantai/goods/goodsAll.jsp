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
		     <h1>PRODUCTS</h1>
		     <p align="left">
		        <TABLE class=main border=0 cellSpacing=2 cellPadding=2>
		              <TR>
		              	<%-- ${requestScope.goodsList} means find goodsList in Scope --%>
		              	<!-- use c command traversal all the data -->
		                <c:forEach items="${requestScope.goodsList}" var="goods" varStatus="sta">
	                    <c:if test="${sta.index%3==0}">
	                       </tr><tr>
	                    </c:if>
		                <TD>
		                  <TABLE onmouseover="this.style.backgroundColor='#FF6600'" onmouseout="this.style.backgroundColor=''" border=0 cellSpacing=1 cellPadding=2 width=98 bgColor=#e1e1e1 align=center height=100>
		                    <TR>
		                      <TD bgColor=#ffffff height=100 width=120 align=left>
		                        <P align="center">
		                           <A href="<%=path %>/goods?type=goodsDetailQian&id=${goods.id }"><IMG border=0 align=absMiddle src="<%=path %>/${goods.fujian }" width=135 height=100></A>
		                           <A href="<%=path %>/goods?type=goodsDetailQian&id=${goods.id }"><FONT color=#ff0000>${goods.mingcheng }</FONT></A><BR>&nbsp;Price: ${goods.shichangjia }
		                        </P>
		                      </TD>
		                    </TR>
		                  </TABLE>
		                </TD>
		                </c:forEach>
		               </TR>
		        </TABLE>
		     </p>
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
