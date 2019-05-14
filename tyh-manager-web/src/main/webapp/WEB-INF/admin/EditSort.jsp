<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="common.jsp"></jsp:include>
<title>MWS Admin - Table</title>

</head>
<body>
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
						<span class="mws-i-24 i-plus"> 添加商品类型 </span>
					</div>
					<div class="mws-panel-body">
						<div class="mws-wizard clearfix">
							<ul>
								<li><a class="mws-ic-16 ic-accept" href="#">首页</a></li>
								<li><a class="mws-ic-16 ic-direction" href="#">商品类型管理</a></li>
							</ul>
						</div>

						<div class="mws-form-message info">${msg}</div>

						<form class="mws-form"	action="${pageContext.request.contextPath}/sort/${edittype}" method="post">
							<div class="mws-form-inline">
								<div class="mws-form-row">
									<label>类型名称</label>
									<div class="mws-form-item large">
										<input type="text" name="sorname" value="${sort.sorname}" class="mws-textinput" />
										<input type="hidden" name="sorid" value="${sort.sorid}" />
									</div>
								</div>
								<div class="mws-form-row">
									<label>类型排序</label>
									<div class="mws-form-item large">
										<input type="text" name="sororder" value="${sort.sororder}"
											class="mws-textinput" />
									</div>
								</div>
								<div class="mws-form-row">
									<label>状态</label>
									<div class="mws-form-item large">
										<select id="sorstate" name="sorstate" class="sorstate">
											<c:choose>
												<c:when test="${sort.sorstate==1}">
													<option value="1" selected="selected">可用</option>
													<option value="0">不可用</option>
												</c:when>
												<c:otherwise>
													<option value="1">可用</option>
													<option value="0" selected="selected">不可用</option>
												</c:otherwise>
											</c:choose>
										</select>
									</div>
								</div>								
							</div>
							<div class="mws-button-row">
                            	<input type="submit" value="&nbsp;&nbsp;&nbsp;提&nbsp;&nbsp;&nbsp;&nbsp;交&nbsp;&nbsp;&nbsp;"	class="mws-button black">
                            </div>

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