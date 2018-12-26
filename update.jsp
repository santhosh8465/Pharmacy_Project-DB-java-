<%@include file="aheader.jsp"%>
<br><br>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon,java.util.*"%>


<%

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();


String name = request.getParameter("name");
					
ResultSet rs1=st.executeQuery("select * from CONTRACT where NAME='"+name+"' ");
if(rs1.next()){



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
				
					<form action="update_action.jsp" method="post" class="form-group" id="contact-form">
						
						
						
						
						<label>START_DATE</label><div class="row">
						<div class="col-md-4">
								<input type="text" name="sd" value=<%=rs1.getString(3)%> class="form-control"  required></div>
								<input type="hidden" name="name" value=<%=name%> class="form-control"  required>
						</div><br>
						<label>END_DATE</label><div class="row">
						<div class="col-md-4">
							<input type="text" name="ed"   value=<%=rs1.getString(4)%> class="form-control" required></div>
						</div><br>
						<label>	Text</label><div class="row">
						<div class="col-md-4">
								<input type="text" name="txt"  value=<%=rs1.getString(5)%>  class="form-control" required></div>
						</div><br>
						<label>Supervisor</label><div class="row">
						<div class="col-md-4">
							<input type="text" name="supervisor"   value=<%=rs1.getString(6)%> class="form-control" required></div>
						</div><br>
						<%}%>
					<div class="row">
						<div class="row">
                                <button type="submit" class="btn btn-success btn-lg">Update</button>
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
			