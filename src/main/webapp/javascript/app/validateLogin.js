$(document).ready(function(){
	$('#btn-submit').click(function(){
		$(".error").hide();
		var hasError = false;
		var emailReg=/^[A-Z0-9._%+-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i;
		var emailaddressVal=$("#j_username").val();
		if(typeof(emailaddressVal) === "undefined" || emailaddressVal == ''){
//			$("#j_username").after('<span class="error">Please enter your email address.</span>');
			alert('Please input email');
			hasError == true;
		}else if(!emailReg.test(emailaddressVal)){
			alert('Enter a valid email address');
		}
		if(hasError == true) { return false; }
	});
});