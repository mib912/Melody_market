<%@ page contentType="text/html; charset=utf-8"%>

<%
	session.invalidate(); //세션에 있는 정보를 날림
	response.sendRedirect("addProduct.jsp");
%>