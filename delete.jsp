<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>
<%@page import="databaseconnection.*,java.util.*"%>

<%!int count=0;%>
<% 

String pre_id=request.getParameter("pre_id");

try{

Connection con = databasecon.getconnection();

Statement st=con.createStatement();Statement st2=con.createStatement();

	PreparedStatement ps=con.prepareStatement("delete  from PRESCRIPTION  where PRE_ID=? ");
	
	ps.setString(1,pre_id);
	
	int q=ps.executeUpdate();

	if(q>0)
	{
		response.sendRedirect("remove_pre.jsp?delete=deleted........");
	}

}catch(Exception e){e.printStackTrace();}

%>