 $(document).ready(function(){
	 $('#view_dev').attr({'href':'viewgraphboydevlop?childid='+childid});
	 $('#view_height').attr({'href':'viewgraphboyheight?childid='+childid});
	 $('#view_weight').attr({'href':'viewgraphboywieght?childid='+childid});

	 
	 // set data in table
	 var params = {
			 childid : childid
	 }
	 $.ajax({
		type : 'POST',
		url : 'getChildHCRecordbychildid',
		data : $.param(params),
		success : function(data,textStatus,jqXHR ){
			var jsonObj=$.parseJSON(data);
			console.log(jsonObj);
			console.log(jsonObj.length);
			var len=jsonObj.length;
			var txt='';
			for(var i=0;i<len;i++){
				var date=transformDateForSetDateField(jsonObj[i].chkDate);
				txt+='<tr>'+
						'<td>'+date+'</td>'+
						'<td>'+jsonObj[i].weight+'</td>'+
						'<td>'+jsonObj[i].height+'</td>'+
						'<td>'+jsonObj[i].lengOfHead+'</td>'+
						'<td>'+jsonObj[i].comment+'</td>'+
				
					'</tr>';
			}
			if(txt!=''){
				$('table#actvtable tbody').html(txt);
			}
		},
		error: function(){
			alert('error');
		}
	 });
	 
	 $('.datepicker').datepicker({
		    format: 'dd/mm/yyyy',
		    autoclose: true,
		    keyboardNavigation: false,
		    forceParse: false,
		    language: "th",
	});
	 
	 
	 // setting calenda
	/* $('#chckDate').jqxDateTimeInput({ 
			width: '100px', 
			height: '20px', 
			formatString: 'dd-MM-yyyy',
			allowNullDate: true
		});*/
	 
	 
		 $('#addActivity').jqxValidator({
		        hintType: 'label',
		        rules: [
		               { input: '#weight', message: 'จำเป็นต้องระบุใส่ตัวเลข', action: 'keyup, blur', rule: 'required' },
		               { input: '#weight', message: 'ใส่ตัวเลข', action: 'keyup, blur', rule: function (){
		            	   var result=$.isNumeric($('#weight').val());
		            	   return result;
	               			}},
		               { input: '#height', message: 'จำเป็นต้องระบุใส่ตัวเลข', action: 'keyup, blur', rule: 'required' },
		               { input: '#height', message: 'ใส่ตัวเลข', action: 'keyup, blur', rule: function (){
			            	   var result=$.isNumeric($('#height').val());
			            	   return result;
		               		}
		               },
		              { input: '#headline', message: 'จำเป็นต้องระบุใส่ตัวเลข', action: 'keyup, blur', rule: 'required' },
		              { input: '#headline', message: 'ใส่ตัวเลข', action: 'keyup, blur', rule: function (){
		            	   var result=$.isNumeric($('#headline').val());
		            	   return result;
	               		}},

		        ]
		    });
		
		    // Validate form.
		    $("#savebtn").click(function () {
		        var validationResult = function (isValid) {
			            if (isValid) {
			            	//alert('success!');
			            	var data=getActvChck();
			            	console.log($.param(data));
			            	$.ajax({
			            		type : 'POST',
			            		data : $.param(data),
			            		url : 'addchilcatvhc',
			            		success : function (){
			            			//alert('success');
			            			alert('บันทึกสำเร็จ');
			            			location.reload();
			            		},
			            		error : function(){
			            			alert('บันทึกล้มเหลว');
			            		}
			            	});
				$('#savebtn').attr({'data-dismiss' :'modal','aria-hidden':'true' });
			            }
		            }
		        $('#addActivity').jqxValidator('validate', validationResult);
		        
		       
		    });
		    
		    function getActvChck(){
		    	var params ={
		    			childid : childid,
		    			chckDate : $('#chckDate').val(),
		    			weight : $('#weight').val(),
		    			height : $('#height').val(),
		    			headline : $('#headline').val(),
		    			comment : $('#physicalHealth').val()

		    	};
		    	return params;
		    }
	 });