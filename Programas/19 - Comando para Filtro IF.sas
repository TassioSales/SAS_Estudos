data work.shoes;
	set sashelp.shoes;
	
	if region in ("Africa",'Asia')
	then status =  "Negativo";
run;

data work.shoes;
	set sashelp.shoes;
	
	if region in ("Africa")
	and product = "Boot" and sales < 10000;
run;


data work.shoes;
	set sashelp.shoes;
	
	if region in ("Africa", "Asia")
	and product = "Boot" and sales < 10000;
run;
