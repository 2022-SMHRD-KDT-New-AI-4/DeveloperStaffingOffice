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
import DSO.model.Client_register_DAO;
import DSO.model.Client_register_VO;
import DSO.model.Like_DAO;
import DSO.model.Like_VO;
import DSO.model.Service_info_pr_DAO;
import DSO.model.Specialist_register_DAO;
import DSO.model.Specialist_register_VO;

public class Forget_password_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String c_id = request.getParameter("c_id");  
		String c_name = request.getParameter("c_name");
		
		Client_register_VO vo = new Client_register_VO(c_id,c_name);
		Client_register_DAO dao = new Client_register_DAO();
		Client_register_VO lvo = dao.clientForget(vo);
		
		if (lvo != null) { // 로그인 성공
			System.out.println("비밀번호 찾기 성공");
			out.print("<script>");
	        out.print("alert(`"+lvo.getC_name()+"의 비밀번호는 "+lvo.getC_pw()+" 입니다."+"`);");
	        out.print("location.href='Login_C.jsp';");
	        out.print("</script>");
			
		}else {
			System.out.println("비밀번호 찾기 실패");
			out.print("<script>");
	        out.print("alert(`일치하는 정보가 없습니다`);");
	        out.print("location.href='forgetPassword_C.jsp';");
	        out.print("</script>");
		}
		
	}

}
