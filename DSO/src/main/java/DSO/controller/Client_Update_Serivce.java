package DSO.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DSO.model.Client_register_DAO;
import DSO.model.Client_register_VO;
import DSO.model.Specialist_register_DAO;
import DSO.model.Specialist_register_VO;

 // 의뢰인 정보 수정
@WebServlet("/Client_Update_Serivce")
public class Client_Update_Serivce extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String pw = request.getParameter("pw");
		String con_pw = request.getParameter("con_pw");
		String name = request.getParameter("name");
		String job = request.getParameter("job");
		String business = request.getParameter("business");
		String interest = request.getParameter("interest");
		
		if(pw.equals("")) {
			out.print("<script>");
	        out.print("alert(`비밀번호를 확인해주세요!`);");
	        out.print("history.back()");
	        out.print("</script>");
		} else if(!pw.equals(con_pw)) {
			out.print("<script>");
	        out.print("alert(`비밀번호를 확인해주세요!`);");
	        out.print("history.back()");
	        out.print("</script>");
		} else if(name.equals("")) {
			out.print("<script>");
	        out.print("alert(`이름을 입력해주세요!`);");
	        out.print("history.back()");
	        out.print("</script>");
		} else if(job.equals("선택안함")) {
			out.print("<script>");
	        out.print("alert(`직업을 선택해주세요!`);");
	        out.print("history.back()");
	        out.print("</script>");
		} else if(business.equals("선택해주세요")) {
			out.print("<script>");
	        out.print("alert(`비즈니스 분야를 선택해주세요!`);");
	        out.print("history.back()");
	        out.print("</script>");
		} else if(interest==null||interest.equals("선택해주세요")) {
			out.print("<script>");
	        out.print("alert(`관심 분야를 선택해주세요!`);");
	        out.print("history.back()");
	        out.print("</script>");
		} else {
			
			Client_register_DAO dao = new Client_register_DAO();
			Specialist_register_DAO dao2 = new Specialist_register_DAO();
			
			int cnt = 0;
			
			HttpSession session = request.getSession();
			Client_register_VO loginC = (Client_register_VO) session.getAttribute("loginC");
			Specialist_register_VO loginS = (Specialist_register_VO) session.getAttribute("loginS");
			
			if(loginS==null) {
				String id = loginC.getC_id();
				Client_register_VO vo = new Client_register_VO(id, pw, name, job, business, interest);
				cnt = dao.clientupdate(vo);
				session.setAttribute("loginC", vo);
				
			} else {
				String id = loginS.getS_id();
				Specialist_register_VO vo = new Specialist_register_VO(id, pw, name, job, business, interest);
				cnt = dao2.specialistupdate(vo);
				session.setAttribute("loginS", vo);
			}
			
			if(cnt > 0 ) {
				System.out.println("회원정보 수정 성공!");
				out.print("<script>");
		        out.print("alert(`회원정보 수정 성공!!`);");
		        out.print("location.href='Mypage_C.jsp'");
		        out.print("</script>");
				
			}else {
				System.out.println("회원정보 수정 실패...");
				out.print("<script>");
		        out.print("alert(`회원정보 수정 실패...`);");
		        out.print("location.href='Mypage_C.jsp'");
		        out.print("</script>");
				
			}
		}
		
	}

}
