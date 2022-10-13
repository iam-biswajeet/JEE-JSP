package com.nt.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.nt.beans.Employee;
import com.nt.service.EmployeeServiceImpl;
import com.nt.service.IEmployeeService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ControllerServlet extends HttpServlet {
	private IEmployeeService empService;
   @Override
public void init() throws ServletException {
	empService=new EmployeeServiceImpl();
}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		//read the input
		String desg=req.getParameter("desg");
		String content=req.getParameter("content");
		
		
		try {
			List<Employee> list=empService.fetchEmployeeByDesg(desg);
			System.out.println("controller"+list.size());
			req.setAttribute("empDetails", list);
			String resultPage=null;
		if(content.equalsIgnoreCase("html")) {
			resultPage="/html_screen.jsp";
		}
			else {
				resultPage="/word_screen.jsp";
			}
		RequestDispatcher rd=req.getRequestDispatcher(resultPage);
		rd.forward(req, resp);
		}
		catch(SQLException se) {
			se.printStackTrace();
			RequestDispatcher rd=req.getRequestDispatcher("/error.jsp");
			rd.forward(req, resp);
			
		}
		catch(Exception e) {
			e.printStackTrace();
			RequestDispatcher rd=req.getRequestDispatcher("/error.jsp");
			rd.forward(req, resp);
		}
			
		}
		

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			doGet(req, resp);
	}

}
