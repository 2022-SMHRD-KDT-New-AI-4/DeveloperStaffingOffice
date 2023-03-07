package DSO.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Freereply_DAO;

public class ToSend extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		Freereply_DAO dao = new Freereply_DAO();
		
		int cnt = dao.gradeSend();
		
		if(cnt > 0) {
			out.print("<script>");
			out.print("alert(`상품 보내기 성공!`);");
			out.print("location.href='Chatting_C.jsp';");
			out.print("</script>");
		} else {
			out.print("<script>");
			out.print("alert(`상품 보내기 실패..`);");
			out.print("location.href='Chatting_C.jsp';");
			out.print("</script>");
		}
		
	}

}
