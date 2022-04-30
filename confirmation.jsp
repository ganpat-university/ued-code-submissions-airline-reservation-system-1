<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

try {
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project","root","Gnu@15102020");

Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM flight");
out.print("<html>");
out.println("<head>");
out.println("<style>");
out.println("table, th, td{");
out.println("border-collapse: collapse;");
out.println("border:1px solid;");
out.println("}");
out.println("</style>");
out.println("</head>");
out.println("<table>");
out.println("<thead>");
out.println("<tr> ");
out.println("<th>Firstname</th> ");
out.println("<th>Lastname</th> ");
out.println("<th>Birthdate</th> ");
out.println("<th>Email</th> ");
out.println( "<th>Passport No</th> ");
out.println( "<th>Address</th> ");
out.println( "<th>Address2</th> ");
out.println( "<th>Country</th> ");
out.println( "<th>State</th> ");
out.println( "<th>Zip</th> ");
out.println( "<th>Payment</th> ");
out.println( "<th>Name on card</th> ");
out.println( "<th>Card Number</th> ");
out.println( "<th>Expired Date</th> ");
out.println( "<th>Cvv</th> ");
out.println( "<th></th></tr>");
out.println( "</thead>");

while(rs.next()){
	
    out.println("<tbody><tr>");
    out.println("<td>"+rs.getString(1)+"</td>");
    out.println("<td>"+rs.getString(2)+"</td>");
    out.println("<td>"+rs.getString(3)+"</td>");
    out.println("<td>"+rs.getString(4)+"</td>");
    out.println("<td>"+rs.getString(5)+"</td>");
    out.println("<td>"+rs.getString(6)+"</td>");
    out.println("<td>"+rs.getString(7)+"</td>");
    out.println("<td>"+rs.getString(8)+"</td>");
    out.println("<td>"+rs.getString(9)+"</td>");
    out.println("<td>"+rs.getString(10)+"</td>");
    out.println("<td>"+rs.getString(11)+"</td>");
    out.println("<td>"+rs.getString(12)+"</td>");
    out.println("<td>"+rs.getString(13)+"</td>");
    out.println("<td>"+rs.getString(14)+"</td>");
    out.println("<td>"+rs.getString(15)+"</td>");
    out.println("</tr>");
}
    out.println("</tbody>");
    out.println("</table>");
    out.println("</head>");
    
st.close();
con.close();
} catch (SQLException e) {
	out.println(e);
}


%>

</body>
</html>