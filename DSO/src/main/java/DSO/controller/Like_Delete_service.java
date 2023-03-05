package DSO.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DSO.model.Client_register_VO;
import DSO.model.Like_DAO;
import DSO.model.Like_VO;
import DSO.model.Specialist_register_VO;

public class Like_Delete_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		int dislikeSeq = Integer.parseInt(request.getParameter("dislikeSeq"));
		Like_DAO dao = new Like_DAO();
		Like_VO dislikepost = new Like_VO();
		
		if(session.getAttribute("loginS")==null) {
			Client_register_VO loginC = (Client_register_VO) session.getAttribute("loginC");
			dislikepost = new Like_VO(loginC.getC_id(),dislikeSeq);
		} else {
			Specialist_register_VO loginS = (Specialist_register_VO) session.getAttribute("loginS");
			dislikepost = new Like_VO(loginS.getS_id(),dislikeSeq);
		}
		
		int cnt = dao.deleteLike(dislikepost);
		
		
		/*
		 * if(cnt>0) { System.out.println("좋아요취소 성공"); out.print("<script>");
		 * out.print("location.href = 'CateBig.jsp';"); out.print("</script>"); } else {
		 * System.out.println("좋아요취소 실패"); }
		 */
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(cnt);
	}

}
