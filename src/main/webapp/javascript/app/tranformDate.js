function transformDateForSetDateField(oldDate){
	var tranformdate=new Date(oldDate);
	var year=tranformdate.getFullYear();
	var mouth=tranformdate.getMonth();
	var day=tranformdate.getDate();
	var newDate=day+'/'+(mouth+1)+'/'+year;
	return newDate;
}