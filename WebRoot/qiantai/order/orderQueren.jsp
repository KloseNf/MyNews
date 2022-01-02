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
	    function back1()
        {
           window.history.go(-1);
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
		     <h1>CONFIRM ORDER</h1>
		         <form action="<%=path %>/buy?type=orderSubmit" name="fq" method="post">
                    <table width="98%" align="center" border="0" cellpadding="9" cellspacing="9">
							<tr align='center'>
							    <td width="25%" bgcolor="#FFFFFF" align="left">
							          Username: 
							    </td>
							    <td width="75%" bgcolor="#FFFFFF" align="left">
							         <input type="text" readonly="readonly" value="${sessionScope.user.loginname}"/>
							    </td>
							</tr>
							<tr align='center'>
							    <td width="25%" bgcolor="#FFFFFF" align="left">
							          Real name: 
							    </td>
							    <td width="75%" bgcolor="#FFFFFF" align="left">
							         <input type="text" readonly="readonly" value="${sessionScope.user.name}"/>
							    </td>
							</tr>
							<tr align='center'>
							    <td width="25%" bgcolor="#FFFFFF" align="left">
							          Address: 
							    </td>
							    <td width="75%" bgcolor="#FFFFFF" align="left">
							         <input type="text" name="songhuodizhi"/>
							    </td>
							</tr>
							<tr align='center'>
							    <td width="25%" bgcolor="#FFFFFF" align="left">
							          Payment: 
							    </td>
							    <td width="75%" bgcolor="#FFFFFF" align="left">
							         <select name="fukuanfangshi" style="width:155px;">
		 		                               <option value="Pay on delivery">Pay on delivery</option>
		 		                               <option value="Online payment">Online payment</option>
		 		                     </select>
							    </td>
							 </tr>
			        </table>
      				<table>
      				   <tr height="7"><td></td></tr>
	                   <tr>
	                       <td width="120"></td>
	                       <td width="120"><a href="#" onclick="back1()">Back</a></td>
	                       <td width="120"><a href="#" onclick="javascript:document.fq.submit();"/>Submit</td>
	                   </tr>
                    </table>
                 </form>
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
