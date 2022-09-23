<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Melody Market</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
<link rel="stylesheet"
	href="resources/font-awesome-4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/templatemo-style.css">

<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container-fluid">
		<div class="row">
			<section class="tm-section-intro">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
					<div class="tm-wrapper-center">
						<h1 class="tm-section-intro-title">Welcome to melody market!</h1>
						<p class="tm-section-intro-text">취미로 혹은 머리에 휴식을 주고 싶을 때 악기를
							다뤄보아요 :)</p>
						<%
								response.setIntHeader("Refresh",30);
								Date day = new java.util.Date();
								String am_pm;
								int hour = day.getHours();
								int minute = day.getMinutes();
								int second = day.getSeconds();
								if(hour / 12 == 0) {
									am_pm = "AM";
								} else {
									am_pm = "PM";
									hour = hour - 12;
								}
								String CT = hour + ":" + minute + ":" + second + ":" + am_pm;
								out.println("현재 접속 시각: " + CT + "\n");
							%>
						<p></p>
						<p></p>
						<p>
							<a href="loginMember.jsp" class="tm-btn-white-big">Login</a> <a
								href="addMember.jsp" class="tm-btn-white-big">Sign Up</a>
					</div>
				</div>
			</section>
		</div>
		<div class="row" id="tm-section-2">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">

				<!-- slider -->
				<section>
					<div id="tmCarousel" class="carousel slide tm-carousel"
						data-ride="carousel" data-interval="false">
						<!-- If you want to make the carousel auto play, remove data-interval="false" -->

						<ol class="carousel-indicators">
							<li data-target="#tmCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#tmCarousel" data-slide-to="1" class=""></li>
							<li data-target="#tmCarousel" data-slide-to="2" class=""></li>
						</ol>

						<div class="carousel-inner" role="listbox">

							<div class="carousel-item active">
								<div class="carousel-content">
									<div>
										<h2 class="tm-carousel-item-title">크리스마스 캐롤</h2>
										<p class="tm-carousel-item-text">White Christmas, Jingle
											Bell Rock, We Wish You A Merry Christmas, Let It Snow, I'm
											Dreaming Of A White Christmas, All I Want For Christmas Is
											You 등 다양한 악보도 있습니다!</p>
									</div>
								</div>
							</div>

							<div class="carousel-item">
								<div class="carousel-content">
									<div>
										<h2 class="tm-carousel-item-title">다양한 종류의 악보</h2>
										<p class="tm-carousel-item-text">최신 가요, 인기 가요, 각종 OST 등
											듣기만 했던 노래를 직접 연주할 수 도 있어요~ 기타, 피아노, 드럼 등 다양한 악기의 악보들이 있어요!
											어렵다면 보고 따라할 수 있는 동영상 악보도 있답니다!</p>
									</div>
								</div>
							</div>

							<div class="carousel-item">
								<div class="carousel-content">
									<div>
										<h2 class="tm-carousel-item-title">악보 신청</h2>
										<p class="tm-carousel-item-text">
											연주하고 싶은 곡이 있는데 사이트에 곡 정보가 없다!! 그럼 지금 당장 신청해주세요~
											이렇게 원하는 곡을 직접 신청할 수 있답니다 :)
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
		<!-- row -->
		<div class="row">
			<section class="tm-2-col-img-text tm-2-col-img-lg-right">
				<div
					class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-2-col-img">
					<img src="resources/img/life.jpg" alt="Image" class="img-fluid">
				</div>
				<div
					class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-2-col-text">
					<h2 class="tm-2-col-text-title">인생의 회전목마</h2>
					<p class="tm-2-col-text-description">인생의 회전 목마는 하울의 움직이는 성
						Original Soundtrack 앨범의 수록곡이다. 발매는 2014.11.24에 되었으며 Hisaishi Joe에
						의해 만들어졌다. 앨범의 수록곡으로 명랑한 경기병, 공중 산책, 고동, 황무지의 마녀, 방랑하는 소피, 마법의 문 등이
						있다.</p>
					<p>
						<a
							href="http://www.akbobada.com/home/akbobada/archive/common/wav/wav/19388_1.mp3"
							class="tm-bordered-btn">Listen</a> <a href="https://www.youtube.com/watch?v=4Pykgg3FStc&feature=emb_logo"
							class="tm-bordered-btn" >View</a>
				</div>
			</section>
		</div>
		<!-- row -->
		<div class="row">
			<section class="tm-2-col-img-text tm-2-col-img-lg-left">
				<div
					class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-2-col-img">
					<img src="resources/img/P1238.jpg" alt="Image"
						class="img-fluid">
				</div>
				<div
					class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-2-col-text">
					<h2 class="tm-2-col-text-title">All I Want For Christmas Is
						You</h2>
					<p class="tm-2-col-text-description">크리스마스하면 떠오르는 대표곡! Merry
						Christmas (Deluxe Anniversary Edition)의 수록곡 이며 2019년 11월 1일에 발매
						되었다. Mariah Carey가 불렀으며 앨범의 수록곡으로 Silent Night, O Holy Night,
						Santaclaus is Coming To Town, Joy To The World 등이 있다.</p>
					<p>
						<a
							href="http://www.akbobada.com/home/akbobada/archive/common/wav/wav/13557_1.mp3"
							class="tm-bordered-btn">Listen</a> <a href="https://www.youtube.com/watch?v=I4Jp_1dYaBI&feature=emb_logo"
							class="tm-bordered-btn">View</a>
				</div>
			</section>

		</div>
		<!-- row -->

		<!-- About -->
		<div class="row tm-section tm-blue-bg-row">

			<section>

				<div
					class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 text-xs-center">
					<h1 class="tm-section-title">category</h1>
					<p class="tm-section-subtitle"><a href="pianoProducts.jsp" /></p>
				</div>

				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">

					<div class="tm-icon-text-boxes-container">

						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
							<div class="tm-icon-text-box">
								<i class="fa fa-5x fa-hand-point-down"></i>
								<h3 class="tm-icon-text-box-title">Piano</h3>
								<p class="tm-icon-text-box-description"><a href="guitarProducts.jsp" /></p>
							</div>
						</div>

						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
							<div class="tm-icon-text-box">
								<i class="fa fa-5x fa-hand-point-down"></i>
								<h3 class="tm-icon-text-box-title">Guitar</h3>
								<p class="tm-icon-text-box-description"><a href="products.jsp" /></p>
							</div>
						</div>

						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
							<div class="tm-icon-text-box">
								<i class="fa fa-5x fa-hand-point-down"></i>
								<h3 class="tm-icon-text-box-title">Popular</h3>
								<p class="tm-icon-text-box-description"><a href="http://www.akbobada.com/AkboMasterList.html?groupCode=M0&catCode=U" /></p>
							</div>
						</div>

						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
							<div class="tm-icon-text-box">
								<i class="fa fa-5x fa-hand-point-down"></i>
								<h3 class="tm-icon-text-box-title">Video</h3>
								<p class="tm-icon-text-box-description"></p>
							</div>
						</div>

					</div>

				</div>

			</section>

		</div>
		<!-- row -->
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
				<hr>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
	<!-- container-fluid -->

	<!-- load JS files -->
	<script src="resources/js/jquery-1.11.3.min.js"></script>
	<!-- jQuery, https://jquery.com/download/ -->
	<script
		src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script>
	<!-- Tether for Bootstrap, http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h -->
	<script src="resources/js/bootstrap.min.js"></script>
	<!-- Bootstrap, http://v4-alpha.getbootstrap.com/ -->
	<script src="resources/js/jquery.touchSwipe.min.js"></script>
	<!-- http://labs.rampinteractive.co.uk/touchSwipe/demos/ -->

	<script>     
       
            $(document).ready(function(){

                /* Smooth Scrolling
                 * https://css-tricks.com/snippets/jquery/smooth-scrolling/
                --------------------------------------------------------------*/
                $('a[href*="#"]:not([href="#"])').click(function() {
                    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') 
                        && location.hostname == this.hostname) {
                        
                        var target = $(this.hash);
                        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                        
                        if (target.length) {
                            
                            $('html, body').animate({
                                scrollTop: target.offset().top
                            }, 1000);
                            return false;
                        }
                    }
                }); 
                
                /* Enable swiping for tablets and mobile
                 * http://lazcreative.com/blog/adding-swipe-support-to-bootstrap-carousel-3-0/
                 ---------------------------------------------------------------------------------*/
                if($(window).width() <= 991) {
                    $(".carousel-inner").swipe( {
                        //Generic swipe handler for all directions
                        swipeLeft:function(event, direction, distance, duration, fingerCount) {
                            $(this).parent().carousel('next'); 
                        },
                        swipeRight: function() {
                            $(this).parent().carousel('prev'); 
                        },
                        //Default is 75px, set to 0 for demo so any distance triggers swipe
                        threshold:0
                    });
                }  

                /* Handle window resize */
                $(window).resize(function(){
                    if($(window).width() <= 991) {
                        $(".carousel-inner").swipe( {
                            //Generic swipe handler for all directions
                            swipeLeft:function(event, direction, distance, duration, fingerCount) {
                                $(this).parent().carousel('next'); 
                            },
                            swipeRight: function() {
                                $(this).parent().carousel('prev'); 
                            },
                            //Default is 75px, set to 0 for demo so any distance triggers swipe
                            threshold:0
                        });
                     }
                });              
                           
            });

        </script>
</body>
</html>