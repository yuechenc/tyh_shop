<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<!-- Sidebar Wrapper -->
	<div id="mws-sidebar">

		<!-- Search Box -->
		<div id="mws-searchbox" class="mws-inset">
			<form
				action="http://www.malijuwebshop.com/themes/mws-admin/dashboard.html">
				<input type="text" class="mws-search-input" /> <input type="submit"
					class="mws-search-submit" />
			</form>
		</div>

		<!-- Main Navigation -->
		<div id="mws-navigation">
			<ul>
				<li class="active"><a href="dashboard.html"
					class="mws-i-24 i-home">Dashboard</a></li>
				<li><a href="charts.html" class="mws-i-24 i-chart">Charts</a></li>
				<li><a href="calendar.html" class="mws-i-24 i-day-calendar">Calendar</a></li>
				<li><a href="files.html" class="mws-i-24 i-file-cabinet">File
						Manager</a></li>
				<li><a href="${pageContext.request.contextPath}/sort/getSortList" class="mws-i-24 i-table-1">商品类型管理</a></li>
				<li><a href="${pageContext.request.contextPath}/product/getProductList" class="mws-i-24 i-leaf">商品管理</a></li>
				<li><a href="${pageContext.request.contextPath}/upload/goUpload" class="mws-i-24 i-table-1">文件上传</a></li>
				<li><a href="#" class="mws-i-24 i-list">${msg}</a>
				<li><a href="widgets.html" class="mws-i-24 i-cog">Widgets</a></li>
				<li><a href="typography.html" class="mws-i-24 i-text-styling">Typography</a></li>
				<li><a href="grids.html" class="mws-i-24 i-blocks-images">Grids
						&amp; Panels</a></li>
				<li><a href="gallery.html" class="mws-i-24 i-polaroids">Gallery</a></li>
				<li><a href="error.html" class="mws-i-24 i-alert-2">Error
						Page</a></li>
				<li><a href="icons.html" class="mws-i-24 i-pacman"> Icons <span
						class="mws-nav-tooltip">2000+</span>
				</a></li>
			</ul>
		</div>
		<!-- End Navigation -->

	</div>