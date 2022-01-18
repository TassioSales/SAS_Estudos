proc sql;
	create table teste as 
	select * from sashelp.shoes
	where region = 'Africa'
	and product = 'Boot';
quit;

data teste;
	set sashelp.shoes(where =(
		region ="Africa" and
		product ="Boot"
	
	));
run;

data testedois;
	set sashelp.shoes;
	where region ="Africa" and
	product = 'Boot' and
	sales < 10000;
run;

data testedois;
	set sashelp.shoes;
	where region in ("Africa", "Asia")
	and sales < 10000;
run;