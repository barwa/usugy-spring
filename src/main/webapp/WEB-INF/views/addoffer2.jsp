<%--
  Created by IntelliJ IDEA.
  User: tomek
  Date: 2016-10-31
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>

<%@include file="header.jsp" %>

<header id="head" class="secondary"></header>
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12"></div>
        </div>
    </div>
</div>
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-8">
                <ul class="breadcrumb">
                    <li>
                        <a href="#">Moje konto</a>
                    </li>
                    <li>
                        <a href="#">Moje oferty</a>
                    </li>
                    <li class="active">Dodaj oferte</li>
                </ul>
                <p></p>
                <br><br>

                <p></p>
                <form:form commandName="offer">
                <%--<form role="form">--%>
                    <div class="form-group">
                        <label class="control-label">Nazwa Twojej usługi</label>
                        <form:input path="title" class="form-control" placeholder="np. fryzjer damski" type="text"></form:input>
                        <span class="text-danger"><form:errors path="title" element="div"></form:errors></span>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Krótkie motto Twojego biznesu</label>
                        <form:input path="shortdesc" class="form-control" placeholder="np. Twoje włosy są dla mnie najważniejsze." type="text"></form:input>
                        <span class="text-danger"><form:errors path="shortdesc" element="div"></form:errors></span>
                    </div>
                    <div class="form-group">
                          <label class="control-label">Dluższy opis Twojej oferty</label>
                         <form:textarea path="description"  class="form-control"  rows="20" placeholder="..."></form:textarea>
                        <span class="text-danger"><form:errors path="description" element="div"></form:errors></span>
                   </div>
                    <%--<div class="row" >--%>
                        <label class="control-label">Dodaj zdjęcia</label>
                        <input id="input-24"  type="file" multiple="true" class="file-loading">
                        <script>
                            $(document).on('ready', function() {
                                $("#input-24").fileinput({
                                    uploadUrl: "/uploadMultipleFile?${_csrf.parameterName}=${_csrf.token}",
                                    initialPreviewAsData: false,
                                    deleteUrl: "/removeFile?${_csrf.parameterName}=${_csrf.token}",
                                    overwriteInitial: false,
                                    maxFileSize: 100,
                                    minFileCount: 1,
                                    maxFileCount: 5,
                                    initialPreviewConfig: "",
                                    initialCaption: "Zdjęcia zrealizowanych usług"
                                });
                            });
                        </script>
                    <%--</div>--%>
                    <button type="submit" class="btn btn-default text-danger">Publikuj</button>
                </form:form>

            </div>
            <div class="col-md-3">

                <a href="#"><img src="https://lh3.googleusercontent.com/-KJvY7t5ArQ0/AAAAAAAAAAI/AAAAAAAAAAA/WHtSXc4uYQQ/photo.jpg" width="100" height="100" class="center-block img-responsive"></a>
                <h3>Jan Kowalski</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
                    <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
                    <br>Ut enim ad minim veniam, quis nostrud</p>
                <hr>
                <a href="#"><i class="fa fa-2x fa-cut fa-fw"></i></a>Zdrowie i uroda
                <br>
                <br>
                <a href="#"><i class="fa fa-2x fa-car fa-fw"></i></a>Dojazd do domu klienta
                <br>
                <br>
                <h4>Godziny pracy:
                    <br>
                    <br>Pon - Sob: 12:00 - 20:00</h4>
                <hr>
                <img class="img-responsive" src="http://maps.googleapis.com/maps/api/staticmap?center=Tombouctou,Mali&amp;zoom=12&amp;size=200x200&amp;sensor=false">
                <hr>
            </div>
        </div>
    </div>
</div>

<%@include file="footer.jsp" %>