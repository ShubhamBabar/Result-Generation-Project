package com.project.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			HttpSession session = request.getSession();
			PrintWriter out = response.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/students","root","Shubham@123");
			String name=request.getParameter("name");
			String prn=request.getParameter("PRN_No");
			String pass=request.getParameter("password");
			
			
			PreparedStatement ps = con.prepareStatement("select uname from std_info where uname=? and prn_no =? and password=? ");
			ps.setString(1,name);
			ps.setString(2,prn);
			ps.setString(3,pass);
			ResultSet rs =ps.executeQuery();
			
			if(rs.next()) {
				session.setAttribute("name", rs.getString("uname"));
				RequestDispatcher rd =request.getRequestDispatcher("box.jsp");
				rd.forward(request, response);
				
			}else {

				
				request.setAttribute("error", "invalid credentials !!");
				RequestDispatcher rd =request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
				
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
