$(document).ready(function(){
	var dd;
	$.ajax({
		url : '/tmch/getaa',
		type : 'GET',
		dataType : 'json',
		success : function(data){			
			dd=data;
			console.log(data);									
		},
		error : function(data){
			console.log(data);
		}
	});
});