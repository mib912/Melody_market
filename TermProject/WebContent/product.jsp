<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="resources/font-awesome-4.5.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">                      
    <link rel="stylesheet" href="resources/css/templatemo-style.css"> 
<title>상품 상세 정보</title>

<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>

</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container-fluid">         
    	<div class="row"> 
        	<section class="tm-section-intro">
        	    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
    	            <div class="tm-wrapper-center">
          	          <h1 class="tm-section-intro-title">상품 정보</h1>
          	        </div>            
                </div>
            </section>    
         </div>
    </div>
	
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
	%>
	
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/img/<%=product.getFilename()%>" style="width: 100%" />
			</div>
			<div class="col-md-6">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %>
				<p> <b>상품 코드 : </b><span class="badge badge-danger">
					<%=product.getProductId() %></span>
					<p> <b>아티스트</b> : <%=product.getArtist() %></p>
					<p> <b>분류</b> : <%=product.getCategory() %></p>
					<p> <b>파트</b> : <%=product.getPart() %>
					<p> <b>조</b> : <%=product.getKey() %>
					<h4><%=product.getUnitPrice() %>원</h4>
					<p> <form name="addForm" action="./addCart.jsp?id=<%=product.getProductId() %>" method="post">
						<a href="#" class="btn btn-info" onclick="addToCart()"> 상품 주문 &raquo;</a>
						<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
						<a href="./products.jsp" class="btn btn-secondary"> 상품 목록&raquo;</a>
					</form> 
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>