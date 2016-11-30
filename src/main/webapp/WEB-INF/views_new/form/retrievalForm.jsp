<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

	<section>
		
		<div class="lp-section-row aliceblue">
			<div class="lp-section-content-container-one">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="login-form-popup lp-border-radius-8">
							
								<div class="customcontainer">
									<h1 class="text-center">Forgotten Password</h1>
									<form class="form-horizontal margin-top-30"  method="post">
										<div class="form-group">
											<label for="fpassword">Email Address *</label>
											<input type="email" class="form-control" id="fpassword" />
										</div>
										<div class="form-group">
											<input type="submit" value="Get New Password" class="lp-secondary-btn width-full btn-first-hover" /> 
										</div>
									</form>	
									<div class="pop-form-bottom">
										<div class="bottom-links">
											<a class="cancelClick" >Cancel</a>
										</div>
									</div>
								<a class="md-close"><i class="fa fa-close"></i></a>
								</div>
							</div>	
						</div>
					</div>
				</div>
			</div>
		</div><!-- ../section-row -->
	
	</section>