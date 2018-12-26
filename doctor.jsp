<%@ include file="aheader.jsp" %>

<br><br><br><br>
<%
String msg = request.getParameter("msgg");
if(msg != null){
out.println("<script>alert('Doctor Details Added.........')</script>");
}
%>
<br>
 <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    
					<h4><a href="doctor_signup.jsp" style="text-decoration:none">Add Doctor</a></h4>
					<br>
					<h4><a href="newpre.jsp" style="text-decoration:none">New prescription</a></h4>
					 <br>
					<h4><a href="remove_pre.jsp" style="text-decoration:none">View/Remove prescription</a></h4>
					
					 <br>
					<h4><a href="remove_doctor.jsp" style="text-decoration:none">View/Remove Doctor</a></h4>
                    
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    
				<br>
					
                </div>
            </div>
        </div>
    </section>
	<br><br><br><br>
		    <%@ include file="footer.jsp" %> 