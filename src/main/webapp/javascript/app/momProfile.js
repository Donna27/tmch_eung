$(document).ready(function(){
	// setting value in input
	$.ajax({
		url : 'getMomProfile',
		type : 'GET',
		dataType : 'json',
		success : function(data){
			console.debug(data);
			// mother
			$('#momname').val(data.momProfile.f_name);
			$('#momlname').val(data.momProfile.l_name);
			$('#momid13').val(data.momProfile.id_13);
			$('#emailmom').val(data.momProfile.email);
			$('#telmom').val(data.momProfile.mobile);
			$('#occurmom').val(data.momProfile.occupation);
			$('#regionmom').val(data.momProfile.region);
			
			// father
			$('#dadfname').val(data.momProfile.f_name_sponse);
			$('#dadlname').val(data.momProfile.l_name_sponse);
			$('#dadid13').val(data.momProfile.id_13_sponse);
			$('#dademail').val(data.momProfile.email_sponse);
			$('#dadtel').val(data.momProfile.mobile_sponse);
			$('#dadoccur').val(data.momProfile.occur_sponse);
			$('#dadregion').val(data.momProfile.region_sponse);
			
			// address
			$('#noaddress').val(data.momProfile.no_address);
			$('#moo').val(data.momProfile.moo);
			$('#soi').val(data.momProfile.soi);
			$('#road').val(data.momProfile.road);
			$('#locality').val(data.momProfile.locality);
			$('#distric').val(data.momProfile.distric);
			$('#province').val(data.momProfile.province);
			$('#zipcode').val(data.momProfile.zipcode);

		},
		error : function(data){
			console.log(data);
		}
	});
	function getDataForm(){
		var params = {
			momid : $('#momid').val(),
			// mom information
			momfname : $('#momname').val(),
			momlname : $('#momlname').val(),
			momid13 : $('#momid13').val(),
			emailmom : $('#emailmom').val(),
			momtel : $('#telmom').val(),
			momoccur : $('#occurmom').val(),
			momregion : $('#regionmom').val(),
			// dad information
			dadfname : $('#dadfname').val(),
			dadlname : $('#dadlname').val(),
			dadid13 : $('#dadid13').val(),
			dademail : $('#dademail').val(),
			dadtel : $('#dadtel').val(),
			dadoccur : $('#dadoccur').val(),
			dadregion : $('#dadregion').val(),
			// address information
			noaddress : $('#noaddress').val(),
			moo : $('#moo').val(),
			soi : $('#soi').val(),
			road : $('#road').val(),
			locality : $('#locality').val(),
			distric : $('#distric').val(),
			province : $('#province').val(),
			zipcode : $('#zipcode').val(),
			
	}
		return params;
	}
	
	$('#updateprofilebtn').click(function(){
		var paramdata=getDataForm();
		$.ajax({
			type : 'POST',
			url : 'updatemomprofile',
			data : $.param(paramdata),
			success : function(){
				alert('บันทึกสำเร็จ');
			}
		});
	});
});