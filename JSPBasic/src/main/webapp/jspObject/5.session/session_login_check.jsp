<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	// 한글데이터 깨지지않게 인코딩 설정 바꾸기
	request.setCharacterEncoding("utf-8");
	// form에서 보내준 데이터 받아오기
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nickName = request.getParameter("nickname");
	
	// 로그인 안 한 사용자가 오면 login페이지로 되돌려보내주세요.
	String loginCheck = (String)session.getAttribute("session_id");
	if(loginCheck != null){
		response.sendRedirect("session_welcom.jsp");
	}
	
	// id, pw가 null인 경우는 session_login.jsp로 리다이렉트 시키는 로직을 추가
	if(id == null){
		response.sendRedirect("session_login.jsp");
	}
	
	// 로그인 로직 작성
	if(id.equals("kkk1234") && pw.equals("1111")){
		session.setAttribute("session_id", id);
		session.setAttribute("session_pw", pw);
		session.setAttribute("session_nick", nickName);
		response.sendRedirect("session_welcom.jsp");
	} %>
	
	<!-- 로그인 성공하면 페이지가 안나오기때문에 그냥 써줘도 된다. -->
	<a href="session_login.jsp">로그인에 실패했습니다. 클릭 시 로그인창 이동.</a>
	 
</body>
</html>