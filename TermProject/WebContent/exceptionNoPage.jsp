<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="resources/font-awesome-4.5.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">                      
    <link rel="stylesheet" href="resources/css/templatemo-style.css">  
<title>페이지 오류</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container-fluid">         
    	<div class="row"> 
        	<section class="tm-section-intro">
        	    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
    	            <div class="tm-wrapper-center">
          	          <h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
          	        </div>            
                </div>
            </section>    
         </div>
    </div>
	<div class="container">
		<p><%=request.getRequestURL() %></p>
		<p> <a href="products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
	</div>
</body>
</html>