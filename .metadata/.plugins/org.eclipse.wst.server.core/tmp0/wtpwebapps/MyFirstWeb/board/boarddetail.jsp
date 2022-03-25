<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${board.board_num }번 글 상세페이지</h1>
	글제목 : <input type="text" value="${board.title }" readonly>
	글쓴이 : <input type="text" value="${board.writer }" readonly>
	조회수 : ${board.hit }<br>
	쓴날짜 : <input type="text" value="${board.bDate }" readonly>
	마지막 수정날짜 : ${board.mDate }<br>
	본문 : <textarea rows="15" cols="50" readonly>${board.content }</textarea><br>
	
	<a href="http://localhost:8181/MyFirstWeb/boardList.do">목록으로</a>
	
			<!-- sId는 Service에서 세션을 생성해서 보내줘함, 그렇지않으면 sessionScope.session_id를 쓰면 됌-->
	<c:if test="${sId eq board.writer}">
		<form action="http://localhost:8181/MyFirstWeb/boardDelete.do" method="post">
			<!-- 내부를 조금 고쳐서 글 번호를 넘기도록 만들어 저한테 보내주세요
			해당 서블릿에서 글 번호를 콘솔에 찍게도 만들어주세요.-->
			<input type="hidden" name="writer" value="${board.writer }">
			<input type="hidden" name="board_num" value="${board.board_num }">
			<input type="submit" value="삭제">
		</form>
		<form action="http://localhost:8181/MyFirstWeb/boardUpdateForm.do" method="post">
			<input type="hidden" name="writer" value="${board.writer }">
			<input type="hidden" name="board_num" value="${board.board_num }">
			<input type="submit" value="수정">
		</form>
	</c:if>
</body>
</html>