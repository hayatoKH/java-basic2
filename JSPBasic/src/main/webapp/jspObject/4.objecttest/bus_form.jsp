<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>버스 요금표</h1>
	<img src="repository/요금기.jpg" width="700px" height="500px">
	<hr>
	<form action="bus_check.jsp" method="get">
		나이 : <input type="number" name="age"><br/>
		<input type="submit" value="확인"/><br/>
	</form>
</body>
</html>