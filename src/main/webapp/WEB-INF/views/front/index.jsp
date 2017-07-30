<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<!-- Latest Bootstrap min CSS -->
	<link rel="stylesheet" href="${ctx}/assets/css/bootstrap.min.css" type="text/css">
	<!-- Dropdownhover CSS -->
	<link rel="stylesheet" href="${ctx}/assets/css/bootstrap-dropdownhover.min.css" type="text/css">
	<!-- latest fonts awesome -->
	<link rel="stylesheet" href="${ctx}/assets/font/css/font-awesome.min.css" type="text/css">
	<!-- simple line fonts awesome -->
	<link rel="stylesheet" href="${ctx}/assets/simple-line-icon/css/simple-line-icons.css" type="text/css">
	<!-- stroke-gap-icons -->
	<link rel="stylesheet" href="${ctx}/assets/stroke-gap-icons/stroke-gap-icons.css" type="text/css">
	<!-- Animate CSS -->
	<link rel="stylesheet" href="${ctx}/assets/css/animate.min.css" type="text/css">
	<!-- Style CSS -->
	<link rel="stylesheet" href="${ctx}/assets/css/style.css" type="text/css">
	<!--  baguetteBox -->
	<link rel="stylesheet" href="${ctx}/assets/css/baguetteBox.css">
	<!-- Owl Carousel Assets -->
	<link href="${ctx}/assets/owl-carousel/owl.carousel.css" rel="stylesheet">
	<link href="${ctx}/assets/owl-carousel/owl.theme.css" rel="stylesheet">
	  
	 
	</head>
<body>
<!--  Preloader  -->
<div id="preloader">
	<div id="loading">
	</div>
