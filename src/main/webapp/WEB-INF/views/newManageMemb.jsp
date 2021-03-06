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
	
	<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/app/ManageMemb.js"></script>
</head>
	<body>

	    <!-- body -->
	    <div class="container marketing">
			<!-- <div class="container">
				<div class="row">
			    	<div class="span12">
			        	<form id="custom-search-form" class="form-search form-horizontal pull-right">
			            	<div class="input-append span12">
			                    <input type="text" id="search_query" class="search-query input-block-level" placeholder="Search">
			                    <button type="submit" class="btn"><i class="icon-search"></i></button>
			                </div>
			            </form>
			        </div>
				</div>
			</div> -->
			
			<br>
			
			<div class="row">
	        	<div class="span12">
	        		<center>
	        			<div id="ManageMemb" style="width: 100%; padding-top: 50"></div>
	        		</center>
					
				</div>
			</div>

      	</div>
		
		<%@ include file="includeFooter.jsp" %>
	    
	</body>
</html>


