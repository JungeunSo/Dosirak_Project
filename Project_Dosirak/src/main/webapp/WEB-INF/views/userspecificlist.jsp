<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function(){
			$("#btnUpdate").click(function(){
				if(confirm("수정하시겠습니까?")){
				document.form1.action="${path}/userupdate";
				document.form1.submit();
				}
			});
		});
	$(document).ready(function(){
		$("#btnDelete").click(function(){
			if(confirm("삭제하시겠습니까?")){
			document.form1.action="${path}/userdelete";
			document.form1.submit();
			}
		});
	});
</script>
</head>
<body>
	<h2>회원정보 상세</h2>
	<form name="form1" method="post">
		<table border="1" width="400px">
			<tr>
				<td>아이디</td>
				<td><input name="user_id" value="${vo.user_id }" readonly="readonly"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input name="user_pw" value="${vo.user_pw }"></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input name="user_name" value="${vo.user_name }"></td>
			</tr>
			<tr>
				<td>성별 (M/F)</td>
				<td><input name="user_sex" value="${vo.user_sex }" readonly="readonly"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input name="user_email" value="${vo.user_email }"></td>
			</tr>
			<tr>
				<td>핸드폰 번호</td>
				<td><input name="user_phone" value="${vo.user_phone }"></td>
			</tr>
			<tr>
				<td>등록일</td>
				<td><fmt:formatDate value="${vo.user_regdate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			</tr>
			<tr>
				<td>관리자 권한</td>
				<td><input name="user_grade" value="${vo.user_grade }" readonly="readonly"></td>
			</tr>
			<tr>
			<td colspan="2" align="center">
				<input type="button" value="수정" id="btnUpdate">
				<input type="button" value="삭제" id="btnDelete">
			</td>
			</tr>
		</table>
	</form>
</body>
</html>