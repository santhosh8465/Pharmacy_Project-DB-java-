<%@ include file="aheader.jsp"%>

<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>

<br><br><br><br><br><br><br><br>
<center><table style="border-collapse: separate; border-spacing: 50px; font-size: 1.2em;">
<tr><th>Pre_Id</th><th>SSN</th><th>PHY_SSN</th><th>Date</th><th>Quantity</th><th>Status</th></tr>
<h2><font color="#ff6600">PRESCRIPTION_Details</font></h2>

<%
try{
Connection con = databasecon.getconnection();

%>
<%
Statement st1=con.createStatement();
Statement st2=con.createStatement();

ResultSet rs= st2.executeQuery("select * from PRESCRIPTION ");
	
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
	<td><%=rs.getString(10)%></td>
	<td><a href="delete.jsp?pre_id=<%=rs.getString(1)%>">Delete</a></td>
	

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

