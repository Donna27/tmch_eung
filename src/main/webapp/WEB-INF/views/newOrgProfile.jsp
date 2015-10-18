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
<%--     <script type="text/javascript">
    	var orgid='<%=request.getParameter("orgid")%>';
    </script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/regisStaff.js"></script> --%>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/neworgProfile.js"></script>
</head>
	<body>

	    <!-- body -->
	    <div class="container marketing">
			<div id="legend">
				<legend>ดูข้อมูลองค์กร</legend>
			</div>	
			<div class="container">
  				<div class="row">
    				<div class="span12">
      					<form class="form-horizontal span5" action="registerMemb" method="post">
        					<input type="hidden" name="orgid" value="<%=request.getParameter("orgid")%>">
        					<fieldset>					          	                						
          						<div class="control-group">
					            	<label class="control-label">ประเภทองค์กร</label>
					            	<div class="controls">
					              		<!-- <input id="orgType" type="text" class="input-block-level"> -->
					              		<select id="orgType" class="input-block-level">
						                    	<option>โรงพยาบาลรัฐบาล</option>
						                    	<option>โรงพยาบาลเอกชน</option>
						                    	<option>สถานีอนามัย</option>
						                    	<option>คลินิก</option>
					              		</select>
					            	</div>
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">ชื่อองค์กร</label>
					            	<div class="controls">
						            	<input id="orgname" type="text" class="input-block-level" name="pwd">
					            	</div>	
					          	</div>
					          	
					          	
					          	
					          	<div class="control-group">
					            	<label class="control-label">ที่อยู่</label>
					            	<div class="controls">
				                  		<input id="orgaddress" type="text" class="input-block-level" name="noAddress">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">ตำบล</label>
					            	<div class="controls">
						                <input id="locality" type="text" class="input-block-level" name="Locality">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">อำเภอ</label>
					            	<div class="controls">
						            	<input id="distric" type="text" class="input-block-level" name="district">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">จังหวัด</label>
					            	<div class="controls">
						            	<input id="province" type="text" class="input-block-level" name="province">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">รหัสไปรษณีย์</label>
					            	<div class="controls">
						             	<input id="zip" type="text" class="input-block-level" maxlength="5" name="postcode">
					            	</div>	
					          	</div>
					          	
					          	<div class="control-group">
					            	<label class="control-label">โทรศัพท์</label>
					            	<div class="controls">
					              		<input id="orgtel" type="text" class="input-block-level" name="tel">
					            	</div>
					          	</div>
					          	
					          	<div class="control-group">
					            	<div class="controls">
					              		<button id="updateorgprofilebtn" type="button" class="btn btn-primary">บันทึก</button>
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


