<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>
<%@page import="databaseconnection.*,java.util.*"%>

<%!int count=0;%>
<% 



try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();


String name = request.getParameter("name");
					
int rs1=st.executeUpdate("delete from CONTRACT where NAME='"+name+"' ");
if(rs1>0)
	{
		response.sendRedirect("viewcontracts.jsp?delete=deleted........");
	}
else{
response.sendRedirect("viewcontracts.jsp?fail=deleted........");
}
}catch(Exception e){e.printStackTrace();}

%>