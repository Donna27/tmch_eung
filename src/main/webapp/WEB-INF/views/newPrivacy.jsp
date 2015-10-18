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
			margin: 80px auto 0px;
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
		    <!-- Policy here -->
		    <h2 class="featurette-heading">ข้อกำหนดและเงื่อนไขการใช้</h2><br>
			<p class="lead">1. ระบบนี้เป็นระบบที่เกี่ยวข้องทางการแพทย์ ซึ่งจะมีข้อกำหนดในการปกปิด ข้อมูลส่วนตัวของผู้ป่วยหากมีการละเมิดหรือทำผิดข้อกำหนดถือเป็นความผิดของผู้ใช้งานและ ต้องมีการได้รับโทษตามกฎหมาย</p>
			<p class="lead">2. ข้อมูลภายในระบบจะมีการเชื่อโยงกัน แบบ Cloud  computing จึงมีส่งต่อข้อมูลไปทุกๆ ที่ที่มีเครือข่ายอินเตอร์เน็ต
			การปฏิเสธความรับผิดและข้อจำกัดความรับผิด</p>
			<p class="lead">3. เนื้อหาและข้อมูลใดที่ปรากฏใน เว็บไซต์นี้ได้รับการรวบรวม  จากแหล่งข้อมูลต่าง ๆ ที่ได้รับอนุญาตแล้ว และสามารถเปลี่ยนแปลงได้โดยไม่ต้อง มีการบอกกล่าวล่วงหน้า ทุกครั้งในการเปิดดูเว็บไซต์นี้ ท่านยอมรับที่จะปฏิบัติตามข้อกำหนดและ เงื่อนไขการใช้ที่มีอยู่ ณ เวลาขณะที่เข้าเยี่ยมชมเว็บไซต์นี้  ดังนั้นทุกครั้งที่เข้าเยี่ยมชมเว็บไซต์ ท่านจึงควรตรวจสอบข้อกำหนดและเงื่อนไขการใช้ก่อน
			การเชื่อมโยงกับเว็บไซต์อื่น ๆ</p>
			<p class="lead">4. เว็บไซต์นี้อาจมีการเชื่อมต่อกับเว็บไซต์อื่น ๆ  การเชื่อมต่อนี้เพื่อช่วยให้ท่านค้นหาเว็บไซต์ บริการ ที่เกี่ยวข้องได้อย่างรวดเร็วและง่ายดาย เราไม่มีอำนาจที่จะควบคุม รับรองยืนยันความถูกต้องหรือความน่าเชื่อถือหรือรับผิดชอบในเนื้อหาของเว็บไซต์ของบุคคล ภายนอก หรือการเชื่อมต่อใด ๆ</p>
      	</div>

      	<%@ include file="includeFooter.jsp" %>
      	
	</body>
</html>




