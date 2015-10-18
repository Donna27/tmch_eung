<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="th"> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>JQUERY TEST</title>

	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/Bootstrap/Bootjs/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/HighChart-3.0.9/highcharts.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/HighChart-3.0.9/highcharts-more.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/HighChart-3.0.9/modules/exporting.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/jqueryTest.js"></script>

	<!-- <script type="text/javascript">
	$(function () {
        $('#container').highcharts({
            chart: {
                type: 'areaspline'
            },
            title: {
                text: 'Average fruit consumption during one week'
            },
            legend: {
                layout: 'vertical',
                align: 'left',
                verticalAlign: 'top',
                x: 150,
                y: 100,
                floating: true,
                borderWidth: 1,
                backgroundColor: '#FFFFFF'
            },
            xAxis: {
            	labels :{
            		//enable : false,
            		step : 12
            	},
                categories: [
                   'แรกเกิด',
                '1',
                '2',
                '3',
                '4',
                '5',
                '6',
                '7',
                 '8',
                 '9',
                 '10',
                 '11',
                 '1 ปี',
                                    
                '1',
                '2',
                '3',
                '4',
                '5',
                '6',
                '7',
                 '8',
                 '9',
                 '10',
                 '11',
                 '2 ปี',
                                      
                '1',
                '2',
                '3',
                '4',
                '5',
                '6',
                '7',
                 '8',
                 '9',
                 '10',
                 '11',
                  '3 ปี',
                                     
                '1',
                '2',
                '3',
                '4',
                '5',
                '6',
                '7',
                 '8',
                 '9',
                 '10',
                 '11',
                  '4 ปี',
                                      
                '1',
                '2',
                '3',
                '4',
                '5',
                '6',
                '7',
                 '8',
                 '9',
                 '10',
                 '11',
                 '5 ปี',
                                       
                '1',
                '2',
                '3',
                '4',
                '5',
                '6',
                '7',
                 '8',
                 '9',
                 '10',
                 '11',
                  '6 ปี'
                    
                    
                ],
                plotBands: [{ // visualize the weekend
                    from: 4.5,
                    to: 6.5,
                    color: 'rgba(68, 170, 213, .2)'
                }]
            },
            yAxis: {
                title: {
                    text: 'ส่วนสูง(ซม.)'
                }
            },
            tooltip: {
                shared: true,
                valueSuffix: ' units'
            },
            credits: {
                enabled: false
            },
            plotOptions: {
                areaspline: {
                    fillOpacity: 0.5
                }
            },
            series: [{
                name: 'เตี้ย',
                data: [47,50,53,55,57,60,62,63,65,67,68,69,70,
                       71,72,73,74,75,75.5,76,77,78,79,79.5,80,
                       81,81.5,82,83,83.5,84,84.5,85,86,86.5,87,87.5,87,
                     88,88.5,89,89.5,90,90.5,91,91.5,92,92.5,93,93.5,94,
                      94.5,95,95.5,96,96.5,97,97.5,98,98.5,99,99.5,100,
                      100.5,101,101.5,102,102.5,103,103.5,104,104.5,105]
           }, {
            name: 'ค่อนข้างเตี้ย',
            data: [47.5,50.5,53.5,55.5,57.5,60.5,62.5,63.5,65.5,67.5,68.5,69.5,70.5,
          71.5,72.5,73.5,74.5,75,76,77,78,78.5,79.5,80,81,81.5,
                       81,81.5,82,83,83.5,84,84.5,85,86,86.5,87,87.5,87,
                     88,88.5,89,89.5,90,90.5,91,91.5,92,92.5,93,93.5,94,
                      94.5,95,95.5,96,96.5,97,97.5,98,98.5,99,99.5,100,
                      100.5,101,101.5,102,102.5,103,103.5,104,104.5,105]
         

            }]
        });
    });
    

	</script> -->
</head>
<body>
	<div id="container" style="min-width: 310px; height: 400px;; margin: 0 auto"></div>

</body>
</html>