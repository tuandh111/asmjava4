<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PC05076 ASM</title>
<link rel="icon" href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/logoVideo1.svg">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
<!-- Css Styles -->
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
	<!-- Page Preloder -->

	<!-- Header Section Begin -->
	<header class="header header--normal">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="header__logo">
						<a href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/index.html"><img src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/logoVideo1.svg" alt=""
							style="width: 300px;"></a>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<div class="header__nav">
						<nav class="header__menu mobile-menu">
							<ul>
								<li><a href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/index.html">Trang chủ</a></li>
								<li class="active"><a href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/insertVideo.jsp">Quản lý video</a></li>
								<li><a href="#">Hệ thống</a>
									<ul class="dropdown">
										<li><a href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/login.jsp">Đăng nhập</a></li>
										<li><a href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/register.jsp">Đăng kí</a></li>
										<li><a href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/fogotPassword.jsp">Quên mật khẩu</a></li>
									</ul></li>
								<li><a href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/user.jsp">Quản lý nhân viên</a></li>
								<li><a href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/statistical.jsp">Thống kê</a></li>
								<li><a href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/introduce.jsp">Thông tin</a></li>
							</ul>
						</nav>
						<div class="header__menu__right">
							<a href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/login.jsp" class="primary-btn"><i class="fa fa-plus"></i>
								Đăng nhập</a> <a href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/login.jsp" class="login-btn"><i
								class="fa fa-user"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div id="mobile-menu-wrap"></div>
		</div>
	</header>
	<div class="container" style="margin-top: 150px;">
		<div class="card card-primary">
			<div class="card-header d-flex justify-content-between">
				Danh sách video <a class="btn btn-primary" href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/insertVideo.jsp">
					Thêm mới video</a>
			</div>
			<div class="table-responsive">
				<table class="table table-striped table-bordered mb-0">
					<thead>
						<tr>
							<th>ID</th>
							<th>Title</th>
							<th>Views</th>
							<th>Desription</th>
							<th>Genre</th>
							<th style="width: 150px;"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Đặng Hoàng Tuấn</td>
							<td>Đặng Hoàng Tuấn</td>
							<td>Đặng Hoàng Tuấn</td>
							<td>Đặng Hoàng Tuấn</td>
							<td>Đặng Hoàng Tuấn</td>
							<td><a href="#!/tab2" ng-click="edit(book.id)"
								class="btn btn-primary">Sửa</a> <a href=""
								ng-click="delete(book.id)" class="btn btn-danger">Xoá</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/jquery-3.3.1.min.js"></script>
	<script src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/bootstrap.min.js"></script>
	<script src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/jquery.nice-select.min.js"></script>
	<script src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/jquery-ui.min.js"></script>
	<script src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/jquery.nicescroll.min.js"></script>
	<script src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/jquery.barfiller.js"></script>
	<script src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/jquery.magnific-popup.min.js"></script>
	<script src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/jquery.slicknav.js"></script>
	<script src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/owl.carousel.min.js"></script>
	<script src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/js/main.js"></script>
</body>

</html>