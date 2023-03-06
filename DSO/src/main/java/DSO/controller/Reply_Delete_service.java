package DSO.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Freereply_DAO;

@WebServlet("/Reply_Delete_service")
public class Reply_Delete_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String loginC = request.getParameter("loginC");
		
		System.out.println(loginC);
		
		Freereply_DAO dao = new Freereply_DAO();
		int cnt = dao.freereplyDelete(loginC);
		
		if(cnt > 0 ) {
			System.out.println("댓글 삭제 성공!");
			response.sendRedirect("Freereply.jsp");
		}else {
			System.out.println("댓글 삭제 실패...");
		}
	}

}
