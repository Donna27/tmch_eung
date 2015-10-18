var jsonOb=[];
$(document).ready(function(){
	$('#custom-search-form').submit(function(event){
		event.preventDefault();
		term=$('#typeahead').val();
		url='/tmch/searchOrgRes';
		var posting=$.post(url,{term : term});
		
		posting.done(function(record){
			jsonObj=$.parseJSON(record);
			
			var len=jsonObj.length;
			console.log(len);
			var txt='';
			if(len>0){
				for(var i=0;i<len;i++){
					txt+='<tr>'+
							/*'<td>'+(j=i+1)+'</td>'+*/
							'<td>'+jsonObj[i].nameOrg+'</td>'+
							'<td class="nr">'+jsonObj[i].type+'</td>'+
							'<td>'+jsonObj[i].province+'</td>'+
							/*ทดสอบ*/'<td><a href="newStaffList?orgid='+jsonObj[i].key.id+'">'+jsonObj[i].amount_user+'  คน</a></td>'+
							'<td><a class="btn btn-small btn btn-primary" href="/tmch/newRegisStaff?orgid='+jsonObj[i].key.id+'">ลงทะเบียนเจ้าหน้าที่</a></td>'+
						'</tr>';
				}
			}else{
				alert('not found org');
			}
			
			//display result
			if(txt!=''){
				$('table#tableOrg tbody').html(txt);
			}
			
		});
	});
});