<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

	<%@ include file="includePage.jsp" %>

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

</head>
	<body>

	    <!-- body -->
	    <div class="container marketing">
			<div id="legend">
				<legend>เปลี่ยนรหัสผ่าน</legend>
			</div>	
			<div class="container">
  				<div class="row">
    				<div class="span12">
      					<form class="form-horizontal span5" id="form" >
        					<fieldset>					          	                										          	
					          	<div class="control-group">
					            	<label class="control-label">ชื่อผู้ใช้</label>
					            	<div class="controls">
						                <input type="text" class="input-block-level" id="username">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">รหัสผ่านเดิม</label>
					            	<div class="controls">
						                <input type="password" class="input-block-level" id="oldpwd">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">รหัสผ่านใหม่</label>
					            	<div class="controls">
						                <input type="password" class="input-block-level" id="newpwd">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">ยืนยันรหัสผ่านใหม่</label>
					            	<div class="controls">
						            	<input type="password" class="input-block-level" id="cnfpwd">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<div class="controls">
						            	<input type="submit" class="btn btn-primary" value="บันทึก">
					            	</div>
					          	</div>          
       						</fieldset>
      					</form>
    				</div>
  				</div>
			</div>
			<hr class="featurette-divider">
      	</div>
      	
      	<%@ include file="includeFooter.jsp" %>
      	
	</body>
</html>


