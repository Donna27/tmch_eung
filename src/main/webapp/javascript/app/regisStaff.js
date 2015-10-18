$(document).ready(function(){
	$('#registbtn').click(function(){
		var fname=$('#fname').val();
		var lname=$('#lname').val();
		var email=$('#email').val();
		var pwd=$('#pwd').val();
		var orgid=orgid;
		console.log('fname' +fname);
		$.ajax({
			type : 'POST',
			url : 'registerMemb',
			data : 'firstName='+fname+'?lastName='+lname+
					'?email='+email+'?pwd='+pwd+'?orgid='+orgid,
			success : function(){
				alert("register success!!!!");
			},
			error : function(){
				alert('register fail!!!');
			}
			
		});
	})
});