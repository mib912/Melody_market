<%@page language="java" %>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*" %>
<%@page import="mvc.model.BoardDTO" %>
<%	
	String sessionId = (String)session.getAttribute("sessionId");
	List boardList = (List)request.getAttribute("boardlist");
	int total_record = ((Integer)request.getAttribute("total_record")).intValue();
	int pageNum =  ((Integer)request.getAttribute("pageNum")).intValue();
	int total_page =  ((Integer)request.getAttribute("total_page")).intValue();
%>
<html>
<head>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
<link rel="stylesheet"
	href="resources/font-awesome-4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/templatemo-style.css">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Board</title>
<script type="text/javascript">
	function checkForm() {
		if(${sessionId == null}){
			alert("로그인하세요.");
			return false;
		}
		location.href ="./BoardWriteForm.do?id=<%=sessionId%>"
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
          	          <h1 class="tm-section-intro-title">게시판</h1>
          	        </div>            
                </div>
            </section>    
         </div>
    </div>
	<div class="container">
	<form action="<c:url value="./BoardListAction.do"/>" method="post">
		<div>
			<div class="text-right">
				<span class="badge bedge-success">전체 <%=total_record%>건</span>
			</div>
		</div>
		<div style="padding-top:50px">
			<table class="table table-hover">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성일</th>
					<th>조회</th>
					<th>글쓴이</th>
				</tr>
				<%
					for(int i=0; i<boardList.size(); i++){
						BoardDTO notice = (BoardDTO) boardList.get(i);
				%>
				<tr>
					<td><%=notice.getNum()%></td>
					<td><a href="./BoardViewAction.do?num=<%=notice.getNum()%>&pageNum=<%=pageNum%>"><%=notice.getSubject()%></a></td>
					<td><%=notice.getRegist_day() %></td>
					<td><%=notice.getHit()%></td>
					<td><%=notice.getName()%></td>
				</tr>
				<% } %>
			</table>
		</div>
		<div align="center">
			<c:set var="pageNum" value="<%=pageNum%>"/>
			<forEach var="i" begin="1" end="<%=total_page %>">
				<a href="<c:url value="./BoardListAction.do?pageNum=${i}"/>">
				<c:choose>
					<c:when test="${pageNum==i}">
						<font color='4C5317'><b>[${pageNum}]</b></font>
					</c:when>
					<c:otherwise>
						<font color='4C5317'>[${pageNum}]</font>
					</c:otherwise>
				</c:choose>
				</a>
			</forEach>
		</div>
		<div align="left">
			<table>
				<tr>
					<td width="100%" align="left">&nbsp;&nbsp;
						<select name="items" class="txt">
							<option value="subject">제목에서</option>
							<option value="content">본문에서</option>
							<option value="name">글쓴이에서</option>
						</select><input type="text" name="text"/><input type="submit" id="btnAdd" class="btn btn-primary value="검색"/>
					</td>
					<td width="100%" align="right">
						<a href="writeForm.jsp" onclick="checkForm(); return false;" class="btn btn-primary">&laquo;글쓰기</a>
					</td>
				</tr>
			</table>
		</div>
	</form>
	<hr>
	</div>
	<jsp:include page="./footer.jsp"/>
</body>
</html>