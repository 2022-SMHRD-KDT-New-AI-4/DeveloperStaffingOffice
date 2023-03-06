package DSO.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Freereply_DAO;
import DSO.model.Freereply_VO;

@WebServlet("/Reply_Update_service")
public class Reply_Update_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String loginC = request.getParameter("loginC");
		String review = request.getParameter("review");
//		int service_seq = Integer.parseInt(request.getParameter("service_seq"));
		
		System.out.println(loginC);
		System.out.println(review);
		
//		Freereply_VO vo = new Freereply_VO(loginC,review,service_seq);
		Freereply_VO vo = new Freereply_VO(loginC,review);

		Freereply_DAO dao = new Freereply_DAO(); 
		int cnt = dao.freereplyUpdate(vo);
		  
		if(cnt > 0) { 
			System.out.println("댓글 수정 성공!");
			response.sendRedirect("Freereply.jsp");
		}else {
			System.out.println("댓글 수정 실패.."); 
		}
	}

}
