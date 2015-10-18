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
    	var momid='<%=request.getParameter("momid")%>';
    </script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/momlink.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/newMomAppointment.js"></script>
</head>
	<body>

	    <!-- body -->
	    <div class="container marketing">
	    <img src="../resources/img/browser-icon-chrome.png" class="img-polaroid" width="160px" height="160px">
			<ul class="nav nav-tabs">
			  	<li>
			    	<a id="momProfileLink" >ข้อมูลแม่</a>
			  	</li>
			  	<li>
			  		<a id="momhistory">ประวัติการตั้งครรภ์</a>
			  	</li>
			  	<li>
			  		<a id="momchildList" >ข้อมูลลูก</a>
			  	</li>
			  	<li class="active">
			  		<a id="momlistappoint">วันนัดตรวจ</a>
			  	</li>
			</ul>
			<div class="container">
			    <div class="row">
			        <div class="span12" >
			            <a id="addappointbtn" href="#AddChild" style="float: right;" role="button" data-toggle="modal" class="btn btn-small btn-primary">เพิ่มวันนัดตรวจ</a>
			        </div>
			    </div>
			</div>			
			<div id="AddChild" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="advancedSort" aria-hidden="true">
			    <div class="modal-header">
			    	<h4>เพิ่มวันนัดตรวจ</h4>	
				</div>
				<div class="modal-body">
					<div class="row-fluid">
      					<form id="motherappointform" class="form-horizontal">
       	 					<fieldset>
					          	<!-- something here -->
											          	
								<div class="control-group">
									<label class="control-label">วันนัดตรวจ</label>
									<div id="appointcheckup" class="controls">
										<!-- <input type="text" class="input-xlarge"> -->
									</div>
								</div>
											          	
								<div class="control-group">
									<label class="control-label">สถานที่</label>
									<div class="controls">
										<input id="place" type="text" class="input-xlarge">
									</div>
								</div>
									
								<div class="control-group">
									<label class="control-label">รายละเอียด</label>
									<div class="controls">
										<textarea rows="3" name="description"></textarea>
									</div>
								</div>																			          	
								<div class="control-group">
            						<div class="controls">
              							<input type="button"  id="saveappointbtn" class="btn btn-primary" style="float: right;" value="บันทึก">
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
			   					<th>วันนัดตรวจ</th>
			   					<th>สถานที่</th>
			   					<th>แก้ไขวันนัดตรวจ</th>
			   				</tr>
		    			</thead>
		    			<tbody>
							<tr>
			   					<td></td>
			   					<td></td>
								<td></td>
			   					<td><a href="#addChild" class="btn btn-small btn-primary" data-toggle="modal">แก้ไข</a>
									<div id="addChild" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="advancedSort" aria-hidden="true">
									    <div class="modal-header">
									    	<h4>วันนัดตรวจ</h4>	
										</div>
										<div class="modal-body">
											<div class="row-fluid">
						      					<form class="form-horizontal">
						       	 					<fieldset>
											          	<!-- something here -->
											          	<div class="control-group">
															<label class="control-label">ครั้งที่</label>
															<div class="controls">
																<input type="text" class="input-xlarge">
															</div>
														</div>
																	          	
														<div class="control-group">
															<label class="control-label">วันนัดตรวจ</label>
															<div class="controls">
																<input type="text" class="input-xlarge">
															</div>
														</div>
																	          	
														<div class="control-group">
															<label class="control-label">สถานที่</label>
															<div class="controls">
																<input type="text" class="input-xlarge">
															</div>
														</div>
																	          	
														<div class="control-group">
						            						<div class="controls">
						              							<button class="btn btn-primary" style="float: right;">บันทึก</button>
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


