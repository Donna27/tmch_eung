$(document).ready(function(){
	//$('.input-block-level').addClass('jqx-input');
	
	
	
		$('#form').jqxValidator({
			rules :[
			        { input: '#oldpwd', message: 'Password is required!', action: 'keyup, blur', rule: 'required' },
			        { input: '#newpwd', message: 'Your password must be between 4 and 12 characters!', action: 'keyup, blur', rule: 'length=4,12' },
			        { input: '#newpwd', message: 'Password is required!', action: 'keyup, blur', rule: 'required' },
			        { input: '#cnfpwd', message: 'Password is required!', action: 'keyup, blur', rule: 'required' },
			        { input: '#cnfpwd', message: 'Passwords doesn\'t match!', action: 'keyup, focus', rule: function (input, commit) {
						// call commit with false, when you are doing server validation and you want to display a validation error on this field. 
						if (input.val() === $('#newpwd').val()) {
							return true;
						}
							return false;
						}
					},

			]
		});
		
		$('#form').submit(function(){
			url="updatepwd";
			var oldpwd=$('#oldpwd').val();
			var newpwd=$('#newpwd').val();
			
			var posting=$.post(url,{oldpwd : oldpwd
				,newpwd:newpwd
			});
			
			posting.done(function(data){
				var jsonObj=$.parseJSON(data);
				console.log(jsonObj);
			});
			
		});
		
		
		
});