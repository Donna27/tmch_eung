$(document).ready(function(){
	// Store input MOM HC FORM 
/*	var formatHC=function(){
		var row=
	}*/
	/*var pregidTemp=pregid;*/
	var generaterow = function(i){
		var row={};
		//setting pregnancy id
		row['pregid']=pregid;
		// set datarow
		row['weight']=$('#width_mom').val();
		row['urine']=$('#urine').val();
		return row;
	}
	
	


	
	
	
	
	var editrow = -1;
	var  source = {
			datatype : 'json',
			cache : false,
			datafields : [
			   {name : 'key',type : 'string'},
			   {name : 'firstName', type : 'string'},
			   {name : 'lastName', type : 'string'},
			   {name : 'status', type : 'string'},
			  
			],
			id : 'key',
			url : 'getAllMembUser',
			cache:false,
	};
	$('#ManageMemb').jqxGrid('autoresizecolumns');
	var dataAdapter = new $.jqx.dataAdapter(source);
	var editrow=-1;
	$("#ManageMemb").jqxGrid({
		width : 985,
		height : 383,
		source : dataAdapter,
//		autorowheight:true,
//	    autoheight: true,
		sortable: true,
		altrows: true,
/*		autorowheight: true,
		autoheight: true,*/
		theme : 'bootstrap',
		columns :[
		          {text : 'ชื่อ',datafield :'firstName',width : 400},
		          {text : 'นามสกุล ',datafield :'lastName',width : 400},
		          {text : 'สถานะ',datafield :'status',width : 185},
		          
		]
	});
});