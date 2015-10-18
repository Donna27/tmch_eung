$(document).ready(function(){
	
	$('.datepicker').datepicker({
	    format: 'dd/mm/yyyy',
	    autoclose: true,
	    keyboardNavigation: false,
	    forceParse: false,
	    language: "th",
	});
	
	//alert('asdfasd');
	
	$.ajax({
		url : 'getmomhealthhistory',
		data : {momid : momid},
		type : 'GET',
		dataType : 'json',
		success : function(data){
			$('#momhistory_id').val(data.momhealthhistory.key.id);
			// set mom birthday
			if(data.momhealthhistory.mom_birth != null){
				$('#mombirth').val(transformDateForSetDateField(data.momhealthhistory.mom_birth));
			}else{
				$('#mombirth').val('');
			}

			$('#weightmom').val(data.momhealthhistory.mom_weigth);
			$('#heightmom').val(data.momhealthhistory.mom_height);
			//console.log(data);
			//console.log($('#momhistory_id').val());
		},error : function(data){
			alert("ข้อมูลผิดพลาด");
		}
	});
	
	function getData(){
		var params={
				momhistory_id : $('#momhistory_id').val(),
				mombirth :$('#mombirth').val(),
				weight : $('#weightmom').val(),
				height : $('#heightmom').val(),
				contraception : $('#contraception').val(),//การคุมกำเนิด
				surgicalHistory : $('#surgicalHistory').val(),// การผ่าตัด
				allergicHistory : $('#allergicHistory').val(),//การแพ้ยา
				physicalHealth : $('#physicalHealth').val(),// การเจ็บป่วย
		};
		return params;
	}
	
	
	// save data
	$('#savedatahealthbtn').click(function(){
		params=getData();
		console.log('asdfsdf '+$.param(params));
		
		$.ajax({
			url : 'updateMomhistory',
			type : 'POST',
			data : $.param(params), 
			success : function(){
				alert('สำเร็จ');
			},error : function(){
				alert('ผิดพลาด');
			}
			
		});
	});
});