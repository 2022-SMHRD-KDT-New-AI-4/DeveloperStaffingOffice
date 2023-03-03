package DSO.controller;

// 조회수 증가 서블릿

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.viewsDAO;
import DSO.model.viewsVO;


public class viewsUp extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int views = Integer.parseInt(request.getParameter("views"));
		
		viewsVO vo = new viewsVO(views);
		viewsDAO dao = new viewsDAO();
		int cnt = dao.viewsUp(vo);
		
		if(cnt>0) {
			System.out.println("조회수 업뎃됨.");
		} else {
			System.out.println("안됨.");
		}
		
	}

}
