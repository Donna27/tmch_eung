<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ page import="com.google.appengine.api.blobstore.*" %>

<%
BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Upload FIle PDF</h1>
	<form action="uploadfile" method="post" enctype="multipart/form-data">
		<input name="name" type="text" value=""> <br /> <input
			name="file" type="file" size="30"> <br /> <input
			name="Submit" type="submit" value="Sumbit">
	</form>
</body>
</html>