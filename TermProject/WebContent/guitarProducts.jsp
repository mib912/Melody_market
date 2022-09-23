<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
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
<title>상품 목록</title>
<style>
	.txt_post {
		overflow: hidden;
    	text-overflow: ellipsis;
    	display: -webkit-box;
    	-webkit-line-clamp: 2; /* 라인수 */
    	-webkit-box-orient: vertical;
    	word-wrap:break-word; 
    	line-height: 1.2em;
    	height: 2.4em;
 	}
 	
 	.image {
 		float: left;
 		width: 30%;
 	}
 	.post {
 		display: inline-block;
 		width: 50%;
 	}
 	.button {
 		float: right;
 		width: 30%;
 	}
</style>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container-fluid">         
    	<div class="row"> 
        	<section class="tm-section-intro">
        	    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
    	            <div class="tm-wrapper-center">
          	          <h1 class="tm-section-intro-title">상품 목록</h1>
          	        </div>            
                </div>
            </section>    
         </div>
    </div>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp" %>
			<% 
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from product where p_category='기타'";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
			%>
			<div class="col">
				<img src="./resources/img/<%=rs.getString("p_fileName") %>" style="width: 25%" />
				<h3>[<%=rs.getString("p_category") %>]</h3>
				<h3><%=rs.getString("p_name") %></h3>
				<p class="txt_post"><%=rs.getString("p_description") %></p>
				<p><%=rs.getString("p_artist") %>|<%=rs.getString("p_unitPrice") %>원</p>
				<p>
					<a href="./product.jsp?id=<%=rs.getString("p_id") %>"
						class="btn btn-primary" role="button"> 상세 정보 &raquo;</a>
				</p>
			</div>
			<%
				}
			%>
	<% 
		if (rs != null)	
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	%>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>