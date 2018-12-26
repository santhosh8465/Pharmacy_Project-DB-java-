<%@include file="aheader.jsp"%>
<br><br>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon,java.util.*"%>
<%
String msg = request.getParameter("msgg");
if(msg != null){
out.println("<script>alert('Contract Details Added.........')</script>");
}
%>

<%

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
//Statement st2=con.createStatement();
//Statement st3=con.createStatement();


					
ResultSet rs1=st.executeQuery("select * from PHARM_CO ");
ResultSet rs=st1.executeQuery("select * from PHARMACY ");
//ResultSet rs2=st2.executeQuery("select * from drug ");
//ResultSet rs3=st3.executeQuery("select * from pharmacy ");

%>
             <br><br><br>
		<section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                   <h2>Contract_Details</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
				
					<form action="contract_insert.jsp" method="post" class="form-group" id="contact-form">
						
						<label>PHARMACY</label><div class="row">
						<div class="col-md-4">
							<select name="phcname" class="form-control">
							<option value="">-------</option>
							<%while(rs.next()){%>
								<option value=<%=rs.getString(1)%>><%=rs.getString(1)%>
								<%}%></option>
							</select></div>
						</div><br>
						<label>PHARMACYCOMPANY</label><div class="row">
						<div class="col-md-4">
							<select name="phrnmae" class="form-control">
							<option value="">-------</option>
							<%while(rs1.next()){%>
								<option value=<%=rs1.getString(1)%>><%=rs1.getString(1)%>
								<%}%></option>
							</select></div>
						</div><br>
						<label>	Start_Date</label><div class="row">
						<div class="col-md-4">
								<input type="date" name="start_date"    class="form-control" required></div>
						</div><br>
						
						<label>End_Date</label><div class="row">
						<div class="col-md-4">
								<input type="date" name="end_date"  class="form-control"  required></div>
						</div><br>
						<label>Text</label><div class="row">
						<div class="col-md-4">
							<input type="text" name="text"    class="form-control" required></div>
						</div><br>
						<label>Supervisor</label><div class="row">
						<div class="col-md-4">
							<input type="text" name="supervisor"    class="form-control" required></div>
						</div><br>
						
					<div class="row">
						<div class="row">
                                <button type="submit" class="btn btn-success btn-lg">Add</button>
                            </div>
						</div>
					</form>
					</div>
            </div>
        </div>
    </section>
<%
	} 
catch(Exception ae){
ae.printStackTrace();
}
%>
        
	<%@include file="footer.jsp"%>
			