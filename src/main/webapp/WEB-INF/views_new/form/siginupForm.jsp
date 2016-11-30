<!--==================================Section Open=================================-->

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
								<h1 class="text-center">Sign Up</h1>
								<form:form commandName="account"
									class="form-horizontal margin-top-30" method="post">
									<div class="form-group">
										<label for="email"><spring:message
												code="account.email" /></label>
										<form:input path="email" class="form-control" />
										<%--<input type="email" class="form-control" id="email2" />--%>
										<span class="text-danger"> <form:errors path="email"
												element="div"></form:errors>
										</span>
									</div>
									<div class="form-group">
										<label for="password"><spring:message
												code="account.password" /></label>
										<%--<input type="password" class="form-control" id="password2" />--%>
										<form:password path="password" class="form-control" />
										<span class="text-danger"> <form:errors path="password"
												element="div"></form:errors>
										</span>

									</div>
									<div class="form-group">
										<p>Link aktywujący konto zostanie przesłany do Ciebie
											poprzez e-mail.</p>
									</div>
									<div class="form-group">
										<input type="submit" value="Załóż konto"
											class="lp-secondary-btn width-full btn-first-hover" />
									</div>
								</form:form>
								<div class="pop-form-bottom">
									<div class="bottom-links">
										<a class="signInClick">Already have an account? Sign in</a> <a
											class="forgetPasswordClick pull-right">Forgot Password</a>
									</div>
									<p class="margin-top-15">Connect with your Social Network</p>
									<ul class="social-login list-style-none">
										<li><button class="google flaticon-googleplus">
												<i class="fa fa-google-plus"></i><span>Google</span>
											</button></li>
										<li><button class="facebook flaticon-facebook">
												<i class="fa fa-facebook"></i><span>Facebook</span>
											</button></li>
										<li><button class="twitter flaticon-twitter">
												<i class="fa fa-twitter"></i><span>Twitter</span>
											</button></li>
									</ul>
								</div>
								<a class="md-close"><i class="fa fa-close"></i></a>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ../section-row -->

</section>
<!--==================================Section Close=================================-->