<%@include file="aheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon,java.util.*"%>
<%
if(request.getParameter("msg")!=null){
	
	out.println("<script>alert('Details already Exist')</script>");
}
%>

<%

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();


					
ResultSet rs=st.executeQuery("select * from DOCTOR ");

%>
             <br><br><br>
		<section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                   <h2>Patient_Details</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
				
					<form action="patient_register.jsp" method="post" class="form-group" id="contact-form">
						
						<br>
						<label>	SSN</label><div class="row">
							<div class="col-md-4">
								<input type="text" name="ssn" pattern="[0-9]{3}"  class="form-control"></div>
						</div><br>
						<label>Name</label><div class="row">
							<div class="col-md-4">
								<input type="text" name="name"  pattern="[A-Za-z]+" class="form-control"></div>
						</div><br>
						
						<label>Physician</label><div class="row">
						<div class="col-md-4">
							<select name="physician" class="form-control">
							<option value="">-------</option>
							<%while(rs.next()){%>
								<option value=<%=rs.getString(1)%>><%=rs.getString(1)%>
								<%}%></option>
							</select></div>
						</div><br>
						<label>	Address</label><div class="row">
						<div class="col-md-4">
								<input type="text" name="adr"    class="form-control" required></div>
						</div><br>
						
						<label>Age</label><div class="row">
						<div class="col-md-4">
								<input type="text" name="age" pattern="[0-9]{2}"   required title="2 Numbers minimum"  class="form-control"  required></div>
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
			