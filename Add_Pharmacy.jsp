<%@include file="aheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon,java.util.*"%>
<%
String msg = request.getParameter("msgg");
if(msg != null){
out.println("<script>alert('Pharmacy Details Added.........')</script>");
}

String msg1 = request.getParameter("msg");
if(msg1 != null){
out.println("<script>alert('Pharmacy ID already exist.........')</script>");
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
                   <h2>Pharmacy_Details</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
				
					<form action="pharmacy_insert.jsp" method="post" class="form-group" id="contact-form">
						
						<label>PHARM_ID</label><div class="row">
							<div class="col-md-4">
								<input type="text" name="pid" class="form-control"></div>
						</div><br>
						<label>Name</label><div class="row">
							<div class="col-md-4">
								<input type="text" name="name" class="form-control"></div>
						</div><br>
						<label>Address</label><div class="row">
							<div class="col-md-4">
								<input type="text" name="adr"  class="form-control"></div>
						</div><br>
						
						<label>Number</label><div class="row">
						<div class="col-md-4">
								<input type="text" name="num" pattern="[0-9]{10}"   required title="10 Numbers "  class="form-control"  required></div>
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
        <br><br><br>
	<%@include file="footer.jsp"%>
			