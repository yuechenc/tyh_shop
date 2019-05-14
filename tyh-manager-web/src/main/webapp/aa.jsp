<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="control-group">
		<label class="control-label" for="catorder">商品说明</label>
		<div class="controls">
			<textarea rows="5" cols="40" class="ckeditor" name="pdes" id="pdes"></textarea>
		</div>
	</div>
	//在 jsp 页面的最后添加以下 js 代码。 注意参数与 textarea 控件的 name 属性要一致
	<script type="text/javascript">
		CKEDITOR.replace('pdes');
	</script>
	<p><img alt="" src="http://47.100.224.4:88/group1/M00/00/00/rBOr_1zT8leAQGYpAAImcQggL_4814.png" style="float:left; height:511px; width:511px" /></p>
</body>
</html>