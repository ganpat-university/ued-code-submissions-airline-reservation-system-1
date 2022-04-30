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
<title>Airline Booking System</title>
</head>
<body>
<%

try {
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project","root","Gnu@15102020");




String Name = request.getParameter("name");
String Email = request.getParameter("email");
String Message = request.getParameter("message");


String query ="insert into contact values(?,?,?)";
PreparedStatement st = con.prepareStatement(query);
st.setString(1,Name);
st.setString(2,Email);
st.setString(3,Message);
st.executeUpdate();

RequestDispatcher rd=request.getRequestDispatcher("flight.jsp");
rd.forward(request,response);

st.close();
con.close();
} catch (SQLException e) {
    
    out.println(e);
}

%>
</body>
</html>