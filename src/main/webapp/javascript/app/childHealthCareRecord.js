$(document).ready(function(){
	$('#childHCRecordTable').jtable({
		title : '',
		
		fields : {
			Key :{
				title : 'ID',
				key : true,
				create : true,
				edit : false,
				list : false
			},
			checkUpDate : {
				title : 'วันที่ตรวจ',
				width : '15%'
			},
			Weight : {
				title : '',
				width : '15%'
			},
			Height: {
				title : '',
				width : '15%'
			},
			LengthOfHead: {
				title : '',
				width : '15%'
			},
			Comment: {
				title : '',
				width : '15%'
			},
		}
	
	});
	//Load child Record List from server
//	$('#childHCRecordTable').jtable('load');
});