<%--
  Created by IntelliJ IDEA.
  User: tomek
  Date: 2016-11-25
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<!DOCTYPE html>
<html lang="pl">
<head>

<!-- Meta -->
<meta charset="utf-8">
<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Listingpro - Template HTML5">
<meta name="author" content="">

<!-- Title -->
<title>Usugy - Home</title>

<!-- Mobile Meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" href="assets/images/favicon.png"
	type="image/x-icon">

<!-- CSS -->
<link href="assets/lib/bootstrap/css/bootstrap.css" type="text/css"
	rel="stylesheet" />
<link href="assets/css/colors.css" type="text/css" rel="stylesheet" />
<link href="assets/css/font.css" type="text/css" rel="stylesheet" />
<link href="assets/lib/jQuery.filer-master/css/jquery.filer.css"
	type="text/css" rel="stylesheet" />
<link
	href="assets/lib/jQuery.filer-master/css/themes/jquery.filer-dragdropbox-theme.css"
	type="text/css" rel="stylesheet" />
<link href="assets/lib/Magnific-Popup-master/magnific-popup.css"
	type="text/css" rel="stylesheet" />
<link href="assets/lib/popup/css/component.css" type="text/css"
	rel="stylesheet" />
<link href="assets/lib/icon8/styles.min.css" type="text/css"
	rel="stylesheet" />
<link href="assets/lib/font-awesome/css/font-awesome.min.css"
	type="text/css" rel="stylesheet" />
<link type="text/css" rel="stylesheet"
	href="assets/lib/jquerym.menu/css/jquery.mmenu.all.css" />
<link href='assets/css/mapbox.css' rel='stylesheet' />
<link href='assets/lib/chosen/chosen.css' rel='stylesheet' />
<link
	href='https://api.mapbox.com/mapbox.js/plugins/leaflet-markercluster/v0.4.0/MarkerCluster.css'
	rel='stylesheet' />
<link
	href='https://api.mapbox.com/mapbox.js/plugins/leaflet-markercluster/v0.4.0/MarkerCluster.Default.css'
	rel='stylesheet' />
<link href="assets/css/main.css" type="text/css" rel="stylesheet" />

