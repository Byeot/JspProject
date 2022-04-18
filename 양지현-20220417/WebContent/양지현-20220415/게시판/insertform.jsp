
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h2>글쓰기</h2>
	<form name="write" action="insertpro.jsp" method="post">
		
	   작성자:<input type="text" name="writer"> <br>
		제목 : <input type="text" name="title"> <br>
		내용 : <input type="password" name="content"> <br> 
		<input type="submit" value="완료">
	</form>
</body>
</html>