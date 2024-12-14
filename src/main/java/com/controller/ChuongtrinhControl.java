package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DAO;
import com.entity.*;
/**
 * Servlet implementation class HomeControl
 */
@WebServlet("/CCControl")
public class ChuongtrinhControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChuongtrinhControl() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProcessRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProcessRequest(request, response);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	    request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
      
		DAO dao = new DAO();
		List<com.entity.Bomon> list1 = dao.bomon(); 
		List<com.entity.chuyennganh> list3 = dao.chuyennganh();
		request.setAttribute("list3", list3);
		request.setAttribute("list", list1);
		
		List<subject> list5 = dao.subject1(); 
		request.setAttribute("list5",list5);
		
		request.getRequestDispatcher("chuongtrinh.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */


}
