<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<!-- Page Preloder -->

	<!-- Header Section Begin -->
	<header class="header header--normal">
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
								<li><a href="${pageContext.request.contextPath}/index">Trang
										chủ</a></li>
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
	<div class="container-fluid" style="margin-top: 150px;">
		<div class="row ">
			<div class="col-lg-8">
				<iframe width="100%" height="500px"
					src="https://www.youtube.com/embed/${video.description}"></iframe>
				<div class="listing__item__pic__btns">
					<a href="#"><i class="bi bi-share"></i></a> <a href="#"><span
						class="icon_heart_alt"></span></a>
				</div>
				<h4 class="mt-1">${video.title }</h4>
				<div class="row">
					<div class="col-lg-9">
						<img src="" class="mx-2 my-2"
							style="width: 50px; height: 50px; border-radius: 50%;" alt="">Hoàng
						Tuấn <a href="#" class="btn btn-primary mx-5"
							style="border-radius: 15px;">Đăng kí</a>
					</div>
					<div class="col-lg-3 mt-1">

						<c:choose>
							<c:when test="${userLogin.isAdmin}">
								<a class="btn btn-primary"
									href="${pageContext.request.contextPath}/share?action=share">Share</a>
								<!-- The Modal -->

								<form
									action="${pageContext.request.contextPath}/watchVideo/${video.description}"
									method="post">
									<button type="submit" class="btn btn-danger mt-1">${LikeVideo}</button>
								</form>
							</c:when>
									<c:when test="${not userLogin.isAdmin}">
								<a class="btn btn-primary"
									href="${pageContext.request.contextPath}/share?action=share">Share</a>
								<!-- The Modal -->

								<form
									action="${pageContext.request.contextPath}/watchVideo/${video.description}"
									method="post">
									<button type="submit" class="btn btn-danger mt-1">${LikeVideo}</button>
								</form>
							</c:when>
							<c:otherwise>

							</c:otherwise>
						</c:choose>


					</div>
					<div class="blog__item mx-3" style="width: 100%;">
						<div class="blog__item__text">
							<div class="mx-4">
								<ul class="blog__item__tags">
									<li><i class="fa fa-tags"></i>Lượt xem:</li>
									<li>${video.views }lượtxem</li>
								</ul>
								<h5>
									<a href="#">Làm thế nào để sử dụng Bootstrap 1 cách hiệu
										quả nhất</a>
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
			<div class="col-lg-4">
				<form
					action="${pageContext.request.contextPath}/watchVideo?action=showSearch"
					method="post">
					<div class="input-group mb-3">
						<input type="text" class="form-control mr-2"
							placeholder="Searching..." name="searching">
						<button type="submit" class="btn btn-primary px-3">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</form>

				<c:forEach var="item" items="${listVideo }">
					<div class="row mb-2">
						<div class="col-lg-6">
							<img src="${item.poster }" alt="" class="img-thumbnail"
								style="width: 100%;">
						</div>
						<div class="col-lg-6">
							<h5>
								<a
									href="${pageContext.request.contextPath}/watchVideo/${item.description}">${item.title }</a>
							</h5>
							<p>
								<i class="fa fa-user"></i> Tuấn
							</p>
							<p>Lượt xem: ${item.views }</p>
						</div>
					</div>
				</c:forEach>
				<div class="pagination justify-content-center mt-3 ">

					<form
						action="${pageContext.request.contextPath}/watchVideo?action=show"
						method="post">
						<button type="submit" class="btn btn-primary mb-2">Hiển
							thị tất cả</button>
					</form>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8">
				<div class="blog__item pt-3" style="width: 100%; height: 100vh;">
					<div class="blog__item__text">
						<div class="mx-4">
							<strong for="">143 Bình luận</strong>
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Nhâp bình luận">
								<button type="submit" class="btn btn-primary  mx-2">Gửi</button>
							</div>
							<h5 class="mt-3">
								<a href="#">Rất hữu ít rất mong ra được video mới</a>
							</h5>
							<ul class="blog__item__widget mb-3">
								<li><i class="fa fa-clock-o"></i> 19th March, 2019</li>
								<li><i class="fa fa-user"></i> John Smith</li>
							</ul>
							<h5>
								<a href="#">Rất tốt </a>
							</h5>
							<ul class="blog__item__widget mb-3">
								<li><i class="fa fa-clock-o"></i> 19th March, 2019</li>
								<li><i class="fa fa-user"></i> John Smith</li>
							</ul>
							<h5>
								<a href="#">Quá tuyệt </a>
							</h5>
							<ul class="blog__item__widget mb-3">
								<li><i class="fa fa-clock-o"></i> 19th March, 2019</li>
								<li><i class="fa fa-user"></i> John Smith</li>
							</ul>
						</div>

					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<h3>Danh sách video đã thích</h3>

			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a
								href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/index.jsp"></a>
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


	<div class="modal" id="myModal">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Modal Heading</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">Modal body..</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>

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