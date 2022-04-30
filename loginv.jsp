<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project", "root", "Gnu@15102020");

		String Email = request.getParameter("email");
		String Password = request.getParameter("password");
		Statement st = con.createStatement();
		int count1 = 0;
		String query = "select * from account_registration";
		ResultSet rs = st.executeQuery(query);
		while (rs.next()) {
			if (rs.getString(4).equals(Email) && rs.getString(5).equals(Password)) {
				count1+=1;
				session.setAttribute("uname", rs.getString("Full_Name"));
				break;
			}
		}
		
			
			System.out.println(count1+Email+Password);
			if(count1==1)
			{
				RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
				rd.forward(request,response);
			}
			if(count1==0){
				out.println("Wrong Input");
				out.println("Please Enter Valid email and password");
				
			}
		
	%>
</body>
</html>