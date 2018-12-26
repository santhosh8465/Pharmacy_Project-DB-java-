<%@ include file="aheader.jsp"%>

<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>

<br><br><br><br><br><br><br><br>
<center><table style="border-collapse: separate; border-spacing: 50px; font-size: 1.2em;">
<tr><th>Drug_Name</th><th>Pharmacy_Name</th><th>PHONENUMBER</th></tr>
<h2><font color="#ff6600">Sold by another Pharmacy</font></h2>

<%
try{
Connection con = databasecon.getconnection();

%>
<%
Statement st1=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();



ResultSet rs= st2.executeQuery("select TRADE_NAME, count(TRADE_NAME) from SELL group by TRADE_NAME  having count (TRADE_NAME) > 1 ");
	
while(rs.next()){
	ResultSet rs1= st3.executeQuery("SELECT NAME FROM SELL where TRADE_NAME='"+rs.getString(1)+"' ");
while(rs1.next()){

	ResultSet rs3= st1.executeQuery("SELECT PHONE FROM PHARMACY where PHARM_ID='"+rs1.getString(1)+"' ");
if(rs3.next()){
	%>

<tr>
	<td><%=rs.getString(1)%> </td>
	<td><%=rs1.getString(1)%> </td>
	<td><%=rs3.getString(1)%> </td>

    <%}%>
	

	

</tr><%}}%>

</table></center>
<%
}
catch(Exception e)
{
e.printStackTrace();
	}
%>


<%@ include file="footer.jsp"%>

