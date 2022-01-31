data texto;
	texto = "Meu nome é Tassio";
	texto_dois = "Curso de programação SAS Essencial";
	
	/*Função translate*/
	funcao_translate = translate(texto, "e", "é", "i", "a");
	funcao_translate_dois = translate(texto_dois, "a", 'ã');
	
	/*Função Tranwrd*/
	funcao_tranwrd = tranwrd(texto, "é", "e");
	funcao_tranwrd_nome = tranwrd(texto, "Tassio", "Tassio Lucian");
	funcao_tranwrd_curso = tranwrd(texto_dois, "Essencial","Basico");
run;
