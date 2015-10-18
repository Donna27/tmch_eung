
$(document).ready(function(){
	//$.jqx.theme = "bootstrap";
	// search mom start
	// submit form value for search Mom	
/*	$('#custom-search-form').submit(function(event){
		// Stop form from submitting normally
		  event.preventDefault();
		term=$('#search_query').val();//$('#wordMom').serialize(),
		url='/tmch/searchMom';
		var posting =$.post(url,{term : term});
		
		posting.done(function( record ) {
		//$( '#momchildTable').empty().append();
//		    var content = $( data ).find( "#content" );
//		    $( "#result" ).empty().append( content );
			jsonObj=$.parseJSON(record);
			//console.log(record);
//			alert(data);
			var len =jsonObj.length;
			var txt='';
			if(len > 0){
				for(var i=0;i<len;i++){
					txt+='<tr>'+
						'<td>'+(i+1)+'</td>'+
						'<td><a href="newMomProfile?momid='+jsonObj[i].key+'">'+jsonObj[i].f_name+' '+jsonObj[i].l_name+'</a></td>'+
					'<td style="display:none;">'+jsonObj[i].key.id+'</td>'+
					'<td>'+transformDateForSetDateField(jsonObj[i].crtd_time)+'</td>'+
					'<td>'+jsonObj[i].id_13+'</td>'+
						'<td><a href="newMomProfile?momid='+jsonObj[i].key.id+'">'+jsonObj[i].f_name+' '+jsonObj[i].l_name+'</a></td>'+
					'<td><a href="newChildList?momid='+jsonObj[i].key.id+'">'+jsonObj[i].amount_child+'  คน</a></td>'+
						'<td><a href="profileChild?childid=sasdf"></a></td>'+
						'<td><a href="newMomHistory?momid='+jsonObj[i].key.id+'" class="btn btn-primary btn-small" >ดูบันทึการตั้งครรภ์</a></td>'//<input type="button" class="btn" value="โปรดเถดรัก"></td>'
						'</tr>';
				}
				if(txt!=''){
					$('table#momchildTable tbody').html(txt);
				}else{
					
					$('table#momchildTable tbody').html('');
				}
			}else{
					//alert('Not found Mother!');
					$('table#momchildTable tbody').html('');
				}
		  });
		
		posting.fail(function(data) {
		    alert( "error" );
		  })
		
	});*/
	
	
	// end submit for search
	// add mom
	$('#addMomForm').jqxValidator({
		hintType : 'label',
		rules:[
			{input:'#momName',message:'กรุณาระบุชื่อ',action: 'keyup, blur', rule: 'required'},
			{input:'#momLast',message:'กรุณาระบุนามสกุล',action:'keyup , blue',rule:'required'},
			{input:'#momId13',message : 'กรุณาระบุเลขบัตรประชาชน',action:'keyup , blue',rule:'required'},
			{input:'#momId13',message : 'ระบุไม่ถูกต้อง',action:'keyup , blue',rule:function(){
				var id13mom=$('#momId13').val();
				if((id13mom.length ==13) && $.isNumeric(id13mom)){
					return true;
				}else {
					return false;
				}
			}},
			{input:'#tel',message : 'กรุณากรอกเบอร์โทรศัพท์',action:'keyup , blue',rule:'required'},
			{input:'#tel',message : 'ระบุไม่ถูกต้อง',action:'keyup , blue',rule:function(){
				var tel=$('#tel').val();
				if($.isNumeric(tel)){
					return true;
				}else {
					return false;
				}
			}},
			{input:'#tel',message : 'ระบุไม่ถูกต้อง',action:'keyup , blue',rule:'length=9,10'},
			/*{input:'#region',message : 'กรุณาระบุศาสนา',action:'keyup , blue',rule:'required'},*/
			/*{input:'#region',message : 'กรุณาระบุศาสนา',action:'keyup , blue',rule: function(){
					var region=$('#region').val();
					if(region!=""){
						$('#region').val(region);
						return true;
					}else{
						return false;
					}
			}},*/
			{input:'#occupation',message : 'กรุณากรอกอาชีพ',action:'keyup , blue',rule:function(){
				var occupation=$('#occupation').val();
				if(occupation!=""){
					return true;
				}else{
					return false;
				}
			}}
			
		]
	});
	$('#sendMom').click(function(){
		var validationResult=function(isValid){
			if(isValid){
				$('#addMomForm').submit();
				$('#sendMom').attr({'data-dismiss' :'modal','aria-hidden':'true' });
			}
		}
		$('#addMomForm').jqxValidator('validate',validationResult);
	});
	
/*	$('#momchildTable').dataTable( {
        "bProcessing": true,
        "bServerSide": true,
        //"sServerMethod": 'POST',
        "sAjaxSource": 'getAllMom',
        "aoColumns": [
                      { "mData": "f_name" ,
                    	  "mRender": function ( data, type, full ) {
                    		  //var jsonObj=$.parseJSON(type);
                    		  //jsonObj=full;
                    		  //console.log(data+' '+full.l_name);
                    		  return '<a href="newMomProfile?momid='+full.key.id+'">'+full.f_name+' '+full.l_name+'</a>';
                    	  }
                      }        
                  ],
       // "sPaginationType": "full_numbers",
                  "oLanguage": {
                      "sSearch": "Search all columns:"
                  },
                  "aoColumnDefs": [ {
                      "aTargets": [1],
                      "mData": "key",
                      "mRender": function ( data, type, full ) {
                        return '<a href=newMomHistory?momid='+full.key.id+' class="btn">ประวัติการตั้งครรภ์</a>';
                      }
                    } ],
        "fnServerData": function( sUrl, aoData, fnCallback, oSettings ) {
            oSettings.jqXHR = $.ajax( {
                "url": sUrl,
                "data": aoData,
                "success": fnCallback,
                "dataType": "json",
                "cache": false
            } );
        }
    } );*/
});

 var jsonObj;
 var otable;
