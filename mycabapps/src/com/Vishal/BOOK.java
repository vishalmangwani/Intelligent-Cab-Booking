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


public class BOOK extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public BOOK() {
        super();
       
    }
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	PrintWriter out=response.getWriter();
   response.setContentType("text/html");
	try
	{
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String frm=request.getParameter("frm");
		String to=request.getParameter("to");
		String time=request.getParameter("time");
		String date=request.getParameter("date");
		String comfort=request.getParameter("comfort");
		String adult=request.getParameter("adult");
		String child=request.getParameter("child");
		String message=request.getParameter("message");
		
		
		
		
		out.println(name+"#"+email+"#"+frm+"#"+to+"#"+time+"#"+date+"#"+comfort+"#"+adult+"#"+child+"#"+message);
		
	
		
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/MINNOR","PINTU","123456");
	   out.println("<h2>SUCCESSFULLY SUBMITED YOUR ENTRIES::<br>");
	   out.println("<h2>STATUS YOUR BOOKING SEND YOUR MOBILE NUMBER AND EMAILID IN ONLY 10 MINNUTES::<br>");
	   
	   Statement st=con.createStatement();
	   st.executeUpdate("insert into BOOKING(name,email,frm,to,time,date,comfort,adult,child,message) values('"+name+"','"+email+"','"+frm+"','"+to+"','"+time+"','"+date+"','"+comfort+"','"+adult+"','"+child+"','"+message+"')");
	 
	   
	   
	   
	   //response.sendRedirect("http://localhost:8080/LoginExample/home.jsp");
		
	}
	catch(Exception e)
	{
		out.println(e);
	}
	}

}
