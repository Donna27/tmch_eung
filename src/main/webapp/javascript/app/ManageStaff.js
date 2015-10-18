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
			   {name : 'active', type : 'bool'},
			   {name : 'nameOrg.nameOrg', type : 'string'},
			   
			],
			id : 'key',
			url : 'getAllStaffUser',
			cache:false,
			updaterow : function(rowid,rowdata,commit){
				console.log(rowdata.key);
				console.log(rowdata.active);
				var datat='userid='+rowdata.key.id+'&status='+rowdata.active;
				$.ajax({
					url : 'updateuserstatus',
					data :datat,
					success :function(data,status,xhr){
						commit(true);
					},
					error : function(){
						commit(false);
						alert('การแก้ไขล้มเหลว');
					}
				});
			}
	};
	$('#ManageStaff').jqxGrid('autoresizecolumns');
	var dataAdapter = new $.jqx.dataAdapter(source);
	var editrow=-1;
	$("#ManageStaff").jqxGrid({
		width : 985,
		height : 383,
		source : dataAdapter,
		sortable: true,
		altrows: true,
		theme : 'bootstrap',
		editable: true,
		//selectionmode: 'singlecell',
		columns :[
		          {text : 'ชื่อ',editable: false,datafield :'firstName',width : 300},
		          {text : 'นามสกุล ',editable: false,datafield :'lastName',width : 300},
		          {text : 'ชื่อองค์กร',editable: false,datafield:'nameOrg.nameOrg',width : 200},
		          {text : 'สถานะ',editable: true, columntype: 'checkbox',datafield :'active',width : 185},
		         
		]
	});
});