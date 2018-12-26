<%@include file="aheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon,java.util.*"%>
<%
String msg = request.getParameter("msgg");
if(msg != null){
out.println("<script>alert('Drug Details Added.........')</script>");
}
%>

<%

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();


					
ResultSet rs=st.executeQuery("select * from PHARM_CO ");

%>
             <br><br><br>
		<section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                   <h2>Drug_Details</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
				
					<form action="drug_insert.jsp" method="post" class="form-group" id="contact-form">
						
						<br>
						
						<label>Trade_Name</label><div class="row">
							<div class="col-md-4">
								<input type="text" name="tname"  class="form-control"></div>
						</div><br>
						
						<label>PHARMACYCOMPANY_NAME</label><div class="row">
						<div class="col-md-4">
							<select name="pname" class="form-control">
							<option value="">-------</option>
							<%while(rs.next()){%>
								<option value=<%=rs.getString(1)%>><%=rs.getString(1)%>
								<%}%></option>
							</select></div>
						</div><br>
						<label>Formula</label><div class="row">
							<div class="col-md-4">
								<input type="text" name="formula"  class="form-control"></div>
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
			