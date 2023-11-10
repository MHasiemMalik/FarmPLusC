package com.farmplusDatabaseConnect.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/login")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String fname=request.getParameter("first-name");
	    String lname=request.getParameter("last-name");
	    String uadhar=request.getParameter("Adhar");
	    String uemail=request.getParameter("email");
	    String upwd=request.getParameter("password");
	    String umobile=request.getParameter("contact");
	    String buyer=request.getParameter("role");
	    String seller=request.getParameter("role");
	    String other=request.getParameter("role");
	    String ucity=request.getParameter("City");
	    
	    RequestDispatcher dispatcher=null;
	    Connection con=null;
	    try {
	        Class.forName("oracle.jdbc.driver.OracleDriver");
	        con=DriverManager.getConnection("jdbc:oracle:thin:@Localhost:1521:orcl","system","tiger");

	        PreparedStatement pst=con.prepareStatement("insert into FarmUserRegisterMain values(?,?,?,?,?,?,?,?)");
	        pst.setString(1, fname);
	        pst.setString(2, lname);
	        pst.setString(3, uadhar);
	        pst.setString(4, uemail);
	        pst.setString(5, upwd);
	        if(buyer!=null) {
	            pst.setString(6, buyer);
	        } else if(seller!=null) {
	            pst.setString(6, seller);
	        } else {
	            pst.setString(6, other);
	        }
	        pst.setString(7, umobile);
	        pst.setString(8, ucity);

	        int rowCount=pst.executeUpdate();
	        if(rowCount>0) {
	            request.setAttribute("status", "success");
	        } else {
	            request.setAttribute("status", "failed");
	        }

	    } catch (SQLException e) {
	    	if (e.getMessage().contains("SYS_C007609")) {  // Adjust "EMAIL" if your constraint name is different
	            request.setAttribute("status", "duplicate_email");
	        } else if (e.getMessage().contains("ADHARNUMBER")) {  // Adjust "ADHARNUMBER" if your constraint name is different
	            request.setAttribute("status", "duplicate_adhar");
	        } else if (e.getMessage().contains("CONTACT")) {  // Adjust "CONTACT" if your constraint name is different
	            request.setAttribute("status", "duplicate_contact");
	        }else {
	        	request.setAttribute("status", "error");
	        }
	        	
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (con != null && !con.isClosed()) {
	                con.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	 // ...

	    if("success".equals(request.getAttribute("status"))) {
	        dispatcher = request.getRequestDispatcher("login.jsp");
	    } else {
	        dispatcher = request.getRequestDispatcher("registration.jsp"); // Forward back to registration page
	    }
	    dispatcher.forward(request, response);

	    // ...

	    
	}

	
	/*protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		PrintWriter out=response.getWriter();
		/*out.print("WORKING :)");out.print(uname);
		out.print(uemail);
		out.print(upwd);
		out.print(umobile);
		String fname=request.getParameter("first-name");
		String lname=request.getParameter("last-name");
		String uadhar=request.getParameter("Adhar");
		String uemail=request.getParameter("email");
		String upwd=request.getParameter("password");
		String umobile=request.getParameter("contact");
		String buyer=request.getParameter("role");
		String seller=request.getParameter("role");
		String other=request.getParameter("role");
		String ucity=request.getParameter("City");
		
		RequestDispatcher dispatcher=null;Connection con=null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		    con=DriverManager.getConnection("jdbc:oracle:thin:@Localhost:1521:orcl","system","tiger");
			//Statement st=con.createStatement();
			PreparedStatement pst=con.prepareStatement("insert into FarmUserRegisterMain values(?,?,?,?,?,?,?,?)");
			//ResultSet rst=st.executeQuery("select * from FARMPLUS");
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, uadhar);
			pst.setString(4, uemail);
			pst.setString(5, upwd);
			if(buyer!=null) {
				pst.setString(6, buyer);
			}else if(seller!=null) {
				pst.setString(6, seller);
			}else {
				pst.setString(6, other);
			}
			pst.setString(7, umobile);
			pst.setString(8, ucity);
			
			int rowCount=pst.executeUpdate();
			dispatcher =request.getRequestDispatcher("login.jsp");
			if(rowCount>0) {
				request.setAttribute("status", "success");
				System.out.println("Status Set: " + request.getAttribute("status"));

				
			}else {
				request.setAttribute("status", "failed");
				System.out.println("Status Set: " + request.getAttribute("status"));

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
		
	}*/
	
	
	
    /**
     * @see HttpServlet#HttpServlet()
     /
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 /
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	

}
