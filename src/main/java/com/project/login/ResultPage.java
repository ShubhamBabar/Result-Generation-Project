package com.project.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class ResultPage
 */
@WebServlet("/ResultPage")
public class ResultPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String id = request.getParameter("id");
		request.getAttribute("prnvalue");
		try {
//			Class.forName("com.mysql.jdbc.Driver");
//			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/students\",\"root\",\"Shubham@123\"");
//			Statement stmt = con.createStatement();
//			ResultSet rs =stmt.executeQuery("select * from sem1_result where Prn_no= 2067971242022 ");
//			while(rs.next()) {
//				
//			}
			
			HttpSession session = request.getSession();
			PrintWriter out1=response.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/students","root","Shubham@123");
			
			String prn=request.getParameter("Prn_no");
			String sub1=request.getParameter("Sub1");
			String sub1_CA1=request.getParameter("Sub1_CA1");
			request.setAttribute("prnvalue",prn);
			
			PreparedStatement ps = con.prepareStatement("select * from sem1_result where Prn_no= 2067971242022 ");
			ps.setString(1,prn);
			ps.setString(2,sub1);
			ps.setString(3,sub1_CA1);
			ResultSet rs =ps.executeQuery();
			
		}catch(Exception p) {
		     System.out.println(p);
		     }
	}

	
	

}
