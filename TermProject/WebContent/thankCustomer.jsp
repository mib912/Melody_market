<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="resources/font-awesome-4.5.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">                      
    <link rel="stylesheet" href="resources/css/templatemo-style.css"> 
<title>주문 완료</title>
</head>
<body>
	<%
		String shipping_cartId ="";
		String shipping_name ="";
		String shipping_shippingDate ="";
		String shipping_country ="";
		String shipping_zipCode ="";
		String shipping_addressName ="";
		
		Cookie[] cookies = request.getCookies();
		
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if (n.equals("Shipping_cartId"))
					shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				if (n.equals("Shipping_shippingDate"))
					shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			}
		}
	%>
	<jsp:include page="menu.jsp" />
	<div class="container-fluid">         
    	<div class="row"> 
        	<section class="tm-section-intro">
        	    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
    	            <div class="tm-wrapper-center">
          	          <h1 class="tm-section-intro-title">주문 완료</h1>
          	        </div>            
                </div>
            </section>    
         </div>
    </div>
	<div class="container">
		<h2 class="alert alert-warning">주문해주셔서 감사합니다:></h2>
		<p> 주문은 <%	out.println(shipping_shippingDate); %>에 발송될 예정입니다!
		<p> 주문번호 : <% out.println(shipping_cartId); %>
	</div>
	<div class="container">
		<p> <a href="./products.jsp" class="btn btn-secondary">&laquo; 상품 목록</a>
	</div>
</body>
</html>
<%
	session.invalidate();
	
	for (int i = 0; i < cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if (n.equals("Shipping_cartId"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_name"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_shippingDate"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_country"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_zipCode"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_addressName"))
			thisCookie.setMaxAge(0);
			
		response.addCookie(thisCookie);
	}
%>