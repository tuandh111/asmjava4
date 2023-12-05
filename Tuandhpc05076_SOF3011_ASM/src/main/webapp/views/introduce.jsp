<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/flaticon.css" type="text/css">
<link rel="stylesheet" href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/barfiller.css" type="text/css">
<link rel="stylesheet" href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/css/style.css" type="text/css">
</head>
<body>
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


								<li class="active"><a href="${pageContext.request.contextPath}/introduce">Thông
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
	<div style="height: 100vh;">
		<h4 style="margin-top: 200px" class="ms-4">Đang chờ cập nhật</h4>
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7858.840960745168!2d105.75295442586027!3d9.982082680569585!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a08906415c355f%3A0x416815a99ebd841e!2zVHLGsOG7nW5nIENhbyDEkeG6s25nIEZQVCBQb2x5dGVjaG5pYw!5e0!3m2!1svi!2s!4v1700211399724!5m2!1svi!2s"
		 width="1400" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	</div>

	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/index.jsp"><img src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/logoVideo1.svg" alt=""></a>
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
</body>
</html>