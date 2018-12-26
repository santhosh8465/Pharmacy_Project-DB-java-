<%@ include file="aheader.jsp"%>

<br><br><br>
<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>
<section id="contact">
        <div class="container">
            
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
				
					<!--  <form action="viewpatientpre.jsp" method="post" class="form-group" id="contact-form">
						
						<br>
						
						<label>select status</label><div class="row">
						<div class="col-md-4">
							<select name="status" class="form-control">
							<option value="all">All</option>
							<option value="canceled">canceled</option>
							<option value="ready-to-go">ready-to-go</option>
							<option value="on-pending">on-pending</option>
							<option value="completed">completed</option>
							
							</select></div>
						</div><br>
						
						
					<div class="row">
						<div class="row">
                                <button type="submit" class="btn btn-success btn-lg">Go</button>
                            </div>
						</div>
					</form>-->
					</div>
            </div>
        </div>
    </section>

<center><table style="border-collapse: separate; border-spacing: 50px; font-size:em;">
<tr><th>Pre_Id</th><th>Patient_SSN</th><th>Doctor_SSN</th><th>Date</th><th>Quantity</th><th>Prescription_Name</th><th>Pharmacy_Name</th><th>Drop_off_Time</th><th>Pickup_Time</th><th>Status</th></tr>
<h2><font color="#ff6600">Patients Prescription_List</font></h2>

<%
String msg=request.getParameter("query");
if(msg!=null){
out.println("<script>alert('Query sent to mail successfully.......')</script>");

}

%>
<%
try{
Connection con = databasecon.getconnection();
String status=request.getParameter("status");
String date=request.getParameter("date");
%>
<%
Statement st1=con.createStatement();
Statement st2=con.createStatement();

String query="";
if(status.equals("all")){
query="select * from PRESCRIPTION ";
}
else{

query="select * from PRESCRIPTION  where PROCESSING_STATUS='"+status+"' and datee='"+date+"'";

}
ResultSet rs= st2.executeQuery(query);
	
%>


<%
while(rs.next()){
	%>
<tr>
	<td><%=rs.getString(1)%> </td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%> </td>
	<td><%=rs.getString(4)%></td>
	<td><%=rs.getString(5)%></td>
	<td><%=rs.getString(6)%> </td>
	<td><%=rs.getString(7)%></td>
	<td><%=rs.getString(8)%></td>
	<td><%=rs.getString(9)%></td>
	<td><%=rs.getString(10)%></td>

	

</tr><%}%>
</table></center>
<%
}
catch(Exception e)
{
e.printStackTrace();
	}
%>

<br>
<%@ include file="footer.jsp"%>

