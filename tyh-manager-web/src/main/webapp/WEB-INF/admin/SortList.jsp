<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="common.jsp"></jsp:include>
<title>MWS Admin - Table</title>

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
						<span class="mws-i-24 i-table-1">商品类型</span>
					</div>
					<div class="mws-panel-body">
						<div class="dataTables_wrapper">
							<div class="mws-panel-toolbar top clearfix">
								<ul>
									<li><a
										href="${pageContext.request.contextPath}/sort/toadd"
										class="mws-ic-16 ic-add">添加</a></li>
								</ul>
								<form action="${pageContext.request.contextPath}/sort/getSortList" method="post">
									<div class="dataTables_filter">
										<label>查找: <input type="text" name="sorname"></label>
									</div>
								</form>
							</div>

							<table class="mws-datatable-fn mws-table">
								<thead>
									<tr>
										<th>类型编号</th>
										<th>类型名称</th>
										<th>类型排序</th>
										<th>类型状态</th>
										<th>操作</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${sortList}" var="sort">
										<tr class="gradeX">
											<td>${sort.sorid}</td>
											<td>${sort.sorname}</td>
											<td>${sort.sororder}</td>
											<td class="center"><c:choose>
													<c:when test="${sort.sorstate==1}">
                          								  可用
                        							</c:when>
													<c:otherwise>
                          								  不可用
                        							</c:otherwise>
												</c:choose></td>
											<td>
											<a href="${pageContext.request.contextPath}/sort/toedit?sorid=${sort.sorid}" class="mws-i-24 i-pencil-edit">编辑</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="dataTables_info">Showing 1 to 10 of 57 entries</div>
							<div class="dataTables_paginate paging_full_numbers">
								<span class="first paginate_button paginate_button_disabled">First</span><span
									class="previous paginate_button paginate_button_disabled">Previous</span><span><span
									class="paginate_active">1</span><span class="paginate_button">2</span><span
									class="paginate_button">3</span><span class="paginate_button">4</span><span
									class="paginate_button">5</span></span><span
									class="next paginate_button">Next</span><span
									class="last paginate_button">Last</span>
							</div>
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
	</div>

</body>
</html>