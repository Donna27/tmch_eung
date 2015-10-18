<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    	<meta charset="UTF-8">
    	<title>TMCH</title>
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<meta name="description" content="">
    	<meta name="author" content="">
		<%@ include file="include.jsp" %>
		<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/momProfile.js"></script>
	</head>
	<body>
		<%-- <%@ include file="includeheadmemb.jsp" %> --%>
	    <div class="container-fluid">
			<div class="row-fluid">
	        	<div class="span2">
	        		<%-- <%@ include file="includeleftmemb.jsp" %> --%>
	        	</div>
				<div class="span10">
					<h1 class="form-id-heading">เพิ่มแม่</h1>
					<hr>
					
					<form class="row-fluid" action="saveMom" method="post">
						<div class="form-id">
							<h2 class="form-id-heading">ID</h2>
							<label>เลขที่ทั่วไป หญิงตั้งครรภ์</lable>
							<input type="text" class="input-block-level" name="noPreg" id="noPreg">
							<label>เลขที่ทั่วไป เด็ก</lable>
							<input type="text" class="input-block-level" name="noChild" id="noChild">
							<label>ออกให้ครั้งแรกที่</lable>
							<input type="text" class="input-block-level" name="firstPlace" id="firstPlace">
						</div>
						<hr>
						<div class="accordion" id="accordion2">
						  	<div class="accordion-group">
						    	<div class="accordion-heading">
						      		<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
						        		เพิ่มข้อมุลแม่
						      		</a>
						    	</div>
						    	<div id="collapseOne" class="accordion-body collapse">
						      		<div class="accordion-inner">
						        		<div class="form-id">
											<h2 class="form-id-heading">ข้อมูลแม่</h2>
											<label>ชื่อแม่</lable>
											<input type="text" class="input-block-level" name="momName" id="momName">
											<label>นามสกุลแม่</lable>
											<input type="text" class="input-block-level" name="momLast" id="momLast">
											<label>เลขบัตรประชาชน</lable>
											<input type="text" class="input-block-level" name="momId13" id="momId13">
											<label>ศาสนา</lable>
											<input type="text" class="input-block-level" name="region" id="region">
											<label>การศึกษา</lable>
											<input type="text" class="input-block-level" name="education" id="education">
											<label>อีเมล</lable>
											<input type="text" class="input-block-level" name="email" id="email">
											<label>เบอร์โทรศัพท์</lable>
											<input type="text" class="input-block-level" name="tel" id="tel">
						        		</div>
						      		</div>
						    	</div>
						  	</div>
						  	<div class="accordion-group">
						    	<div class="accordion-heading">
						      		<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
						        		เพิ่มข้อมุลพ่อ
						      		</a>
						    	</div>
						    	<div id="collapseTwo" class="accordion-body collapse">
						      		<div class="accordion-inner">
						        		<div class="form-id">
						        			<h2 class="form-id-heading">ข้อมูลพ่อ</h2>
											<label>ชื่อพ่อ</lable>
											<input type="text" class="input-block-level" name="f_name_sponse" id="f_name_sponse">
											<label>ชื่อพ่อ</lable>
											<input type="text" class="input-block-level" name="l_name_sponse" id="l_name_sponse">
											<label>เลขบัตรประชาชน</lable>
											<input type="text" class="input-block-level" name="id_sponse" id="id_sponse">
											<label>ศาสนา</lable>
											<input type="text" class="input-block-level" name="region_sponse" id="region_sponse">
											<label>การศึกษา</lable>
											<input type="text" class="input-block-level" name="education_sponse" id="education_sponse">
											<label>อีเมล</lable>
											<input type="text" class="input-block-level" name="email_sponse" id="email_sponse">
											<label>เบอร์โทรศัพท์</lable>
											<input type="text" class="input-block-level" name="tel_sponse" id="tel_sponse">
						        		</div>
						      		</div>
						    	</div>
						  	</div>
						  	<div class="accordion-group">
						    	<div class="accordion-heading">
						      		<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
						        		เพิ่มข้อมูลที่อยู่
						      		</a>
						    	</div>
						    	<div id="collapseThree" class="accordion-body collapse">
						      		<div class="accordion-inner">
						        		<div class="form-id">
						        			<h2 class="form-id-heading">ที่อยู่</h2>
											<label>ที่อยู่</lable>
											<input type="text" class="input-block-level" name="no_address_mom" id="no_address_mom">
											<label>ตำบล</lable>
											<input type="text" class="input-block-level" name="locality_mom" id="locality_mom">
											<label>อำเภอ</lable>
									        <input type="text" class="input-block-level" name="distric_mom" id="distric_mom">
									        <label>จังหวัด</lable>
									        <input type="text" class="input-block-level" name="province_mom" id="province_mom">
									        <label>รหัสไปรษณีย์</lable>
									        <input type="text" class="input-block-level" name="zipcode_mom" id="zipcode_mom">
						        		</div>
						      		</div>
						    	</div>
						  	</div>	
						</div>
						<hr>
						<center>
						   	<button class="btn btn-large  btn-primary" type="submit" >ถัดไป</button>
						</center>
					</form>					
				</div>	  	
			</div>
		</div>
		<!-- /container --> 
		<center>
      		<a href="j_spring_security_logout">ออกจากระบบ</a>
      	</center>
		<hr>
      	<footer>
      		<center>© Thai Mother and Child Health Care Project</center>
      	</footer>	
	</body>
</html>