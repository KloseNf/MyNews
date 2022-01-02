<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
        <script language="javascript">
           function goodsDel(id)
           {
               if(confirm('Delete right now ??'))
               {
                   window.location.href="<%=path %>/goods?type=goodsDel&id="+id;
               }
           }
           
           function goodsAdd()
           {
                 var url="<%=path %>/admin/goods/goodsAdd.jsp";
				 window.location.href=url;
           }
           function over(picPath)
	       {
			  if (picPath=="")picPath="/img/default.jpg";
			  x = event.clientX;
			  y = event.clientY;      
			  document.all.tip.style.display = "block";
			  document.all.tip.style.top = y;
			  document.all.tip.style.left = x+10;
			  document.all.photo.src = ".."+picPath; 
		   }
		   function out()
	       {
			  document.all.tip.style.display = "none";
		   }
		   
		   function goodsDetailHou(id)
           {
                 var url="<%=path %>/goods?type=goodsDetailHou&id="+id;
                 window.location.href=url;
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="42" background="<%=path %>/img/tbg.gif">&nbsp;PRODUCT INFORMATION MANAGEMET&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">Number</td>
					<td width="7%">Product ID</td>
					<td width="15%">Product name</td>
					<td width="7%">Description</td>
					
					<td width="7%">Picture</td>
					<td width="7%">Price</td>
					<td width="7%">Operation</td>
		        </tr>	
				<c:forEach items="${requestScope.goodsList}" var="goods" varStatus="sta">
				<tr align='center' bgcolor="#FFFFFF">
					<td bgcolor="#FFFFFF" align="center">${sta.index+1}</td>
					<td bgcolor="#FFFFFF" align="center">${goods.bianhao}</td>
					<td bgcolor="#FFFFFF" align="center">${goods.mingcheng}</td>
					<td bgcolor="#FFFFFF" align="center"><a href="#" onclick="goodsDetailHou(${goods.id})" class="pn-loperator">Description</a></td>
					
					<td bgcolor="#FFFFFF" align="center"><div onmouseover = "over('<%=path %>/${goods.fujian}')" onmouseout = "out()" style="cursor:hand;">Picture</div></td>
					<td bgcolor="#FFFFFF" align="center">${goods.shichangjia}</td>
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="Delete" onclick="goodsDel(${goods.id})"/>
					</td>
				</tr>
				</c:forEach>
			</table>
		    
		    
		    <table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td>
			      <input type="button" value="Add" style="width: 80px;" onclick="goodsAdd()" />
			    </td>
			  </tr>
		    </table>
		    
		    <div id="tip" style="position:absolute;display:none;border:0px;width:80px; height:80px;">
				<TABLE id="tipTable" border="0" bgcolor="#ffffee">
					<TR align="center">
						<TD><img id="photo" src="" height="150" width="150"></TD>
					</TR>
				</TABLE>
			</div>
	</body>
</html>
