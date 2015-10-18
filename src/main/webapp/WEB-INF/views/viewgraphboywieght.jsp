<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>กราฟแสดงน้ำหนักตามเกณฑ์อายุของเด็ก</title>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/jquery.js"></script>
	
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/HighChart-3.0.9/highcharts.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/HighChart-3.0.9/highcharts-more.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/HighChart-3.0.9/modules/exporting.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/calMounth.js"></script>
	<script type="text/javascript">
		var childid='<%=request.getParameter("childid")%>';
	</script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/tranformDate.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/viewgraphboywieght.js"></script>
</head>
<body>
	<!-- <div id="container" style="min-width: 310px; height: 400px;; margin: 0 auto"></div> -->

</body>
</html>