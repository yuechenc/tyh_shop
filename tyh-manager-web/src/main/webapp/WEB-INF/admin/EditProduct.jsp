<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MWS Admin - Table</title>

<jsp:include page="common.jsp"></jsp:include>
<script type="text/javascript"	src="${pageContext.request.contextPath}/static/js/jquery-3.1.1.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div id="mws-wrapper">
		<div id="mws-sidebar-stitch"></div>
		<div id="mws-sidebar-bg"></div>
		<%@ include file="nav.jsp"%>

		<div id="mws-container" class="clearfix">

			<div class="container">

				<div class="mws-report-container clearfix"></div>
				<div class="mws-panel grid_8">
					<div class="mws-panel-header">
						<span class="mws-i-24 i-plus"> 添加商品 </span>
					</div>
					<div class="mws-panel-body">
						<div class="mws-wizard clearfix">
							<ul>
								<li><a class="mws-ic-16 ic-accept" href="#">首页</a></li>
								<li><a class="mws-ic-16 ic-direction" href="#">商品管理</a></li>
							</ul>
						</div>

						<div class="mws-form-message info">${msg}</div>

						<form class="mws-form"
							action="${pageContext.request.contextPath}/product/${edittype}"
							method="post" enctype="multipart/form-data">
							<div class="mws-form-inline">
								<div class="mws-form-row">
									<label>商品名称</label>
									<div class="mws-form-item large">
										<input type="text" name="proname" value="${product.proname}" class="mws-textinput" /> 
											<input type="hidden" name="proid" value="${product.proid}" />
									</div>
								</div>
								<div class="mws-form-row">
									<label>商品类型：</label>
									<div class="mws-form-item large">
										<select id="sorid" name="sorid">
											<c:forEach items="${sortList}" var="sort">
												<option value="${sort.sorid}" <c:if test="${sort.sorid==product.sorid}"> selected="selected" </c:if>>${sort.sorname}</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<div class="mws-form-row">
									<label>商品图片</label>
									<div class="mws-form-item large">
										<input type="file" name="file" value="image" class="mws-textinput" />
									</div>
								</div>

								<div class="mws-form-row">
									<label>商品描述：</label>
									<div class="mws-form-item large">
										<textarea rows="5" cols="100%" class="ckeditor"  name="decript"
											id="decript">${product.decript}</textarea>
									</div>
								</div>

								<div class="mws-form-row">
									<label>成本价格</label>
									<div class="mws-form-item large">
										<input type="text" name="price" value="${product.price}"
											class="mws-textinput" />
									</div>
								</div>

								<div class="mws-form-row">
									<label>销售价格</label>
									<div class="mws-form-item large">
										<input type="text" name="saleprice"
											value="${product.saleprice}" class="mws-textinput" />
									</div>
								</div>

							</div>
							<div class="mws-button-row">
								<input type="submit"
									value="&nbsp;&nbsp;&nbsp;提&nbsp;&nbsp;&nbsp;&nbsp;交&nbsp;&nbsp;&nbsp;"
									class="mws-button black">
							</div>
							<script type="text/javascript">
								CKEDITOR.replace('decript');
							</script>
						</form>
					</div>
				</div>
			</div>

			<div id="mws-footer">
				Copyright &copy; 2014.Company name All rights reserved.More
				Templates <a href="http://www.cssmoban.com/" target="_blank"
					title="模板之家">模板之家</a> - Collect from <a
					href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
			</div>

		</div>
	</div>

</body>

</html>