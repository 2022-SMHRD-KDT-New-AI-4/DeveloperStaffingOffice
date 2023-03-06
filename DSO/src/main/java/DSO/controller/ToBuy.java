package DSO.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DSO.model.ChatClient;
import DSO.model.Client_register_VO;
import DSO.model.Service_info_pr_DAO;
import DSO.model.Service_info_pr_VO;

public class ToBuy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		Client_register_VO loginC = (Client_register_VO)session.getAttribute("loginC");
		
		Service_info_pr_VO post = (Service_info_pr_VO)session.getAttribute("post");
		
		ChatClient chatPost = new ChatClient(post.getService_seq(),post.getService_title(),loginC.getC_id(),post.getS_id());
		
		Service_info_pr_DAO dao = new Service_info_pr_DAO();
		
		int cnt = dao.insertChatPost(chatPost);
		
		
		if(cnt>0) {
			System.out.println("구매목록 추가 성공");
			String value = loginC.getC_id();
			ArrayList<ChatClient> buyList = dao.buyListLoad(value);
			session.setAttribute("buyList", buyList);
			response.sendRedirect("Chatting_C.jsp");
		} else {
			System.out.println("구매목록 추가 실패");
			response.sendRedirect("Chatting_C.jsp");
		}
	}

}