</div>
<header>
	<!--  top-header  -->
	<div class="top-header">
		<div class="container">

			<div class="col-md-6">
				<div class="top-header-left">
					<ul>
						<li>
							<div class="dropdown">
								<a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
								   <img src="assets/images/eng-flg.jpg" alt="eng-flg"> English <i class="fa fa-angle-down" aria-hidden="true"></i>
								</a>
								<ul class="dropdown-menu">
									<li><a href="#">English</a></li>
									<li><a href="#">简体中文</a></li>
								</ul>
							</div>
						</li>
						<li>
							<div class="dropdown">
								<a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
									USD <i class="fa fa-angle-down" aria-hidden="true"></i>
								</a>
								<ul class="dropdown-menu">
									<li><a href="#">GBP</a></li>
									<li><a href="#">USD</a></li>									
								</ul>
							</div>
						</li>
						<li>
							<span>Hello EasyCms - Login or Registe!</span>
						</li>
					</ul>
				</div>
			</div>
			<div class="col-md-6">
				<div class="top-header-right">
					<ul>
						<li><i class="icon-location-pin icons" aria-hidden="true"></i> Store Location</li>
						<li><i class="icon-note icons" aria-hidden="true"></i> Track Your Order</li>
						<li>
							<div class="dropdown">
								<a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
									<i class="icon-settings icons" aria-hidden="true"></i> Setting
								</a>
								<ul class="dropdown-menu">
									<li><a href="#">My Account</a></li>
									<li><a href="#">Change Password</a></li>
									<li><a href="#">Change Address</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--  /top-header  -->
	</div>
	<section class="top-md-menu">
		<div class="container">
			<div class="col-sm-3">
				<div class="logo">
					<h6><img src="assets/images/logo.png" alt="logo" /></h6>
				</div>
			</div>
			<div class="col-sm-6">
				<!-- Search box Start -->
				<form>
					<div class="well carousel-search hidden-phone">
						<div class="btn-group">
							<a class="btn dropdown-toggle btn-select" data-toggle="dropdown" href="#">All Categories <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Item I</a></li>
								<li><a href="#">Item II</a></li>
								<li><a href="#">Item III</a></li>
								<li class="divider"></li>
								<li><a href="#">Other</a></li>
							</ul>
						</div>
						<div class="search">
							<input type="text" placeholder="Where prodect" />
						</div>
						<div class="btn-group">
							<button type="button" id="btnSearch" class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i></button>
						</div>
					</div>
				</form>
				<!-- Search box End -->
			</div>
			<div class="col-sm-3">
				<!-- cart-menu -->
				<div class="cart-menu">
					<ul>
						<li><a href="#"><i class="icon-heart icons" aria-hidden="true"></i></a><span class="subno">1</span><strong>Your Wishlist</strong></li>
						<li class="dropdown">
							<a href="#" data-toggle="dropdown" data-hover="dropdown"><i class="icon-basket-loaded icons" aria-hidden="true"></i></a><span class="subno">2</span><strong>Your Cart</strong>
							<div class="dropdown-menu  cart-outer">
								<div class="cart-content">
									<div class="col-sm-4 col-md-4"><img src="assets/images/elec-img4.jpg" alt="13"></div>
									<div class="col-sm-8 col-md-8">
										<div class="pro-text">
											<a href="#">Apple Macbook Retina 23’’ </a>
											<div class="close">x</div>
											<strong>1 × $290.00</strong>
										</div>
									</div>
								</div>
								<div class="cart-content">
									<div class="col-sm-4 col-md-4"><img src="assets/images/elec-img3.jpg" alt="13"></div>
									<div class="col-sm-8 col-md-8">
										<div class="pro-text">
											<a href="#">Apple Macbook Retina 23’’ </a>
											<div class="close">x</div>
											<strong>1 × $290.00</strong>
										</div>
									</div>
								</div>
								<div class="total">
									<div class="col-md-6 text-left">
										<span>Shipping :</span>
										<strong>Total :</strong>
									</div>
									<div class="col-md-6 text-right">
										<strong>$0.00</strong>
										<strong>$160.00</strong>
									</div>
								</div>
								<a href="shopping-cart.html" class="cart-btn">VIEW CART </a> <a href="checkout.html" class="cart-btn">CHECKOUT</a>
							</div>
						</li>
					</ul>
				</div>
				<!-- cart-menu End -->
			</div>
			<div class="main-menu">
				<!--  nav  -->
				<nav class="navbar navbar-inverse navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" data-hover="dropdown" data-animations=" fadeInLeft fadeInUp fadeInRight">
						<ul class="nav navbar-nav">
							<li class="all-departments dropdown">
								<a href="index.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span> easycms主题市场</span> <i class="fa fa-bars" aria-hidden="true"></i> </a>
								<ul class="dropdown-menu dropdownhover-bottom all-open" role="menu">
									<c:forEach var="item" items="${models}" varStatus="status">
										<li class="dropdown">
											<a href="index.html"><img src="${ctx }/assets/images/menu-icon${status.count}.png" alt="menu-icon1" /> ${item.name} <i class="fa fa-angle-right" aria-hidden="true"></i></a>
											<ul class="dropdown-menu right">
												<c:forEach var="child" items="${item.childs}" varStatus="status">
													<li><a href="grid.html">${child.name }</a></li>
												</c:forEach>
											</ul>
										</li>
									</c:forEach>
									<li>
										<a href="#"><img src="assets/images/menu-icon11.png" alt="menu-icon2" />All Categories</a>
									</li>
								</ul>
							</li>
						</ul>
						<!-- /.navbar-collapse -->
					</div>
				</nav>
				<!-- /nav end -->
			</div>
		</div>
	</section>
	<!-- header-outer -->
	<section class="header-outer">
		<!-- header-slider -->
			<div class="header-slider">					
					<div id="home-slider" class="carousel slide carousel-fade" data-ride="carousel">
						<!-- .home-slider -->
						<div class="carousel-inner">
							<c:forEach var="item" items="${sliders}" varStatus="status">
							<div class="item <c:if test="${status.first }">active</c:if>" style="background-image: url(${ctx}/${item.c2 });  background-repeat: no-repeat; background-position: top;">
								<div class="container">		
									<div class="caption">
										<div class="caption-outer">
											<div class="col-xs-12 col-sm-12 col-md-4">												
											</div>
											<div class="col-xs-12 col-sm-6 col-md-6">
												<h3>${item.c1 }</h3>
												<h2 class="animated slideInUp" data-wow-delay="10ms" data-wow-duration="1500ms">${item.c5 }</h2>
												<h4>${item.c6 } </h4>
												<p class="animated fadeInRight">${item.c7 }</p>
												<a data-scroll class="btn get-start animated fadeInUp" data-wow-delay="10ms" data-wow-duration="1500ms" href="${item.c9 }">购买</a>
											</div>
											<div class="col-xs-12 col-sm-6 col-md-2">												
												<div class="save-price animated slideInUp" data-wow-delay="10ms" data-wow-duration="1500ms">
													<span class="save-text">价格</span>
													<span class="saveprice-no"><sup>¥</sup>${item.c3}</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
							
						</div>
						<!-- indicators -->
						<ol class="carousel-indicators">
							<c:forEach var="item" items="${sliders}" varStatus="status">
								<li data-target="#home-slider" data-slide-to="${status.index }"<c:if test="${status.first }">class="active"</c:if> ></li>
							</c:forEach>
						</ol>
						<!-- /indicators -->
						<!-- /.home-slider -->
					</div>					
			</div>
			<!-- /header-slider end -->			
	</section>
	<!-- /header-outer -->
