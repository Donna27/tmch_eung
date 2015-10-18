function calMouth(childbirth,chkdate){
	var one_mounth=1000*60*60*24*30;
//	console.log("checku "+(chkdate.getTime()-childbirth.getTime()));
	//var mouthnumber =Math.ceil((chkdate-childbirth)/one_mounth);
	var mouthnumber = Math.ceil((chkdate.getTime()-childbirth.getTime())/(one_mounth));
	return mouthnumber;
}