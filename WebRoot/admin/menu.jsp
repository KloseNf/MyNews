<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">   

	<STYLE type=text/css>
		BODY {PADDING-RIGHT: 0px; PADDING-LEFT: 5px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; BACKGROUND-COLOR: #2a8dc8}
		BODY {FONT-SIZE: 11px; COLOR: #003366; FONT-FAMILY: Verdana}
		TD {FONT-SIZE: 11px; COLOR: #003366; FONT-FAMILY: Verdana}
		DIV {FONT-SIZE: 11px; COLOR: #003366; FONT-FAMILY: Verdana}
		P {FONT-SIZE: 11px; COLOR: #003366; FONT-FAMILY: Verdana}
		.mainMenu {FONT-WEIGHT: bold; FONT-SIZE: 14px; CURSOR: hand; COLOR: #000000}
		A.style2:link {PADDING-LEFT: 4px; COLOR: #0055bb; TEXT-DECORATION: none}
		A.style2:visited {PADDING-LEFT: 4px; COLOR: #0055bb; TEXT-DECORATION: none}
		A.style2:hover {PADDING-LEFT: 4px; COLOR: #ff0000; TEXT-DECORATION: none}
		A.active {PADDING-LEFT: 4px; COLOR: #ff0000; TEXT-DECORATION: none}
		.span {COLOR: #ff0000;font-family:"宋体";font-size: 15px;}
	</STYLE>

    <script type="text/javascript">
	    function logout()
		{
		   if(confirm("Exit right now??"))
		   {
			   window.parent.location="<%=path %>/login.jsp";
		   }
		}
	</script>
  </head>
  
  
  
<body onload="displayAll()">
 
<TABLE cellSpacing=0 cellPadding=0 width=210 align=center border=0>
  <TR>
    <TD width=15><IMG src="<%=path %>/images/new_005.jpg" border=0></TD>
    <TD align=middle width=180 background=<%=path %>/images/new_006.jpg height=35><B></B> </TD>
    <TD width=15><IMG src="<%=path %>/images/new_007.jpg" border=0></TD>
  </TR>
</TABLE>

<TABLE cellSpacing=0 cellPadding=0 width=210 align=center border=0>
  <TR>
    <TD width=15 background=<%=path %>/images/new_008.jpg></TD>
    <TD vAlign=top width=180 bgColor=#ffffff>
      <TABLE cellSpacing=0 cellPadding=3 width=165 align=center border=0>
        <!--  -->
        <TR><TD>Password change</TD></TR>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=2 width=155 align=center border=0>
              <TR><TD class=menuSmall><A class=style2 href="<%=path %>/admin/userinfo/userPw.jsp" target=dmMain>- Password change</A></TD></TR>
			</TABLE>
		  </TD>
		</TR>
        <TR><TD background=<%=path %>/images/new_027.jpg height=1></TD></TR><TR>  
        <!--  -->  
       
        
        <!--  -->
        <TR><TD>User information</TD></TR>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=2 width=155 align=center border=0>
              <TR><TD class=menuSmall><A class=style2 href="<%=path %>/user?type=userMana" target=dmMain>- Info management</A></TD></TR>
			</TABLE>
		  </TD>
		</TR>
        <TR><TD background=<%=path %>/images/new_027.jpg height=1></TD></TR><TR>  
        <!--  -->  
       
        <!--  -->
        <TR><TD>Category information</TD></TR>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=2 width=155 align=center border=0>
              <TR><TD class=menuSmall><A class=style2 href="<%=path %>/catelog?type=catelogMana" target=dmMain>- Info management</A></TD></TR>
              <TR><TD class=menuSmall><A class=style2 href="<%=path %>/admin/catelog/catelogAdd.jsp" target=dmMain>- Info add</A></TD></TR>
			</TABLE>
		  </TD>
		</TR>
        <TR><TD background=<%=path %>/images/new_027.jpg height=1></TD></TR><TR>  
        <!--  -->  
        
        
        <!--  -->
        <TR><TD>Product information</TD></TR>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=2 width=155 align=center border=0>
              <TR><TD class=menuSmall><A class=style2 href="<%=path %>/goods?type=goodsMana" target=dmMain>- Info management</A></TD></TR>
              <TR><TD class=menuSmall><A class=style2 href="<%=path %>/admin/goods/goodsAdd.jsp" target=dmMain>- Info add</A></TD></TR>
			</TABLE>
		  </TD>
		</TR>
        <TR><TD background=<%=path %>/images/new_027.jpg height=1></TD></TR><TR>  
        <!--  -->  
        
        
        <!--  -->
        <TR><TD>Order information</TD></TR>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=2 width=155 align=center border=0>
              <TR><TD class=menuSmall><A class=style2 href="<%=path %>/order?type=orderMana" target=dmMain>- Info management</A></TD></TR>
			</TABLE>
		  </TD>
		</TR>
        <TR><TD background=<%=path %>/images/new_027.jpg height=1></TD></TR><TR>  
        <!--  -->
        
        <!--  -->
        <TR><TD>Exit system</TD></TR>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=2 width=155 align=center border=0>
              <TR><TD class=menuSmall><A class=style2 onclick="logout()" target=dmMain>- Exit system</A></TD></TR>
			</TABLE>
		  </TD>
		</TR>
        <TR><TD background=<%=path %>/images/new_027.jpg height=1></TD></TR><TR>  
        <!--  -->  
        
      </TABLE>
    </TD>
    <TD width=15 background=<%=path %>/images/new_009.jpg></TD></TR>
</TABLE>
</body>
</html>
