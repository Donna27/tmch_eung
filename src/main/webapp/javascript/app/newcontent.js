var jsonObj;
$(document).ready(function(){
	
	$.ajax({
		type : 'post',
		url : 'getlistfile',
		//datatype : 'json',
		success : function(record){
			//console.log(record);
			jsonObj=$.parseJSON(record);
			console.log(jsonObj);
			var txt='';
			if(jsonObj.length>0){
					for(var i=0;i<jsonObj.length;i++){
						txt+='<tr>'+
									'<td>'+jsonObj[i].filename+'</td>'+
									'<td><a href="/tmch/viewpdf?file='+jsonObj[i].file+'" class="btn">asdfasd</a></td>'
						'</tr>';
					}
					
					if(txt!=''){
						$('table#contentTable tbody').html(txt);
					}
			}
		}
	});
});