</header>
<!-- banner -->
<section class="banner">
	<div class="container">
		<div class="row">
			<c:forEach var="item" items="${mids}" varStatus="status">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<!-- banner-img -->
				<a href="#" class="${item.c4 }">
					<!-- banner-text -->
					<div class="banner-text">
						<h3>${item.c2 }</h3>
						<h2>${item.c1 }</h2>
						<span class="price">价格: ¥${item.c3 }</span>
					</div>
					<!-- /banner-text -->
				</a>
				<!-- /banner-img -->
			</div>
			</c:forEach>
		</div>
	</div>
</section>
<!-- /banner -->
<!-- deal-outer -->
<section class="deal-section">
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="deal-week">
					<div class="title">
						<h2>本月热卖</h2>
					</div>
					<div class="owl-demo-outer">
						<!-- #owl-demo -->
						<div id="owl-demo" class="deals-wk">
							<c:forEach var="hot" items="${hots}" varStatus="status">
							<div class="item">
								<div class="col-md-12">
									<!-- .pro-text -->
									<div class="pro-text text-center">
										<!-- .pro-img -->
										<div class="pro-img">
											<img src="${hot.c7 }" alt="2" />
										</div>
										<!-- /.pro-img -->
										<div class="text-text">
											<span>${hot.c1 }</span>
											<h4> ${hot.c5 } </h4>
											<p>${hot.c6 }</p>
											<p class="wk-price">¥${hot.c2 } <span>¥${hot.c3 }</span> </p>
											<p class="availalbe">库存: <span>${hot.c4 }</span></p>
											<a href="${hot.c7 }" class="add-btn">购买</a>
										</div>
										<!-- clockdiv -->
										<div id="clockdiv">
											<h4>赶快下单! 活动马上结束:</h4>
											<div>
												<span class="days">14</span>
												<div class="smalltext">天</div>
											</div>
											<div>
												<span class="hours">23</span>
												<div class="smalltext">小时</div>
											</div>
											<div>
												<span class="minutes">59</span>
												<div class="smalltext">分钟</div>
											</div>
											<div>
												<span class="seconds">47</span>
												<div class="smalltext">秒</div>
											</div>
										</div>
										<!-- /clockdiv -->
									</div>
									<!-- /.pro-text -->
								</div>
							</div>
							</c:forEach>
							
							<!-- /#owl-demo -->
						</div>
					</div>

				</div>
			</div>


			<div class="col-sm-8">
				<!-- new-arrivals -->
				<div class="new-arrivals">
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="#home">新上架</a></li>
						<li><a data-toggle="tab" href="#menu1">特色</a></li>
						<li><a data-toggle="tab" href="#menu2">经典</a></li>
					</ul>

					<div class="tab-content">
						<div id="home" class="tab-pane fade in active">							
							<div class="owl-demo-outer">
								<!-- #owl-demo -->
								<div id="owl-demo8" class="deals-wk2">
									<div class="item">
										<c:forEach var="hot" items="${hots1}" varStatus="status">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="${hot.c5 }" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>${hot.c1 }</span>
													<a href="${hot.c6 }">
														<h4> ${hot.c2 } </h4>
													</a>
													<p class="wk-price">¥${hot.c3 } </p>
													<a href="${hot.c6 }" class="add-btn">购买</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										</c:forEach>																	
									</div>
									<div class="item">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img2.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img3.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img4.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img5.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img6.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>

									</div>


									<!-- /#owl-demo -->
								</div>
							</div>
						</div>
						<div id="menu1" class="tab-pane fade">							
							<div class="owl-demo-outer">
								<!-- #owl-demo -->
								<div id="owl-demo7" class="deals-wk2">
									<div class="item">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img2.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img3.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img4.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img5.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img6.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>

									</div>
									<div class="item">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img2.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img3.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img4.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img5.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img6.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>

									</div>


									<!-- /#owl-demo -->
								</div>
							</div>
						</div>
						<div id="menu2" class="tab-pane fade">								
							<div class="owl-demo-outer">
								<!-- #owl-demo -->
								<div id="owl-demo6" class="deals-wk2">
									<div class="item">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img2.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img3.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img4.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img5.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img6.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>

									</div>
									<div class="item">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img2.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img3.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img4.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img5.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img6.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>

									</div>


									<!-- /#owl-demo -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /new-arrivals -->

			</div>
		</div>
	</div>
