<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Language" content="th"> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mom Health Care Record </title>

	<%@ include file="include.jsp" %>
	<%@ include file="includejqx.jsp" %>
 	<script type="text/javascript" src="<%=request.getContextPath()%>/script/jqwidgets-3.2.1/jqxgrid.edit.js"></script> 
 	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/momHcRecord.js"></script> 
 	
 
</head>
<body >
	
		<div class="container">
    							<div class="row">
        							<div class="span12">
            								<a href="#advanced" role="button" data-toggle="modal" class="btn btn-warning">เพิ่มบันทึกการตรวจ</a>
       								 </div>
    							</div>
		</div>
	
	<div id="momRecordTable" style="width: 100%; padding-top: 50"></div> 
	
	<!-- Advanced Modal -->
<div id="advanced" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="advancedSort" aria-hidden="true" >
    <div class="modal-header">
    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    	<form id="addFormMom" class="row-fluid"> <!-- action="addMomHCRecord" method="post"> -->
    		<div class="row-fluid">
  				<div class="span6">
	  				<div class="control-group">
	  					 <label class="control-label" for="width_mom">น้ำหนัก</label>
	    					<div class="controls">
	      						<input type="text" id="width_mom" name="width_mom">
	    					</div>
	  				</div>
	  				
	  				<div class="control-group">
	  					 <label class="control-label" for="urige">ตรวจปัสสาวะ</label>
	    					<div class="controls">
	      						<input type="text" id="urige" name="urige">
	    					</div>
	  				</div>
	  				
	  				<div class="control-group">
	  					 <label class="control-label" for="urige">ความดันโลหิต  ม.ม.ปรอท</label>
	    					<div class="controls">
	      						<input type="text" id="urige" name="urige">
	    					</div>
	  				</div>
	  				
	  				<div class="control-group">
	  					 <label class="control-label" for="urige">ท่าเด็กส่วนนำ/การลง</label>
	    					<div class="controls">
	      						<input type="text" id="urige" name="urige">
	    					</div>
	  				</div>
	  				
	  				<div class="control-group">
	  					 <label class="control-label" for="urige">เสียงหัวใจเด็ก</label>
	    					<div class="controls">
	      						<input type="text" id="urige" name="urige">
	    					</div>
	  				</div>
  				</div>
  				<div class="span6">
  				
  				</div>
			</div>
			<input type="button" id="addmombtn" class="btn btn-primary" value="บันทึกการตรวจ">
	</form>
   </div>
</div>

	<div id="popupEditWindow" style="overflow: hidden;">
            <div>Edit</div>
            <div style="overflow: hidden;">
       <div class="modal-header" >
    	<form class="row-fluid" >
    		<div class="row-fluid">
  				<div class="span6">
	  				<div class="control-group">
	  					 <label class="control-label" for="width_mom">น้ำหนัก</label>
	    					<div class="controls">
	      						<input type="text" id="e_width_mom" name="width_mom" value="">
	    					</div>
	  				</div>
	  				
	  				<div class="control-group">
	  					 <label class="control-label" for="urige">ตรวจปัสสาวะ</label>
	    					<div class="controls">
	      						<input type="text" id="e_urige" name="e_urige">
	    					</div>
	  				</div>
	  				
	  				<div class="control-group">
	  					 <label class="control-label" for="urige">ความดันโลหิต  ม.ม.ปรอท</label>
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
  				</div>
  				<div class="span6">
  				
  				</div>
			</div>
			<input type="submit" class="btn btn-primary" value="บันทึกการตรวจ">
	</form>
   </div>
     </div>
      </div>
</body>
</html>