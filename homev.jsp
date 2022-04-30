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




String From = request.getParameter("from");
String To = request.getParameter("to");
String Deparure = request.getParameter("deparure");
String Return = request.getParameter("return");
String Trip = request.getParameter("trip");


String query ="insert into flight_booking values(?,?,?,?,?)";
PreparedStatement st = con.prepareStatement(query);
st.setString(1,From);
st.setString(2,To);
st.setString(3,Deparure);
st.setString(4,Return);
st.setString(5,Trip);
st.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("bookingtable.html");
rd.forward(request,response);
st.close();
con.close();
} catch (SQLException e) {
    
    out.println(e);
}

%>
</body>
</html>