var jsonObj;
$(document).ready(function(){
	console.log("sdfdsf  "+orgid);
	$.ajax({
		url : 'getListUserByOrg',
		data : {orgid:orgid},
		success : function(record){
			//console.log(record);
			 jsonObj=$.parseJSON(record);
			console.log(jsonObj);
			$('#dd').html(jsonObj[0].nameOrg.type+'  '+jsonObj[0].nameOrg.nameOrg);
			var len=jsonObj.length;
			var txt='';
			if(len>0){
				for(var i=0;i<len;i++){
					txt+='<tr>'+
							'<td>'+(i+1)+'</td>'+
							'<td>'+jsonObj[i].firstName +'  '+jsonObj[i].lastName+'</td>'+
							'<td>'+jsonObj[i].email+'</td>'+
						'</tr>';
				}
				
				if(txt!=''){
					$('table#stafftable tbody').html(txt);
				}else{
					$('table#stafftable tbody').html('');
				}
				
			}else{
				
			}
		},error : function(data){
			alert('ล้มเหลว  '+data);
		}
	});
});