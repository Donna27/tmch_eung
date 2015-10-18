$(document).ready(function(){
	function getData(fname){
		var params = {
				momname : fname
		};
		return params;
	}
	var txt='';
	$.ajax({
		url : '/tmch/menu',
		type : 'GET',
		dataType : 'json',
		success : function(data){		
			if(typeof(data.user)!== 'undefined'){
				console.log(data.user.firstName);
				console.log(data.user.mom);
				console.log($.param(data.user.firstName));
				
					if(data.user.mom){
						var dd=getData(data.user.firstName);
							$.ajax({
								url : 'getmomdata',
								type : 'POST',
								data : dd,
								success : function(data){
									console.log('user mom data '+data);
									
									txt+=' <div class="row-fluid pricing-table pricing-three-column">'+
									'<div class="span4 plan">'+
										'<a href="/tmch/newMomProfile?momid='+data+'"><img src="../resources/img/Mom.png"></a>'+
									'</div>'+
									'<div class="span4 plan">'+
										'<a href="/tmch/newChildList?momid='+data+'"><img src="../resources/img/Child.png"></a>'+
									'</div>'+
									'<div class="span4 plan">'+
										'<a href="/tmch/newContent"><img src="../resources/img/Content.png"></a>'+
									'</div>'+
									'</div>';
									console.log(txt);
									if(txt!=''){
										$('#table').html(txt);
									}
								},error :  function(){
									
								}
							});
					}if(data.user.staff){
						txt+='<div class="row-fluid pricing-table pricing-three-column">'+
					    	'<div class="span4 plan">'+
				        '<a href="/tmch/newSearchMom"><img src="../resources/img/ManageMom.png"></a>'+
			        '</div>'+
			        '<div class="span4 plan">'+
				    	'<a href="/tmch/newSearchChild"><img src="../resources/img/ManageChild.png"></a>'+
			        '</div>'+
			        '<div class="span4 plan">'+
				        '<a href="/tmch/newContent"><img src="../resources/img/ManageContent.png"></a>'+
			        '</div>'+
			    '</div>';
						
						if(txt!=null){
							$('#table').html(txt);
						}
					}if(data.user.admin){
						txt+='<div class="row-fluid pricing-table pricing-three-column">'+
				    	'<div class="span4 plan">'+
			        '<a href="/tmch/newManageMemb"><img src="../resources/img/ManageMom.png"></a>'+
		        '</div>'+
		        '<div class="span4 plan">'+
			    	'<a href="/tmch/newManageStaff"><img src="../resources/img/ManageStaff.png"></a>'+
		        '</div>'+
		        '<div class="span4 plan">'+
			        '<a href="/tmch/newManageOrg"><img src="../resources/img/ManageOrg.png"></a>'+
		        '</div>'+
		    '</div>';
					
					if(txt!=null){
						$('#table').html(txt);
					}
					}
				}
				
				
			
		},
		error : function(data){
			console.log(data);
		}
	});
});