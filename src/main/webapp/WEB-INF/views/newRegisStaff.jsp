<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
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
<%--     <script type="text/javascript">
    	var orgid='<%=request.getParameter("orgid")%>';
    </script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/regisStaff.js"></script> --%>
</head>
	<body>

	    <!-- body -->
	    <div class="container marketing">
			<div id="legend">
				<legend>ลงทะเบียนเจ้าหน้าที่</legend>
			</div>	
			<div class="container">
  				<div class="row">
    				<div class="span12">
      					<form class="form-horizontal span5" action="registerMemb" method="post">
        					<input type="hidden" name="orgid" value="<%=request.getParameter("orgid")%>">
        					<fieldset>					          	                						
          						<div class="control-group">
					            	<label class="control-label">ชื่อ</label>
					            	<div class="controls">
					              		<input type="text" class="input-block-level" name="firstName">
					            	</div>
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">นามสกุล</label>
					            	<div class="controls">
					              		<input id="fname" type="text" class="input-block-level" name="lastName">
					            	</div>
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">อีเมล์</label>
					            	<div class="controls">
				                  		<input id="lname" type="text" class="input-block-level" name="email">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">รหัสผ่าน</label>
					            	<div class="controls">
						                <input id="email" type="password" class="input-block-level" name="pwd">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">ยืนยันรหัสผ่าน</label>
					            	<div class="controls">
						            	<input type="password" class="input-block-level" >
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<div class="controls">
					              		<label class="checkbox" for="save_card">
                							<input type="checkbox" id="save_card" value="option1">
                							ยอมรับ
              							</label>
					            	</div>
					          	</div>

					          	<div class="control-group">
					            	<div class="controls">
					              		<button id="registbtn" type="submit" class="btn btn-primary">ลงทะเบียนเจ้าหน้าที่</button>
					              		<a href="/tmch/newSearchOrg" class="btn btn-primary">ยกเลิก</a>
					            	</div>
					          	</div>          
       						</fieldset>
      					</form>
    				</div>
  				</div>
			</div>
      	</div>
      	
		<%@ include file="includeFooter.jsp" %>
		
	</body>
</html>


