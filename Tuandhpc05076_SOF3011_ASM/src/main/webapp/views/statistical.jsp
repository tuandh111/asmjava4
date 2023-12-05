<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						<a
							href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/index.jsp"><img
							src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/logoVideo1.svg"
							alt="" style="width: 300px;"></a>
					</div>
				</div>
					<div class="col-lg-9 col-md-9">
					<div class="header__nav">
						<nav class="header__menu mobile-menu">
							<ul>
								<li ><a
									href="${pageContext.request.contextPath}/index">Trang chủ</a></li>
								<c:choose>
									<c:when test="${userLogin.isAdmin}">
										<li><a
											href="${pageContext.request.contextPath}/video">Quản
												lý Video</a></li>
									</c:when>
									<c:otherwise>
										<li></li>
									</c:otherwise>
								</c:choose>

								<li><a href="#">Hệ thống</a>
									<ul class="dropdown">
										<li><a
											href="${pageContext.request.contextPath}/login">Đăng
												nhập</a></li>
										<li><a
											href="${pageContext.request.contextPath}/register">Đăng
												kí</a></li>
										<li><a
											href="${pageContext.request.contextPath}/fogotPassword">Quên
												mật khẩu</a></li>
									</ul></li>
								<c:choose>
									<c:when test="${userLogin.isAdmin}">
										<li><a
											href="${pageContext.request.contextPath}/user">Quản
												lý nhân viên</a></li>
										<li class="active"><a
											href="${pageContext.request.contextPath}/statistical">Thống
												kê</a></li>
									</c:when>
									<c:otherwise>
										<li></li>
									</c:otherwise>
								</c:choose>


								<li><a
									href="${pageContext.request.contextPath}/introduce">Thông
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




	<div class="row" style="margin-top: 150px;">
		<div class="col-lg-12">
			<div class="most__search__tab">
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						data-toggle="tab" href="#tabs-1" role="tab"> <span
							class="flaticon-039-fork"></span> Favorites
					</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#tabs-2" role="tab"> <span class="flaticon-030-kebab"></span>
							Favorites Users
					</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#tabs-3" role="tab"> <span
							class="flaticon-032-food-truck"></span> Shared Friends
					</a></li>
				</ul>
			</div>
			<div class="tab-content">
				<div class="tab-pane active" id="tabs-1" role="tabpanel">
					<div class="container">
						<div class="card card-primary">
							<div class="card-header d-flex justify-content-between">
								Favorites</div>
							<div class="table-responsive">
								<table class="table table-striped table-bordered mb-0">
									<thead>
										<tr>
											<th>VIDEO TITLE</th>
											<th>FAVORITE COUNT</th>
											<th>LASTEST DATE</th>
											<th>OLDEST DATE</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Lâu rồi mới gặp</td>
											<td>100</td>
											<td>31/12/2020</td>
											<td>01/01/2020</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="tabs-2" role="tabpanel">
					<div class="container">
						<form action="#">
							<div class="input-group mb-3">
								<input type="text" class="form-control mr-2"
									placeholder="Searching...">
								<button type="submit" class="btn btn-primary px-3">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</form>
						<div class="card card-primary">
							<div class="card-header d-flex justify-content-between">
								Favorites Users</div>
							<div class="table-responsive">
								<table class="table table-striped table-bordered mb-0">
									<thead>
										<tr>
											<th>USERNAME</th>
											<th>FULLNAME</th>
											<th>EMAIL</th>
											<th>FACORITE DATE</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>TeoNV</td>
											<td>Đặng Hoàng Tuấn</td>
											<td>teonv@gmail.com</td>
											<td>01/01/2023</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="tabs-3" role="tabpanel">
					<div class="container">
						<form action="#">
							<div class="input-group mb-3">
								<input type="text" class="form-control mr-2"
									placeholder="Searching...">
								<button type="submit" class="btn btn-primary px-3">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</form>
						<div class="card card-primary">
							<div class="card-header d-flex justify-content-between">
								Shared Friends</div>
							<div class="table-responsive">
								<table class="table table-striped table-bordered mb-0">
									<thead>
										<tr>
											<th>SENDER NAME</th>
											<th>SENDER EMAIL</th>
											<th>EERECEIVER EMAIL</th>
											<th>SNET DATE</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Đặng Hoàng Tuấn</td>
											<td>teonv@gmail.com</td>
											<td>poly@gmail.com</td>
											<td>01/01/2023</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
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