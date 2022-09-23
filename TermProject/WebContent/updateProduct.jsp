<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>    
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="resources/font-awesome-4.5.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">                      
    <link rel="stylesheet" href="resources/css/templatemo-style.css"> 
<title>상품 수정</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container-fluid">         
    	<div class="row"> 
        	<section class="tm-section-intro">
        	    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
    	            <div class="tm-wrapper-center">
          	          <h1 class="tm-section-intro-title">상품 편집</h1>
          	        </div>            
                </div>
            </section>    
         </div>
    </div>
    <%@ include file="dbconn.jsp" %>
    <%
    	String productId = request.getParameter("id");
    
   		PreparedStatement pstmt = null;
    	ResultSet rs = null;
    
   		String sql = "select * from product where p_id = ?";
   	 	pstmt = conn.prepareStatement(sql);
    	pstmt.setString(1, productId);
    	rs = pstmt.executeQuery();
    	if (rs.next()) {
    %>
    <div class="container">
    	<div class="row">
    		<div class="col-md-5">
    			<img src="./resources/img/<%=rs.getString("p_fileName") %>" alt="image" style="width: 75%">
    		</div>
    		<div class="col-md-7">
    			<form name="newProduct" action="./processUpdateProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
    				<div class="form-group row">
    					<label class="col-sm-2">상품코드</label>
    					<div class="col-sm-3">
    						<input type="text" id="productId" name="productId" class="form-control"
    						value='<%=rs.getString("p_id") %>'>
    					</div>
    				</div>
    				<div class="form-group row">
    					<label class="col-sm-2">상품명</label>
    					<div class="col-sm-3">
    						<input type="text" id="name" name="name" class="form-control"
    						value="<%=rs.getString("p_name") %>">
    					</div>
    				</div>
    				<div class="form-group row">
    					<label class="col-sm-2">가격</label>
    					<div class="col-sm-3">
    						<input type="text" id="unitPrice" name="unitPrice" class="form-control"
    						value="<%=rs.getString("p_unitPrice") %>">
    					</div>
    				</div>
    				<div class="form-group row">
    					<label class="col-sm-2">상세설명</label>
    					<div class="col-sm-5">
    						<textarea name="description" cols="50" rows="2"
    						class="form-control"><%=rs.getString("p_description") %></textarea>
    					</div>
    				</div>
    				<div class="form-group row">
    					<label class="col-sm-2">아티스트</label>
    					<div class="col-sm-3">
    						<input type="text" id="artist" name="artist" class="form-control"
    						value="<%=rs.getString("p_artist") %>">
    					</div>
    				</div>
    				<div class="form-group row">
    					<label class="col-sm-2">분류</label>
    					<div class="col-sm-3">
    						<input type="text" id="category" name="category" class="form-control"
    						value="<%=rs.getString("p_category") %>">
    					</div>
    				</div>	
    				<div class="form-group row">
    					<label class="col-sm-2">키</label>
    					<div class="col-sm-3">
    						<input type="text" id="key" name="key" class="form-control"
    						value="<%=rs.getString("p_key") %>">
    					</div>
    				</div>
    				<div class="form-group row">
    					<label class="col-sm-2">이미지</label>
    					<div class="col-sm-7">
    						<input type="file" name="productImage" class="form-control">
    					</div>
    				</div>
    				<div class="form-group row">
    					<div class="col-sm-offset-2 col-sm-10 ">
    						<input type="submit" class="btn btn-primary" value="등록">
    					</div>
    				</div>
    			</form>
    		</div>
    	</div>
    </div>
    <%
    	}
    	if (rs != null)
    		rs.close();
    	if (pstmt != null)
    		pstmt.close();
    	if (conn != null)
    		conn.close();
    %>
</body>
</html>