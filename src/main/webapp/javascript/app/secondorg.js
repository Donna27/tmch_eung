var sourceArr=[];
$(document).ready(function(){
	$('#typeahead').typeahead({
		source : function(query,process){
			$.ajax({
				url : '/tmch/getOrg',
				type : 'GET',
				dateType : 'JSON',
				data : 'term='+ query,
				success : function(data){
					var jsonString=data;
					var jsonObj = $.parseJSON(jsonString);
					
					for(var i=0;i<jsonObj.length;i++){
						sourceArr.push(jsonObj[i].nameOrg);
					}
					process(sourceArr);
				}
			});
		}
	});
});