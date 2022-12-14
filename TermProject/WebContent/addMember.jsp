<%@page language="java" %>
<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Melody Market</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
<link rel="stylesheet"
	href="resources/font-awesome-4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/templatemo-style.css">
<script type="text/javascript">
	function checkForm(){
		if(!document.newMember.id.value){
			alert("아이디를 입력하세요.");
			return false;
		}
		if(!document.newMember.password.value){
			alert("비밀번호를 입력하세요.");
			return false;
		}
		if(document.newMember.password.value != document.newMember.password_confirm.value){
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>
<title>회원가입</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="container-fluid">         
    	<div class="row"> 
        	<section class="tm-section-intro">
        	    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
    	            <div class="tm-wrapper-center">
          	          <h1 class="tm-section-intro-title">회원 가입</h1>
          	        </div>            
                </div>
            </section>    
         </div>
    </div>
	<div class="container">
		<form name="newMember" class="form-horizontal" action="processAddMember.jsp" method="post"
		onsubmit="return checkForm()">
		<div class="form-group row">
			<label class="col-sm-2">아이디</label>
			<div class="col-sm-3">
				<input name="id" type="text" class="form-control" placeholder="id"/>
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">비밀번호</label>
			<div class="col-sm-3">
				<input name="password" type="password" class="form-control" placeholder="password"/>
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">비밀번호 확인</label>
			<div class="col-sm-3">
				<input name="password_confirm" type="password" class="form-control" placeholder="password_confirm"/>
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">성명</label>
			<div class="col-sm-2">
				<input name="name" type="text" class="form-control" placeholder="name"/>
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">성별</label>
			<div class="col-sm-1">
				<input name="gender" type="radio" value="남" />남
				<input name="gender" type="radio" value="여" />여
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">생일</label>
			<div class="col-sm-3">
				<input name="birthyy" type="text" maxlength="4" placeholder="년 (4자)" size="8"/>
				<select name="birthmm">
					<option value="">월</option>
					<option value="01">1</option>
					<option value="02">2</option>
					<option value="03">3</option>
					<option value="04">4</option>
					<option value="05">5</option>
					<option value="06">6</option>
					<option value="07">7</option>
					<option value="08">8</option>
					<option value="09">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select> <input name="birthdd" type="text" maxlength="2" placeholder="일" size="4"/>
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">이메일</label>
			<div class="col-sm-4">
				<input name="mail1" type="text" maxlength="50"/>@
				<select name="mail2">
					<option>naver.com</option>
					<option>daum.net</option>
					<option>gmail.com</option>
				</select>
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">전화번호</label>
			<div class="col-sm-3">
				<input name="phone" type="text" class="form-control" placeholder="phone"/>
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2">주소</label>
			<div class="col-sm-5">
				<input name="address" type="text" class="form-control" placeholder="address"/>
			</div>
		</div>
		
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" class="btn btn-primary" value="등록"/>
				<input type="reset" class="btn btn-primary" value="취소" onclick="reset()"/>
			</div>
		</div>
		
		</form>
	</div>
</body>
</html>