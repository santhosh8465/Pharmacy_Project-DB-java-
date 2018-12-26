<%@page import="databaseconnection.*,java.sql.*"%>
<%!
Connection con;
Statement stmt;
ResultSet rs;
%>
<%
String uname = request.getParameter("unm");
String password = request.getParameter("pwd");

con = databasecon.getconnection();
stmt = con.createStatement();

if(uname.equals("admin") && (password.equals("admin"))){
response.sendRedirect("adminhome.jsp?msg=succ");
}else{
response.sendRedirect("login.jsp?msg1=unsucc");
}
%>