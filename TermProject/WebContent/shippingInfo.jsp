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
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>배송 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container-fluid">         
    	<div class="row"> 
        	<section class="tm-section-intro">
        	    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
    	            <div class="tm-wrapper-center">
          	          <h1 class="tm-section-intro-title">배송 정보</h1>
          	        </div>            
                </div>
            </section>    
         </div>
    </div>
	<div class="container">
		<form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId") %>" />
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">배송일</label>
				<div class="col-sm-3">
					<input name="shippingDate" type="text" id="datepicker" class="form-control" />(mm/dd/yyyy)
				</div>
			</div>
			<script>
				$(function() {
					$("#datepicker").datepicker();
				});
			</script>
			<div class="form-group row">
				<label class="col-sm-2">국가명</label>
				<div class="col-sm-3">
					<input name="country" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">우편번호</label>
				<div class="col-sm-3">
					<input name="zipCode" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-5">
					<input name="addressName" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<a href="./cart.jsp?cartId=<%=request.getParameter("cartId") %>" class="btn btn-secondary" role="button">이전</a>
					<input type="submit" class="btn btn-primary" value="등록" />
					<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button">취소</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>