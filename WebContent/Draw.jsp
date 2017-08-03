<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link type="text/css" rel="stylesheet" href="static/stylesheets/style.css" />
	<title>Make Your Own Checkerboard</title>
</head>
<body>
	<% String userName = request.getParameter("name"); %>
	<% Integer width = Integer.parseInt(request.getParameter("width")); %>
	<% Integer height = Integer.parseInt(request.getParameter("height")); %>

	<% for(int i = 0; i < height; i++){ %>
	<!-- New row -->
	<div></div>
		<% if(i % 2 != 0){ %>
			<% for(int j = 0; j < width; j++){ %>
				<% if (j % 2 != 0){ %>
					<div class="blue-box">
					</div>	
				<% } %>
				<% if (j % 2 == 0){ %>
					<div class="red-box">
					</div>	
				<% } %>
			<% } %>
		<% } %>
		<% if(i % 2 == 0){ %>
			<% for(int j = 0; j < width; j++){ %>
				<% if (j % 2 != 0){ %>
					<div class="red-box">
					</div>	
				<% } %>
				<% if (j % 2 == 0){ %>
					<div class="blue-box">
					</div>	
				<% } %>
			<% } %>
		<% } %>
	<% } %>

</body>
</html>