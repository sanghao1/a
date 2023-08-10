package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserStudent;
import service.UserStudentservice;





@WebServlet("/edit-p")
public class EditStudentcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		HttpSession session = request.getSession();
//		UserStudent user = (UserStudent)session.getAttribute("id");
//		System.out.println(user);
		request.setCharacterEncoding("UTF-8");
//		
		int id = Integer.valueOf(request.getParameter("id"));
		request.setAttribute("product", UserStudentservice.findById(id));

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("editstudent.jsp");
		dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		request.getParameter("fullname");
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
		request.getParameter("nv2");
		request.getParameter("nv3");
		request.getParameter("borth");
		
	
	UserStudent userStudent = new UserStudent();
	//userStudent.setId(Integer.valueOf(request.getParameter("id")));
	//System.out.println();
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
	userStudent.setNv2(request.getParameter("nv2"));
	userStudent.setNv3(request.getParameter("nv3"));
	userStudent.setBorth(request.getParameter("borth"));

	UserStudentservice.updatestudent(userStudent);
	
	response.sendRedirect("ViewStudent");
	}

}
