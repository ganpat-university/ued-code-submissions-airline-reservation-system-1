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
String Passport = request.getParameter("passportno");
String Address = request.getParameter("address");
String Address2 = request.getParameter("address2");
String Country = request.getParameter("country");
String State = request.getParameter("state");
String Zip = request.getParameter("zip");
String Payment = request.getParameter("payment");
String Ncard = request.getParameter("ncard");
String Cnumber= request.getParameter("cnumber");
String Edate = request.getParameter("edate");
String Cvv = request.getParameter("cvv");

String query ="insert into flight values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement st = con.prepareStatement(query);
st.setString(1,FirstName);
st.setString(2,LastName);
st.setString(3,Date);
st.setString(4,Email);
st.setString(5,Passport);
st.setString(6,Address);
st.setString(7,Address2);
st.setString(8,Country);
st.setString(9,State);
st.setString(10,Zip);
st.setString(11,Payment);
st.setString(12,Ncard);
st.setString(13,Cnumber);
st.setString(14,Edate);
st.setString(15,Cvv);
st.executeUpdate();


RequestDispatcher rd=request.getRequestDispatcher("book.jsp");
rd.forward(request,response);
st.close();
con.close();
} catch (SQLException e) {
    
    out.println(e);
}

%>
</body>
</html>