</section>
<!-- /deal-outer -->
<!-- all-product -->
<section class="all-product">
	<div class="container">
		<div class="row">
			<!-- title -->
			<div class="title">
				<h2>
					热门商品					
				</h2>
				<ul class="nav nav-tabs etabs">
						<li class="active"><a data-toggle="tab" href="#phones">Cell Phones</a></li>
						<li><a data-toggle="tab" href="#laptop">Laptop</a></li>
						<li><a data-toggle="tab" href="#desktop">Desktop</a></li>
						<li><a data-toggle="tab" href="#tV">TV & Video</a></li>
						<li><a data-toggle="tab" href="#tablets">Tablets</a></li>
					</ul>
			</div>
			<!-- /title -->
			<!-- electonics -->
			<div class="electonics">

				<div class="brd2 col-xs-12 col-sm-3 col-md-3">
					<div id="home-slider2" class="carousel slide carousel-fade" data-ride="carousel">
						<!-- .home-slider -->
						<div class="carousel-inner">
							<div class="item active">
								<a class="ads" href="#">
									<img src="assets/images/add-banner.jpg" alt="add-banner" />
								</a>
							</div>
							<div class="item">
								<a class="ads" href="#">
									<img src="assets/images/add-banner.jpg" alt="add-banner" />
								</a>
							</div>
						</div>
						<!-- indicators -->
						<ol class="carousel-indicators">
							<li data-target="#home-slider2" data-slide-to="0" class="active"></li>
							<li data-target="#home-slider2" data-slide-to="1"></li>
						</ol>
						<!-- /indicators -->
						<!-- /.home-slider -->
					</div>
				</div>
				<div class="col-xs-12 col-sm-9 col-md-9">
					<div class="row">
						<!-- tab-content -->
						<div class="tab-content">
							<!-- tab-pane -->
							<div id="phones" class="tab-pane fade in active">									
								<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo3" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>


							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="laptop" class="tab-pane fade in">
								<div id="owl-demo13" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="desktop" class="tab-pane fade in">
								<div id="owl-demo14" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="tV" class="tab-pane fade in">
								<div id="owl-demo15" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="tablets" class="tab-pane fade in">
								<div id="owl-demo16" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
							</div>
							<!-- /tab-pane -->
						</div>
						<!-- /tab-content -->

					</div>
				</div>
			</div>
			<!-- /electonics -->
			<!-- half-banner -->
			<div class="half-banner">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-6">
						<a href="#" class="banner half-banner1">
							<div class="text">
								<h4>best digital</h4>
								<h3>sale smartwatch</h3>
								<div class="banner-price">
									$620.00 <span>$60.00  </span>
								</div>
							</div>
						</a>
					</div>
					<a href="#" class="col-xs-12 col-sm-6 col-md-6">
						<div class="banner half-banner2">
							<div class="text">
								<h4>strong prices</h4>
								<h3>Lenovo Yoga Tablet 2</h3>
								<div class="banner-price">
									$620.00 <span>$60.00  </span>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
			<!-- /half-banner -->
			
			
			
			<!-- full-banner -->
			<div class="half-banner">
				<div class="row">
					<a href="#" class="col-xs-12 col-sm-12 col-md-12">
						<img src="assets/images/add-banner-large2.jpg" alt="add-banner-large2" />
					</a>
				</div>
			</div>
			<!-- /full-banner -->
			<!-- .free-shipping -->
			<div class="free-shipping">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="icon-shipping">
							<i class="icon-rocket icons"></i>
						</div>
						<div class="shipping-text">
							<h4>free shipping </h4>
							<p>Free Shipping On All Order</p>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="icon-shipping">
							<i class="icon-earphones-alt icons"></i>
						</div>
						<div class="shipping-text">
							<h4>online support 24/7</h4>
							<p>Technical Support 24/7</p>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="icon-shipping">
							<i class="icon-refresh icons"></i>
						</div>
						<div class="shipping-text">
							<h4>MONEY BACK GUARANTEE </h4>
							<p>30 Day Money Back</p>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="icon-shipping">
							<i class="icon-badge icons"></i>
						</div>
						<div class="shipping-text">
							<h4>MEMBER DISCOUNT</h4>
							<p>Upto 40% Discount</p>
						</div>
					</div>

				</div>
			</div>
			<!-- /.free-shipping -->
		</div>
	</div>
