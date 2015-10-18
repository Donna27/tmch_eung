<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<%@ include file="include.jsp" %>
	<%@ include file="includejqx.jsp" %>
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
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/registMemb.js"></script>
</head>
	<body>

	    <!-- body -->
	    <div class="container marketing">
			<div id="legend">
				<legend>คุณแม่สมัครสมาชิก</legend>
			</div>	
			<div class="container">
  				<div class="row">
    				<div class="span12">
      					<form class="form-horizontal span5">
        					<fieldset>					          	                						
          						<div class="control-group">
					            	<label class="control-label">ชื่อ</label>
					            	<div class="controls">
					              		<input id="fnamemom" type="text" class="input-block-level">
					            	</div>
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">นามสกุล</label>
					            	<div class="controls">
					              		<input id="lnamemom" type="text" class="input-block-level">
					            	</div>
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">เลขบัตรประชาชน</label>
					            	<div class="controls">
						                <input id="id13mom" type="text" class="input-block-level" maxlength="13">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">อีเมล์</label>
					            	<div class="controls">
				                  		<input id="emailmom" type="text" class="input-block-level">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">รหัสผ่าน</label>
					            	<div class="controls">
						                <input id="passwordmom" type="password" class="input-block-level">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">ยืนยันรหัสผ่าน</label>
					            	<div class="controls">
						            	<input id="confirmpwd" type="password" class="input-block-level">
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
					              		<button id="registmombtn" type="button" class="btn btn-primary">ลงทะเบียนสมาชิก</button>
					              		<a href="/tmch/index" class="btn btn-primary">ยกเลิก</a>
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


