<%@include file="aheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon,java.util.*"%>
<%
String msg = request.getParameter("msgg");
if(msg != null){
out.println("<script>alert('Prescription Details Added successfully.........')</script>");
}
%>
<%
String msg2 = request.getParameter("msgg");
if(request.getParameter("msg")!=null)
{
	out.println("<script>alert('please enter valid details')</script>");
}
%>
<%

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();


					
ResultSet rs=st.executeQuery("select * from PRI_PHY_PATIENT ");
ResultSet rs1=st1.executeQuery("select * from DOCTOR ");
ResultSet rs2=st2.executeQuery("select  * from MAKE_DRUG ");
ResultSet rs3=st3.executeQuery("select * from MAKE_DRUG ");
// ResultSet rs2=st2.executeQuery("select * from drug ");
//ResultSet rs3=st3.executeQuery("select * from pharmacy ");

%>
             <br><br><br>
		<section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                   <h2>Prescription_Details</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
				
					<form action="pre_insert.jsp" method="post" class="form-group" id="contact-form">
					<label>Pre_Id</label><div class="row">
						<div class="col-md-4">
							<input type="text" name="pre_id"    class="form-control" required></div>
						</div><br>
						
						<label>Patient</label><div class="row">
						<div class="col-md-4">
							<select name="pssn" class="form-control">
							<option value="">-------</option>
							<%while(rs.next()){%>
								<option value=<%=rs.getString(1)%>><%=rs.getString(1)%>
								<%}%></option>
							</select></div>
						</div><br>
						<label>Doctor</label><div class="row">
						<div class="col-md-4">
							<select name="dssn" class="form-control">
							<option value="">-------</option>
							<%while(rs1.next()){%>
								<option value=<%=rs1.getString(1)%>><%=rs1.getString(1)%>
								<%}%></option>
							</select></div>
						</div><br>
						<label>	Date</label><div class="row">
						<div class="col-md-4">
								<input type="date" name="date"    class="form-control" required></div>
						</div><br>
						
						<label>Quantity</label><div class="row">
						<div class="col-md-4">
								<input type="text" name="qn" pattern="[0-9]+"   required title="Numbers only"  class="form-control"  required></div>
						</div><br>
						<label>Trade_Name</label><div class="row">
						<div class="col-md-4">
							<select name="tn" class="form-control">
							<option value="">-------</option>
							<%while(rs2.next()){%>
								<option value=<%=rs2.getString(1)%>><%=rs2.getString(1)%>
								<%}%></option>
							</select></div>
						</div><br>
						<label>Pharm_Id</label><div class="row">
						<div class="col-md-4">
							<select name="pn" class="form-control">
							<option value="">-------</option>
							<%while(rs3.next()){%>
								<option value=<%=rs3.getString(2)%>><%=rs3.getString(2)%>
								<%}%></option>
							</select></div>
						</div><br>
						<label>Drop-off time</label><div class="row">
						<div class="col-md-4">
							<input type="text" name="dt"    class="form-control" required></div>
						</div><br>
						<label>Pick-up time</label><div class="row">
						<div class="col-md-4">
							<input type="text" name="pt"    class="form-control" required></div>
						</div><br>
						<label>Processing-status </label><div class="row">
						<div class="col-md-4">
							<select name="status" class="form-control">
							<option value="canceled">canceled</option>
							<option value="ready-to-go">ready-to-go</option>
							<option value="on-pending">on-pending</option>
							<option value="completed">completed</option>
							
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
	response.sendRedirect("newpre.jsp?msg=existed");
ae.printStackTrace();
}
%>
        
	<%@include file="footer.jsp"%>
			