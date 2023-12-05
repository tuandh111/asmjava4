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
						<a
							href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/index.jsp"><img
							src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/logoVideo1.svg" alt="" style="width: 300px;"></a>
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
										<li class="active"><a
											href="${pageContext.request.contextPath}/user">Quản lý
												nhân viên</a></li>
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




	<div class="row" style="margin-top: 150px;">
		<div class="col-lg-12">
			<div class="most__search__tab">
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						data-toggle="tab" href="#tabs-1" role="tab"> <span
							class="flaticon-039-fork"></span> Thêm mới nhân viên
					</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#tabs-2" role="tab"> <span class="flaticon-030-kebab"></span>
							Danh sách nhân viên
					</a></li>
				</ul>
			</div>
			<div class="tab-content">
				<div class="tab-pane active" id="tabs-1" role="tabpanel">
					<div class="container">
						<div class="listing__details__review">
							<h4>Thêm mới nhân viên</h4>
							<form action="user/create" method="post">
								<input type="text" name="fullname" value="${form.fullname}" placeholder="Fullname">
								<input type="text" name="username" value="${form.username}"  placeholder="Username">
								<input type="password" name="password" value="${form.password}" placeholder="Password">
								<input type="email" name="email" value="${form.email}" placeholder="Email">
								<div class="input-group mb-3">
									<span class="input-group-text">Role</span> <select
										class="from-select" name="vaiTro">
										<option value="User" ${form.isAdmin ? '' : 'selected'}>User</option>
										<option value="Admin" ${!form.isAdmin ? '' : 'selected'}>Admin</option>
									</select>
								</div>
								<div class="grid w-full max-w-xs items-center gap-1.5 ">
									<label
										class="text-sm text-gray-400 font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70">Hình
										ảnh</label> <input id="picture" type="file"
										class="flex h-10 w-full rounded-md border border-input bg-white px-3 py-2 text-sm text-gray-400 file:border-0 file:bg-transparent file:text-gray-600 file:text-sm file:font-medium">
								</div>
								<button type="submit" class="btn btn-primary">Thêm</button>
								<button  formaction="${pageContext.request.contextPath}/user/update/${form.userID}" class="btn btn-primary">Sửa</button>
								<button type="submit" formaction="${pageContext.request.contextPath}/user/delete" class="site-btn mb-3">Xóa</button>
							</form>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="tabs-2" role="tabpanel">
					<div class="container">
						<div class="card card-primary">
							<div class="card-header d-flex justify-content-between">
								Danh sách nhân viên <a class="btn btn-primary"
									href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/user.jsp">
									Thêm mới </a>
							</div>
							<div class="table-responsive">
								<table class="table table-striped table-bordered mb-0">
									<thead>
										<tr>
											<th>ID</th>
											<th>Fullname</th>
											<th>Username</th>
											<th>Role</th>
											<th>Email</th>
											<th style="width: 100px;">Trạng thái</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<c:forEach var="item" items="${listUser}">
												<tr>
													<td>${item.userID}</td>
													<td>${item.fullname}</td>
													<td>${item.username}</td>
													<td>
													<c:choose>
															<c:when test="${item.isAdmin }">Trưởng phòng</c:when>
															<c:otherwise>Nhân viên</c:otherwise>
														</c:choose></td>
													<td>${item.email}</td>
													<td><a href="${pageContext.request.contextPath}/user/update/${item.userID}"  class="btn btn-primary">Sửa</a></td>
												</tr>
											</c:forEach>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="my-4 mx-1">
								<button class="btn btn-primary"><|</button>
								<button class="btn btn-primary"><<</button>
								<button class="btn btn-primary">>></button>
								<button class="btn btn-primary">>|</button>
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