$(document).ready(function() {
	
	
	
	
    otable=$('#momchildTable').dataTable( {
    	"bProcessing": true,
        "bServerSide": true,
        "sDom": "<'row'<'span6'l><'span6'f>r>t<'row'<'span6'i><'span6'p>>",
		"sPaginationType": "bootstrap",
		 "bLengthChange": false,
		/*"oLanguage": {
			"sLengthMenu": "_MENU_ records per page"
		},*/
        "sAjaxSource": 'getAllMom',
        "aoColumns": [
                      {"mData" : "key.id"},
                      { "mData": "crtd_time",
        					"mRender" : function(data,type,full){
        						return transformDateForSetDateField(full.crtd_time);
        					}},
        			  { "mData" : "id_13"},
                      { "mData": "f_name" ,
                    	  "mRender": function ( data, type, full ) {
                    		  //var jsonObj=$.parseJSON(type);
                    		  //jsonObj=full;
                    		  //console.log(data+' '+full.l_name);
                    		  return '<a href="newMomProfile?momid='+full.key.id+'">'+full.f_name+' '+full.l_name+'</a>';
                    	  }
                      },{
                    	  "mData" : "amount_child",
                      },{
                    	  "mData" : "region"
                      }
                  ],
                  "oLanguage": {
                      "sSearch": "ชื่อ /เลขบัตรประชาชน"
                  },
                  "aoColumnDefs": [
                	  { "bVisible": false, "aTargets": [ 0 ] }
                      
                     ],
        "fnServerData": function( sUrl, aoData, fnCallback, oSettings ) {
            oSettings.jqXHR = $.ajax( {
                "url": sUrl,
                "data": aoData,
                "success": fnCallback,
                "dataType": "json",
                "cache": false
            } );
        }
    } );
    
    otable.$('tr').click(function(){
		alert('asdf');
	});
} );
//Set the defaults for DataTables initialisation 
$.extend( true, $.fn.dataTable.defaults, {
	"sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
	"sPaginationType": "bootstrap",
	"oLanguage": {
		"sLengthMenu": "_MENU_ records per page"
	}
} );


 //Default class modification 
$.extend( $.fn.dataTableExt.oStdClasses, {
	"sWrapper": "dataTables_wrapper form-inline"
} );


 //API method to get paging information 
$.fn.dataTableExt.oApi.fnPagingInfo = function ( oSettings )
{
	return {
		"iStart":         oSettings._iDisplayStart,
		"iEnd":           oSettings.fnDisplayEnd(),
		"iLength":        oSettings._iDisplayLength,
		"iTotal":         oSettings.fnRecordsTotal(),
		"iFilteredTotal": oSettings.fnRecordsDisplay(),
		"iPage":          oSettings._iDisplayLength === -1 ?
			0 : Math.ceil( oSettings._iDisplayStart / oSettings._iDisplayLength ),
		"iTotalPages":    oSettings._iDisplayLength === -1 ?
			0 : Math.ceil( oSettings.fnRecordsDisplay() / oSettings._iDisplayLength )
	};
};


 //Bootstrap style pagination control 