<!-- IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body onload='document.f.j_username.focus();'
	data-userimg="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAEGUlEQVRoge1ZLWwcRxQ+cMCVItXAIKDgQKQaGBQYtFLBm4mBgYFBQSoZGBgYGAQYFBhYOhAQYBBgqa204G7fWGdg4EqWUrCwqgpcqYoiy975xnKlAIMDAQYGWzAzd6vmfnb39rxX1Z+07L2n7828N+9na7VHPOK/A2IsEusNCuN9qRBIhUMK9S4x1inAXNX8RoKiqE5tbAuF3wQjGfGd09HVUtV8B4I6754IxlmfrLlxt7BHITYp1DtSmTdCmUsncyeVeU2Mxaq590AB5gSbv7wD1I7XKIrqA2WjqC7Z/JS+IanMm2HyDwqpzGvnxB/UwdNx8hRFdVLxslSmKdjcWmcQPATX4aQUGoLNvWBzXyTuibEoGF3BSCjEV9PgmI1IG9suPI4L2wjjfcFIJEOVyS0XJOPEneZmURt0dLXk8gUlUssHwYgEI6EWaEI7iWAkJdEqQMA9p6TQmMhO5Y64Z3eSRKUA8zPgiP7FJer3hW209JeCkQhl/i6TWy744kaMH4raoDa+9q1LmdzykQj1riuGPxa1IZXZdbd6UCa3XKCj6zVH4m1hG6yPBSN5ztcbZXLLSQKrLiy6xfQvFmxngITCeKVsfpnhO14K9V4RfdtE4pW71ZOy+WWGYLwXjGSS+YJaIHerUZncckEqc2xfLV04vinE5qT92sQg1hu+T6JQ7+bWD/WeYGDSw5gYFEV1qcypK2iXefV9Cy8YZ5UPV990bj4TjD/tqcbfZtUT6vq5c+L3afLLBakQuDhvZtcxTTcdHk6TWy6kXp4uBZgfK28bxW4ZI0Dp8LOJVOZ0VLy72nFS+ZM7DNSO11KbkVPii4VPZALMp5xISMXLVXAdCbfbukvttm6J9RYpNEihQay3BJub9O6ras5D4WuCr/gDv/6SrroZfRx6DSBfLBDrDRtG5sbtr86ojW1qXT2baUdS25C7kXIdPPVyM7UyrdVqNVLxsg+nLAOSZNPyITgTCU9HV0u2GNqQco68Gqtneyyf9PdSIXjwTaP9faC/6/VYnozNB7s+DfFiqH4Yr3g5ezP9QxCMMwrxYqr/UCjAHDFe+sWzr+SScUCtq2e1Wr/t6G3Z2/GaTfyLBWKsSsZBr4a4YYwUGm4R3hXppzuM97N0CfmcsO36h5QD7ynUO9R59+QT2VDvCDYfhz6/NslfDjyoNrb7vyhcyzNANr8DUVSXCocpw+fEWB/vOBalMk0bfuZWsLmVypxKZZpZpklirAvGeT/vTGvQoWVGPw/MR2K9VdhQQdhI6N1uVGhm8SOoYMDnQBVwBRQur/JNodS+/KLXZjNWp8QxO5/+mHCXa2Huf+AINr9Oj14++DDPlfxCmZ9zK00ZMjQ7bknRyqz0r6d21r4PmZxI/6+Y1W+lE39e9GYf8Yj/K/4BSKKZsGt5SOsAAAAASUVORK5CYII="
	data-userlink="login.html">
	<div id="page">
		<!--==================================Header Open=================================-->
		<header class="lp-header-bg">
			<div class="lp-header-overlay"></div>
			<!-- ../header-overlay -->
			<div class="lp-topbar">
				<div class="container">
					<div class="row">
						<div class="col-md-8 col-sm-8 text-left">
							<ul class="lp-topbar-menu">
								<div class="lp-logo">
									<a href="index.html"> <img src="assets/images/logo.png"
										alt="" />
									</a>
								</div>
						</div>
						<div class="col-md-4 col-sm-4 text-right">

							<c:choose>

								<c:when
									test="${pageContext.request.userPrincipal.authenticated}">

                                    <div class="lp-join-now">
								        <span> <!-- Contacts icon by Icons8 --> <img
                                                class="icon icons8-Contacts"
                                              src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAADNElEQVRoge2ZLWhbURTHn3iig8IiIiomIgqrqJiomJgIrCKiomKig4iKioiKioiJiEJExURFRGEbRERMVERkENhE5BgTGUxEVERkUBERURFR8Zu45+5durzk3feRm7H8IRB455z3u9/3nOd5a6317wjYAcrAOdAEroAqcAhsuOabK8AHKsBX5qsP7LrmnSlgE+gasCMZhRpwDJwCDeBGnk+Bt8COa/Y/AjaAn0YDDgA/xNYH3j8YoUaY/VIlPQvwHdiKYO8De0AdGItvcxms86AKwL38rOe9bAoTacyzLBijglQE4jpBjHOJ8TFNNluItkAcJ4ixKzGGKaJZQ/QEopgwDgApYcUC0NtpIWEc5w3R227shQrkVqEhn4ThdYIYTyXGrzTZbCH04fYmQYznEqOfJpstRFUg3qUQ4zJNNluIA4H4nCDGtcQop8lmC1ESiElM/7zcCgD20+azAdE33lpMfx+4kBjttPlsQAYCETu/AIoSo5cmmy1E4vmNylcgwX0tsVDpLMAQqMbwr4mv88XuAx0BuYnhr6/wXVwnV8Aj4IcAvbDweyk+37LksxKqUgJQt/Cpi89VlmxWMnaeCZCLYJ8zplVxCYjRRZCbdObNd1lXOiFzt+WGieC6ohuTn2GTMxoBsOeCda5Qta2pATkGTlAFioL8HxnPR66ZQ2WcCQPCpbNKdzn6IhFcAPOow7ItozBGnRUVYHulG0JQDZkusNvSdqxSydTzPA9VOdTTaWGCBLSMKeh+wcsoNI0pBXARwa9m2N9LjOVWGlHnwCuCO5aGaROUT4/m+O8bdq0HndAFjsjyGwqq6n5GUHgGdTpfAttiUzeeNVBnS15+JbHVqolPAVUInxjPxqhS6sJbgm0jysCt8aIB6pvH5gzbU+COcE2Bs5COqhDUynRH/WUbpwE+6oONVh84jOC3I6PTkd4dy/86EbJJ1Ce6vvHe1qxOs2mIXgd3wEnsQPHfXzZGt0ecnIUgBR0ia8CFUAfoUFjsslDgCcHiK2XEaMOj04QpNgVzgg84X7LDs5MxzaMvfuCDtVPGQu2GAC0bJ3OrXTXdRm1EbmEo93ocd2TXWut/1W9KptrZf/2YyAAAAABJRU5ErkJggg=="
                                              alt="join-now">
								        </span>
                                        <a href="<c:url value="j_spring_security_logout" />" class="md-trigger">Wyloguj</a>

                                    </div>
								</c:when>

						<c:otherwise>

							<div class="lp-join-now">
								<span> <!-- Contacts icon by Icons8 --> <img
									class="icon icons8-Contacts"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAADNElEQVRoge2ZLWhbURTHn3iig8IiIiomIgqrqJiomJgIrCKiomKig4iKioiKioiJiEJExURFRGEbRERMVERkENhE5BgTGUxEVERkUBERURFR8Zu45+5durzk3feRm7H8IRB455z3u9/3nOd5a6317wjYAcrAOdAEroAqcAhsuOabK8AHKsBX5qsP7LrmnSlgE+gasCMZhRpwDJwCDeBGnk+Bt8COa/Y/AjaAn0YDDgA/xNYH3j8YoUaY/VIlPQvwHdiKYO8De0AdGItvcxms86AKwL38rOe9bAoTacyzLBijglQE4jpBjHOJ8TFNNluItkAcJ4ixKzGGKaJZQ/QEopgwDgApYcUC0NtpIWEc5w3R227shQrkVqEhn4ThdYIYTyXGrzTZbCH04fYmQYznEqOfJpstRFUg3qUQ4zJNNluIA4H4nCDGtcQop8lmC1ESiElM/7zcCgD20+azAdE33lpMfx+4kBjttPlsQAYCETu/AIoSo5cmmy1E4vmNylcgwX0tsVDpLMAQqMbwr4mv88XuAx0BuYnhr6/wXVwnV8Aj4IcAvbDweyk+37LksxKqUgJQt/Cpi89VlmxWMnaeCZCLYJ8zplVxCYjRRZCbdObNd1lXOiFzt+WGieC6ohuTn2GTMxoBsOeCda5Qta2pATkGTlAFioL8HxnPR66ZQ2WcCQPCpbNKdzn6IhFcAPOow7ItozBGnRUVYHulG0JQDZkusNvSdqxSydTzPA9VOdTTaWGCBLSMKeh+wcsoNI0pBXARwa9m2N9LjOVWGlHnwCuCO5aGaROUT4/m+O8bdq0HndAFjsjyGwqq6n5GUHgGdTpfAttiUzeeNVBnS15+JbHVqolPAVUInxjPxqhS6sJbgm0jysCt8aIB6pvH5gzbU+COcE2Bs5COqhDUynRH/WUbpwE+6oONVh84jOC3I6PTkd4dy/86EbJJ1Ce6vvHe1qxOs2mIXgd3wEnsQPHfXzZGt0ecnIUgBR0ia8CFUAfoUFjsslDgCcHiK2XEaMOj04QpNgVzgg84X7LDs5MxzaMvfuCDtVPGQu2GAC0bJ3OrXTXdRm1EbmEo93ocd2TXWut/1W9KptrZf/2YyAAAAABJRU5ErkJggg=="
									alt="join-now">
								</span> <a class=" md-trigger" data-modal="modal-3">Dołącz do nas!</a>
							</div>

						</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
	</div>
	<!-- ../topbar -->

	<!-- Login Popup -->
	<div class="md-modal md-effect-3" id="modal-3">
		<div class="login-form-popup lp-border-radius-8">
			<div class="siginincontainer">
				<h1 class="text-center">
					<spring:message code="account.signin" />
				</h1>
				<c:choose>
					<c:when test="${error.equals('loginfailed')}">

						<div>
							<spring:message code="login.incorrect" />
							<br>
						</div>
					</c:when>
				</c:choose>
				<form action="<c:url value='j_spring_security_check' />" name="f"
					method="post">
					<%--<form class="form-horizontal margin-top-30"  method="post">--%>
					<div class="form-group">
						<label for="username"><spring:message code="account.email" /></label>
						<input type="text" name="j_username" class="form-control"
							id="username" />
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
							class="forgetPasswordClick pull-right">Nie pamiętam hasła</a>
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
			<div class="siginupcontainer">
				<h1 class="text-center">
					<spring:message code="account.register" />
				</h1>
				<form:form commandName="account"
					class="form-horizontal margin-top-30">
					<%--<form class="form-horizontal margin-top-30"  method="post">--%>
					<div class="form-group">
						<label for="email"><spring:message code="account.email" /></label>
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
						<p>Link aktywujący konto zostanie przesłany do Ciebie poprzez
							e-mail.</p>
					</div>
					<div class="form-group">
						<input type="submit" value="Załóż konto"
							class="lp-secondary-btn width-full btn-first-hover" />
					</div>
				</form:form>
				<div class="pop-form-bottom">
					<div class="bottom-links">
						<a class="signInClick">Masz już konto? Zaloguj się</a> <a
							class="forgetPasswordClick pull-right">Nie pamiętam hasła</a>
					</div>
					<p class="margin-top-15">Connect with your Social Network</p>
					<ul class="social-login list-style-none">
						<li><button id="logingoogle2"
								class="google flaticon-googleplus">
								<i class="fa fa-google-plus"></i><span>Google</span>
							</button></li>
						<li><button id="loginfacebook2"
								class="facebook flaticon-facebook">
								<i class="fa fa-facebook"></i><span>Facebook</span>
							</button></li>
						<li><button id="logintwitter2"
								class="twitter flaticon-twitter">
								<i class="fa fa-twitter"></i><span>Twitter</span>
							</button></li>
					</ul>
				</div>
				<a class="md-close"><i class="fa fa-close"></i></a>
			</div>
			<div class="forgetpasswordcontainer">
				<h1 class="text-center">Nie pamiętam hasła</h1>
				<form class="form-horizontal margin-top-30" method="post">
					<div class="form-group">
						<label for="password">Email Address *</label> <input type="email"
							class="form-control" id="email2" />
					</div>
					<div class="form-group">
						<input type="submit" value="Wyślij nowe hasło"
							class="lp-secondary-btn width-full btn-first-hover" />
					</div>
				</form>
				<div class="pop-form-bottom">
					<div class="bottom-links">
						<a class="cancelClick">Cancel</a>
					</div>
				</div>
				<a class="md-close"><i class="fa fa-close"></i></a>
			</div>
		</div>
	</div>
	<!-- ../Login Popup -->

	<!-- Popup Open -->
	<div class="md-modal md-effect-3" id="modal-2">
		<div class="container">
			<div class="md-content ">
				<div class="row popup-inner-left-padding ">
					<div class="col-md-6 lp-insert-data"></div>
					<div class="col-md-6">
						<div id="quickmap" class="quickmap"></div>
						<a class="md-close widget-map-click"><i class="fa fa-close"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Popup Close -->
	<div class="md-overlay"></div>
	<!-- Overlay for Popup -->

	<!--==================================Header Close=================================-->