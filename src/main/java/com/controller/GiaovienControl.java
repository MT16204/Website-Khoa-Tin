package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.*;
import com.entity.*;

@WebServlet("/GiaovienControl")
public class GiaovienControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GiaovienControl() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		  // Đặt mã hóa UTF-8 cho request và response
		  
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String bomonid = request.getParameter("id");
			String chuyennganhid = request.getParameter("idsv");
			String idsubject = request.getParameter("idsubject");
			DAO dao = new DAO();
			List<Bomon> list1 = dao.bomon(); 
			List<teacher> list2 = dao.getteacherbybomon(bomonid);
			List<Bomon> listt = dao.getbomonbyid(bomonid);
			List<chuyennganh> list3 = dao.chuyennganh(); 
			List<chuyennganh> listtt = dao.getchuyennganhnbyid(chuyennganhid); 
			List<Student> list4 = dao.laysv(chuyennganhid);
			List<contact> list7 = dao.contactbyid(idsubject);
			List<subject> list5 = dao.subject1();
			List<lop> list10 = dao.lop();

			request.setAttribute("list10",list10);
			request.setAttribute("list5",list5);
			request.setAttribute("listtt", listtt);
			request.setAttribute("listt", listt);
			request.setAttribute("list3", list3);
			request.setAttribute("list", list1);
			request.setAttribute("list2", list2);
			request.setAttribute("list4", list4);
			request.setAttribute("list7", list7);
			request.getRequestDispatcher("qlgiaovien.jsp").forward(request, response);

	}
}
