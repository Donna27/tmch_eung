$(document).ready(function(){
	// Store input MOM HC FORM 
/*	var formatHC=function(){
		var row=
	}*/
	$('.datepicker').datepicker({
	    format: 'dd/mm/yyyy',
	    autoclose: true,
	    keyboardNavigation: false,
	    forceParse: false,
	    language: "th",
	});
	
	var pregidTemp=pregid;
	var generaterow = function(i){
		var row={};
		//setting pregnancy id
		row['pregid']=pregid;
		// set datarow
		row['chkdate']=$('#chkdate').val();
		row['weight']=$('#width_mom').val();
		row['urine']=$('#urine').val();
		row['blood_mm']=$('#blood_mm').val();
		row['uterus'] = $('#uterus').val();
		row['position']=$('#position').val();
		row['heartRate']=$('#heartRate').val();
		row['childWriggle']=$('#childWriggle').val();
		row['due_time']=$('#due_time').val();
		row['chkupRisk']=$('#chkupRisk').val();
		row['diagnose']=$('#diagnose').val();
		return row;
	}
	
	
	/*form validate create mom*/
	$('#addFormMom').jqxValidator({
		hintType : 'label',
		rules:[
		{ input: '#width_mom', message: 'จำเป็นต้องใส่', action: 'keyup, blur', rule: 'required' },
  
		]
	});
	 // Validate form.
    $("#addmombtn").click(function () {
        var validationResult = function (isValid) {
            if (isValid) {
  /*          	
                console.log($('#width_mom').val());
                var widthmom=$('#width_mom').val();
                $.ajax({
                	type : 'POST',
                	url : 'addMomHCRecord',
                	data : {width_mom : widthmom},
                	success : function(data,textStatus,jqXHR){
                		//alert('Save successful');
                		console.log(data);
                		//$('#momRecordTable').jqxGrid('refreshdata');
                	}
                });*/
//                $("#addFormMom").submit();
                var datarow=generaterow();
                $("#momRecordTable").jqxGrid('addrow', null, datarow);
                $('#addmombtn').attr({'data-dismiss' :'modal','aria-hidden':'true' });
            }
        }
        $('#addFormMom').jqxValidator('validate', validationResult);
        
    });

	
	
	
	
	var editrow = -1;
	var  source = {
			datatype : 'json',
			cache : false,
			datafields : [
			   {name : 'key',type : 'string'},
			   {name : 'checkDate', type : 'date',format:'dd/mm/yyyy'},
			   {name : 'weight', type : 'double'},
			   {name : 'urine', type : 'string'},
			   {name : 'booldPressure', type : 'double'},
			   {name : 'sizeOfUteru', type : 'double'},
			   {name : 'positionOfChild', type : 'double'},
			   {name : 'heartRate', type : 'double'},
			   {name : 'childWriggle', type : 'string'},
			   {name : 'dueTime', type : 'double'},
			   {name : 'chkupRisk', type : 'string'},
			   {name : 'diagnose', type : 'string'},
			   /*{name : 'inspectorsFever', type : 'string'},*/
			  /* {name : 'preg_order', type : 'int'},*/
			],
			id : 'key',
			url : 'getAllMomHCRecord',
			data : {pregid : pregid},
			cache:false,
			sortcolumn: 'checkDate',
			 sortdirection: 'asc',
			addrow:function(rowid,rowdata,position,commit){
				// Synchronize with the server - send insert command
				var datarow = $.param(rowdata);
				
				console.log('data for save '+datarow);
				console.log('daasdfasd '+pregid);
				$.ajax({
				 	url : 'addMomHCRecord',
					type : 'POST',
					data :  datarow,
					//dataType:'json',
					cache:false,
					success: function(data,status,xhr){
						// insert command is executed.
						console.log('response :: '+data);
						commit(true);
						location.reload();
					},
					error : function(rowid,commit){
						commit(false);
					}
					
				});
			},
//			updaterow:function(rowid,rowdata,commit){
//				alert("row id :: "+rowid);
//			}
	
	};
	$('#momRecordTable').jqxGrid('autoresizecolumns');
	var dataAdapter = new $.jqx.dataAdapter(source);
	var editrow=-1;
	$("#momRecordTable").jqxGrid({
		width : 1170,
		height : 500,
		source : dataAdapter,
//		autorowheight:true,
//	    autoheight: true,
		sortable: true,
		altrows: true,
		autorowheight: true,
		autoheight: true,
		theme : 'bootstrap',
		columns :[
		          {text : 'วันตรวจ',datafield :'checkDate',width : 100, cellsformat: 'dd/MM/yyyy' },
		          {text : 'น้ำหนัก ',datafield :'weight',width : 50},
		          {text : 'การตรวจปัสสาวะ ',datafield :'urine',width : 100},
		          {text : 'ความดันโลหิต',datafield :'booldPressure',width : 80},
		          {text : 'ขนาดของมดลูก',datafield :'sizeOfUteru',width : 90},
		          {text : 'ท่าเด็กส่วนนำ/การลง ',datafield :'positionOfChild',width : 120},
		          {text : 'เสียงหัวใจเด็ก',datafield :'heartRate',width : 80},
		          {text : 'เด็กดิ้น',datafield :'childWriggle',width : 45},
		          {text : 'อายุครรภ์' ,datafield : 'dueTime',width : 60},
		          {text : 'การตรวจร่างกายทั่วไปและการประเมินความเสี่ยง' ,datafield : 'chkupRisk',width : 225},
		          {text : 'การวินิจฉัยและการรักษา' ,datafield : 'diagnose',width : 225},
		          /*{text : 'ผู้ตรวจ' ,datafield : 'inspectorsFever',width : 50},*/
		         /* {text : 'แก้ไข' , datafield : 'Edit',columntype : 'button',cellsrenderer : function(){
		        	  return "แก้ไข"; // set font button
		          		},buttonclick : function(row){
		          			//open the popup window when the user click a button
		          			editrow=row;
		          			var offset=$('#momRecordTable').offset();
		          			$('#popupEditWindow').jqxWindow({ position: 'center'});//({ position: { x: parseInt(offset.left) + 60, y: parseInt(offset.top) + 60 } });
		          			//get the clicked row's data adn initialize the input fields
		          			var dataRecord = $("#momRecordTable").jqxGrid('getrowdata', editrow);
		          			$("#e_width_mom").val(dataRecord.weight);
		          			$('#e_chkupdate').val(dataRecord.checkDate);
		          			
		          		// show the popup window.
		                     $("#popupEditWindow").jqxWindow('open');
		          			
		          		}
		          }*/
	         
		]
	});
	//initialize the popup window and buttons
	$('#popupEditWindow').jqxWindow({
		 width: 340, height: 1000, resizable: false,  isModal: true, autoOpen: false, //cancelButton: $("#Cancel"), modalOpacity: 0.01 
	});
	/*$("#popupEditWindow").on('open', function () {
        $("#firstName").jqxInput('selectAll');
    });*/
});