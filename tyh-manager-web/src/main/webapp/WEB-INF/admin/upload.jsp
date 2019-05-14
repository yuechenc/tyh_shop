<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="common.jsp"></jsp:include>
<title>MWS Admin - Form Elements</title>

</head>

<body>

	<%@ include file="header.jsp"%>
    
    <div id="mws-wrapper">
		<div id="mws-sidebar-stitch"></div>
		<div id="mws-sidebar-bg"></div>
        <%@ include file="nav.jsp"%>
        
        <div id="mws-container" class="clearfix">
            <div class="container">
            
            	<div class="mws-report-container clearfix">
                </div>
                        
            	<div class="mws-panel grid_4">
                	<div class="mws-panel-header">
                    	<span class="mws-i-24 i-eyedropper">Custom Inputs</span>
                    </div>
                    <div class="mws-panel-body">
                    	<form class="mws-form" action="${pageContext.request.contextPath}/upload/test" method="post" enctype="multipart/form-data">
                        	<div class="mws-form-inline">
                            	<div class="mws-form-row">
                                	<label>文件上传</label>
                                	<div class="mws-form-item large">
                                    	<input type="file" name="file" class="mws-textinput" />
                                    </div>
                                </div>
                                <div class="mws-form-row">
                                	<div class="mws-form-item large">
                                    	<input type="submit" value="上传" class="mws-button black">
                                    </div>
                                </div>
                                <div class="mws-form-row">
                                	<div class="mws-form-item large">
                                    	${url}
                                    </div>
                                </div>
                            	
                            </div>
                        </form>
                    </div>    	
                </div>
            
            <div id="mws-footer">
            	Copyright &copy; 2014.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
            </div>
            </div>
        </div>
    </div>


</body>
</html>