package DSO.controller;

import java.io.IOException;
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

		String loginM = request.getParameter("loginM");
		String review = request.getParameter("review");
		int rate =Integer.parseInt(request.getParameter("rate"));
				
		Freereply_VO vo = new Freereply_VO(loginM,review,rate);
		System.out.println(vo);
		
		//Freereply_DAO dao = new Freereply_DAO();
		//int cnt = dao.freereplyinsert(vo);
		
		int cnt=1;
		
		if(cnt > 0) {
			System.out.println("댓글 등록성공!");
		}else {
			System.out.println("댓글 등록실패...");
		}
	}

}
