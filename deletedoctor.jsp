<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>
<%@page import="databaseconnection.*,java.util.*"%>

<%!int count=0;%>
<% 

String ssn=request.getParameter("ssn");
System.out.println("ssn------"+ssn);

try{

Connection con = databasecon.getconnection();

Statement st=con.createStatement();Statement st2=con.createStatement();

    String query="delete  from DOCTOR  where SSN='"+ssn+"' ";
	System.out.println("query------"+query);

	PreparedStatement ps=con.prepareStatement(query);
	
	
	
	int q=ps.executeUpdate();
	System.out.println("q------"+q);



	if(q>0)
	{
		response.sendRedirect("remove_doctor.jsp?delete=deleted........");
	}

}catch(Exception e){
	response.sendRedirect("remove_doctor.jsp?notdeleted=not........");
	e.printStackTrace();}

%>