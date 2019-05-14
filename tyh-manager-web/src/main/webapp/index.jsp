<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Required Stylesheets -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/reset.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/text.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/fonts/ptsans/stylesheet.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/fluid.css"
	media="screen" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/mws.style.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/icons/icons.css"
	media="screen" />

<!-- Demo and Plugin Stylesheets -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/demo.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/plugins/colorpicker/colorpicker.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/plugins/jimgareaselect/css/imgareaselect-default.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/plugins/fullcalendar/fullcalendar.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/plugins/fullcalendar/fullcalendar.print.css"
	media="print" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/plugins/tipsy/tipsy.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/plugins/sourcerer/Sourcerer-1.2.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/plugins/jgrowl/jquery.jgrowl.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/plugins/spinner/spinner.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/jui/jquery.ui.css"
	media="screen" />

<!-- Theme Stylesheet -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/mws.theme.css"
	media="screen" />
<!-- JavaScript Plugins -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/jimgareaselect/jquery.imgareaselect.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/jquery.dualListBox-1.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/jgrowl/jquery.jgrowl.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/jquery.filestyle.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/fullcalendar/fullcalendar.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/jquery.dataTables.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="${pageContext.request.contextPath}plugins/flot/excanvas.min.js"></script>
<![endif]-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/flot/jquery.flot.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/flot/jquery.flot.pie.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/flot/jquery.flot.stack.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/flot/jquery.flot.resize.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/colorpicker/colorpicker.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/tipsy/jquery.tipsy.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/sourcerer/Sourcerer-1.2.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/jquery.placeholder.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/jquery.validate.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/jquery.mousewheel.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/jquery-ui.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/mws.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/demo.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/themer.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("div#mws-login .mws-login-back").mouseover(function(event) {
			$(this).find("a").animate({
				'left' : 0
			})
		}).mouseout(function(event) {
			$(this).find("a").animate({
				'left' : 70
			})
		});
	});
</script>

<title>MWS Admin - Login Page</title>
</head>
<body>
	<div id="mws-login">
		<h1>登录</h1>
		<div class="mws-login-lock">
			<img
				src="${pageContext.request.contextPath}/static/css/icons/24/locked-2.png"
				alt="" />
		</div>
		<div id="mws-login-form">
			<form class="mws-form" action="${pageContext.request.contextPath}/Admin/login" method="post">
				<div class="mws-form-row">
					<div class="mws-form-item large">
						<input type="text" class="mws-login-username mws-textinput"
							placeholder="用户名" />
					</div>
				</div>
				<div class="mws-form-row">
					<div class="mws-form-item large">
						<input type="password" class="mws-login-password mws-textinput"
							placeholder="密码" />
					</div>
				</div>
				<div class="mws-form-row">
					<input type="submit" value="登录"
						class="mws-button green mws-login-button" />
				</div>
			</form>
		</div>
	</div>
</body>
</html>