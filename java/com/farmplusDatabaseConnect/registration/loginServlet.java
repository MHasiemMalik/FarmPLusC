package com.farmplusDatabaseConnect.registration;

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
 * Servlet implementation class loginServlet
 */
@WebServlet("/FLogin")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher=null;Connection con=null;
		String uemail=request.getParameter("email");
		String upwd=request.getParameter("password");
		HttpSession session=request.getSession();
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
		    con=DriverManager.getConnection("jdbc:oracle:thin:@Localhost:1521:orcl","system","tiger");
			//Statement st=con.createStatement();
			PreparedStatement pstk=con.prepareStatement("select * from FarmUserRegisterMain where EMAIL = ? and PASSWORD = ?");
			//ResultSet rst=st.executeQuery("select * from FARMPLUS");
			pstk.setString(1, uemail);
			pstk.setString(2, upwd);
		
			ResultSet rs=pstk.executeQuery();
			//int rowCount=pst.executeUpdate();
			//PrintWriter pw=response.getWriter();
			
			if(rs.next()) {
				/*pw.println("Welcome"+uemail);
				request.setAttribute("status", "success");*/
				session.setAttribute("name",rs.getString("FIRSTNAME"));
				dispatcher =request.getRequestDispatcher("index.jsp");
				
			}else {
				//pw.println("Invalid");
				request.setAttribute("status", "failed");
				dispatcher =request.getRequestDispatcher("login.jsp");
				
			}
			dispatcher.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
}
