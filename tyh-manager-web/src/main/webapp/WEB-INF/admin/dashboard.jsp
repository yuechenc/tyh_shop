<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="common.jsp"></jsp:include>
<title>MWS Admin - Dashboard</title>

</head>
<body>
	<%@ include file="header.jsp"%>
    <!-- Main Wrapper -->
    <div id="mws-wrapper">
    	<!-- Necessary markup, do not remove -->
		<div id="mws-sidebar-stitch"></div>
		<div id="mws-sidebar-bg"></div>
        
        <%@ include file="nav.jsp"%>
        
        <!-- Container Wrapper -->
        <div id="mws-container" class="clearfix">
        
        	<!-- Main Container -->
            <div class="container">
            
            	<div class="mws-report-container clearfix">
                	<a class="mws-report" href="#">
                    	<span class="mws-report-icon mws-ic ic-building"></span>
                        <span class="mws-report-content">
                        	<span class="mws-report-title">Floors Climbed</span>
                            <span class="mws-report-value">324</span>
                        </span>
                    </a>

                	<a class="mws-report" href="#">
                    	<span class="mws-report-icon mws-ic ic-sport"></span>
                        <span class="mws-report-content">
                        	<span class="mws-report-title">Calories Burned</span>
                            <span class="mws-report-value down">74%</span>
                        </span>
                    </a>

                	<a class="mws-report" href="#">
                    	<span class="mws-report-icon mws-ic ic-walk"></span>
                        <span class="mws-report-content">
                        	<span class="mws-report-title">Kilometers Walked</span>
                            <span class="mws-report-value">14</span>
                        </span>
                    </a>
                    
                	<a class="mws-report" href="#">
                    	<span class="mws-report-icon mws-ic ic-bug"></span>
                        <span class="mws-report-content">
                        	<span class="mws-report-title">Bugs Fixed</span>
                            <span class="mws-report-value up">22%</span>
                        </span>
                    </a>
                    
                	<a class="mws-report" href="#">
                    	<span class="mws-report-icon mws-ic ic-car"></span>
                        <span class="mws-report-content">
                        	<span class="mws-report-title">Cars Repaired</span>
                            <span class="mws-report-value">77</span>
                        </span>
                    </a>
                </div>
                
            	<div class="mws-panel grid_5">
                	<div class="mws-panel-header">
                    	<span class="mws-i-24 i-graph">Charts</span>
                    </div>
                    <div class="mws-panel-body">
                    	<div class="mws-panel-content">
	                    	<div id="mws-dashboard-chart" style="width:100%; height:215px;"></div>
                        </div>
                    </div>
                </div>
                
            	<div class="mws-panel grid_3">
                	<div class="mws-panel-header">
                    	<span class="mws-i-24 i-books-2">Website Summary</span>
                    </div>
                    <div class="mws-panel-body">
                        <ul class="mws-summary">
                            <li>
                                <span>1238</span> total visits
                            </li>
                            <li>
                                <span>512</span> votes
                            </li>
                            <li>
                                <span>11</span> new members
                            </li>
                            <li>
                                <span>716</span> products
                            </li>
                            <li>
                                <span>831</span> comments
                            </li>
                            <li>
                                <span>312</span> items purchased
                            </li>
                        </ul>
                    </div>
                </div>
                
            	<div class="mws-panel grid_8">
                	<div class="mws-panel-header">
                    	<span class="mws-i-24 i-sign-post">Register New Member</span>
                    </div>
                    <div class="mws-panel-body">
                        <div class="mws-wizard clearfix">
                            <ul>
                                <li>
                                    <a class="mws-ic-16 ic-accept" href="#">Member Profile</a>
                                </li>
                                <li class="current">
                                    <a href="#" class="mws-ic-16 ic-delivery">Membership Stype</a>
                                </li>
                                <li>
                                    <a class="mws-ic-16 ic-user" href="#">Confirmation</a>
                                </li>
                            </ul>
                        </div>
                    	<form class="mws-form" action="http://www.malijuwebshop.com/themes/mws-admin/dashboard.html">
                    		<div class="mws-form-inline">
                                <div class="mws-form-row">
                                    <label>Fullname</label>
                                    <div class="mws-form-item large">
                                    	<input type="text" name="fullname" class="mws-textinput" />
                                    </div>
                                </div>
                                <div class="mws-form-row">
                                    <label>Email</label>
                                    <div class="mws-form-item large">
                                    	<input type="text" name="email" class="mws-textinput" />
                                    </div>
                                </div>
                                <div class="mws-form-row">
                                    <label>Address</label>
                                    <div class="mws-form-item large">
                                    	<textarea name="address" rows="100%" cols="100%"></textarea>
                                    </div>
                                </div>
                                <div class="mws-form-row">
                                    <label>Gender</label>
                                    <div class="mws-form-item">
	                                    <ul class="mws-form-list">
	                                    	<li><input type="radio" id="male" name="gender" /> <label for="male">Male</label></li>
	                                    	<li><input type="radio" id="female" name="gender" /> <label for="female">Female</label></li>
	                                    </ul>
                                    </div>
                                </div>
                    		</div>
                    		<div class="mws-button-row">
                    			<input type="submit" value="Prev" class="mws-button gray left" />
                    			<input type="submit" value="Next" class="mws-button green" />
                    		</div>
                    	</form>
                    </div>
                </div>
                
                <div class="mws-panel grid_8 mws-collapsible">
                	<div class="mws-panel-header">
                    	<span class="mws-i-24 i-table-1">Simple Table</span>
                    </div>
                    <div class="mws-panel-body">
                        <table class="mws-table">
                            <thead>
                                <tr>
                                    <th>Rendering engine</th>
                                    <th>Browser</th>
                                    <th>Platform(s)</th>
                                    <th>Engine version</th>
                                    <th>CSS grade</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="gradeX">
                                    <td>Trident</td>
                                    <td>Internet
                                         Explorer 4.0</td>
                                    <td>Win 95+</td>
                                    <td class="center">4</td>
                                    <td class="center">X</td>
                                </tr>
                                <tr class="gradeC">
                                    <td>Trident</td>
                                    <td>Internet
                                         Explorer 5.0</td>
                                    <td>Win 95+</td>
                                    <td class="center">5</td>
                                    <td class="center">C</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Trident</td>
                                    <td>Internet
                                         Explorer 5.5</td>
                                    <td>Win 95+</td>
                                    <td class="center">5.5</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Trident</td>
                                    <td>Internet
                                         Explorer 6</td>
                                    <td>Win 98+</td>
                                    <td class="center">6</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Trident</td>
                                    <td>Internet Explorer 7</td>
                                    <td>Win XP SP2+</td>
                                    <td class="center">7</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Trident</td>
                                    <td>AOL browser (AOL desktop)</td>
                                    <td>Win XP</td>
                                    <td class="center">6</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Firefox 1.0</td>
                                    <td>Win 98+ / OSX.2+</td>
                                    <td class="center">1.7</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Firefox 1.5</td>
                                    <td>Win 98+ / OSX.2+</td>
                                    <td class="center">1.8</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Camino 1.5</td>
                                    <td>OSX.3+</td>
                                    <td class="center">1.8</td>
                                    <td class="center">A</td>
                                </tr>
                                <tr class="gradeA">
                                    <td>Gecko</td>
                                    <td>Netscape 7.2</td>
                                    <td>Win 95+ / Mac OS 8.6-9.2</td>
                                    <td class="center">1.7</td>
                                    <td class="center">A</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- End Main Container -->
            
            <!-- Footer -->
            <div id="mws-footer">
            	Copyright &copy; 2014.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
            </div>
            <!-- End Footer -->
            
        </div>
        <!-- End Container Wrapper -->
        
    </div>
    <!-- End Main Wrapper -->


</body>
</html>