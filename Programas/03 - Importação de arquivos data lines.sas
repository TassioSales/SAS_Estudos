data work.cadastros;
	infile datalines delimiter=',';
	length nome $30. sobrenome $30. idade $8.;
	input nome $ sobrenome $ idade;
datalines;
Tassio,Sales,31
;
run;