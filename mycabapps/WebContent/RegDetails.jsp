<style>
table
{
background-color:red;
}
th
{
background-color:green;
}
td
{
background-color:yellow;
}
</style>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Brown Stone  
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20100928

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title></title>

</head>
<body>
<h1> REGISTERED USER:: </h1>

<%
try
{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/MINNOR","PINTU","123456");
    
    
    Statement st=con.createStatement();
   ResultSet rs= st.executeQuery("select * from REGISTATION");
   
   out.println("<br><br><br><br><center><table border=1>");
   out.println("<tr><th>USERID</th><th>NAME</th><th>EMAIL</th><th>PHONENUMBER</th><th>PASSWORD</th><th>GENDER</th><th>ADDRESS</th><th>STATE</th><th>PIN</th></tr>");
   while(rs.next())
   {
	   out.println("<tr>");
	   out.println("<td>"+rs.getString(1)+"</td>");
	   out.println("<td>"+rs.getString(2)+"</td>");
	   out.println("<td>"+rs.getString(3)+"</td>");
	   out.println("<td>"+rs.getString(4)+"</td>");
	   out.println("<td>"+rs.getString(5)+"</td>");
	   out.println("<td>"+rs.getString(6)+"</td>");
	   out.println("<td>"+rs.getString(7)+"</td>");
	   out.println("<td>"+rs.getString(8)+"</td>");
	   out.println("<td>"+rs.getString(9)+"</td>");
	   out.println("</tr>");
	   
   }
   out.println("</table>");
   
    
    
    

}
catch(Exception e)
{
	out.println(e);
}

%>
																											
										
</body>
</html>
