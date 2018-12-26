<%@ include file="aheader.jsp"%>

<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>

<br><br><br><br><br><br><br><br>
<center><table style="border-collapse: separate; border-spacing: 50px; font-size: 1.2em;">
<tr><th>Trade_Name</th><th>Pharmaceutical_Company</th></tr>
<h2><font color="#ff6600">View Drugs</font></h2>
<%
String msg=request.getParameter("query");
if(msg!=null){
out.println("<script>alert('Query sent to mail successfully.......')</script>");

}

%>
<%
try{
Connection con = databasecon.getconnection();

%>
<%
Statement st1=con.createStatement();
Statement st2=con.createStatement();

ResultSet rs= st2.executeQuery("select * from MAKE_DRUG ");
	
%>


<%
while(rs.next()){
	%>
<tr>
	<td><%=rs.getString(1)%> </td>
	<td><%=rs.getString(2)%></td>
	

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

