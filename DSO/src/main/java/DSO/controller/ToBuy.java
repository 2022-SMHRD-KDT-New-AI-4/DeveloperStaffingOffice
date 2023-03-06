package DSO.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DSO.model.Service_info_pr_VO;

public class ToBuy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		Service_info_pr_VO post = (Service_info_pr_VO)session.getAttribute("post");
		
		Service_info_pr_VO chatPost = new Service_info_pr_VO(post.getService_seq(),post.getService_title(),post.getS_id());
		
		
	}

}
