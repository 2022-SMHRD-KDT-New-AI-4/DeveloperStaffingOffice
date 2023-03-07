package DSO.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Freereply_DAO;
import DSO.model.Freereply_VO;

@WebServlet("/Freeply_service")
public class Freereply_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String loginC = request.getParameter("loginC");
		String review = request.getParameter("review");
		int rate =Integer.parseInt(request.getParameter("rate"));
		int service_seq = Integer.parseInt(request.getParameter("service_seq"));
		
		Freereply_VO vo = new Freereply_VO(loginC,review,rate,service_seq);
		Freereply_VO vo2 = new Freereply_VO(loginC,service_seq);
		
		Freereply_DAO dao = new Freereply_DAO();
		int cnt = dao.freereplyinsert(vo);
		
		
		if(cnt > 0) {
			int cnt2 = dao.buyListUpdate(vo2);
			if(cnt2 > 0) {
				out.print("<script>");
				out.print("alert(`리뷰 등록 성공!`);");
				out.print("location.href='Mypage_C.jsp'");
				out.print("</script>");
			} else {
				out.print("<script>");
				out.print("alert(`리뷰 등록 실패...`);");
				out.print("location.href='Mypage_C.jsp'");
				out.print("</script>");
			}
		}else {
			out.print("<script>");
			out.print("alert(`리뷰 등록 실패...`);");
			out.print("location.href='Mypage_C.jsp'");
			out.print("</script>");
		}
	}

}
