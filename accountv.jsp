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




String FirstName = request.getParameter("firstname");
String LastName = request.getParameter("lastname");
String Date = request.getParameter("birthdate");
String Email = request.getParameter("email");
String Password = request.getParameter("password");
String Mobile = request.getParameter("contact");


String query ="insert into account_registration values(?,?,?,?,?,?)";
PreparedStatement st = con.prepareStatement(query);
st.setString(1,FirstName);
st.setString(2,LastName);
st.setString(3,Date);
st.setString(4,Email);
st.setString(5,Password);
st.setString(6,Mobile);
st.executeUpdate();

RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
rd.forward(request,response);
st.close();
con.close();
} catch (SQLException e) {
    
    out.println(e);
}

%>
</body>
</html>