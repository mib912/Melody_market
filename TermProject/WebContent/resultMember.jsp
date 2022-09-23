<%@page language="java" %>
<%@page contentType="text/html; charset=utf-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="resources/font-awesome-4.5.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">                      
    <link rel="stylesheet" href="resources/css/templatemo-style.css">
<title>회원 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="container-fluid">         
    	<div class="row"> 
        	<section class="tm-section-intro">
        	    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
    	            <div class="tm-wrapper-center">
          	          <h1 class="tm-section-intro-title">회원 정보</h1>
          	        </div>            
                </div>
            </section>    
         </div>
    </div>
	<div class="container" align="center">
		<%
			String msg = request.getParameter("msg");
		
		if(msg != null){
			if(msg.equals("0")) out.println("<h2 class='alert alert-danger'>회원정보가 수정되었습니다.<h2>");
			else if(msg.equals("1")) out.println("<h2 class='alert alert-danger'>회원가입을 축하드립니다.<h2>");
			else if(msg.equals("2")) {
				String loginId = (String)session.getAttribute("sessionId");
				out.println("<h2 class='alert alert-danger'>"+loginId + "님 환영합니다.</h2>");
			}
		}else{
			out.println("<h2 class='alert alert-danger'>회원정보가 삭제되었습니다.<h2>");
		}
		%>
	</div>
</body>
</html>