<%@ include file="aheader.jsp"%>

<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>

<br><br><br><br><br><br><br><br>
<center><table style="border-collapse: separate; border-spacing: 50px; font-size: 1.2em;">
<tr><th>SSN</th><th>Name</th><th>Speciality</th><th>Experience</th></tr>
<h2><font color="#ff6600">Doctor_Details</font></h2>
<%
String msg=request.getParameter("notdeleted");
if(msg!=null){
out.println("<script>alert('Delete patient record belongs to doctor.......')</script>");

}

%>

<%
String msg1=request.getParameter("delete");
if(msg1!=null){
out.println("<script>alert('Deleted successfully.......')</script>");

}

%>



<%
try{
Connection con = databasecon.getconnection();

%>
<%
Statement st1=con.createStatement();
Statement st2=con.createStatement();

ResultSet rs= st2.executeQuery("select * from DOCTOR ");
	
%>


<%
while(rs.next()){
	%>
<tr>
	<td><%=rs.getString(1)%> </td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%> </td>

	<td><a href="deletedoctor.jsp?ssn=<%=rs.getString(1)%>">Delete</a></td>
	

</tr><%}%>
</table></center>
<%
}
catch(Exception e)
{
e.printStackTrace();
	}
%>


<%@ include file="footer.jsp"%>

