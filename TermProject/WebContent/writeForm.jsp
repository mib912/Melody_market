<%@page language="java" %>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%	
	String name = (String)session.getAttribute("name");
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
<% String sessionId = (String)session.getAttribute("sessionId"); %>
<sql:setDataSource var="dataSource" url="jdbc:mysql://localhost:3306/melodymarketdb?characterEncoding=euckr&serverTimezone=UTC"
	 driver="com.mysql.jdbc.Driver" user="root" password="1234"/>
	<sql:query dataSource="${dataSource}" var="resultSet">
		Select * from member where id=?;
		<sql:param value="<%=sessionId%>"/>
	</sql:query>     
<title>Board</title>
<script type="text/javascript">
	function checkForm(){
		if(!document.newWrite.name.value){
			alert("성명을 입력하세요.")
			return false;
		}
		if(!document.newWrite.subject.value){
			alert("제목을 입력하세요.")
			return false;
		}
		if(!document.newWrite.content.value){
			alert("내용을 입력하세요.")
			return false;
		}
	}
</script>
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
		<form name="newWrite" action="./BoardWriteAction.do" class="form-horizontal"
		 method="post" onsubmit="return checkForm()">
		 <input name="id" type="hidden" class="form-control" value="${sessionId}">
		 <div class="form-group row">
		 <c:forEach var="row" items="${resultSet.rows}">
		 	<label class="col-sm-2 control-label">아이디</label>
		 	<div class="col-sm-3">
		 		<input name="name" type="text" class="form-control" value="<c:out value='${row.id}'/>" placeholder="id" readonly />
		 	</div>
		 </div>
		</c:forEach>	 
		 <div class="form-group row">
		 	<label class="col-sm-2 control-label">제목</label>
		 	<div class="col-sm-5">
		 		<input name="subject" type="text" class="form-control" placeholder="subject">
		 	</div>
		 </div>
		 
		 <div class="form-group row">
		 	<label class="col-sm-2 control-label">내용</label>
		 	<div class="col-sm-8">
		 		<textarea name="content" cols="50" rows="5" class="form-control" placeholder="content"></textarea>
		 	</div>
		 </div>
		 
		 <div class="form-group row">
		 	<div class="col-sm-offset-2 col-sm-10">
		 		<input type="submit" class="btn btn-primary" value="등록">
		 		<input type="reset" class="btn btn-primary" value="취소">
		 	</div>
		 </div>
		 </form>
	<hr>
	</div>
	<jsp:include page="./footer.jsp"/>
</body>
</html>
