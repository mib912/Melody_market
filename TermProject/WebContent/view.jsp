<%@page language="java" %>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="mvc.model.BoardDTO" %>
<%	
	BoardDTO notice = (BoardDTO) request.getAttribute("board");
	int num =((Integer)request.getAttribute("num")).intValue();
	int nowPage =((Integer)request.getAttribute("page")).intValue();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="resources/font-awesome-4.5.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">                      
    <link rel="stylesheet" href="resources/css/templatemo-style.css">    
<title>Board</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container-fluid">         
    	<div class="row"> 
        	<section class="tm-section-intro">
        	    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
    	            <div class="tm-wrapper-center">
          	          <h1 class="tm-section-intro-title">게시판</h1>
          	        </div>            
                </div>
            </section>    
         </div>
    </div>
	<div class="container">
	<form name="newUpdate" action="./BoardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowPage%>" 
		 method="post" class="form-horizontal">
		 <div class="form-group row">
		 	<label class="col-sm-2 control-label">아이디</label>
		 	<div class="col-sm-3">
		 		<input name="name" class="form-control" value="<%=notice.getId()%>" readonly />
		 	</div>
		 </div>
		 
		 <div class="form-group row">
		 	<label class="col-sm-2 control-label">제목</label>
		 	<div class="col-sm-5">
		 		<input name="subject" class="form-control" value="<%=notice.getSubject()%>">
		 	</div>
		 </div>
		 
		 <div class="form-group row">
		 	<label class="col-sm-2 control-label">내용</label>
		 	<div class="col-sm-8" style="word-break: break-all;">
		 		<textarea name="content" cols="50" rows="5" class="form-control">
		 		<%=notice.getContent()%>
		 		</textarea>
		 	</div>
		 </div>
		 
		 <div class="form-group row">
		 	<div class="col-sm-offset-2 col-sm-10">
		 		<c:set var="userId" value="<%=notice.getId() %>"/>
		 		<c:if test="${sessionId==userId}">
		 			<p><a href="./BoardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowPage%>" 
		 				class="btn btn-danger">삭제</a>
		 		</c:if>
		 		<a href="./BoardListAction.do?pageNum=<%=nowPage%>" class="btn btn-primary">목록</a>
		 	</div>
		 </div>
	</form>
	<hr>
	</div>
	<jsp:include page="./footer.jsp"/>
</body>
</html>