data work.t;
	do i = 1 to 20;
		n = i + 2;
		output;
	end;
run;


data work.k;
 	set sashelp.shoes;
 	if region = "Africa" and Product = "Boot" then do;
 	   region = "";
 	   product = "";
 	   Sales = .;
 	   Inventory = .;
 	end;
 	
 	array chars{*} _CHARACTER_;
 	array num{*} _NUMERIC_;
 	
 	do i = 1 to dim(chars);
 	 	if missing(chars{i}) then chars{i} = "ND";
 	end;
 	
 	do j= 1 to dim(num);
 	 	if missing(num{j}) then num{j} = 0;
 	end;
 	
 	drop i j;
run;