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
    
    <style>
    	.loginform_wapper {
    		margin : 0 auto;
    		width:50vw;
    		height:50vw;
    		min-width:300px;
    		min-height:300px;
    		display:flex;
    		justify-content: center;
    	}
    	
    	.loginform_contents_wapper {
    		width:60%;
    		height:90%;
    		display:flex;
    		flex-direction:column;
    		justify-content:center;
			align-items : center; 
    	}
    	
    	.loginform_conetents {
    		display:flex;
    		justify-content:center;
    		width:80%;
    		height:auto;
    		margin : 5px;
    	}
    	
    	label {
    		margin-top:5px;
    		margin-right:10px;
    	}
    	
    	
    
    </style>
    
    
    
    

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Page</title>
</head>
<body>
	<form action="/processLogin" method="POST">
		<div class="loginform_wapper">
			
			<div class="loginform_contents_wapper">
				<div class="loginform_conetents">
					<label for="id">ID</label>
					<input type="text" name="id" class="form-control" style="display : inline-block">
				</div>
				<div class="loginform_conetents">
					<label for="password">PASSWORD</label>
					<input type="password" name="pwd" class="form-control" style="display : inline-block">
				</div>
				<div class="loginform_conetents">
					<input type="submit" class="btn" value="로그인" ></input>
					<button type="button" class="btn" >취소</button>
				</div>
			</div>
		</div>
	</form>	
</body>
</html>