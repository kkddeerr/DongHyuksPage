<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<script src="js/lib/jquery-3.2.0.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- page controller js -->
    <script src="js/loginCtrl.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Page</title>
</head>
<body>
	<form action="/processLogin" method="POST">
		<div align="center">
			<div style="width:30%" align="right">
				<div>
					<label for="id">ID</label>
					<input type="text" name="id" class="form-control" style="width:85%; margin:5px; display : inline-block">
				</div>
				<div>
					<label for="password">PASSWORD</label>
					<input type="password" name="pwd" class="form-control" style="width:70%; margin:5px; display : inline-block">
				</div>
				<div>
					<input type="submit" class="btn" value="로그인" ></input>
					<button type="button" class="btn" >취소</button>
				</div>
			</div>
		</div>
	</form>	
</body>
</html>