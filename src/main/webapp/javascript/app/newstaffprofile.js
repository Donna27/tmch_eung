var jsonObj;
$(document).ready(function(){
	$.ajax({
		url :'getProfileUser',
		type : 'POST',
		success : function(record){
			jsonObj=$.parseJSON(record);
			console.log(jsonObj);
			$('#fname').val(jsonObj.firstName);
			$('#lname').val(jsonObj.lastName);
			//$('#orgname').val(jsonObj.nameOrg.nameOrg);
			$('#email').val(jsonObj.email);
		
		}
	});
	
	function getDataForm(){
		var params = {
		
				fname : $('#fname').val(),
				lname : $('#lname').val(),
				email : $('#email').val(),
		
			
	}
		return params;
	}
	$('#updatebtn').click(function(){
		var paramdata=getDataForm();
		$.ajax({
			type : 'POST',
			url : 'updatememberprofile',
			data : $.param(paramdata),
			success : function(){
				alert('บันทึกสำเร็จ');
			}
		});
	});
});