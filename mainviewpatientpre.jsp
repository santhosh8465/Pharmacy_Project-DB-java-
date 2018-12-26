<%@include file="aheader.jsp"%>

             <br><br><br><br>
		<section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                   <h2>Select Patient</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
				
					<form action="viewpatientpre.jsp" method="post" class="form-group" id="contact-form">
						
						<br>
						
						<label>select status</label><div class="row">
						<div class="col-md-4">
							<select name="status" class="form-control">
							<option value="all">All</option>
							<option value="canceled">canceled</option>
							<option value="ready-to-go">ready-to-go</option>
							<option value="on-pending">on-pending</option>
							<option value="completed">completed</option>
							
							</select></div>
						</div><br>
					<div class="row"><div class="col-md-4">
								<input type="date" name="date"  class="form-control" ></div>
						</div><br>						
					<div class="row">
						<div class="row">
                                <button type="submit" class="btn btn-success btn-lg">Go</button>
                           </div>
						</div>
					</form>
					</div>
            </div>
        </div>
    </section>
        <br><br><br>
	<%@include file="footer.jsp"%>
			