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
			
		},
		error : function(){
			$.ajax({
				url : '/tmch/login',
				type : 'GET'
			});
		}
	});
});