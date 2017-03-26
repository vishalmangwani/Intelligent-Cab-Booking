<style>
text
{
background-color:yellow;
color:blue;
}
</style>
<%@ page import="java.sql.*"  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="Updation.jsp">
<table border="5" >
<tr><td>USER ID</td><td><input type="text" name="UNAME" /></td></tr>
<tr><td>USER ID</td><td><input type="submit" value="VIEW" /></td></tr>
</table>
</form>
<%
try
{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/MINNOR","PINTU","123456");
    out.println("successfully connected with iesminor database");
    String username=request.getParameter("UNAME");
    Statement st1=con.createStatement();
    ResultSet rs1= st1.executeQuery("select * from REGISTATION ");
    out.println("<table border=2>");
    while(rs1.next())
    {
    	out.println("<tr><td><h2>"+rs1.getString(1)+"</h2></td></tr>");
    }
    out.println("</table>");
    
    if(request.getParameter("UNAME")!=null)
    {
    
    out.println("<h1>"+username);
    
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from REGISTATION where userid='"+username+"' ");
    out.println("<form method='post' action='UpdateServlet'>");
    out.println("<table border='0'>");
    while(rs.next())
    {
    out.println("<tr><td>UserName</td><td><input type='text' name='uname' value='"+rs.getString(1)+"'/></td></tr>");
    out.println("<tr><td>AGE</td><td><input type='text' name='age' value='"+rs.getString(2)+"'/></td></tr>");
    out.println("<tr><td>EMAIL</td><td><input type='text' name='email' value='"+rs.getString(3)+"'/></td></tr>");
    out.println("<tr><td>PASSWORD</td><td><input type='text' name='password' value='"+rs.getString(4)+"'/></td></tr>");
    out.println("<tr><td>CITY</td><td><input type='text' name='city' value='"+rs.getString(5)+"'/></td></tr>");
    out.println("<tr><td>BOOKS</td><td><input type='text' name='books' value='"+rs.getString(6)+"'/></td></tr>");
    out.println("<tr><td>DOB</td><td><input type='text' name='dob' value='"+rs.getString(7)+"'/></td></tr>");
    out.println("<tr><td>CLICK HERE</td><td><input type='submit'  value='Update'/></td></tr>");
    }
    out.println("</table>");
    out.println("</form>");
    
    
    
    }
    
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>