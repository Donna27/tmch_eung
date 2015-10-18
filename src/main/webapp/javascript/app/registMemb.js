$(document).ready(function(){
	function getDataforRegistMom(){
		var params ={
			fnamemom : $('#fnamemom').val(),
			lnamemom : $('#lnamemom').val(),
			id13mom : $('#id13mom').val(),
			emailmom : $('#emailmom').val(),
			passwordmom : $('#passwordmom').val()
		};
		
		return params;
	}
	
	
	$('#registmombtn').click(function(){
		var data=getDataforRegistMom();
		$.ajax({
			type : 'POST',
			data : $.param(data),
			url : 'saveMomUser',
			success : function(data){
				alert('success'+data);
			},
			error : function(data){
				alert('error '+data)
			}
		});
	});
});