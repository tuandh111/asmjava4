<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Đăng Nhập</title>

<style>
.form {
	display: flex;
	flex-direction: column;
	gap: 10px;
	background-color: #ffffff;
	padding: 30px;
	width: 450px;
	border-radius: 20px;
	font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto,
		Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}

::placeholder {
	font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto,
		Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}

.form button {
	align-self: flex-end;
}

.flex-column>label {
	color: #151717;
	font-weight: 600;
}

.inputForm {
	border: 1.5px solid #ecedec;
	border-radius: 10px;
	height: 50px;
	display: flex;
	align-items: center;
	padding-left: 10px;
	transition: 0.2s ease-in-out;
}

.input {
	margin-left: 10px;
	border-radius: 10px;
	border: none;
	width: 85%;
	height: 100%;
}

.input:focus {
	outline: none;
}

.inputForm:focus-within {
	border: 1.5px solid #2d79f3;
}

.flex-row {
	display: flex;
	flex-direction: row;
	align-items: center;
	gap: 10px;
	justify-content: space-between;
}

.flex-row>div>label {
	font-size: 14px;
	color: black;
	font-weight: 400;
}

.span {
	font-size: 14px;
	margin-left: 5px;
	color: #2d79f3;
	font-weight: 500;
	cursor: pointer;
}

.button-submit {
	margin: 20px 0 10px 0;
	background-color: #151717;
	border: none;
	color: white;
	font-size: 15px;
	font-weight: 500;
	border-radius: 10px;
	height: 50px;
	width: 100%;
	cursor: pointer;
}

.button-submit:hover {
	background-color: #252727;
}

.p {
	text-align: center;
	color: black;
	font-size: 14px;
	margin: 5px 0;
}

.btn {
	margin-top: 10px;
	width: 100%;
	height: 50px;
	border-radius: 10px;
	display: flex;
	justify-content: center;
	align-items: center;
	font-weight: 500;
	gap: 10px;
	border: 1px solid #ededef;
	background-color: white;
	cursor: pointer;
	transition: 0.2s ease-in-out;
}

.btn:hover {
	border: 1px solid #2d79f3;
}
</style>
</head>
<body class="bg-dark">

	<div
		class="container d-flex justify-content-center align-items-center mt-3">
		
		<form class="form" action="register" method="post">
		${message }
			<div class="flex-column">
				<label>Họ và tên</label>
			</div>
			<div class="inputForm">
				<input type="text" class="input"
				name="fullname"	placeholder="Fullname">
			</div>

			<div class="flex-column">
				<label>Email</label>
			</div>
			<div class="inputForm">
				<input type="email" class="input" name="email"
					placeholder="Nhập địa chỉ email của bạn">
			</div>
			<div class="flex-column">
				<label>Username</label>
			</div>
			<div class="inputForm">
				<input type="text" class="input" name="username"
					placeholder="Nhập username">
			</div>
			<div class="flex-column">
				<label>Password</label>
			</div>
			<div class="inputForm">
				<input type="password" class="input" name="password"
					placeholder="Nhập mật khẩu của bạn">
			</div>

			<div class="flex-column">
				<label>Xác nhận Password</label>
			</div>
			<div class="inputForm">
				<input type="password" class="input" name="confirmPassword"
					placeholder="Nhập lại mật khẩu của bạn">
						
			</div>
			<label class="text-danger">${messageConfimPassword}</label>
			<div class="flex-row">
				<div>
					<input type="checkbox"> <label>Tôi đồng ý với các
						điều khoản</label>
				</div>
			</div>
			<button type="submit" class="button-submit">Đăng Ký</button>
			<p class="p">
				Bạn đã có tài khoản? <a href="${pageContext.request.contextPath}/login">Đăng Nhập</a>
			</p>
		</form>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>