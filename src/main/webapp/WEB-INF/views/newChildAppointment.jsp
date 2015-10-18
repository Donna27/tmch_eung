<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

	<%@ include file="includePage.jsp" %>
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
		a.btn {
	   		float: right;
	   }
		.nav {
			margin-left: 200px;
			margin-top: -38px;
		}
	
	/* Responsive Css */
	     @media (max-width: 979px) {
			.marketing{
				margin: 35px auto 0px;
		}
	    @media (max-width: 767px) {
	      	.marketing .span4 + .span4 {
	        	margin-top: 40px;
	      	}
	    }    
    </style>
    
    <script type="text/javascript">
	$(document).ready(function(){
		
		// add validate
		$('#addAppointment').jqxValidator({
		   	hintType: 'label',
		   	rules: [
		    	{ input: '#time', message: 'First Name is required!', action: 'keyup, blur', rule: 'required' },
		        { input: '#list', message: 'Last Name is required!', action: 'keyup, blur', rule: 'required' },
		        { input: '#place', message: 'Billing Address is required!', action: 'keyup, blur', rule: 'required' },
		        /*
		        { input: '#second', message: 'Billing City is required!', action: 'keyup, blur', rule: 'required' },
		        { input: '#third', message: 'Zip Code is required!', action: 'keyup, blur', rule: 'required' },
		        { input: '#cardNumber', message: 'Card Number is required!', action: 'keyup, blur', rule: 'required' },
		        { input: '#securityCode', message: 'Security Code is required!', action: 'keyup, blur', rule: 'required' },
		        { input: '#acceptTerms', message: 'You need to accept the terms!', action: 'keyup, blur', rule: 'required' } 
		        */
		    ]
		});    
		// Validate form.
		$("#savebtn").click(function () {
			var validationResult = function (isValid) {
				if (isValid) {
			    	alert('success!');
				}else{
			        alert('fail!');	
			    }
		 	}
		$('#addAppointment').jqxValidator('validate', validationResult);		
		});
		
		// edit validate
		$('#editAppointment').jqxValidator({
		   	hintType: 'label',
		   	rules: [
		    	{ input: '#time2', message: 'First Name is required!', action: 'keyup, blur', rule: 'required' },
		        { input: '#list2', message: 'Last Name is required!', action: 'keyup, blur', rule: 'required' },
		        { input: '#place2', message: 'Billing Address is required!', action: 'keyup, blur', rule: 'required' },
		        /*
		        { input: '#second', message: 'Billing City is required!', action: 'keyup, blur', rule: 'required' },
		        { input: '#third', message: 'Zip Code is required!', action: 'keyup, blur', rule: 'required' },
		        { input: '#cardNumber', message: 'Card Number is required!', action: 'keyup, blur', rule: 'required' },
		        { input: '#securityCode', message: 'Security Code is required!', action: 'keyup, blur', rule: 'required' },
		        { input: '#acceptTerms', message: 'You need to accept the terms!', action: 'keyup, blur', rule: 'required' } 
		        */
		    ]
		});
		// Validate form.
		$("#savebtn2").click(function () {
			var validationResult = function (isValid) {
				if (isValid) {
			    	alert('success!');
				}else{
			        alert('fail!');	
			    }
		 	}
		$('#editAppointment').jqxValidator('validate', validationResult);		
		});
		
	});

    </script>

</head>
	<body>
		
	    <!-- body -->
	    <div class="container marketing">
	    
	    <img src="../resources/img/browser-icon-chrome.png" class="img-polaroid" width="160px" height="160px">
		<a href="/tmch/newMomProfile" class="btn" type="button"><i class="icon-chevron-left"></i> กลับหน้าแม่</a>
			<!-- <ul class="nav nav-tabs">
			  	<li>
			    	<a href="/tmch/newChildProfile">ข้อมูลลูก</a>
			  	</li>
			  	<li>
			  		<a href="/tmch/newChildActivity">กิจจกรรมบริการ</a>
			  	</li>
			  	<li>
			  		<a href="/tmch/newChildVaccine">วัคซีน</a>
			  	</li>
			  	<li class="active">
			  		<a href="/tmch/newChildAppointment">วันนัดตรวจ</a>
			  	</li>
			</ul> -->
			<%@ include file="childtab.jsp" %>
			<div class="container">
			    <div class="row">
			        <div class="span12" >
			            <a href="#AddChild" style="float: right;" role="button" data-toggle="modal" class="btn btn-small btn-primary">เพิ่มวันนัดตรวจ</a>
			        </div>
			    </div>
			</div>			
			<div id="AddChild" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="advancedSort" aria-hidden="true">
			    <div class="modal-header">
			    	<h4>เพิ่มวันนัดตรวจ</h4>	
				</div>
				<div class="modal-body">
					<div class="row-fluid">
      					<form class="form-horizontal" id="addAppointment">
       	 					<fieldset>
					          	<!-- something here -->
					          	<div class="control-group">
									<label class="control-label">วันที่</label>
									<div class="controls">
										<input type="text" class="input-xlarge">
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">เวลา</label>
									<div class="controls">
										<input id="time" type="text" class="input-xlarge">
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">รายการ</label>
									<div class="controls">
										<input id="list" type="text" class="input-xlarge">
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">สถานที่นัด</label>
									<div class="controls">
										<input id="place" type="text" class="input-xlarge">
									</div>
								</div>
								
					          	<div class="control-group">
            						<div class="controls">
              							<input type="button" class="btn btn-primary" id="savebtn" style="float: right;" value="บันทึก">
					            	</div>
					          	</div>
        					</fieldset>
     					</form>
    				</div>
				</div>
			</div>
			<div class="row">
	        	<div class="span12">
	    			<table class="table table-condensed table-hover">
		    			<thead>
			   				<tr>
			   					<th>#</th>
			   					<th>วันที่</th>
			   					<th>เวลา</th>
			   					<th>รายการ</th>
			   					<th>สถานทีนัด</th>
			   					<th>แก้ไขวันนัดตรวจ</th>
			   				</tr>
		    			</thead>
		    			<tbody>
							<tr>
			   					<td></td>
			   					<td></td>
			   					<td></td>
			   					<td></td>
								<td></td>
			   					<td><a href="#addChild" class="btn btn-small btn-primary" style="float: left;" data-toggle="modal">แก้ไข</a>
			   						<div id="addChild" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="advancedSort" aria-hidden="true">
									    <div class="modal-header">
									    	<h4>วันนัดตรวจ</h4>	
										</div>
										<div class="modal-body">
											<div class="row-fluid">
						      					<form class="form-horizontal" id="editAppointment">
						       	 					<fieldset>
											          	<!-- something here -->
											          	<div class="control-group">
															<label class="control-label">วันที่</label>
															<div class="controls">
																<input type="text" class="input-xlarge">
															</div>
														</div>
														
														<div class="control-group">
															<label class="control-label">เวลา</label>
															<div class="controls">
																<input id="time2" type="text" class="input-xlarge">
															</div>
														</div>
														
														<div class="control-group">
															<label class="control-label">รายการ</label>
															<div class="controls">
																<input id="list2" type="text" class="input-xlarge">
															</div>
														</div>
														
														<div class="control-group">
															<label class="control-label">สถานที่นัด</label>
															<div class="controls">
																<input id="place2" type="text" class="input-xlarge">
															</div>
														</div>
											          	
											          	<div class="control-group">
						            						<div class="controls">
						              							<input type="button" class="btn btn-primary" id="savebtn2" style="float: right;" value="บันทึก">
											            	</div>
											          	</div>
						        					</fieldset>
						     					</form>
						    				</div>
										</div>
									</div>
			   					
			   					</td>
			   				</tr>
			   			</tbody>
	    			</table>
	    		</div>
			</div>
      	</div>
      	
      	<%@ include file="includeFooter.jsp" %>
      	
	</body>
</html>


