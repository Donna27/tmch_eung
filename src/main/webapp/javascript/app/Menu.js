var aa=new Array();
var cc=[];
var datauser;
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
					$('#menuitem').append("<li><a href='"+MenuObject.aa+"'>"+"<i class="+"icon-tag"+"></i> "+MenuObject.cc+"</a></li>");
				}
			}else{
				window.location.href = "/tmch/newLogin";
				setTimeout('delayer',1);
				/*$.ajax({
					url : '/tmch/login',
					type : 'GET'
				});*/
			}
			datauser=data.user;
			if(typeof(data.user)!== 'undefined'){
				//console.log(data.user.firstName);
				$('#username').html('<i class="icon-map-marker"></i> '+data.user.firstName+' '+data.user.lastName+' <strong class="caret"></strong>');
			}else{
				alert('User Error');
				window.location.href="/tmch/newLogin";
			}
			
			var txt='';
			if(datauser.mom){
				txt+='<li><a href="/tmch/newStaffProfile"><i class="icon-user"></i> ดูข้อมูลส่วนตัว</a></li>'+
							'<li><a href="/tmch/newChangePss"><i class="icon-wrench"></i> เปลี่ยนรหัสผ่าน</a></li>'+
							'<li class="divider"></li>'+
		                     '<li><a href="j_spring_security_logout"><i class="icon-off"></i> ออกจากระบบ</a></li>';
				//console.log(txt);
				$('#settingmenu').html(txt);
			}if(datauser.staff){
				txt+='<li><a href="/tmch/newStaffProfile"><i class="icon-user"></i> ดูข้อมูลส่วนตัว</a></li>'+
		              '<li><a href="/tmch/newOrgProfile"><i class="icon-briefcase"></i> ดูข้อมูลองค์กร</a></li>'+
		               '<li><a href="/tmch/newChangePss"><i class="icon-wrench"></i> เปลี่ยนรหัสผ่าน</a></li>'+
		                '<li class="divider"></li>'+
		                 '<li><a href="j_spring_security_logout"><i class="icon-off"></i> ออกจากระบบ</a></li>';
				//console.log(txt);
				$('#settingmenu').html(txt);
			}if(datauser.admin){
				txt+=
	               '<li><a href="/tmch/newChangePss"><i class="icon-wrench"></i> เปลี่ยนรหัสผ่าน</a></li>'+
	                '<li class="divider"></li>'+
	                 '<li><a href="j_spring_security_logout"><i class="icon-off"></i> ออกจากระบบ</a></li>';
			//console.log(txt);
			$('#settingmenu').html(txt);
			}
		},
		error : function(data){
			console.log(data);
			window.location.href="/tmch/newLogin";
			/*$.ajax({
				url : '/tmch/newLogin',
				type : 'GET'
			});*/
		}
	});
});