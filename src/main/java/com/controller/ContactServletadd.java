package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.*;
/**
 * Servlet implementation class edit
 */
@WebServlet("/ContactServletadd")
public class ContactServletadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactServletadd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        ProcessRequest(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        ProcessRequest(request, response);
	}

	protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
			String email = request.getParameter("emailAddress");
	        String name = request.getParameter("entry.805276147");
	        String subject = request.getParameter("subject"); // Chỉnh sửa lấy giá trị subject từ form
	        String message = request.getParameter("entry.740878952");

	        // Gọi phương thức insercontact để lưu thông tin vào cơ sở dữ liệu
	        DAO dao=new DAO();
	        dao.insercontact(email, name, subject, message);

	        response.sendRedirect("ContactServlet?message=success");
	        request.getRequestDispatcher("ContactServlet").forward(request, response);

        
        
	}
}
