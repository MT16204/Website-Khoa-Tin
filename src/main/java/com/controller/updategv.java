package com.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import com.dao.*;
import com.entity.*;

@WebServlet("/updategv")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2, // 2MB
    maxFileSize = 1024 * 1024 * 10,      // 10MB
    maxRequestSize = 1024 * 1024 * 50    // 50MB
)
public class updategv extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public updategv() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProcessRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProcessRequest(request, response);
    }

    protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String chucvu = request.getParameter("chucvu");
        String idbomon = request.getParameter("idbomon");

        // Get file part (uploaded image)
        Part filePart = request.getPart("image"); // Get file from form
        String relativePath = null; // To store the relative path of the image

        // Check if file was uploaded
        if (filePart != null && filePart.getSize() > 0) {
            String fileName = filePart.getSubmittedFileName(); // Get file name
            // Generate a unique name for the file to prevent overwriting
            String uniqueFileName = System.currentTimeMillis() + "_" + fileName;

            // Define the upload path
            String uploadPath = getServletContext().getRealPath("/") + "images";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs(); // Create directory if it doesn't exist
            }

            // Save file to the specified path
            String filePath = uploadPath + File.separator + uniqueFileName;
            filePart.write(filePath);

            // Set the relative path to be stored in the database
            relativePath = "images/" + uniqueFileName;
        } else {
            // If no file is uploaded, keep the existing image (do not change)
            teacher currentTeacher = new DAO().laygv(id); // Get current teacher details
            relativePath = currentTeacher.getAnh(); // Use the existing image path
        }

        // Update teacher details in the database
        DAO dao = new DAO();
        dao.updategv(new teacher(id, name, relativePath, email, chucvu, idbomon));

        // Redirect to teacher list page with idbomon as a query parameter
        response.sendRedirect("GiaovienControl?id=" + idbomon); // Redirect to the teacher list page
    }
}
