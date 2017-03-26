package com.abhay;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class REGISTRATION extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public REGISTRATION() {
        super();
       
    }
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	PrintWriter out=response.getWriter();
   response.setContentType("text/html");
	try
	{
		
		String userid=request.getParameter("userid");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phonenumber=request.getParameter("phonenumber");
		String password=request.getParameter("password");
		String gender=request.getParameter("gender");
		String address=request.getParameter("address");
		String state=request.getParameter("state");
		String pin=request.getParameter("pin");
		
		
		
		
		
		
	
		
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/MINNOR","PINTU","123456");
	   out.println("<h2>SUCCESSFULLY SUBMITED YOUR ENTRIES::<br>");
	   Statement st=con.createStatement();
	   st.executeUpdate("insert into REGISTATION(userid,name,email,phonenumber,password,gender,address,state,pin) values('"+userid+"','"+name+"','"+email+"','"+phonenumber+"','"+password+"','"+gender+"','"+address+"','"+state+"','"+pin+"')");
	  
	   
	   
	   Statement st1=con.createStatement();
	   st1.executeUpdate("insert into login values('"+userid+"','"+password+"')");
	   
	   
	   
	   response.sendRedirect("http://localhost:8080/mycabapps/home.jsp");
		
	}
	catch(Exception e)
	{
		out.println(e);
	}
	}

}
