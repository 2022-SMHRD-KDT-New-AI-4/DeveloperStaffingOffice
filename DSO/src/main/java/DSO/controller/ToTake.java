package DSO.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DSO.model.Client_register_VO;
import DSO.model.Freereply_DAO;
import DSO.model.Freereply_VO;

public class ToTake extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		Client_register_VO loginC = (Client_register_VO)session.getAttribute("loginC");
		int seq = Integer.parseInt(request.getParameter("seq"));
		Freereply_VO vo = new Freereply_VO(loginC.getC_id(),seq);
		Freereply_DAO dao = new Freereply_DAO();
		
		int cnt = dao.takeProduct(vo);
		
		if(cnt > 0) {
			out.print("<script>");
			out.print("alert(`상품 수령 성공!`);");
			out.print("location.href='Mypage_C.jsp';");
			out.print("</script>");
		} else {
			out.print("<script>");
			out.print("alert(`상품 수령 실패...`);");
			out.print("location.href='Mypage_C.jsp';");
			out.print("</script>");
		}
		
	}

}
