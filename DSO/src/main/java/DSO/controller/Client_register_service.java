package DSO.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Client_register_DAO;
import DSO.model.Client_register_VO;

 // 의뢰인 회원가입
@WebServlet("/Client_register_service")
public class Client_register_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String c_id = request.getParameter("c_id");  
		String c_pw = request.getParameter("c_pw");
		String con_pw = request.getParameter("con_pw");
		String c_name = request.getParameter("c_name");
		String c_job = request.getParameter("c_job");
		String c_business = request.getParameter("c_business");
		String c_interest = request.getParameter("c_interest");
		
		if(c_id.equals("")) {
			out.print("<script>");
	        out.print("alert(`ID를 입력해주세요!`);");
	        out.print("history.back()");
	        out.print("</script>");
		} else if(c_pw.equals("")) {
			out.print("<script>");
	        out.print("alert(`비밀번호를 입력해주세요!`);");
	        out.print("history.back()");
	        out.print("</script>");
		} else if(!c_pw.equals(con_pw)) {
			out.print("<script>");
	        out.print("alert(`비밀번호를 확인해주세요!`);");
	        out.print("history.back()");
	        out.print("</script>");
		} else if(c_name.equals("")) {
			out.print("<script>");
	        out.print("alert(`이름을 입력해주세요!`);");
	        out.print("history.back()");
	        out.print("</script>");
		} else if(c_job.equals("선택안함")) {
			out.print("<script>");
	        out.print("alert(`직업을 선택해주세요!`);");
	        out.print("history.back()");
	        out.print("</script>");
		} else if(c_business.equals("선택해주세요")) {
			out.print("<script>");
	        out.print("alert(`비즈니스 분야를 선택해주세요!`);");
	        out.print("history.back()");
	        out.print("</script>");
		} else if(c_interest==null||c_interest.equals("선택해주세요")) {
			out.print("<script>");
	        out.print("alert(`관심 분야를 선택해주세요!`);");
	        out.print("history.back()");
	        out.print("</script>");
		} else {
			Client_register_VO vo = new Client_register_VO(c_id,c_pw,c_name,c_job,c_business,c_interest);
			Client_register_DAO dao = new Client_register_DAO();
			int cnt = dao.clientjoin(vo);
			
			if(cnt > 0) {
				RequestDispatcher rd =  request.getRequestDispatcher("JoinSuccess.jsp"); 
				rd.forward(request, response);
			}else {
				RequestDispatcher rd =  request.getRequestDispatcher("join_C.jsp"); 
				rd.forward(request, response);
			}
		}
		
	}

}
