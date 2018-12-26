<%@ include file="header.jsp" %>
<br><br><br><br><br>
<% if(request.getParameter("msg1")!=null){
	  out.println("<script>alert('Incorrect Username or Password')</script>");
}%>
  <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Admin Login</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
               
                    <form method="post" action="admincheck.jsp">
                        <div class="row">
                            <div class="col-md-4">
                               
                                <input type="text" class="form-control" name="unm" placeholder="Name" id="name" required data-validation-required-message="Please enter your name.">
                                
                            </div>
                        </div>
                       <br>
                        <div class="row">
                            <div class="col-md-4">
                                
                                <input type="password" class="form-control" name="pwd" placeholder="Password" id="phone" required data-validation-required-message="Please enter your phone number.">
                                
                            </div>
                        </div>
                       <br><br>
						 <div class="row">
                                <button type="submit" class="btn btn-success btn-lg">Login</button>
                            </div>
                       
                        <br>
                    </form>
                </div>
            </div>
        </div>
    </section>
	<br><br><br><br><br>
		    <%@ include file="footer.jsp" %> 