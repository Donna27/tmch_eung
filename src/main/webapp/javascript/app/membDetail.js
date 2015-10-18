var aa=new Array();
var cc=[];
$(document).ready(function(){
	
	$.ajax({
		url : '/tmch/menu',
		type : 'GET',
		dataType : 'json',
		success : function(data){
			if(typeof(data.menu) !== 'undefined'){
				for(var i=0;i<data.menu.length;i++){
					var MenuObject=new Object();
					MenuObject.aa=data.menu[i].menu_item;
					MenuObject.cc=data.menu[i].menu_name;
					$('#gg').append("<li><a href='"+MenuObject.aa+"'>"+MenuObject.cc+"</a></li>");
				}
			}else{
				window.location.href = "/tmch/login";
				setTimeout('delayer',1);
				/*$.ajax({
					url : '/tmch/login',
					type : 'GET'
				});*/
			}
			
			if(typeof(data.user)!== 'undefined'){
				//console.log(data.user.firstName);
				$('#username').html('<i class="icon-cog" ></i>'+data.user.firstName+' '+data.user.lastName+'<strong class="caret"></strong>');
			}else{
				alert('User Error');
			}
			
		},
		error : function(){
			$.ajax({
				url : '/tmch/newLogin',
				type : 'GET'
			});
		}
	});
/*	$.ajax({
		url : '/tmch/getmembDetail',
		type : 'GET',
		dataType : 'json',
		success : function(data){
			console.log(data);
			$('#firstName').val(data.user.firstName);
			$('#lastName').val(data.user.lastName);
			$('#email').val(data.user.email);
			$('#pawd').val('');
		}
	});*/
});