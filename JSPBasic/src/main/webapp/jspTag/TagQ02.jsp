<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	public int total = 0;
	
	%>

	<%
	int rN = (int)(Math.random() * 9) + 1;
	out.println("<h1>랜덤구구단("+ rN + ")</h1>"+"<br/>");
	out.println("이번에 나온 구구단은"+ rN + "단입니다." + "<br/>");
	for(int j=1; j<10; j++){
		out.println(rN + " * " + j + " = " + rN * j +"<br/>");
	}
	out.println("<hr/>");
	out.println("페이지 누적 요청수 : " + ++total + "<br/>");
	out.println("매 10번째 방문자에게는 기프티콘을 드립니다." + "<br/>");
	if(total % 10 == 0){
		out.println("당첨되셨습니다!");
	} else {
		out.println("진행중입니다.");
	}
	%> 
	
	
	
	
	
</body>
</html>