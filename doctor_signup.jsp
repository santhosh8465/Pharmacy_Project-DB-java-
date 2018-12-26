<%@include file="aheader.jsp"%>

<%
if(request.getParameter("msg")!=null){
	
	out.println("<script>alert('SSN already Exist')</script>");
}
%>
			
             <br><br><br><br>
		<section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                   <h2>Doctor_Details</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
				
					<form action="register1.jsp" method="post" class="form-group" id="contact-form">
						
						<br>
						<label>	SSN</label><div class="row">
							<div class="col-md-4">
								<input type="text" name="ssn"  class="form-control"></div>
						</div><br>
						<label>Name</label><div class="row">
							<div class="col-md-4">
								<input type="text" name="name"  class="form-control"></div>
						</div><br>
						<label>Specialty</label><div class="row">
						<div class="col-md-4">
								<input type="text" name="specialty"    class="form-control" required></div>
						</div><br>
						
						<label>Experience</label><div class="row">
						<div class="col-md-4">
								<input type="number" name="ex"  required  class="form-control"  required></div>
						</div><br>
						
					<div class="row">
						<div class="row">
                                <button type="submit" class="btn btn-success btn-lg">Register</button>
                            </div>
						</div>
					</form>
					</div>
            </div>
        </div>
    </section>
				<br><br><br><br>
	<%@include file="footer.jsp"%>
			