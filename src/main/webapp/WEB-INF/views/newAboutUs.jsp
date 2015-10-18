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
			margin: 150px auto 0px;
		}
		
	/*Block Btn*/
		.pricing-table .plan {
		  	border-radius: 5px;
		  	text-align: center;
		  	background-color: #f3f3f3;
		  	-moz-box-shadow: 0 0 6px 2px #b0b2ab;
		  	-webkit-box-shadow: 0 0 6px 2px #b0b2ab;
		  	box-shadow: 0 0 6px 2px #b0b2ab;
		} 
		.plan:hover {
		  	background-color: #fff;
		  	-moz-box-shadow: 0 0 12px 3px #b0b2ab;
		  	-webkit-box-shadow: 0 0 12px 3px #b0b2ab;
		  	box-shadow: 0 0 12px 3px #b0b2ab;
		} 
		.plan {
		  	padding: 20px;
		  	color: #ff;
		  	background-color: #5e5f59;
		  	-moz-border-radius: 5px 5px 0 0;
		  	-webkit-border-radius: 5px 5px 0 0;
		  	border-radius: 5px 5px 0 0;
		}
		.pricing-three-column {
		  	margin: 0px auto 0px;
		  	width: 80%;
		}
	
	/* Responsive Css */
	     @media (max-width: 979px) {
			.marketing{
				margin: 75px auto 0px;
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
		    <!-- AboutUs here -->
		    <div class="container">
			    <div class="row-fluid pricing-table pricing-three-column">
				    <div class="span4 plan">
        				<a href="#aboutDonna" data-toggle="modal">
        				<img src="../resources/img/donna.png" name="aboutme" width="190" height="190" class="img-circle"></a>
         				<h3>Donna Maneking</h3>
         				<em>5330213083</em>
						<div class="modal hide" id="aboutDonna">
						    <div class="modal-header">
						        <h3>About Donna</h3>
						    </div>
					        <div class="modal-body" style="text-align:center;">
					        	<div class="row-fluid">
					            	<div class="span10 offset1">
					                	<div id="modalTab">
					                    	<div class="tab-content">
					                        	<div class="tab-pane active" id="about">
		    										<img src="../resources/img/donna.png" name="aboutme" width="140" height="140" border="0" class="img-circle">
		      										<h3 class="media-heading">Donna  Making <small> SE</small></h3>
		      										<em>5330213083</em>
													<hr>
													<p class="text-left"><strong>info: </strong>
														Bla Bla Bla.
													</p><br>
							      				</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="span4 plan">
        				<a href="#aboutSunanya" data-toggle="modal">
        				<img src="../resources/img/sunanya.png" name="aboutme" width="190" height="190" class="img-circle"></a>
         				<h3>Sunanya  Maneemas</h3>
         				<em>5330213058</em>
						<div class="modal hide" id="aboutSunanya">
						    <div class="modal-header">
						        <h3>About Sunanya</h3>
						    </div>
					        <div class="modal-body" style="text-align:center;">
					        	<div class="row-fluid">
					            	<div class="span10 offset1">
					                	<div id="modalTab">
					                    	<div class="tab-content">
					                        	<div class="tab-pane active" id="about">
		    										<img src="../resources/img/sunanya.png" name="aboutme" width="140" height="140" border="0" class="img-circle">
		      										<h3 class="media-heading">Sunanya  Maneemas <small> SE</small></h3>
		      										<em>5330213058</em>
													<hr>
													<p class="text-left"><strong>info: </strong>
														Bla Bla Bla.
													</p><br>
							      				</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>      
					
					<div class="span4 plan">
        				<a href="#aboutTanate" data-toggle="modal">
        				<img src="../resources/img/tanate.png" name="aboutme" width="190" height="190" class="img-circle"></a>
         				<h3>Tanate  Sae-leaw</h3>
         				<em>5330213081</em>
						<div class="modal hide" id="aboutTanate">
						    <div class="modal-header">
						        <h3>About Tanate</h3>
						    </div>
					        <div class="modal-body" style="text-align:center;">
					        	<div class="row-fluid">
					            	<div class="span10 offset1">
					                	<div id="modalTab">
					                    	<div class="tab-content">
					                        	<div class="tab-pane active" id="about">
		    										<img src="../resources/img/tanate.png" name="aboutme" width="140" height="140" border="0" class="img-circle">
		      										<h3 class="media-heading">Tanate  Sae-leaw <small> SE</small></h3>
		      										<em>5330213081</em>
													<hr>
													<p class="text-left"><strong>info: </strong>
														Bla Bla Bla.
													</p><br>
							      				</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
    			</div>
      		</div>
      	</div>
      	
      	<%@ include file="includeFooter.jsp" %>
      	
	</body>
</html>


