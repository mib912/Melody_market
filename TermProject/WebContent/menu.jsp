<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
    <link href='https://fonts.googleapis.com/css?family=Economica' rel='stylesheet' type='text/css'>

<style> /*article bg css*/
@media screen and (max-width: 767px) {
	body {
		width: auto;
	}
}

@FONT-FACE {
	font-family: '하얀분필';
	src: url("하얀분필.ttf");
}

body {
	background: url('BGsky.jpg');
	background-size: 100%;
	font-size: 15px;
	font-family: '하얀분필', sans-serif;
	color: #4A4A4A;
	text-align: center;
	background-attachment: fixed;
}

<
style>.content-wrapper {
	padding: 3rem 4rem;
	margin: 2rem;
}

/*메뉴를 고정시키고 왼쪽에 정렬*/
.side-menu {
	padding: 0;
	margin: 0;
	font-size: 0;
	position: fixed;
	left: -220px;
	top: 100px;
	opacity: .95;
	overflow: hidden;
	-webkit-transition: all .3s ease-in-out;
	transition: all .3s ease-in-out;
}

/*We need to hide the default input box*/
#menu-button {
	display: none;
}

#menu-button:checked+.menu-wrap .side-menu {
	left: 0px;
}

.menu-button--label {
	color: black;
	position: fixed;
	top: 50px;
	left: 10px;
	font-size: 3rem;
	text-align: center;
	line-height: 0;
	cursor: pointer;
	-webkit-transition: all 1s;
	transition: all 1s;
}

.menu-button--label:hover {
	-webkit-transform: rotateY(180deg);
	transform: rotateY(180deg);
	-webkit-transition: all 1s;
	transition: all 1s;
}

.side-menu--list li {
	font-size: 0;
	width: 250px;
}

.side-menu--list a {
	color: #fff;
	display: block;
	text-decoration: none;
	height: 2rem;
	line-height: 2rem;
	background: #333;
	padding-left: 1rem;
	width: 200px;
	font-size: 1.2rem;
}

.side-menu--list {
	list-style: none;
	padding-left: 0;
}

.side-menu--list li a.subset {
	font-size: 1.4rem;
	height: 2.2rem;
	line-height: 2.2rem;
	padding-left: .2rem;
	background: #222;
}

.side-menu--list li {
	height: 2.2rem;
	overflow: hidden;
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
}

.side-menu--list li:hover {
	height: 8.2rem;
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
	cursor: pointer;
	width: 250px;
}

.side-menu--list li a:not(:first-child):hover {
	cursor: pointer;
	background-color: #fff;
	color: #333;
	-webkit-transition: all .3s ease-in-out;
	transition: all .3s ease-in-out;
	-webkit-transform: translateX(10px);
	transform: translateX(10px);
}
</style>
<style>
	nav ul{ float:right; margin-top:10px; }
	nav li{ display:inline-block; padding:0px 10px; }
</style>

<nav class = "navbar navbar-expand">
	<div class = "container">
		<div class = "navbar-header">
			<a class = "navbar-brand" href="./main.jsp"><b>Home</b></a>
		</div>
		<div class = "navbar-header">
			<a class="navbar-brand" href="./products.jsp"><b>Products</b></a>
		</div>
		<div class = "navbar-header">
			<a class="navbar-brand" href="./cart.jsp"><b>Cart</b></a>
		</div>
		<div>
			<nav>
				<ul class="nav justify-content-end">
					<c:choose>
						<c:when test="${empty sessionId}">
							<li class="nav-item"><a class="nav-link"
								href="<c:url value="/loginMember.jsp"/>">로그인</a></li>
							<li class="nav-item"><a class="nav-link"
								href='<c:url value="/addMember.jsp"/>'>회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li style="padding-top: 7px; color: blue">[<%=sessionId%>님]
							</li>
							<li class="nav-item"><a class="nav-link"
								href="<c:url value="/logoutMember.jsp"/>">로그아웃</a></li>
							<li class="nav-item"><a class="nav-link"
								href="<c:url value="/updateMember.jsp"/>">회원 수정</a></li>
						</c:otherwise>
					</c:choose>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/BoardListAction.do?pageNum=1"/>">일반 신청</a></li>
					<li class="nav-item"><a class="nav-link"
						href="./addProduct.jsp">상품 등록</a></li>
					<li class="nav-item"><a class="nav-link"
						href="./editProduct.jsp?edit=update">상품 수정</a></li>
					<li class="nav-item"><a class="nav-link"
						href="./editProduct.jsp?edit=delete">상품 삭제</a></li>
				</ul>
			</nav>
		</div>
	</div>
</nav>