</section>
<!-- /all-product -->
<!-- newsletter -->
<section class="newsletter">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6">
				<h6 class="sing-up-text">sign up to
					<strong>newsletter</strong> &
					<strong>free shipping</strong> for first shopping</h6>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6">
				<div class="sing-up-input">
					<input name="singup" type="text" placeholder="Your email address...">
					<input name="submit" type="button" value="Submit" />
				</div>
			</div>
		</div>
	</div>
</section>
<!-- /newsletter -->
<footer>
	<div class="container">
		<div class="row">
			<!-- copayright -->
			<div class="copayright">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-6">
						Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
					</div>
					<div class="text-right col-xs-12 col-sm-6 col-md-6">
						<img src="assets/images/payment-img.jpg" alt="payment-img" />
					</div>
				</div>
			</div>
			<!-- /copayright -->

		</div>
	</div>
</footer>


<p id="back-top">
	<a href="#top"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>
</p>
 <script src="${ctx}/assets/js/jquery.js"></script>
		<!-- Bootstrap Core JavaScript -->
		<script src="${ctx}/assets/js/bootstrap.min.js"></script>
		<script src="${ctx}/assets/js/bootstrap-dropdownhover.min.js"></script>
		<!-- Plugin JavaScript -->
		<script src="${ctx}/assets/js/jquery.easing.min.js"></script>
		<script src="${ctx}/assets/js/wow.min.js"></script>
		<!-- owl carousel -->
		<script src="${ctx}/assets/owl-carousel/owl.carousel.js"></script>
		<!--  Custom Theme JavaScript  -->
		<script src="${ctx}/assets/js/custom.js"></script>
</body>

</html>