package DSO.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import DSO.model.Portfolio_VO;
import DSO.model.Portfolio_DAO;

@WebServlet("/Portfolio_List_service")
public class Portfolio_List_service extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get the form data
        String s_id = request.getParameter("s_id");
        Part pf_img1_part = request.getPart("pf_img1");

        // Save the image to the server
        String fileName = Paths.get(pf_img1_part.getSubmittedFileName()).getFileName().toString();
        String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        String filePath = uploadPath + File.separator + fileName;
        try (InputStream fileContent = pf_img1_part.getInputStream()) {
            Files.copy(fileContent, Paths.get(filePath));
        }

        // Create the Portfolio_VO object and set its values
        Portfolio_VO portfolio = new Portfolio_VO();
        portfolio.setS_Id(s_id);
        portfolio.setPf_Img1(filePath);

        // Insert the portfolio into the database
        Portfolio_DAO portfolioDAO = new Portfolio_DAO();
        int result = portfolioDAO.insertPortfolio(portfolio);

        // Return the result as JSON
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write("{\"result\": " + result + "}");
    }

}