var jsonObj;
$(document).ready(function(){
//	console.log('childid= '+childid);
	$('input[type=file]').bootstrapFileInput();
	$('.file-inputs').bootstrapFileInput();
	
	$.ajax({
		url : 'getProfileChildByid',
		type : 'GET',
		dataType :'json',
		data : 'childid='+childid,
		success : function(data){
			console.log(data);
			jsonObj= data;
			$('#momlinkbtn').attr({'href':'newMomProfile?momid='+jsonObj.momid});
			// set child profile
			$('#f_name_child').val(jsonObj.childProfile.f_name);
			$('#l_name_child').val(jsonObj.childProfile.l_name);
			$('#id13_child').val(jsonObj.childProfile.id_13);
			$('#f_name_child').val(jsonObj.childProfile.f_name);
			$('#childbirth').val(transformDateForSetDateField(jsonObj.childProfile.birthday));
			$('#f_name_child').val(jsonObj.childProfile.f_name);
			$('#region').val(jsonObj.childProfile.region);
			$('#gender').val(jsonObj.childProfile.gender);
			$('#fweight').val(jsonObj.childProfile.firstWieght);
			$('#lengofbody').val(jsonObj.childProfile.lengthOfBody);
			$('#lengofhead').val(jsonObj.childProfile.lengthOfHead);
			
			$('#message').val(jsonObj.childProfile.f_name);
			$('#fal_message').val(jsonObj.childProfile.falseborn);
			$('#healthfirst').val(jsonObj.childProfile.healthborn);
			$('#blood').val(jsonObj.childProfile.blood);
		}
	});
	//set calenda
	 $('.datepicker').datepicker({
		    format: 'dd-mm-yyyy',
		    autoclose: true,
		    keyboardNavigation: false,
		    forceParse: false,
		    language: "th",
	});
	 
		function getDataForm(){
			var params = {
					// key child
				childid : childid,
				childname : $('#f_name_child').val(),
				childlname : $('#l_name_child').val(),
				childid13 : $('#id13_child').val(),
				childbirths : $('#childbirth').val(),
				genders : $('#gender').val(),
				fweights : $('#fweight').val(),
				lengofbodys : $('#lengofbody').val(),
				lengofheads : $('#lengofhead').val(),
				falmessage : $('#fal_message').val(),
				healthfirsts : $('#healthfirst').val(),
				blood : $('#blood').val(),
				region : $('#region').val(),
				
		}
			return params;
		}
		// click btn update
		$('#updateprofilechildbtn').click(function(){
			var paramdata=getDataForm();
			$.ajax({
				type : 'POST',
				url : 'updatechildprofile',
				data : $.param(paramdata),
				success : function(){
					alert('บันทึกสำเร็จ');
				}
			});
		});
	});