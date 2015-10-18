var jsonObj;
$(document).ready(function(){
	// get list child 
	$.ajax({
		type : 'POST',
		url : 'getchildbymom',
		data : 'momid='+momid,
		success : function(data,textStatus,jqXHR){
			jsonObj=$.parseJSON(data);
			console.log(jsonObj.length);
			console.log(data);
			var len=jsonObj.length;
			var txt='';
			if(len>0){
				for(var i=0;i<jsonObj.length;i++){
					var dd=transformDateForSetDateField(jsonObj[i].birthday);
					var name;
					if(typeof(jsonObj[i].f_name) === "undefined"){
						name="";
					}else{
						name=jsonObj[i].f_name;
					}
					txt+='<tr>'+
							'<td>'+jsonObj[i].childorder+'</td>'+
							'<td>'+name+'   '+jsonObj[i].l_name+/*jsonObj[i].f_name+'   '+jsonObj[i].l_name+*/'</td>'+
							'<td>'+jsonObj[i].gender+'</td>'+
							'<td>'+dd+'</td>'+
							'<td><a href="newChildProfile?childid='+jsonObj[i].key.id+'" class="btn btn-small btn-primary">ดูข้อมูลลูก</a></td>'+
						'</tr>';
				}
				if(txt!=''){
					$('table#listchildtable tbody').html(txt);
				}
			}
			
		},error : function(textStatus){
			
		}
	});
	
	// order pregnancy 
	var digits = ["1", "2", "3", "4", "5", "6", "7", "8"];
	$('#childorder').jqxDropDownList({
		selectedIndex:0,
		source : digits, 
		autoDropDownHeight : true,
		width : 60 ,
		height : 20,
		autoOpen :true,
		});

	//
	//setting date
	/*$('#childbirth').jqxDateTimeInput({ 
		width: '100px', 
		height: '20px', 
		formatString: 'd-MM-yyyy',
		allowNullDate: true
	});
	$("#childbirth").val(null);*/
	
	$('.datepicker').datepicker({
	    format: 'dd/mm/yyyy',
	    autoclose: true,
	    keyboardNavigation: false,
	    forceParse: false,
	    language: "th",
	});
	
	var source =['ชาย','หญิง'];
	// setting dropdown gender
	$('#genderList').jqxDropDownList({
		source : source,
		placeHolder: 'โปรดระบุเพศ',
		width : '100px',
		height : '20px',
		autoOpen :true,
	    autoDropDownHeight:true
	});
	
	//setting validate form
	$('#addChildForm').jqxValidator({
		hintType : 'label',
		rules:[
		       //{input:'#pregorder',message : 'จำเป็นต้องใส่',action:'keyup , blue',rule : 'required'},
		       //{input:'#fname',message : 'จำเป็นต้องใส่',action:'keyup , blue',rule : 'required'},
		       //{input:'#weight-bf-preg',message : 'จำเป็นต้องใส่',action:'keyup , blue',rule : 'required'},
		      //{input:'#lname',message : 'จำเป็นต้องใส่',action:'keyup , blue',rule : 'required'},
		      {input:'#childbirth',message : 'จำเป็นต้องใส่',action:'keyup , blue',rule : 'required'},
			  {input:'#f_weight',message : 'จำเป็นต้องใส่',action:'keyup , blue',rule : 'required'},
		      {input:'#f_weight',message : 'ระบุไม่ถูกต้อง',action:'keyup , blue',rule:function(){
					var weigth=$('#f_weight').val();
					if($.isNumeric(weigth)){
						
						return true;
					}else {
						$('#f_weight').val('');
						return false;
					}
			}},
			{input:'#lengthOfBody',message : 'จำเป็นต้องใส่',action:'keyup , blue',rule : 'required'},
		    {input:'#lengthOfBody',message : 'ระบุไม่ถูกต้อง',action:'keyup , blue',rule:function(){
					var weigth=$('#lengthOfBody').val();
					if($.isNumeric(weigth)){
						return true;
					}else {
						$('#lengthOfBody').val('');
						return false;
					}
			}},
			{input:'#lengOfHead',message : 'จำเป็นต้องใส่',action:'keyup , blue',rule : 'required'},
			{input:'#lengOfHead',message : 'ระบุไม่ถูกต้อง',action:'keyup , blue',rule:function(){
				var weigth=$('#lengOfHead').val();
				if($.isNumeric(weigth)){
					return true;
				}else {
					$('#lengOfHead').val('');
					return false;
				}
		}},
       
		]
	});
	
	// submit Child
	$('#saveChild').click(function(){
		var validationResult=function(isValid){
			if(isValid){
					console.log($('#fname').val());
					$.ajax({
						type : 'POST',
						url : 'addchild',
						data : 'momid='+momid+'&fname='+$('#fname').val()+'&lname='+$('#lname').val()+
							   '&childbirth='+$('#childbirth').val()+'&genderList='+$('#genderList').val()+
							   '&f_weight='+$('#f_weight').val()+'&lengthOfBody='+$('#lengthOfBody').val()+
							   '&lengOfHead='+$('#lengOfHead').val()+'&childorder='+$('#childorder').val(),
							   
						success : function(){
							alert('success!');
						},
						error : function(){
							alert('fail!!');
						}
					});
					
					$('#saveChild').attr({
						'data-dismiss' :'modal',
						'aria-hidden':'true'
					});
			}		
		};
		$('#addChildForm').jqxValidator('validate',validationResult);
	});
});