$(document).ready(function(){
	
	$('#adduserbtn').click(function(){
		//toggle `popup` / `inline` mode
	    $.fn.editable.defaults.mode = 'popup';
	    
	    //make username editable
	   
		//var tr = $('<tr><td>3</td><td><a href="#" id="username">superuser</a></td></tr>');
		 var tr=$('<tr><td>3</td><td><input class="span2" id="inputIcon" type="text"></td></tr>');
		$('#adminMaintain').append(tr);
	});
	
	 $('#username').editable();
});