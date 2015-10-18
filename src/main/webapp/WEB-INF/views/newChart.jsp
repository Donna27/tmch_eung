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

</head>
	<body>

	    <!-- body -->
	    <div class="container marketing">
			<div id="legend">
				<legend>สมัครแอดมิน</legend>
			</div>	
			<div class="container">
  				<div class="row">
    				<div class="span12">
      					<form class="form-horizontal span5" id="form" action="saveadminuser" method="post" >
        					<fieldset>					          	                										          	
					          	<div class="control-group">
					            	<label class="control-label">ชื่อ</label>
					            	<div class="controls">
						                <input type="text" class="input-block-level" name="fname">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">สกุล</label>
					            	<div class="controls">
						                <input type="text" class="input-block-level" name="lname">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">อีเมล์</label>
					            	<div class="controls">
						            	<input type="text" class="input-block-level" name="email">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">รหัสผ่าน</label>
					            	<div class="controls">
						            	<input type="password" class="input-block-level" name="pwd">
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
      	</div>
      	
      	<%@ include file="includeFooter.jsp" %>
      	
	</body>
</html>


