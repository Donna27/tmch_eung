$(document).ready(function(){
	console.log(momid);
	$('#appointcheckup').jqxDateTimeInput({ 
		width: '100px', 
		height: '20px', 
		formatString: 'd-MM-yyyy',
		allowNullDate: true,
		min : new Date(),
	});
	
	$('#addappointbtn').click(function(){
		$('#appointcheckup').val(null);
		$('#place').val(null);
	});
	
	$('#appointcheckup').val(null);
	$('#place').val(null);
	// setting form validate
	$('#motherappointform').jqxValidator({
		hintType : 'label',
		rules :[
		        {input : '#appointcheckup',message : 'จำเป็นต้องระบุ',action:'keyup , blue',rule : 'required'},
		        {input : '#place' ,message : 'จำเป็นต้องระบุ',action:'keyup , blue',rule : 'required'}
		]
	});
	
	$('#saveappointbtn').click(function(){
		var validateResult=function(idValid){
			// save appointment data
			/*$.ajax({
				type : 'POST',
				url : '',
				data : '',
				success :function(){
					alert('success!!');
				},
				error : function(){
					alert('fail!!!');
				}
			});*/
		}
		$('#motherappointform').jqxValidator('validate',validateResult);
	});
	/*var sources = {
			datatype : 'json',
			cache : false,
			datafields :[
			   {name : 'key',type:'int'},
			   //{name : ''}
			
			],
	};*/
});