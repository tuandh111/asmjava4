<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PC05076 ASM</title>
<link rel="icon"
	href="/http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/logoVideo1.svg">
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
	<header class="header header--normal">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="header__logo">
						<a
							href="${pageContext.request.contextPath}/index"><img
							src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/logoVideo1.svg"
							alt="" style="width: 300px;"></a>
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
										<li class="active"><a
											href="${pageContext.request.contextPath}/video">Quản lý
												Video</a></li>
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
							<a
								href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/login.jsp"
								class="primary-btn">${userLogin.username}</a> <a
								href="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/login.jsp"
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
							class="flaticon-039-fork"></span> Thêm mới video
					</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#tabs-2" role="tab"> <span class="flaticon-030-kebab"></span>
							Danh sách video
					</a></li>
				</ul>
			</div>
			<div class="tab-content">
				<div class="tab-pane active" id="tabs-1" role="tabpanel">
					<div class="container">
						<div class="card">
							<div class="card-header">Thêm mới video</div>
							<div class="row">
								<div class="col-lg-3">
									<div class="mt-5 ">
										<img alt="" class="img-thumbnail mx-4" src="${form.poster }">
									</div>
								</div>
								<div class="col-lg-9">
									<div class="card-body">
										<form action="video/create" method="post">
											<label for="">Tiêu đề:</label> <input type="text" value="${form.title }"
												class="form-control" name="title"> <label for="">Danh
												mục:</label> <input type="text" value="${form.genre }" class="form-control" name="genre">
											<label for="">Poster:</label> <input type="text" value="${form.poster }"
												name="poster" class="form-control"> <label for="">Description:</label>
											<input value="${form.description }" name="description" type="text" class="form-control">

											<button class="btn btn-primary mt-2"
												formaction="${pageContext.request.contextPath}/video/create">Thêm</button>
											<button class="btn btn-primary mt-2"
												formaction="${pageContext.request.contextPath}/video/update/${form.id}">Sửa</button>
											<button class="btn btn-danger mt-2"
												formaction="${pageContext.request.contextPath}/video/delete">Xóa</button>
											<button class="btn btn-primary mt-2">Làm mới</button>
										</form>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="tab-pane" id="tabs-2" role="tabpanel">
					<div class="container">
						<div class="card card-primary">
							<div class="card-header d-flex justify-content-between">
								Danh sách video</div>
							<div class="table-responsive">
								<table class="table table-striped table-bordered mb-0">
									<thead>
										<tr>
											<th>Genre</th>
											<th>Video Title</th>
											<th>Views Count</th>
											<th>Status</th>
											<th style="width: 150px;"></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${listVideo}">
											<tr>
												<td>${item.genre}</td>
												<td>${item.title }</td>
												<td>${item.views }</td>
												<td>
												<c:choose>
															<c:when test="${item.isActive }">Đang hoạt động</c:when>
															<c:otherwise>Không hoạt động</c:otherwise>
														</c:choose></td>
												<td><a href="${pageContext.request.contextPath}/video/edit/${item.id}" class="btn btn-primary">Sửa</a></td>
											</tr>
										</c:forEach>
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