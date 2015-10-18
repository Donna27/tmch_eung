<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- <%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>

<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%> --%>

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
	
	/*search*/
	    #custom-search-form {
	        margin:0;
	        margin-top: 5px;
	        padding: 0;
	    }
	    #custom-search-form .search-query {
	        padding-right: 3px;
	        padding-right: 4px \9;
	        padding-left: 3px;
	        padding-left: 4px \9;
	        /* IE7-8 doesn't have border-radius, so don't indent the padding */	 
	        margin-bottom: 0;
	        -webkit-border-radius: 3px;
	        -moz-border-radius: 3px;
	        border-radius: 3px;
	    }
	    #custom-search-form button {
	        border: 0;
	        background: none;
	        /** belows styles are working good */
	        padding: 2px 5px;
	        margin-top: 2px;
	        position: relative;
	        left: -28px;
	        /* IE7-8 doesn't have border-radius, so don't indent the padding */
	        margin-bottom: 0;
	        -webkit-border-radius: 3px;
	        -moz-border-radius: 3px;
	        border-radius: 3px;
	    }
	    .search-query:focus + button {
	        z-index: 3;   
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
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/newcontent.js"></script>
</head>
	<body>

	    <!-- body -->
	    <div class="container marketing">
			<div class="container">
				<div class="row">
			    	<div class="span12">
			    	<%-- <form id="custom-search-form" class="form-search form-horizontal pull-right" 
			    			action="<%= blobstoreService.createUploadUrl("/tmch/upload") %>" 
			    			method="post" enctype="multipart/form-data">
			    	
			        	<!-- <form id="custom-search-form" class="form-search form-horizontal pull-right"> -->
			            	<div class="input-append span12">
			                    <input type="file" name="fileupload" id="search_query"  placeholder="Upload Content">
			                    <button type="submit" class="btn" value="บันทึก">กหด</button>
			                </div>
			            </form> --%>
			        </div>
				</div>
			</div>
			
			<br>
			
			<div class="row">
	        	<div class="span12">
	    			<table id="contentTable" class="table table-hover table-bordered">
		    			<thead>
			   				<tr>
			   					<th>Content</th>
			   					<!-- <th>ลบ</th> -->
			   				</tr>
		    			</thead>
		    			<tbody>
							<tr>
			   					<td><a href="http://countryoffice.unfpa.org/thailand/drive/PP_Handbook.pdf" style="float: left;">คู่มือมารดาหลังคลอด และการดูแลทารก</td>
			   				</tr>
			   				<tr>
			   					<td><a href="http://www.thaichilddevelopment.com/images/doc/Ebook1.pdf" style="float: left;">คู่มือส่งเสริมพัฒนาการเด็กแรกเกิด - 5 ปี สำหรับผู้ปกครอง</td>
			   				</tr>
			   				<tr>
			   					<td><a href="http://www.buchstart.ch/buchstart/de/buchstartmehrsprachig/Dokumente/sprich-mit-mir_thai.pdf" style="float: left;">ภาษาแม่</td>
			   				</tr>
			   				<tr>
			   					<td><a href="http://www.thaipediatrics.org/attchfile/BabyFood.pdf" style="float: left;">คู่มืออาหารตามวัย สำหรับทารกและเด็กเล็ก</td>
			   				</tr>
			   				<tr>
			   					<td><a href="http://thaichilddevelopment.com/images/doc/Poster-TDSI-s.jpg" style="float: left;">การประเมินพัฒนาการเด็กแรกเกิด - 5 ปี (TDSI)</td>
			   				</tr>
			   				<tr>
			   					<td><a href="http://papat888.files.wordpress.com/2011/09/e0b8aae0b8b8e0b882e0b981e0b89ce0b899-2.pdf" style="float: left;">พัฒนาการของวัยทารกและวัยเด็ก</td>
			   				</tr>
			   				<tr>
			   					<td><a href="http://www.si.mahidol.ac.th/th/division/hph/admin/news_files/158_49_1.pdf" style="float: left;">อาหารวัยทารก - คณะแพทยศาสตร์ศิริราชพยาบาล</td>
			   				</tr>
			   				<tr>
			   					<td><a href="http://www.anamai.ecgates.com/public_content/files/001/0000170_1.pdf" style="float: left;">ข้อแนะนำแนวทาง การให้อาหารเสริมตามวัยสำหรับทารก</td>
			   					<!-- <td><a href="#" class="btn btn-small btn-primary" style="float: left;">ลบ</a></td> -->
			   				</tr>
			   			</tbody>
	    			</table>
	    		</div>
			</div>
      	</div>
		
		<%@ include file="includeFooter.jsp" %>
	    
	</body>
</html>


