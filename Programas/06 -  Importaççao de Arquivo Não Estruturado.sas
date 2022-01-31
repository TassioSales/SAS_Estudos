data work.info_cadastro;
	infile '/home/u59465888/Udemy/Dados_Input/info.txt'
	lrecl=150
	truncover
	firstobs=3
	;
	input ID $ 01 - 19 @;
	
	if index(id, "Dados do Comprador") ne 0 then do;
		input // @006 Nome $18.
			  /  @005 CPF $12.
				 @018 RG  $10.
  			 /  @007 Email $20.
		;
		output;
	end;
run;