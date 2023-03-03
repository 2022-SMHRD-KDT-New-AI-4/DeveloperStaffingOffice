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

public class Like_Insert_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String likeSeq = request.getParameter("likeSeq");
		
		Service_info_pr_DAO dao1 = new Service_info_pr_DAO();
		Service_info_pr_VO post = dao1.selectPost(likeSeq);
		
		Client_register_VO loginC = (Client_register_VO) session.getAttribute("loginC");
		Like_VO likepost = new Like_VO(loginC.getC_id(),post.getService_seq(),post.getService_title(),post.getService_categorynum1(),post.getService_categorynum2(),post.getService_price(),post.getService_desc(),post.getService_requisite(),post.getService_img(),post.getS_id(),post.getService_dt());
		
		Like_DAO dao2 = new Like_DAO();
		int cnt = dao2.insertLike(likepost);
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(cnt>0) {
			System.out.println("좋아요 성공");
			out.print("<script>");
	        out.print("location.reload();");
	        out.print("</script>");
		} else {
			System.out.println("좋아요 실패");
		}
		
	}

}
