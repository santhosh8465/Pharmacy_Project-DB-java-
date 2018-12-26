<%@include file="aheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon,java.util.*"%>
<%
String msg = request.getParameter("msgg");
if(msg != null){
out.println("<script>alert('Sells Details Registerd successfully')</script>");
}
%>

<%

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();


					
ResultSet rs=st.executeQuery("select * from PHARMACY");
ResultSet rs1=st1.executeQuery("select * from MAKE_DRUG");
ResultSet rs2=st2.executeQuery("select * from MAKE_DRUG");

%>
             <br><br><br>
		<section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                   <h2>Sells</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
				
					<form action="sells_insert.jsp" method="post" class="form-group" id="contact-form">
						
						<br>
						
						<label>Price</label><div class="row">
							<div class="col-md-4">
								<input type="number" name="price" class="form-control"></div>
						</div><br>
						
						<label>PHARMACY_ID</label><div class="row">
						<div class="col-md-4">
							<select name="pname" class="form-control">
							<option value="">-------</option>
							<%while(rs.next()){%>
								<option value=<%=rs.getString(1)%>><%=rs.getString(1)%>
								<%}%></option>
							</select></div>
						</div><br>
						<br>
						
						<label>Trade_Name</label><div class="row">
							<div class="col-md-4">
							<select name="tn" class="form-control">
							<option value="">-------</option>
							<%while(rs1.next()){%>
								<option value=<%=rs1.getString(1)%>><%=rs1.getString(1)%>
								<%}%></option>
							</select></div>
						</div><br>
						<label>PHARM_CO</label><div class="row">
							<div class="col-md-4">
							<select name="pid" class="form-control">
							<option value="">-------</option>
							<%while(rs2.next()){%>
								<option value=<%=rs2.getString(2)%>><%=rs2.getString(2)%>
								<%}%></option>
							</select></div>
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
			