<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Index</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Style/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Style/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Style/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Style/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Style/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Style/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Style/css/util.css">
	<link rel="stylesheet" type="text/css" href="Style/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="col-12" style="justify-content: center; display: flex;">
		    	<c:if test="${auth == 'false'}">
			        <div class="alert alert-warning col-6">
					  <strong>Warning!</strong> vous devez être connecté pour accéder à votre compte.
					</div>
	    		</c:if>
	    		
		    	<c:if test="${logout == 'true'}">
			        <div class="alert alert-success col-6">
					  <strong>Success!</strong> vous avez été déconnecté.
					</div>
	    		</c:if>
				
	    		<c:if test="${invalide == 'true'}">
					<div class="alert alert-danger col-6">
					  <strong>Danger!</strong> Email ou mot de passe invalide.
					</div>
    			</c:if>
			</div>
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="Style/images/img-03.png" alt="IMG">
				</div>

				<form class="login100-form validate-form" method="POST" action="/ProjetFootNewsUser/login?auth=true">
					<span class="login100-form-title">
						Authentification 
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" minlength="8" placeholder="Mot de passe">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Connexion
						</button>
					</div>
					<br>
						<!-- <a href=""><center><b>Oublier le mot de passe ?</b></center></a> -->
					
					<br><br>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="Style/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Style/vendor/bootstrap/js/popper.js"></script>
	<script src="Style/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Style/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Style/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="Style/js/main.js"></script>

</body>
</html>