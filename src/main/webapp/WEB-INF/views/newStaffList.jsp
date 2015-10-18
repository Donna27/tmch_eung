<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8""> -->
	<%@ include file="include.jsp" %>
	
	<!-- Style -->
	<style>
	/* Featurettes */
    	.featurette-divider {
      		margin: 80px 0; /* Space out the Bootstrap <hr> more */
    	}
	
	/*body*/
		.marketing{
			margin: 80px auto 0px;
		}
		
	/*search*/
	    #custom-search-form {
	        margin:0;
	        margin-top: 5px;
	        padding: 0;
	    }
	    #custom-search-form .search-query {
	        padding-right: 3px;
	        padding-right: 4px \9;
	        padding-left: 3px;
	        padding-left: 4px \9;
	        /* IE7-8 doesn't have border-radius, so don't indent the padding */	 
	        margin-bottom: 0;
	        -webkit-border-radius: 3px;
	        -moz-border-radius: 3px;
	        border-radius: 3px;
	    }
	    #custom-search-form button {
	        border: 0;
	        background: none;
	        /** belows styles are working good */
	        padding: 2px 5px;
	        margin-top: 2px;
	        position: relative;
	        left: -28px;
	        /* IE7-8 doesn't have border-radius, so don't indent the padding */
	        margin-bottom: 0;
	        -webkit-border-radius: 3px;
	        -moz-border-radius: 3px;
	        border-radius: 3px;
	    }
	    .search-query:focus + button {
	        z-index: 3;   
	    }
		
	/* Responsive Css */
	     @media (max-width: 979px) {
			.marketing{
				margin: 40px auto 0px;
		}
	    @media (max-width: 767px) {
	      	.marketing .span4 + .span4 {
	        	margin-top: 40px;
	      	}
	    }	    
    </style>
	<script type="text/javascript">
		var orgid='<%=request.getParameter("orgid")%>';
	</script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/newStaffList.js"></script>
	 
</head>
<body>
	    <!-- body -->
	    <div class="container marketing">
			<div id="legend">
			 	<legend id="" >รายชื่อเจ้าหน้าที่</legend>
				<label id="dd"></label>
			</div>
			<div class="row">
	        	<div class="span12">
	    			<table id="stafftable" class="table table-hover table-bordered" >
		    			<thead>
			   				<tr>
			   					<th>#</th>
			   					<th>ชื่อ - นามสกุล เจ้าหน้าที่</th>
			   					<th>อีเมล์</th>
			   				</tr>
		    			</thead>
		    			<tbody>
							<!-- <tr>
			   					<td>1</td>
			   					<td>ปวีณา  พดด้วง</td>
			   					<td>สถานีอนามัย</td>
			   					<td>ภูเก็ต</td>
			   					<td><a href="/tmch/newRegisStaff" class="btn btn-small btn-primary">ลงทะเบียนเจ้าหน้าที่</a></td>
			   				</tr> -->
			   			</tbody>
	    			</table>
	    		</div>
			</div>
      	</div>
      	
		<%@ include file="includeFooter.jsp" %>
		
	</body>
</html>


