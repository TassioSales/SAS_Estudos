/*Função strip*/

data funcao_strip;
	input string $char8.;
	original ='*' || String || "*";
	stripped ='*' || substr(strip(string),1,3) || '*';
	datalines;
abcd
	abcd
		abcd
abcdef
 x y z
 ;
run;

/*funçao left*/

data funçao_left;
	a="      Tassio";
	b=left(a);
	put b=;
run;

/*funçao trim*/

data funcao_trim;
	input parte1 $ 1-10 parte2 $  11-20;
	comEspaco =  parte1||parte2;
	SemEspaco=trim(parte1)||parte2;
	put comEspaco=;
	put SemEspaco=;
	datalines;
Tassio 			Sales
;
run;

data funcao_trim;
	input string $char8.;
	original ='*' || String || "*";
	trim ='*' || substr(trim(string),1,3) || '*';
	datalines;
abcd
	abcd
		abcd
abcdef
 x y z
 ;
run;