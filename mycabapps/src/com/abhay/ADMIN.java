package com.abhay;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ADMIN extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ADMIN() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			try
			{
				Class.forName("com.ibm.db2.jcc.DB2Driver");
				Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/MINNOR","PINTU","123456");
			    out.println("successfully connected with iesminor database");
			    Statement st=con.createStatement();
			    String u=request.getParameter("x");
				String p=request.getParameter("y");
			    ResultSet rs=st.executeQuery("select * from ADMIN where username='"+u+"' and password='"+p+"' ");
			    
			    int counter=0;
			    while(rs.next())
			    {
			    	out.println("from table"+rs.getString(1));
			    	out.println("from table"+rs.getString(2));
			   counter++;
			    }
			    
			   
				out.println("<h2>value of username is  "+u+"</h2>");
				out.println("<h2>value of password  is  "+p+"</h2>");
				
				if(counter==1)
				{
					out.println("<h2>valid user</h2>");
					response.sendRedirect("http://localhost:8080/mycabapps/RegDetails.jsp");
				}
				else
				{
					
					getServletContext().getRequestDispatcher("/admin.jsp").forward(request, response);
						
				}
			    
			}
			catch(Exception e)
			{
				out.println(e);
			}
			
	
	
	}

}
