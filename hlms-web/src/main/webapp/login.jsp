<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

	<jsp:include page="common/head.jsp" />
	<script data-main="res/js/login" src="res/lib/require.js"></script>
</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="login">

	<!-- BEGIN LOGO -->

	<div class="logo">

		<img src="res/image/logo-big.png" alt="" /> 

	</div>

	<!-- END LOGO -->

	<!-- BEGIN LOGIN -->

	<div class="content">

		<!-- BEGIN LOGIN FORM -->

		<form class="form-vertical login-form" action="login" method="post">

			<h3 class="form-title">登录</h3>


			<div class="control-group">

				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->

				<label class="control-label visible-ie8 visible-ie9">用户名</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-user"></i>

						<input class="m-wrap placeholder-no-fix" type="text" placeholder="用户名" name="username"/>

					</div>

				</div>

			</div>

			<div class="control-group">

				<label class="control-label visible-ie8 visible-ie9">密码</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-lock"></i>

						<input class="m-wrap placeholder-no-fix" type="password" placeholder="密码" name="password"/>

					</div>

				</div>

			</div>

			<div class="form-actions">

				<label class="checkbox">

				<input type="checkbox" name="remember" value="1"/> 记住我

				</label>

				<button type="submit" class="btn green pull-right">

				登录 <i class="m-icon-swapright m-icon-white"></i>

				</button>            

			</div>

			
			<div class="create-account">

				<p>


					<a href="register.jsp">用户注册</a>

				</p>

			</div>

		</form>

		<!-- END LOGIN FORM -->        


	</div>

	<!-- END LOGIN -->

	<jsp:include page="common/footer.jsp"></jsp:include>


	<!--[if lt IE 9]>

	<script src="res/js/excanvas.min.js"></script>

	<script src="res/js/respond.min.js"></script>  

	<![endif]-->   


<!-- END BODY -->

</html>