$.extend( $.fn.dataTableExt.oPagination, {
	"bootstrap": {
		"fnInit": function( oSettings, nPaging, fnDraw ) {
			var oLang = oSettings.oLanguage.oPaginate;
			var fnClickHandler = function ( e ) {
				e.preventDefault();
				if ( oSettings.oApi._fnPageChange(oSettings, e.data.action) ) {
					fnDraw( oSettings );
				}
			};

			$(nPaging).addClass('pagination').append(
				'<ul>'+
					'<li class="prev disabled"><a href="#">&larr; '+oLang.sPrevious+'</a></li>'+
					'<li class="next disabled"><a href="#">'+oLang.sNext+' &rarr; </a></li>'+
				'</ul>'
			);
			var els = $('a', nPaging);
			$(els[0]).bind( 'click.DT', { action: "previous" }, fnClickHandler );
			$(els[1]).bind( 'click.DT', { action: "next" }, fnClickHandler );
		},

		"fnUpdate": function ( oSettings, fnDraw ) {
			var iListLength = 5;
			var oPaging = oSettings.oInstance.fnPagingInfo();
			var an = oSettings.aanFeatures.p;
			var i, ien, j, sClass, iStart, iEnd, iHalf=Math.floor(iListLength/2);

			if ( oPaging.iTotalPages < iListLength) {
				iStart = 1;
				iEnd = oPaging.iTotalPages;
			}
			else if ( oPaging.iPage <= iHalf ) {
				iStart = 1;
				iEnd = iListLength;
			} else if ( oPaging.iPage >= (oPaging.iTotalPages-iHalf) ) {
				iStart = oPaging.iTotalPages - iListLength + 1;
				iEnd = oPaging.iTotalPages;
			} else {
				iStart = oPaging.iPage - iHalf + 1;
				iEnd = iStart + iListLength - 1;
			}

			for ( i=0, ien=an.length ; i<ien ; i++ ) {
				// Remove the middle elements
				$('li:gt(0)', an[i]).filter(':not(:last)').remove();

				// Add the new list items and their event handlers
				for ( j=iStart ; j<=iEnd ; j++ ) {
					sClass = (j==oPaging.iPage+1) ? 'class="active"' : '';
					$('<li '+sClass+'><a href="#">'+j+'</a></li>')
						.insertBefore( $('li:last', an[i])[0] )
						.bind('click', function (e) {
							e.preventDefault();
							oSettings._iDisplayStart = (parseInt($('a', this).text(),10)-1) * oPaging.iLength;
							fnDraw( oSettings );
						} );
				}

				// Add / remove disabled classes from the static elements
				if ( oPaging.iPage === 0 ) {
					$('li:first', an[i]).addClass('disabled');
				} else {
					$('li:first', an[i]).removeClass('disabled');
				}

				if ( oPaging.iPage === oPaging.iTotalPages-1 || oPaging.iTotalPages === 0 ) {
					$('li:last', an[i]).addClass('disabled');
				} else {
					$('li:last', an[i]).removeClass('disabled');
				}
			}
		}
	}
} );



 /* TableTools Bootstrap compatibility
 * Required TableTools 2.1+
 */
if ( $.fn.DataTable.TableTools ) {
	// Set the classes that TableTools uses to something suitable for Bootstrap
	$.extend( true, $.fn.DataTable.TableTools.classes, {
		"container": "DTTT btn-group",
		"buttons": {
			"normal": "btn",
			"disabled": "disabled"
		},
		"collection": {
			"container": "DTTT_dropdown dropdown-menu",
			"buttons": {
				"normal": "",
				"disabled": "disabled"
			}
		},
		"print": {
			"info": "DTTT_print_info modal"
		},
		"select": {
			"row": "active"
		}
	} );

	// Have the collection use a bootstrap compatible dropdown
	$.extend( true, $.fn.DataTable.TableTools.DEFAULTS.oTags, {
		"collection": {
			"container": "ul",
			"button": "li",
			"liner": "a"
		}
	} );
}

  
/* // alert
 function example4() {
	 var rowIdx;
	    var rowData= [];
	    var table= document.getElementById('momchildTable');
	    var rows= table.getElementsByTagName('tr');
	    var selectedRow;
	   var rowCellValue;
	    for(i= 0;i<rows.length;i++){
	        rows[i].onclick= function(){
	            rowIdx= this.rowIndex;
	            selectedRow= this.cells;
	            for(j= 0;j<selectedRow.length;j++){
	                rowCellValue= selectedRow[j].textContent ||
	                selectedRow[j].innerText;
	                rowData.push('cell '+j+': '+rowCellValue);
	            }
//	            window.location.href="/tmch/newIndex";
	            alert("Row #" +rowIdx+'. '+ rowData);
	        }
	    }
	}
	window.onload = function() { example4(); }*/