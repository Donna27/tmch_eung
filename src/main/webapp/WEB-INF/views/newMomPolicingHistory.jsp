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
		a.btn{
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
    var momid='<%=request.getParameter("momid")%>';
    var pregid='<%=request.getParameter("pregid")%>';
    </script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/momlink.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/momHcRecord.js"></script>
</head>
	<body>

	    <!-- body -->
	    <div class="container marketing">
	    <img src="../resources/img/sunanya.png" class="img-polaroid" width="160px" height="160px">
		<a href="/tmch/newMomHistory?momid=<%=request.getParameter("momid")%>" class="btn" type="button"><i class="icon-chevron-left"></i> ประวัติการตั้งครรภ์</a>
			<ul class="nav nav-tabs">
			  	<li>
			    	<a id="momProfileLink">ข้อมูลส่วนตัว</a>
			  	</li>
			  	<li>
			  		<a id="momhealth">ประวัติสุขภาพ</a>
			  	</li>
			  	<li class="active">
			  		<a id="momhistory">ประวัติการตั้งครรภ์</a>
			  	</li>
			  	<li>
			  		<a id="momchildList">ข้อมูลลูก</a>
			  	</li>
			  	<!-- <li>
			  		<a id="momlistappoint">วันนัดตรวจ</a>
			  	</li> -->
			</ul>
			<div class="container">
			    <div class="row">
			        <div class="span12" >
			            <a href="#AddChild" style="float: right;" role="button" data-toggle="modal" class="btn btn-small btn-primary">เพิ่มบันทึกการตรวจ</a>
			        </div>
			    </div>
			</div>
			
			<br>
			 	
			<div id="AddChild" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="advancedSort" aria-hidden="true">
			    <div class="modal-header">
			    	<h4>เพิ่มบันทึกการตรวจ</h4>	
				</div>
				<div class="modal-body">
					<div class="row-fluid">
      					<form class="form-horizontal" id="addFormMom">
       	 					<fieldset>
					          	<!-- something here -->
					          	<div class="control-group">
									<label class="control-label">วันที่</label>
									<div class="controls">
										<input type="text" class="input-medium datepicker" id="chkdate" readonly="readonly">
									</div>
								</div>
											          	
								<div class="control-group">
									<label class="control-label">น้ำหนัก (ก.ก.)</label>
									<div class="controls">
										<input type="text" class="input-medium" id="width_mom">
									</div>
								</div>
											          	
								<div class="control-group">
									<label class="control-label">การตรวจปัสสาวะ</label>
									<div class="controls">
										<input type="text" class="input-medium" id="urine">
									</div>
								</div>
								          	
								<div class="control-group">
								  	<label class="control-label">ความดันโลหิต (มม.ปรอท)</label>
								   	<div class="controls">
										<input type="text" class="input-medium" id="blood_mm">
									</div>
								</div>
											          	
								<div class="control-group">
									<label class="control-label">ขนาดมดลูก (ซ.ม.)</label>
									<div class="controls">
										<input type="text" class="input-medium" id="uterus">
									</div>
								</div>
											          	
								<div class="control-group">
									<label class="control-label">ท่าเด็กส่วนนำ/การลง</label>
									<div class="controls">
										<select class="input-medium" id="position">
										  <option></option>
										  <option>LOA</option>
										  <option>ROA</option>
										  <option>OPP</option>
										  <option>Transvers</option>
										  <option>Breech</option>
										  <option>Foot</option>
										  <option>ไม่ทราบ</option>
										</select>
									</div>
								</div>
											          	
								<div class="control-group">
									<label class="control-label">เสียงหัวใจเด็ก</label>
									<div class="controls">
										<select class="input-medium" id="heartRate">
											<option></option>
											<option>ไม่ได้ยิน</option>
											<option>ได้ยินน้อย</option>
											<option>ได้ยินปกติ</option>
										</select>
									</div>
								</div>
											          	
								<div class="control-group">
									<label class="control-label">เด็กดิ้น</label>
									<div class="controls">
										<select class="input-medium" id="childWriggle">
											<option>ดิ้น</option>
											<option>ไม่ดิ้น</option>
										</select>
									</div>
								</div>
											          	
								<div class="control-group">
									<label class="control-label">อายุครรภ์ (สัปดาห์)</label>
									<div class="controls">
										<input type="text" class="input-medium" id="due_time">
									</div>
								</div>
											          	
								<div class="control-group">
									<label class="control-label">การตรวจร่างกายทั่วไป</label>
									<div class="controls">
										<input type="text" class="input-medium" id="chkupRisk">
									</div>
								</div>
											          	
								<div class="control-group">
									<label class="control-label">การวินิจฉัยและการรักษา</label>
									<div class="controls">
										<input type="text" class="input-medium" id="diagnose">
									</div>
								</div>
								
								<div class="control-group">
            						<div class="controls">
            							<input id="addmombtn" type="button" class="btn btn-primary" value="บันทึก">
					            	</div>
					          	</div>
        					</fieldset>
     					</form>
    				</div>
				</div>
			</div>
			
			<div class="row">
	        	<div class="span12">
					<div id="momRecordTable" style="width: 100%; padding-top: 50"></div>
				</div>
			</div>
			
			<!-- Edit popup -->
			<div id="popupEditWindow" style="overflow: hidden;">
            <div>Edit</div>
            <!-- <div style="overflow: hidden;"> -->
       <div class="modal-header" >
    	<form class="row-fluid" >
    		<div class="row-fluid">
  				<div class="span6">
	  				
	  				<div class="control-group">
						<label class="control-label">วันที่</label>
						<div class="controls">
							<input type="text" id="e_chkupdate">
						</div>
					</div>
					
	  				<div class="control-group">
	  					 <label class="control-label" for="width_mom">น้ำหนัก</label>
	    					<div class="controls">
	      						<input type="text" id="e_width_mom" name="width_mom" value="">
	    					</div>
	  				</div>
	  				
	  				<div class="control-group">
	  					<label class="control-label" for="urige">การตรวจปัสสาวะ</label>
	    				<div class="controls">
	      					<input type="text" id="e_urige" name="e_urige">
	    				</div>
	  				</div>
	  				
	  				<div class="control-group">
						<label class="control-label">ขนาดมดลูก</label>
						<div class="controls">
							<input type="text">
						</div>
					</div>
	  				
	  				<div class="control-group">
	  					 <label class="control-label" for="urige">ความดันโลหิต</label>
	    					<div class="controls">
	      						<input type="text" id="e_urige" name="e_urige">
	    					</div>
	  				</div>
	  				
	  				<div class="control-group">
	  					 <label class="control-label" for="urige">ท่าเด็กส่วนนำ/การลง</label>
	    					<div class="controls">
	      						<input type="text" id="e_urige" name="e_urige">
	    					</div>
	  				</div>
	  				
	  				<div class="control-group">
	  					 <label class="control-label" for="urige">เสียงหัวใจเด็ก</label>
	    					<div class="controls">
	      						<input type="text" id="e_urige" name="e_urige">
	    					</div>
	  				</div>
	  				
	  				<div class="control-group">
						<label class="control-label">เด็กดิ้น</label>
						<div class="controls">
							<input type="text">
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">อายุครรภ์</label>
						<div class="controls">
							<input type="text">
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">การตรวจร่างกายทั่วไป</label>
						<div class="controls">
							<input type="text">
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">การวินิจฉัยและการรักษา</label>
						<div class="controls">
							<input type="text">
						</div>
					</div>
  				
  				</div>
			</div>
			<input type="submit" class="btn btn-primary" value="บันทึกการตรวจ">
	</form>
   </div>
     <!-- </div> -->
      </div>
			
      	</div>
      	
      	<%@ include file="includeFooter.jsp" %>
      	
	</body>
</html>


