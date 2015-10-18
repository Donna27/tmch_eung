$(document).ready(function(){
	
	var file=url.split('/');
	console.log(file[3]);
	var fid=file[3].split('.');
	var dd=fid[0];
	console.log(dd);
	
	$('#childprofile').attr({'href':'newChildProfile?childid='+childid});
	$('#childatv').attr({'href':'newChildActivity?childid='+childid});
	$('#childvcn').attr({'href':'newChildVaccine?childid='+childid});
	//$('#chidappoint').attr({'href':'newChildAppointment?childid='+childid});

	if(dd=='newChildProfile'){
		$('#childprofiletab').attr({'class':'active'});
	}else if(dd=='newChildActivity'){
		$('#childactvtab').attr({'class':'active'});
	}else if(dd == 'newChildVaccine'){
		$('#childvactab').attr({'class':'active'});
	}/*else if(dd =='newChildAppointment'){
		$('#childappointtab').attr({'class':'active'});
	}*/
});