
	<!-- Themer -->
	<div id="mws-themer">
		<div id="mws-themer-hide"></div>
		<div id="mws-themer-content">
			<div class="mws-themer-section">
				<label for="mws-theme-presets">Presets</label> <select
					id="mws-theme-presets"></select>
			</div>
			<div class="mws-themer-separator"></div>
			<div class="mws-themer-section">
				<ul>
					<li><span>Base Color</span>
						<div id="mws-base-cp" class="mws-cp-trigger"></div></li>
					<li><span>Text Color</span>
						<div id="mws-text-cp" class="mws-cp-trigger"></div></li>
					<li><span>Text Glow Color</span>
						<div id="mws-textglow-cp" class="mws-cp-trigger"></div></li>
				</ul>
			</div>
			<div class="mws-themer-separator"></div>
			<div class="mws-themer-section">
				<ul>
					<li><span>Text Glow Opacity</span>
						<div id="mws-textglow-op"></div></li>
				</ul>
			</div>
			<div class="mws-themer-separator"></div>
			<div class="mws-themer-section">
				<button class="mws-button red small" id="mws-themer-getcss">Get
					CSS</button>
			</div>
		</div>
		<div id="mws-themer-css-dialog">
			<div class="mws-form">
				<div class="mws-form-row" style="padding: 0;">
					<div class="mws-form-item">
						<textarea cols="auto" rows="auto" readonly="readonly"></textarea>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Themer End -->


	<!-- Header Wrapper -->
	<div id="mws-header" class="clearfix">

		<!-- Logo Wrapper -->
		<div id="mws-logo-container">
			<div id="mws-logo-wrap">
				<img
					src="${pageContext.request.contextPath}/static/images/mws-logo.png"
					alt="mws admin" />
			</div>
		</div>

		<!-- User Area Wrapper -->
		<div id="mws-user-tools" class="clearfix">

			<!-- User Notifications -->
			<div id="mws-user-notif" class="mws-dropdown-menu">
				<a href="#" class="mws-i-24 i-alert-2 mws-dropdown-trigger">Notifications</a>
				<span class="mws-dropdown-notif">35</span>
				<div class="mws-dropdown-box">
					<div class="mws-dropdown-content">
						<ul class="mws-notifications">

							<!-- Notification Content -->
							<li class="read"><a href="#"> <span class="message">
										Lorem ipsum dolor sit amet consectetur adipiscing elit, et al
										commore </span> <span class="time"> January 21, 2012 </span>
							</a></li>
							<li class="read"><a href="#"> <span class="message">
										Lorem ipsum dolor sit amet </span> <span class="time"> January
										21, 2012 </span>
							</a></li>
							<li class="unread"><a href="#"> <span class="message">
										Lorem ipsum dolor sit amet </span> <span class="time"> January
										21, 2012 </span>
							</a></li>
							<li class="unread"><a href="#"> <span class="message">
										Lorem ipsum dolor sit amet </span> <span class="time"> January
										21, 2012 </span>
							</a></li>
							<!-- End Notification Content -->

						</ul>
						<div class="mws-dropdown-viewall">
							<a href="#">View All Notifications</a>
						</div>
					</div>
				</div>
			</div>

			<!-- User Messages -->
			<div id="mws-user-message" class="mws-dropdown-menu">
				<a href="#" class="mws-i-24 i-message mws-dropdown-trigger">Messages</a>
				<span class="mws-dropdown-notif">35</span>
				<div class="mws-dropdown-box">
					<div class="mws-dropdown-content">
						<ul class="mws-messages">

							<!-- Message Content -->
							<li class="read"><a href="#"> <span class="sender">John
										Doe</span> <span class="message"> Lorem ipsum dolor sit amet
										consectetur adipiscing elit, et al commore </span> <span class="time">
										January 21, 2012 </span>
							</a></li>
							<li class="read"><a href="#"> <span class="sender">John
										Doe</span> <span class="message"> Lorem ipsum dolor sit amet </span>
									<span class="time"> January 21, 2012 </span>
							</a></li>
							<li class="unread"><a href="#"> <span class="sender">John
										Doe</span> <span class="message"> Lorem ipsum dolor sit amet </span>
									<span class="time"> January 21, 2012 </span>
							</a></li>
							<li class="unread"><a href="#"> <span class="sender">John
										Doe</span> <span class="message"> Lorem ipsum dolor sit amet </span>
									<span class="time"> January 21, 2012 </span>
							</a></li>
							<!-- End Messages -->

						</ul>
						<div class="mws-dropdown-viewall">
							<a href="#">View All Messages</a>
						</div>
					</div>
				</div>
			</div>

			<!-- User Functions -->
			<div id="mws-user-info" class="mws-inset">
				<div id="mws-user-photo">
					<img
						src="${pageContext.request.contextPath}/static/example/profile.jpg"
						alt="User Photo" />
				</div>
				<div id="mws-user-functions">
					<div id="mws-username">Hello, John Doe</div>
					<ul>
						<li><a href="#">Profile</a></li>
						<li><a href="#">Change Password</a></li>
						<li><a href="index-2.html">Logout</a></li>
					</ul>
				</div>
			</div>
			<!-- End User Functions -->

		</div>
	</div>