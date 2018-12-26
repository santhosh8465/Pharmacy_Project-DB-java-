<%@ include file="aheader.jsp" %>

<br>
<%
String msg=request.getParameter("mm");

if(msg!=null){

out.println("<script>alert('Enter Valid Customer Id')</script>");
}
%>
<br><br><br><br><br>
  <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h4><a href="Add_Pharmaceutical.jsp" style="text-decoration:none">Add Pharmaceutical</a></h4>
					<br>
					 <h4><a href="add_drug.jsp" style="text-decoration:none">Add Drug</a></h4>
					<br>
					 <h4><a href="sells.jsp" style="text-decoration:none">Sells Drug</a></h4>
					 <br>
					 <h4><a href="viewdrugs.jsp" style="text-decoration:none">Drug List</a></h4>
					 <br>
					 <h4><a href="viewsolddrugs.jsp" style="text-decoration:none">Cost and drugs Sold</a></h4>
					 <br>
					 <h4><a href="expensivedrugs.jsp" style="text-decoration:none">Most_expensive drugs </a></h4>
					 <br>
					 <h4><a href="another_pharmacylist.jsp" style="text-decoration:none">Pharmacy_List sold by another </a></h4>
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
	<br>
		    <%@ include file="footer.jsp" %> 