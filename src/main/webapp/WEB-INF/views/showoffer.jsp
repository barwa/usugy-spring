<%--
  Created by IntelliJ IDEA.
  User: tomek
  Date: 2016-11-01
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@include file="header.jsp" %>

<script>
    jQuery(document).ready(function() {

        jQuery('.carousel[data-type="multi"] .item').each(function(){
            var next = jQuery(this).next();
            if (!next.length) {
                next = jQuery(this).siblings(':first');
            }
            next.children(':first-child').clone().appendTo(jQuery(this));

            for (var i=0;i<2;i++) {
                next=next.next();
                if (!next.length) {
                    next = jQuery(this).siblings(':first');
                }
                next.children(':first-child').clone().appendTo($(this));
            }
        });

    });
</script>

<header id="head" class="secondary"></header>
<p></p>
    <div class="container">

        <!--The main div for carousel-->
        <div class="container text-center">
            <div class="carousel slide row" data-ride="carousel" data-type="multi" data-interval="200000" id="fruitscarousel">

                <div class="carousel-inner">
                    <div class="item active">
                        <div class="col-md-3 col-sm-4 col-xs-12"><a href="#"><img src="http://www.iall-unillanos.com/wp-content/uploads/2012/12/cinnamon-nature-200x200.jpg" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-md-3 col-sm-4 col-xs-12"><a href="#"><img src="http://www.golocaltours.com.au/i/wp-content/uploads/2015/05/nature-farms-200x200.jpg" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-md-3 col-sm-4 col-xs-12"><a href="#"><img src="http://www.bibleworth.com/wp-content/uploads/2013/08/christian-nature--200x200.jpg" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-md-3 col-sm-4 col-xs-12"><a href="#"><img src="http://www.peacefulridgerecovery.com/wp-content/uploads/2013/11/prarie.jpg" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-md-3 col-sm-4 col-xs-12"><a href="#"><img src="http://designyoutrust.com/wp-content/uploads/2012/05/Michael-Greene8-200x200.jpg" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-md-3 col-sm-4 col-xs-12"><a href="#"><img src="http://ekobanki.com.pl//wp-content/uploads/2013/03/zabawna-natura-142513_200x200.jpg" class="img-responsive"></a></div>
                    </div>
                </div>

                <a class="left carousel-control" href="#fruitscarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
                <a class="right carousel-control" href="#fruitscarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>

            </div>
        </div>


    </div>

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
                        <a href="#">Home</a>
                    </li>
                    <li>
                        <a href="#">Library</a>
                    </li>
                    <li class="active">Data</li>
                </ul>
                <h1 class="text-danger">${offer.title}</h1>
                <blockquote>
                    <p>${offer.shortdesc}.</p>
                    <footer></footer>
                </blockquote>
                <div class="row">
                    <div class="col-md-6">
                        <a href="#"><i class="fa fa-5x fa-fw fa-star-half-o pull-left text-danger"></i></a>
                    </div>
                    <div class="col-md-6">
                        <a href="#"><i class="fa fa-5x fa-envelope-o fa-fw text-danger"></i></a>
                    </div>
                </div>

                <hr>
                <i class="fa fa-2x fa-star text-danger"></i>Wystaw opinie
                <a href="#"><i class="fa fa-2x fa-heart text-danger"></i></a>Dodaj do ulubionych
                <a href="#"><i class="fa fa-2x fa-fw fa-share-alt text-danger"></i></a>Udostępnij
                <hr>
                <div class="row">
                    <div class="col-md-12">
                        <p>${offer.description}</p>
                    </div>
                </div>
                <hr>
                <h4>2 opinie</h4>
                <hr>
                <h4>"Fantastyczna obsluga!"</h4>
                <i class="fa fa-fw fa-lg text-danger fa-star"></i>
                <i class="fa fa-fw fa-lg fa-star text-danger"></i>
                <i class="fa fa-fw fa-lg fa-star-half-full text-danger"></i>wystawione 27 Listopada 2016
                <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
                    <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
                    <br>Ut enim ad minim veniam, quis nostrud</p>
                <hr>
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
                <a href="#"><i class="fa fa-2x fa-car fa-fw"></i></a> Dojazd do domu klienta
                <br>
                <br>
                <h4>Godziny pracy:
                    <br>
                    <br>Pon - Sob: 12:00 - 20:00</h4>
                <hr>
                <img class="img-responsive" src="http://maps.googleapis.com/maps/api/staticmap?center=wroclaw&amp;zoom=12&amp;size=200x200&amp;sensor=false">
                <hr>
                <h4>Galeria</h4>
                <a href="#"><img src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png" class="center-block img-responsive"></a>
                <a href="#"><img src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png" class="center-block img-responsive"></a>
            </div>
        </div>
    </div>
</div>

<%@include file="footer.jsp" %>