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
			   {name : 'nameOrg', type : 'string'},
			   {name : 'type', type : 'string'},
			   {name : 'province', type : 'string'},
			   {name : 'status', type : 'string'},
			  
			],
			id : 'key',
			url : 'getAllOrgUser',
			cache:false,
	};
	$('#ManageOrg').jqxGrid('autoresizecolumns');
	var dataAdapter = new $.jqx.dataAdapter(source);
	var editrow=-1;
	$("#ManageOrg").jqxGrid({
		width : 1020,
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
		          {text : 'ชื่อองค์กร',datafield :'nameOrg',width : 500},
		          {text : 'ประเภทองกรค์',datafield :'type',width : 185},
		          {text : 'จังหวัด',datafield :'province',width : 185},
		          {text : 'สถานะ '},//,datafield :'status',width : 150},
		          
		]
	});
});