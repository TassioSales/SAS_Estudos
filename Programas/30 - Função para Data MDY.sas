data teste;
	dt_string = "05/15/2021";
	dt = mdy(05,15,2021);
	dt_numero = mdy(input(scan(dt_string, 1,"/"),2.),
					input(scan(dt_string, 2,"/"),2.),
					input(scan(dt_string, 3,"/"),4.)
					);
	format dt dt_numero date9.;
run;