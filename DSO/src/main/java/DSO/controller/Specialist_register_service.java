package DSO.controller;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DSO.model.Client_register_DAO;
import DSO.model.Client_register_VO;
import DSO.model.Register_specialist_DAO;
import DSO.model.Register_specialist_VO;
import DSO.model.Specialist_register_DAO;
import DSO.model.Specialist_register_VO;

 //전문가 회원가입 서비스

@WebServlet("/Specialist_register_service")
public class Specialist_register_service extends HttpServlet {
   private static final long serialVersionUID = 1L;
   private PrintStream out;
   private Object con_pw;

   /**
    * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
    */
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
      
      String s_id = request.getParameter("s_id");  
      String s_pw = request.getParameter("s_pw");
      String con_pw = request.getParameter("con_pw");
      String s_name = request.getParameter("s_name");
      String s_job = request.getParameter("s_job");
      String s_business = request.getParameter("s_business");
      String s_interest = request.getParameter("s_interest");
//      String s_joindate = request.getParameter("s_joindate");
      
      if(s_id.equals("")) {
         out.print("<script>");
           out.print("alert(`ID를 입력해주세요!`);");
           out.print("history.back()");
           out.print("</script>");
      } else if(s_pw.equals("")) {
         out.print("<script>");
           out.print("alert(`비밀번호를 입력해주세요!`);");
           out.print("history.back()");
           out.print("</script>");
      } else if(!s_pw.equals(con_pw)) {
         out.print("<script>");
           out.print("alert(`비밀번호를 확인해주세요!`);");
           out.print("history.back()");
           out.print("</script>");
      } else if(s_name.equals("")) {
         out.print("<script>");
           out.print("alert(`이름을 입력해주세요!`);");
           out.print("history.back()");
           out.print("</script>");
      } else if(s_job.equals("선택안함")) {
         out.print("<script>");
           out.print("alert(`직업을 선택해주세요!`);");
           out.print("history.back()");
           out.print("</script>");
      } else if(s_business.equals("선택해주세요")) {
         out.print("<script>");
           out.print("alert(`비즈니스 분야를 선택해주세요!`);");
           out.print("history.back()");
           out.print("</script>");
      } else if(s_interest==null||s_interest.equals("선택해주세요")) {
         out.print("<script>");
           out.print("alert(`관심 분야를 선택해주세요!`);");
           out.print("history.back()");
           out.print("</script>");
      } else {
         Specialist_register_VO vo = new Specialist_register_VO(s_id,s_pw,s_name,s_job,s_business,s_interest);
         Specialist_register_DAO dao = new Specialist_register_DAO();
         int cnt = dao.specialistjoin(vo);
         if(cnt > 0) {
            System.out.println("전문가 회원가입 성공!");
            RequestDispatcher rd =  request.getRequestDispatcher("Main.jsp"); 
            rd.forward(request, response);
         }else {
            System.out.println("전문가 회원가입 실패...");
            RequestDispatcher rd =  request.getRequestDispatcher("join_R.jsp"); 
            rd.forward(request, response);
         }
      }
   }
         
      
      
      
//      Specialist_register_VO vo = new Specialist_register_VO(s_id,s_pw,s_name,s_job,s_business,s_interest);
//      
//      Specialist_register_DAO dao = new Specialist_register_DAO();
//      int cnt = dao.specialistjoin(vo);
      
   }


