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
import DSO.model.Service_info_pr_DAO;
import DSO.model.Service_info_pr_VO;
import DSO.model.Specialist_register_VO;

public class Like_Insert_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String likeSeq = request.getParameter("likeSeq");
		Service_info_pr_DAO dao1 = new Service_info_pr_DAO();
		Like_DAO dao2 = new Like_DAO();
		Service_info_pr_VO post = dao1.selectPost(likeSeq);
		Like_VO likepost = new Like_VO();
		
		if(session.getAttribute("loginS")==null) {
			Client_register_VO loginC = (Client_register_VO) session.getAttribute("loginC");
			likepost = new Like_VO(loginC.getC_id(),post.getService_seq());
		} else {
			Specialist_register_VO loginS = (Specialist_register_VO) session.getAttribute("loginS");
			likepost = new Like_VO(loginS.getS_id(),post.getService_seq());
		}
		
		int cnt = dao2.insertLike(likepost);
		
		/*
		 * if(cnt>0) { System.out.println("좋아요 성공"); out.print("<script>");
		 * out.print("location.href = 'CateBig.jsp';"); out.print("</script>"); } else {
		 * System.out.println("좋아요 실패"); }
		 */
		
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(cnt);
		
		
	}

}
