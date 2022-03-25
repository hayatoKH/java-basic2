package kr.co.ict.servlet.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.ict.boardDAO;

public class BoardDeleteService implements IBoardService{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String strbNum = request.getParameter("board_num");
		int bNum = Integer.parseInt(strbNum);
		
		// 아이디체킹 1. 폼에서 날려준 "writer"에 든 값이랑 세션 내 아이디 값 변수로 저장
		String writer = request.getParameter("writer");
		
		// 세션값과 비교하기위해 세션 생성
		HttpSession session = request.getSession();
		String sId = (String)session.getAttribute("session_id");
		
		// 아래 DAO생성 및 삭제로직을 if문을 이용해 감싸주시고, if문은 글쓴이가 현재 로그인한 사람이 맞는지 체크
		if(sId.equals(writer)) {
			// 1. dao 생성
			boardDAO dao = boardDAO.getInstance();
			// 2. 삭제로직 실행
			dao.deleteBoard(bNum);
		}
	}
}