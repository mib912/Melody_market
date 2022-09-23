<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="dbconn.jsp" %>
<%@ page import="java.util.Date"%>
<%
	request.setCharacterEncoding("utf-8");
	String id= request.getParameter("id");
	String password= request.getParameter("password");
	String name= request.getParameter("name");
	String gender= request.getParameter("gender");
	String year= request.getParameter("birthyy");
	String month= request.getParameterValues("birthmm")[0];
	String day= request.getParameter("birthdd");
	String birth = year + "/" + month + "/" + day;
	String mail1 = request.getParameter("mail1");
	String mail2 = request.getParameterValues("mail2")[0];
	String mail = mail1 +"@" +mail2;
	String phone = request.getParameter("phone");
	String address= request.getParameter("address");
	
	Date currentDatetime = new Date(System.currentTimeMillis());
	java.sql.Date sqlDate = new java.sql.Date(currentDatetime.getTime());
	java.sql.Timestamp timestamp = new java.sql.Timestamp(currentDatetime.getTime());
	
%>
<% 
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select * from member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();

	if (rs.next()) {
			sql = "update member set password=?, name=?, gender=?, birth=?, mail=?, phone=?, address=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, password);
			pstmt.setString(2, name);
			pstmt.setString(3, gender);
			pstmt.setString(4, birth);
			pstmt.setString(5, mail);
			pstmt.setString(6, phone);
			pstmt.setString(7, address);
			pstmt.setString(8, id);
			pstmt.executeUpdate();
	}
	
	if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	response.sendRedirect("resultMember.jsp?msg=0");
%>