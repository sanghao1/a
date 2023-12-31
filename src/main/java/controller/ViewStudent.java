package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.UserStudent;
import service.UserStudentservice;



@WebServlet("/ViewStudent")
public class ViewStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		ArrayList<UserStudent> userStudents = UserStudentservice.finalAllStudent();
	

	request.setAttribute("ProductList", userStudents);
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
	dispatcher.forward(request, response);
	}
}
