<%@ include file="aheader.jsp"%>

<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>

<br><br><br><br><br><br><br><br>
<center><table style="border-collapse: separate; border-spacing: 50px; font-size: 1.2em;">
<tr><th>Pharmaceutical _Name</th><th>Pharmacy_Name</th><th>Start_Date</th><th>End_Date</th><th>Text</th><th>Supervisor</th></tr>
<h2><font color="#ff6600">Contract_Details</font></h2>
<%
String msg = request.getParameter("update");
if(msg != null){
out.println("<script>alert('Updated.........')</script>");
}

String msg1 = request.getParameter("delete");
if(msg1 != null){
out.println("<script>alert('Removed Successfully..')</script>");
}


%>

<%
try{
Connection con = databasecon.getconnection();

%>
<%
Statement st1=con.createStatement();
Statement st2=con.createStatement();

ResultSet rs= st2.executeQuery("select * from CONTRACT ");
	
%>


<%
while(rs.next()){
	%>
<tr>
	<td><%=rs.getString(1)%> </td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%> </td>
	<td><%=rs.getString(5)%></td>
	<td><%=rs.getString(6)%></td>
	<td><a href="update.jsp?name=<%=rs.getString(1)%>">Update</a></td>
	<td><a href="DeleteContract.jsp?name=<%=rs.getString(1)%>">Delete</a></td>
	

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

