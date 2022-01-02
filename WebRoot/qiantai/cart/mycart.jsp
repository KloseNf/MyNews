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
	
	<script type='text/javascript' src='<%=path %>/dwr/interface/cartService.js'></script>
	<script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
	<script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
	
	<script type="text/javascript">
	        function delGoodsFromCart(goodsId)
	        {
	            document.getElementById("indicator1").style.display="block";
	            cartService.delGoodsFromCart(goodsId);
	        }
           
            function clearCart()
	        {
	            document.getElementById("indicator1").style.display="block";
	            cartService.clearCart(callback111);
	        }
           
            function modiNum(goodsId,quantity)
	        {
	            var r1= /^[0-9]*[1-9][0-9]*$/
	            var val=r1.test(quantity); //str为你要判断的字符 执行返回结果 true 或 false
	            if(val==false)
	            {
	                alert("Quantity must be number");
	            }
	            else
	            {
	                document.getElementById("indicator1").style.display="block";
	                cartService.modiNum(goodsId,quantity,callback111);
	            }
	        }
	        
	        function callback111(data)
	        {
	            document.getElementById("indicator1").style.display="none";
	            if(data=="no")
			    {
			        alert("there is not enough products");
			    }
			    if(data=="yes")
			    {
			        document.location.reload(true);
			    }
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
		     <h1>CART</h1>
		        <table width="98%" border="0" cellpadding="2" cellspacing="1" align="center" style="margin-top:8px">
					<tr align="center" bgcolor="#FAFAF1" height="22">
						  <td>Product name</td>
		                  <td>Product price</td>
		                  <td>Quantity</td>
		                  <td>Total price</td>
		                  <td>Operation</td>
			        </tr>	
					<c:forEach items="${sessionScope.cart.items}" var="item">
					<tr align='center' bgcolor="#FFFFFF" height="22">
						<td bgcolor="#FFFFFF" align="center">${item.value.goods.mingcheng}</td>
						<td bgcolor="#FFFFFF" align="center">RM ${item.value.goods.tejia}</td>
						<td bgcolor="#FFFFFF" align="center">${item.value.goods_quantity}</td>
						<td bgcolor="#FFFFFF" align="center">RM ${item.value.goods.tejia * item.value.goods_quantity}</td>
						<td bgcolor="#FFFFFF" align="center"><a href="#" onClick="delGoodsFromCart(${item.value.goods.id})"/>Delete</td>
					</tr>
					</c:forEach>
					<tr>
		                 <td colspan="5" class="Order_Total" align="right">
		                    <br/>
						     Total price: <span id="totalMoney">RM ${sessionScope.cart.totalPrice}</span>
						    &nbsp;&nbsp;&nbsp;&nbsp;
						    <img id="indicator1" src="<%=path %>/img/loading.gif" style="display:none"/>
						 </td>
		              </tr>	
				</table>
				<table>
      				   <tr height="7"><td></td></tr>
                   <tr>
                       <td width="80"></td>
                       <td width="120"><a href="#" onclick="clearCart()">Delete all</a></td>
                       <td width="100"><a href="<%=path %>/goods?type=goodsAll">Back</a></td>
                       <td><a href="<%=path %>/qiantai/order/orderQueren.jsp">Next</a></td>
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
