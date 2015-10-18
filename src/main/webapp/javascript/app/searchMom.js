var sourceArr=[];
var aa=[];
var jsonObj=[];
//var path=pathcontext;

$(document).ready(function(){
	 $.jqx.theme = "bootstrap";
	
	//typeahead for indice
/*	$('#typeahead').typeahead({
		source : function(query,process){
			$.ajax({
				url : '/tmch/getAllMom',
				type : 'GET',
				dateType : 'JSON', // must use dateType sub
				data : 'term='+query,
				success : function(data1){
					var jsonString2=data1;
					aa=data1;
//					alert(aa);
					jsonObj = $.parseJSON(jsonString2);
					
					for(var i=0;i<jsonObj.length;i++){
						sourceArr.push(jsonObj[i].f_name +' '+jsonObj[i].l_name);
						console.debug("Key :: "+jsonObj[i].id.id);
					}
					process(sourceArr);
				},
				error : function(){
					alert('asdfasd');
				}
			});
		}
	});
	*/
	
	// form validate add mom form
	$('#addmomForm').jqxValidator({
		hintType : 'label',
		rules : [
		 {input:'#momName',message:'Required !!',action:'keyup,blue',rule:'required'},
		 {input:'#momLast',message:'Required !!',action:'keyup,blue',rule:'required'},         
		 {input:'#momId13',message:'Required !!',action:'keyup,blue',rule:'required'},         
		 {input:'#region',message:'Required !!',action:'keyup,blue',rule:'required'},         
		 {input:'#education',message:'Required !!',action:'keyup,blue',rule:'required'},         
		 {input:'#email',message:'Required !!',action:'keyup,blue',rule:'required'}, 
		 {input:'#email',message:'invalid email',action:'keyup,blue',rule: 'email'},
		 {input:'#tel',message:'Required !!',action:'keyup,blue',rule:'required'},         
		 ]
	});
	
	
	//submit form
	$('#addMompp').click(function(){
		var validationResult=function(isValid){
			if(isValid){
				 $("#addmomForm").submit();
			}
		}
		//
		$('#addmomForm').jqxValidator('validate', validationResult);
	});
	
	
	//end validate add mom form
	
	
	
	// submit form value for search Mom	
	$('#custom-search-form').submit(function(event){
		// Stop form from submitting normally
		  event.preventDefault();
		term=$('#wordMom').val();//$('#wordMom').serialize(),
		url='/tmch/searchMom';
		var posting =$.post(url,{term : term});
		
		posting.done(function( record ) {
		$( '#tableMom').empty().append();
		    /*var content = $( data ).find( "#content" );
		    $( "#result" ).empty().append( content );*/
			jsonObj=$.parseJSON(record);
			console.log(record);
//			alert(data);
			var len =jsonObj.length;
			var txt='';
			if(len > 0){
				for(var i=0;i<len;i++){
					txt+='<tr>'+
						'<td><a href="profileMom?momid='+jsonObj[i].key.id+'">'+jsonObj[i].f_name+'</a></td>'+
						'<td><a href="profileChild?childid=sasdf">asdfasdf</a></td>'+
						'</tr>';
				}
				if(txt!=''){
					$('#tableMom').append(txt);
				}
			}
		  });
		
		posting.fail(function(data) {
		    alert( "error" );
		  })
		
	});
});