<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="uri" value="${pageContext.request.contextPath}"
	scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PC05076 ASM</title>
<link rel="icon"
	href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/logoVideo1.svg">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
<!-- Css Styles -->
<link rel="stylesheet"
	href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/flaticon.css"
	type="text/css">
<link rel="stylesheet"
	href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/barfiller.css"
	type="text/css">
<link rel="stylesheet"
	href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet"
	href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet"
	href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/style.css"
	type="text/css">
</head>
<body>
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<header class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="header__logo">
						<a href="${pageContext.request.contextPath}/index"><img
							src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/logoVideo1.svg"
							alt=""></a>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<div class="header__nav">
						<nav class="header__menu mobile-menu">
							<ul>
								<li class="active"><a
									href="${pageContext.request.contextPath}/index">Trang chủ</a></li>
								<c:choose>
									<c:when test="${userLogin.isAdmin}">
										<li><a href="${pageContext.request.contextPath}/video">Quản
												lý Video</a></li>
									</c:when>
									<c:otherwise>
										<li></li>
									</c:otherwise>
								</c:choose>

								<li><a href="#">Hệ thống</a>
									<ul class="dropdown">
										<li><a href="${pageContext.request.contextPath}/login">Đăng
												nhập</a></li>
										<li><a href="${pageContext.request.contextPath}/register">Đăng
												kí</a></li>
										<li><a
											href="${pageContext.request.contextPath}/fogotPassword">Quên
												mật khẩu</a></li>
									</ul></li>
								<c:choose>
									<c:when test="${userLogin.isAdmin}">
										<li><a href="${pageContext.request.contextPath}/user">Quản
												lý nhân viên</a></li>
										<li><a
											href="${pageContext.request.contextPath}/statistical">Thống
												kê</a></li>
									</c:when>
									<c:otherwise>
										<li></li>
									</c:otherwise>
								</c:choose>


								<li><a href="${pageContext.request.contextPath}/introduce">Thông
										tin</a></li>
							</ul>
						</nav>
						<div class="header__menu__right">
							<a href="${pageContext.request.contextPath}/login"
								class="primary-btn">${userLogin.username}</a> <a
								href="${pageContext.request.contextPath}/login"
								class="login-btn"><i class="fa fa-user"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div id="mobile-menu-wrap"></div>
		</div>
	</header>
	<section class="hero set-bg"
		data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/1.jpg"></section>
	<section class="most-search spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="section-title">
						<h2>Video</h2>
						<p>Cùng nhau xem Video có chất lượng tốt nhất</p>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="section-title mt-2">
						<h4>Cùng xem video để nhận thêm nhiều ưu đãi</h4>
						<p>Hệ thống video có chất lượng tốt nhất</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="most__search__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab"> <span
									class="flaticon-039-fork"></span> Trang chủ
							</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-2" role="tab"> <span class="flaticon-030-kebab"></span>
									Du lịch
							</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-3" role="tab"> <span
									class="flaticon-032-food-truck"></span> Giải trí
							</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-4" role="tab"> <span
									class="flaticon-017-croissant"></span> Nghe nhạc
							</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-5" role="tab"> <span
									class="flaticon-038-take-away"></span> Xem phim
							</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-6" role="tab"> <span
									class="flaticon-031-delivery"></span> Gia đình
							</a></li>
						</ul>
					</div>
					<div class="tab-content">
						<div class="tab-pane active" id="tabs-1" role="tabpanel">
							<div class="row">
								<c:forEach var="item" items="${ listVideo}">
									<div class="col-lg-4 col-md-6">
										<div class="listing__item">
											<div class="listing__item__pic set-bg"
												data-setbg="${item.poster }">
												<img
													src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-1.png"
													alt="">
												<div class="listing__item__pic__tag">${item.genre }</div>
												<div class="listing__item__pic__btns">
													<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
														class="icon_heart_alt"></span></a>
												</div>
											</div>
											<div class="listing__item__text">
												<div class="listing__item__text__inside">
													<a href="#">
														<h5>${ item.title}</h5>
													</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check">
													</i>
													</span> <br> <span>Views: ${item.views }. Ngày:
														${item.date }</span>
												</div>
												<div class="listing__item__text__info">
													<div class="listing__item__text__info__left">
														<a
															href="${pageContext.request.contextPath}/watchVideo/${item.description}"
															class="btn btn-primary mt-1"><i
															class="bi bi-collection-play-fill"></i> Xem ngay</a>
													</div>
													<div class="listing__item__text__info__right">
														<button type="button" class="btn btn-primary"
															data-bs-toggle="modal"
															data-bs-target="#myModal-${item.description}">Chi
															tiết</button>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="modal fade" id="myModal-${item.description}"
										tabindex="-1" role="dialog"
										aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">${item.title}</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">
													<!-- Nội dung chi tiết ở đây -->
													<strong> Views: ${item.views }.</strong> <br> <strong>
														Genre: ${item.genre }.</strong><br> <strong> Ngày:
														${item.date }.</strong><br>
													<!-- ... (thêm thông tin khác nếu cần) ... -->
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-bs-dismiss="modal">Close</button>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
							<div class="blog__pagination text-center">

								<div class="row tm-mb-90">
									<div class="col-6   mx-auto d-flex justify-content-between">
										<div
											class="col-12 d-flex justify-content-between align-items-center tm-paging-col">
											<c:if test="${currentPage == 1 }">
												<a href="javascript:void(0);"
													class="btn btn-primary tm-btn-prev mb-2 disabled">Previous</a>
											</c:if>
											<c:if test="${currentPage > 1 }">
												<a href="index?page=${currentPage - 1}"
													class="btn btn-primary tm-btn-prev mb-2 ">Previous</a>
											</c:if>
											<div class="tm-paging d-flex">
												<c:forEach varStatus="i" begin="1" end="${maxPage}">
													<a href="index?page=${i.index}"
														class="active mx-2 tm-paging-link ${currentPage == i.index ? 'active' : ''}">${i.index}</a>
												</c:forEach>
											</div>
											<c:if test="${currentPage == maxPage }">
												<a href="javascript:void(0);"
													class="btn btn-primary tm-btn-prev mb-2 disabled">Next</a>
											</c:if>
											<c:if test="${currentPage < maxPage }">
												<a href="index?page=${currentPage + 1}"
													class="btn btn-primary tm-btn-prev mb-2 ">Next</a>
											</c:if>

										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="tab-pane" id="tabs-2" role="tabpanel">
							<div class="row">
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-1.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-1.png"
												alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-2.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-2.png"
												alt="">
											<div class="listing__item__pic__tag top_rate">Top Rate</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-3.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-3.png"
												alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-4.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-4.png"
												alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-5.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-5.png"
												alt="">
											<div class="listing__item__pic__tag hot_deal">Hot Deal</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="blog__pagination text-center">
								<a href="#"><i class="fa fa-long-arrow-left"></i> Pre</a> <a
									href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">Next
									<i class="fa fa-long-arrow-right"></i>
								</a>
							</div>
						</div>
						<div class="tab-pane" id="tabs-3" role="tabpanel">
							<div class="row">
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-3.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-3.png"
												alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-4.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-4.png"
												alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">

													<a href="video.jsp" class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-5.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-5.png"
												alt="">
											<div class="listing__item__pic__tag hot_deal">Hot Deal</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-primary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-6.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-6.png"
												alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="blog__pagination text-center">
								<a href="#"><i class="fa fa-long-arrow-left"></i> Pre</a> <a
									href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">Next
									<i class="fa fa-long-arrow-right"></i>
								</a>
							</div>
						</div>
						<div class="tab-pane" id="tabs-4" role="tabpanel">
							<div class="row">
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-1.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-1.png"
												alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-primary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-2.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-2.png"
												alt="">
											<div class="listing__item__pic__tag top_rate">Top Rate</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-3.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-3.png"
												alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-primary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-6.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-6.png"
												alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="tabs-5" role="tabpanel">
							<div class="row">
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-1.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-1.png"
												alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-2.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-2.png"
												alt="">
											<div class="listing__item__pic__tag top_rate">Top Rate</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-primary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-3.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-3.png"
												alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-4.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-4.png"
												alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-primary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-6.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-6.png"
												alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="blog__pagination text-center">
								<a href="#"><i class="fa fa-long-arrow-left"></i> Pre</a> <a
									href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">Next
									<i class="fa fa-long-arrow-right"></i>
								</a>
							</div>
						</div>
						<div class="tab-pane" id="tabs-6" role="tabpanel">
							<div class="row">
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-1.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-1.png"
												alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-2.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-2.png"
												alt="">
											<div class="listing__item__pic__tag top_rate">Top Rate</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-4.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-4.png"
												alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-primary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list-5.jpg">
											<img
												src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/listing/list_icon-5.png"
												alt="">
											<div class="listing__item__pic__tag hot_deal">Hot Deal</div>
											<div class="listing__item__pic__btns">
												<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
													class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<a href="#">
													<h5>Làm thế nào để có thể học được HTML,CSS một cách
														hiệu quả</h5>
												</a> <span>Hoàng Tuấn<i class="fa fa-cricle-check"> </i>
												</span> <br> <span>56.7M . 1 Week ago</span>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<a href="${uri }/views/video.jsp"
														class="btn btn-primary mt-1"><i
														class="bi bi-collection-play-fill"></i> Xem ngay</a>
												</div>
												<div class="listing__item__text__info__right">
													<button type="button" class="btn btn-secondary"
														data-bs-toggle="modal" data-bs-target="#myModal">Chi
														tiết</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="blog__pagination text-center">
								<a href="#"><i class="fa fa-long-arrow-left"></i> Pre</a> <a
									href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">Next
									<i class="fa fa-long-arrow-right"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="news-post spad">
		<div class="container">
			<div class="row mb-5">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>Giới thiệu</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="blog__item">
						<div class="blog__item__pic set-bg"
							data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/blog/blog-1.jpg">
							<iframe width="560" height="215"
								src="https://www.youtube.com/embed/zf6Ukxf8mxk?si=x3I2nsLB4XjVw7xh"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
								allowfullscreen></iframe>
						</div>
						<div class="blog__item__text">
							<ul class="blog__item__tags">
								<li><i class="fa fa-tags"></i> Travel</li>
								<li>Videos</li>
							</ul>
							<h5>
								<a href="#">Internet Banner Advertising Most Reliable</a>
							</h5>
							<ul class="blog__item__widget">
								<li><i class="fa fa-clock-o"></i> 19th March, 2019</li>
								<li><i class="fa fa-user"></i> John Smith</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="blog__item">
						<div class="blog__item__pic set-bg"
							data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/blog/blog-1.jpg">
							<iframe width="560" height="215"
								src="https://www.youtube.com/embed/LJn8rFInuao?si=9It_MReTTc5LB93D"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
								allowfullscreen></iframe>
						</div>
						<div class="blog__item__text">
							<ul class="blog__item__tags">
								<li><i class="fa fa-tags"></i> Travel</li>
								<li>Videos</li>
							</ul>
							<h5>
								<a href="#">Internet Banner Advertising Most Reliable</a>
							</h5>
							<ul class="blog__item__widget">
								<li><i class="fa fa-clock-o"></i> 19th March, 2019</li>
								<li><i class="fa fa-user"></i> John Smith</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="blog__item">
						<div class="blog__item__pic set-bg"
							data-setbg="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/blog/blog-1.jpg">
							<iframe width="560" height="215"
								src="https://www.youtube.com/embed/2E0mPqy4q8A?si=Y3Ojzr16FNmtv2n0"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
								allowfullscreen></iframe>
						</div>
						<div class="blog__item__text">
							<ul class="blog__item__tags">
								<li><i class="fa fa-tags"></i> Travel</li>
								<li>Videos</li>
							</ul>
							<h5>
								<a href="#">Internet Banner Advertising Most Reliable</a>
							</h5>
							<ul class="blog__item__widget">
								<li><i class="fa fa-clock-o"></i> 19th March, 2019</li>
								<li><i class="fa fa-user"></i> John Smith</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="newslatter">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="newslatter__text">
						<h3>Video chất lượng</h3>
						<p>Cùng nhau xem Video cùng nhau kết nối</p>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<form action="#" class="newslatter__form">
						<input type="text" placeholder="Your email">
						<button type="submit">Quên mật khẩu</button>
					</form>
				</div>
			</div>
		</div>
	</section>

	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a
								href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/index.jsp"><img
								src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/logoVideo1.svg"
								alt=""></a>
						</div>
						<p>Tận hưởng cảm giác xem video thật chân thật và vui vẻ cùng
							bạn bè và gia đình</p>
					</div>
				</div>
				<div class="col-lg-4 offset-lg-1 col-md-6">
					<div class="footer__address">
						<ul>
							<li><span>Call:</span>
								<p>0383-658-814</p></li>
							<li><span>Email:</span>
								<p>tuandhpc05076@fpt.edu.vn</p></li>
							<li><span>Fax:</span>
								<p>093-35435-35345</p></li>
							<li><span>Kết nối với chúng tôi:</span>
								<div class="footer__social">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-instagram"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a> <a href="#"><i
										class="fa fa-skype"></i></a>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 offset-lg-1 col-md-6">
					<div class="footer__widget">
						<ul>
							<li><a href="#">Trang chủ</a></li>
							<li><a href="#">Hổ trợ</a></li>
							<li><a href="#">Nội dung</a></li>
							<li><a href="#">Giới thiệu</a></li>
							<li><a href="#">Thoát</a></li>
						</ul>
						<ul>
							<li><a href="#">Đăng nhập</a></li>
							<li><a href="#">Phản hồi</a></li>
							<li><a href="#">Thông tin</a></li>
							<li><a href="#">Đăng kí</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="footer__copyright">
						<div class="footer__copyright__text">
							<p>
								Cần Thơ &copy;
								<script>
									document.write(new Date()
											.toLocaleDateString());
								</script>
								Chúc các bạn xem Video vui vẻ <i class="fa fa-heart"
									aria-hidden="true"></i>
							</p>
						</div>
						<div class="footer__copyright__links">
							<a href="#">Đặng Hoàng Tuấn</a> <a href="#">Trường Cao Đẳng
								FPT Polytechtic</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- model -->
	<!-- Js Plugins -->
	<script
		src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/jquery-3.3.1.min.js"></script>
	<script
		src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/bootstrap.min.js"></script>
	<script
		src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/jquery.nice-select.min.js"></script>
	<script
		src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/jquery-ui.min.js"></script>
	<script
		src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/jquery.nicescroll.min.js"></script>
	<script
		src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/jquery.barfiller.js"></script>
	<script
		src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/jquery.magnific-popup.min.js"></script>
	<script
		src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/jquery.slicknav.js"></script>
	<script
		src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/owl.carousel.min.js"></script>
	<script
		src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/main.js"></script>
</body>
</html>