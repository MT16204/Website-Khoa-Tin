package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.*;
import com.entity.*;
/**
 * Servlet implementation class edit
 */
@WebServlet("/updateStudent")
public class updateStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateStudent() {
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

		        String id = request.getParameter("id");
		        String name = request.getParameter("name");
		        String tuoi = request.getParameter("tuoi");
		        String email = request.getParameter("email");
		        String idlop = request.getParameter("idlop");
		        String id_chuongtrinh = request.getParameter("id_chuongtrinh");
		        DAO dao = new DAO();
		        dao.updateStudent(new Student(id,name, tuoi, email,idlop));

		        response.sendRedirect("GiaovienControl?idsv=" + id_chuongtrinh); // Điều hướng về danh sách sinh viên
		    }
}
