<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quên mật khẩu</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
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
<style>
/* ... (CSS styles you already have) */
.form-forgot {
	display: none;
}

.form-forgot.active {
	display: flex;
	flex-direction: column;
}

.button-forgot {
	margin: 10px 0;
}
</style>
</head>

<body class="bg-info" style="margin-top: 50px">
	<div class="container mt-5">
		<div class="row justify-content-center mb-3">
			<div class="col-md-6">
				<div>
					<div class="header__logo">
						<a href="index.jsp"><img src="http://localhost:8080/Tuandhpc05076_SOF3011_ASM/views/img/logoVideo1.svg" alt=""></a>
					</div>
					<h1 class="text-center">Quên mật khẩu</h1>
				</div>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div>
				<h5 class="text-danger" >${thongBao1}</h5>	
					<form action="fogotPassword" method="post" class="newslatter__form">
						<input type="text" name="fogotPassword" placeholder="Your email">
						<button type="submit">Quên mật khẩu</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>