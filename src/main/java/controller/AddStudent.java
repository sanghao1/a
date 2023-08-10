package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserStudent;
import service.UserStudentservice;

@WebServlet("/add-student")
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		RequestDispatcher dispatcher = request.getRequestDispatcher("a.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		System.out.println( request.getParameter("fullname"));
		request.getParameter("gender");
		request.getParameter("brithday");
		request.getParameter("dantoc");
		request.getParameter("cccd");
		request.getParameter("phone");
		request.getParameter("here");
		request.getParameter("thpt");
		request.getParameter("graduation");
		request.getParameter("nameclass12");
		request.getParameter("nv1");
		request.getParameter("he1");
		request.getParameter("nv2");
		request.getParameter("he2");

		request.getParameter("nv3");
		request.getParameter("he3");

		request.getParameter("borth");
		
		UserStudent userStudent = new UserStudent();
		
		userStudent.setFullname(request.getParameter("fullname"));
		userStudent.setGender(request.getParameter("gender"));
		userStudent.setBrithday(request.getParameter("brithday"));
		userStudent.setDantoc(request.getParameter("dantoc"));
		userStudent.setCccd(request.getParameter("cccd"));
		userStudent.setPhone(request.getParameter("phone"));
		userStudent.setHere(request.getParameter("here"));
		userStudent.setThpt(request.getParameter("thpt"));
		userStudent.setGraduation(request.getParameter("graduation"));
		userStudent.setNameclass12(request.getParameter("nameclass12"));
		userStudent.setNv1(request.getParameter("nv1"));
		userStudent.setHe1(request.getParameter("he1"));
		userStudent.setNv2(request.getParameter("nv2"));
		userStudent.setHe2(request.getParameter("he2"));

		userStudent.setNv3(request.getParameter("nv3"));
		userStudent.setHe3(request.getParameter("he3"));

		userStudent.setBorth(request.getParameter("borth"));
		
		UserStudentservice.AddStudent(userStudent);
		response.sendRedirect("ViewStudent");
		

	}

}
