<html>

<body background='Picture4.jpg' text='black'>
<form action='c_all_specification.jsp' method='post'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
      	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS"); 
	Statement stmt=cn.createStatement();
	ResultSet rs=stmt.executeQuery("select * from Dealer3");
	out.println("<center><h3>Keyboard Details</h3><hr color='blue'>");
	out.println("<table border='15%' width='100%'>");
	out.println("<tr><th>ItemCode</th><th>ItemName</th>  <th>Model</th> <th>Specification</th>  <th>Warenty Period</th><th>Cost</th>");
		while(rs.next())
	 {
	      out.println("<tr><td><select name='keyid3' multiple='multiple' size='1' <option>"+rs.getString(1)+"<option></td>");
	      out.println("<td>"+rs.getString(2)+"</td>");
	      out.println("<td>"+rs.getString(3)+"</td>");
		   out.println("<td>"+rs.getString(4)+"</td>");
		  out.println("<td>"+rs.getString(5)+"</td>");
	 	      out.println("<td>"+rs.getInt(6)+"</td>");
			    
	 }
	out.println("</table></center>");
	%>
	<input type='submit' value='submitre'></form>
	

	<%
	rs.close();
	stmt.close();
	cn.close();
    }
   catch(Exception e)
    {
             out.println("<b>Error in Loading  Data....</b>");
    }
%>
</body>
</html>