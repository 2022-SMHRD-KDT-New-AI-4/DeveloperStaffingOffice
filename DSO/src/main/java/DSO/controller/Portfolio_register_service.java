package DSO.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import DSO.model.Portfolio_DAO;
import DSO.model.Portfolio_VO;

/**
 * Servlet implementation class Portfolio_register_service
 */
@WebServlet("/Portfolio_register_service")
public class Portfolio_register_service extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("실행확인");
		//RequestModel model = new RequestModel();
		
		try {
		 //디스크상의 실제 경로 얻기
        String contextRootPath = this.getServletContext().getRealPath("/");
        
        //1. 메모리나 파일로 업로드 파일 보관하는 FileItem의 Factory설정
        DiskFileItemFactory diskFactory = new DiskFileItemFactory(); 
        //임시 저장폴더
        diskFactory.setRepository(new File(contextRootPath + "/WEB-INF/temp"));
        
        ServletFileUpload upload = new ServletFileUpload(diskFactory); 
        upload.setSizeMax(10 * 1024 * 1024); //10MB : 전체 최대 업로드 파일 크기
        //upload.setFileSizeMax(10 * 1024 * 1024); //10MB : 파일하나당 최대 업로드 파일 크기       
		List<FileItem> items = upload.parseRequest(request);
		FileItem data=items.get(0);
		processUploadFile(data, contextRootPath, request);   
		}catch(Exception e) {
			e.printStackTrace();
		}        
		PrintWriter out=response.getWriter();
		out.print("");
	}

	private void processUploadFile(FileItem item, String contextRootPath, HttpServletRequest request) {
		try {
		String name = item.getFieldName(); //필드 이름 얻기
		String fileName = item.getName(); //파일명 얻기
        String contentType = item.getContentType(); //컨텐츠 타입 얻기
        long fileSize = item.getSize(); //파일의 크기 얻기
        
        //업로드 파일명을 현재시간으로 변경후 저장
        //String uploadedFileName = System.currentTimeMillis() 
        //                             +fileName.substring(fileName.lastIndexOf("."));
        String uploadedFileName = System.currentTimeMillis() 
                + UUID.randomUUID().toString() +fileName.substring(fileName.lastIndexOf("."));;
        //저장할 절대경로로 파일 객체 생성
        File uploadedFile = new File(contextRootPath + "/upload/" + uploadedFileName); 
        item.write(uploadedFile); //파일 저장
        item.delete(); //파일과 관련된 자원을 제거한다.
        
        HttpSession session=request.getSession();
        //String s_Id=(String) session.getAttribute("s_Id");// 세션에 등록된 아이디 받아오기.
        String s_Id="test"; // 테스트용 임시 아이디
        Portfolio_VO vo=new Portfolio_VO();
        vo.setS_Id(s_Id);
        vo.setPf_Img1(uploadedFileName);        
        Portfolio_DAO dao=new Portfolio_DAO();
        dao.insertPortfolio(vo);
        
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
