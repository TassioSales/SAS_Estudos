data work.meses_ano;
	dtIni = mdy(01,01,2021);
	n = 0;
	do while(n<=12);
		dfFinal = intnx("month", dtini, n);
		n+1;
		output;
	end;
	
	format dtini dfFinal date9.;
	
	drop n;
run;