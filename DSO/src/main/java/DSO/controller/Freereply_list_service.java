package DSO.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import DSO.model.Freereply_DAO;
import DSO.model.Freereply_VO;

@WebServlet("/Freereply_list_Service")
public class Freereply_list_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Freereply_DAO dao = new Freereply_DAO();
		HttpSession session = request.getSession();
		int num = Integer.parseInt(String.valueOf(session.getAttribute("postNum")));
		System.out.println(num);
		ArrayList<Freereply_VO> list = dao.freereplyList(num);
		Gson gson = new Gson();
		String result = gson.toJson(list);
		
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(result);
	}

}
