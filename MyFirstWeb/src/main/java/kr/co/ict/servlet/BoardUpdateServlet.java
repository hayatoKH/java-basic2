package kr.co.ict.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.boardDAO;

/**
 * Servlet implementation class BoardUpdateServlet
 */
@WebServlet("/BoardUpdate")
public class BoardUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. BoardDAO에 updateBoard() 메서드 생성해주세요.
		// 2. 1의 메서드에 들어갈 퀴리문은 아래와 같습니다.
		// UPDATE boardTbl SET title=?, content=?, mdate=now() WHERE board_num=?
		// 해당 쿼리문을 이용해서 1의 updateBoard() 메서드가 받아야하는 파라미터를 설정해주세요.
		
		// 3. 현재 doPost내부에서는 먼저 boardUpdate.jsp에서 form으로 전달된 데이터를 받아 변수로 저장합니다.
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int bNum = Integer.parseInt(request.getParameter("board_num"));
		
		// 4. 저장한 변수를 이용해 updateBoard() 메서드를 호출해줍니다.
		boardDAO dao =  boardDAO.getInstance();
		
		dao.updateBoard(title, content, bNum);
		// 5. boarddetail?board_num=글번호 로 리다이렉트해서 수정이 완료되면 수정글을 확인할수있게 만들어줍니다.
		response.sendRedirect("http://localhost:8181/MyFirstWeb/BoardDetail?board_num=" + bNum);
	}

}
