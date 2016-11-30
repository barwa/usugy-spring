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
								<h1 class="text-center">
									<spring:message code="account.signin" />
								</h1>
								<c:choose>
									<c:when test="${loginfailed == true}">

										<div>
											<spring:message code="login.incorrect" />
											<br>
										</div>
									</c:when>
								</c:choose>
								<form class="form-horizontal margin-top-30"
									action="<c:url value='j_spring_security_check' />" name="f"
									method="post">
									<%--<form class="form-horizontal margin-top-30"  method="post">--%>
									<div class="form-group">
										<label for="username"><spring:message
												code="account.email" /></label> <input type="text" name="j_username"
											class="form-control" id="username" />
									</div>
									<div class="form-group">
										<label for="password"><spring:message
												code="account.password" /></label> <input type="password"
											name="j_password" class="form-control" id="password" />
									</div>
									<div class="form-group">
										<div class="checkbox pad-bottom-10">
											<input id="check1" type="checkbox" name="price-on-call"
												value="price-on-call"> <label for="check1">Keep
												me signed in</label>
										</div>
									</div>

									<div class="form-group">
										<input type="submit" value="Sign in"
											class="lp-secondary-btn width-full btn-first-hover" />
									</div>
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
								</form>
								<div class="pop-form-bottom">
									<div class="bottom-links">
										<a class="signUpClick">Nie masz konta? Zarejestruj się</a> <a
											class="forgetPasswordClick pull-right">Nie pamiętam
											hasła</a>
									</div>
									<p class="margin-top-15">Connect with your Social Network</p>
									<ul class="social-login list-style-none">
										<li><button id="logingoogle"
												class="google flaticon-googleplus">
												<i class="fa fa-google-plus"></i><span>Google</span>
											</button></li>
										<li><button id="loginfacebook"
												class="facebook flaticon-facebook">
												<i class="fa fa-facebook"></i><span>Facebook</span>
											</button></li>
										<li><button id="logintwitter"
												class="twitter flaticon-twitter">
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