var jsonObj;
var orgid;
$(document).ready(function(){
	$.ajax({
		url :'findorgbyorgid',
		//type : 'POST',
		success : function(record){
			jsonObj=$.parseJSON(record);
			console.log(jsonObj);
			$('#updateorgprofilebtn').attr({'href':'newOrgProfile?orgid='+jsonObj.orgid});
			// set child profile
			$('#orgType').val(jsonObj.type);
			$('#orgname').val(jsonObj.nameOrg);
			$('#orgtel').val(jsonObj.tel);
			$('#orgaddress').val(jsonObj.noAddress);
			$('#locality').val(jsonObj.tumbon);
			$('#distric').val(jsonObj.distric);
			$('#province').val(jsonObj.province);
			$('#zip').val(jsonObj.postcode);
			orgid=jsonObj.key.id;
			console.log(orgid);
		}
	});
	
	function getDataForm(){
		var params = {
				// key child
			orgid : orgid,
			orgtype : $('#orgType').val(),
			orgname : $('#orgname').val(),
			orgadd : $('#orgaddress').val(),
			orglocal : $('#locality').val(),
			orgdistric : $('#distric').val(),
			orgprovince : $('#province').val(),
			orgzip : $('#zip').val(),
			orgtel : $('#orgtel').val(),
		
	}
		return params;
	}
	// click btn update
	$('#updateorgprofilebtn').click(function(){
		var paramdata=getDataForm();
		$.ajax({
			type : 'POST',
			url : 'updateorgprofile',
			data : $.param(paramdata),
			success : function(){
				alert('บันทึกสำเร็จ');
			}
		});
	});
});