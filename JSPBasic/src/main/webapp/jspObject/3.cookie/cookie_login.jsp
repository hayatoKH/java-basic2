<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// auto login 관련해서 발급된 쿠키가 있는지 체크해서 쿠키가 있다면
	// 로그인 창을 보여주는 대신 바로 welcome페이지로 보내주세요.(cookie_check.jsp 참조)
	Cookie[] cookies = request.getCookies();
	String autoLogin = null;
	
	if(cookies != null){	
		for(Cookie cookie : cookies){
			autoLogin = cookie.getName();
			System.out.println(autoLogin);
			// null값이 들어왔을때 바로 equals를 쓰면 500에러 발생
			// short circuit을 이용해서 null이 아닌 경우만 equals를 실행하도록 조건식 작성
			if(autoLogin.equals("auto")){
					// cookie_welcome 페이지로 리다이렉트
					response.sendRedirect("cookie_welcom.jsp");
			}
		}
	}
	// 생성된 user_id쿠키를 검색해서 쿠키가 존재한다면
	// 로그인 창 대신에 브라우저에 "이미 로그인한 사용자입니다"
	// 를 출력해주시고, user_id가 없을 떄는 로그인 입력창이 등장하도록
	// if~else문을 활용해주세요.

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 로그인창은 form으로 구성해주시면 됩니다.
input text 1개(유저 아이디 입력,) input password 1개(비밀번호 입력)
input checkbox 1개(자동로그인)
목적지는 cookie_login_ok.jsp 으로 해주세요. -->>
	<form action="cookie_login_ok.jsp" method="post">
		아이디 : <input type="text" name="user_id"><br>
		비밀번호 : <input type="password" name="user_pw"><br>
		자동로그인 <input type="checkbox" name="auto" value="checked"><br>
		<input type="submit" value="로그인">
		<input type="reset" value="초기화">
	</form>
</body>
</html>