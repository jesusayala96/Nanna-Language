grammar Compilador;

options {
	backtrack=true;
  language = Ruby;
  output = AST;
	}

archivo_compilado
	: paquete librerias* clase_interface_declaracion
	;

paquete
	: K_PACKAGE qualified_name EOL
	;

librerias
	: K_REQUIRE qualified_name EOL
	;

clase_interface_declaracion
	:(clase_declaration|interface_declaration) 
	;

clase_declaration
	: K_CLASS Identificador extends? implements? bodyclass K_END
	;

extends
	:K_EXTENDS Identificador
	;

implements
	: K_IMPLEMENTS qualified_name (COMA qualified_name)*
	;

interface_declaration
	: K_INTERFACE Identificador bodyclass K_END
	;

bodyclass
	: (acciones
	| definir_variables
	| definir_arreglo
	| definir_propiedad
	| ciclos
	| clase_interface_declaracion
	| metodos
	| constructor)*
	;

acciones
	: imprimir
	|asignacion_especial
	|retorno
	|conversion_variable
	|accion_sistema
	|condicional
	|invocar_metodo_funcion
	|crear_objeto
	|referencia_objeto
	|inspeccionar_objeto
	|matematica_especial
	|accion_num
	|ajuste_array
	|ordenar_arreglo
	|busqueda_array
	|split
	|manejo_archivos
	|accion_arreglo
	|union
	|asignacion
	;

imprimir
	: K_IMPRIMIR valor EOL
	;

asignacion_especial
	: K_ASIGNACION LPAR (Identificador|var_local) COMA valor RPAR EOL
	;

retorno
	: K_RETORNO EOL
	;
retorno_valor
	: K_RETORNO valor EOL
	;

conversion_variable
	: K_CONVERSION LPAR (Identificador|var_local) RPAR EOL
	;

accion_sistema
	: K_ACCIONSYS EOL
	;

condicional
	: LLAIZQ bodyexp LLADER K_IF LPAR condicion_exp RPAR elseb?
	;

bodyexp
	:(acciones|ciclos|definir_var_local|retorno_valor)*
	;

ciclos
	: (ciclo_times|ciclo_each)
	;

ciclo_times
	: DecimalLiteral K_TIMES K_DO LLAIZQ bodyexp LLADER
	;

ciclo_each
	: (Identificador|var_local) K_EACH K_DO DELIM var_local DELIM LLAIZQ bodyexp LLADER
	;

condicion_exp
	: condicion (OP_LOG condicion)*
	;

condicion
	: valor OP_REL valor
	;

elseb
	: K_ELSE LLAIZQ bodyexp LLADER
	;

definir_var_local
	: var_local LPAR body_var_local RPAR EOL
	;

body_var_local
	: TIPO COMA valor?
	;

invocar_metodo_funcion
	: K_INVOKE qualified_name LPAR parametros? RPAR EOL
	;

parametros
	: valor (COMA valor)*
	;

crear_objeto
	: qualified_name PUNTO K_NEW LPAR parametros? RPAR EOL
	;

referencia_objeto
	: K_REFERENCIA LPAR (Identificador|var_local) RPAR EOL
	;


inspeccionar_objeto
	: K_INSPECCIONAR LPAR (Identificador|var_local) RPAR EOL
	;

usar_metodo
	: qualified_name LPAR parametros? RPAR
	;

matematica_especial
	: K_MATEMATICA LPAR (Identificador|var_local) COMA valor RPAR EOL
	;

accion_num
	: K_NUM LPAR (Identificador|var_local) COMA valor RPAR EOL
	;

ajuste_array
	: K_RESIZE LPAR (Identificador|var_local) RPAR EOL
	;

ordenar_arreglo
	: K_ORDENAR ModoOrd LPAR (Identificador|var_local) RPAR EOL
	;

busqueda_array
	: (Identificador|var_local) K_WHERE (Identificador|var_local) K_TIPOBUSQUEDA valor EOL
	;

split
	: K_SPLIT LPAR string RPAR (Identificador|var_local) EOL
	;

manejo_archivos
	: K_BEGIN K_DIR LPAR manejo RPAR EOL 
	;

manejo
	: K_ACCIONARCHIVO COMA string COMA  Identificador
	;

accion_arreglo
	: K_ACCIONARREGLO LPAR (Identificador|var_local) COMA valor RPAR EOL
	;

union
	:string K_UNION LPAR (Identificador|var_local) RPAR string EOL
	;

asignacion
	: (Identificador|var_local) ASIGNACION expresion EOL
	;

expresion
	: valor (OP_ARI valor)*
	;

definir_variables
	: (definir_variable|definir_var_local)
	;

definir_variable
	: K_DEF K_VAR Identificador LPAR var_exp EOL
	;

var_exp
	: TIPO COMA K_VISIBILIDAD COMA K_MODIFICADOR? COMA valor? RPAR
	;

definir_arreglo
	: K_DEF K_ARRAY (Identificador|var_local) LPAR DecimalLiteral RPAR LLAIZQ exp_arreglo LLADER EOL
	;

exp_arreglo
	: valor (COMA valor)*
	;

definir_propiedad
	: K_DEF K_PROPIEDAD Identificador LPAR Identificador RPAR LLAIZQ body_propiedad LLADER
	;

body_propiedad
		:  get set?
		;
get
:	K_GET LLAIZQ Identificador LLADER
;

set
:	K_SET LLAIZQ K_VALUE LLADER
;

constructor
	: K_DEF K_INITIALIZE LPAR parametros_tipos? RPAR LLAIZQ bodyexp LLADER
	;

parametros_tipos
	: TIPO valor (COMA TIPO valor)*
	;

metodos
	:(funcion|metodo)
	;

funcion
	: K_DEF K_FUNC Identificador LPAR parametros_tipos? RPAR LLAIZQ bodyexp LLADER
	;

metodo
	: K_DEF K_VOID Identificador LPAR parametros_tipos? RPAR LLAIZQ bodyexp LLADER
	;

// LEXER

	EOL
	:';'
	;

	LPAR
	: '('
	;

	RPAR
	: ')'
	;

	LLAIZQ
	: '{'
	;

	LLADER
	: '}'
	;

	COMA
	:','
	;

	PUNTO
	:'.'
	;

	CORDER
	:']'
	;

	CORIZQ
	:'['
	;

	DELIM
	:'|'
	;

	ASIGNACION
	:'='
	;

	DOUBLEDOT
	: ':'
	;

	COMILLA
	:'\''
	;

	OP_REL
	: ('>='|'<='|'=='|'!='|'<'|'>')
	;

	OP_ARI
	: ('+'|'-'|'/'|'*')
	;

	OP_LOG
	: ('and'|'or'|'not'|'nand'|'nor')
	;

	K_ACCIONARCHIVO
	: ('file'|'stream'|'open'|'close'|'readAll')
	;

	K_ACCIONARREGLO
	: ('push'|'pop'|'remove'|'next'|'prev'|'val'|'eval')
	;

	K_PACKAGE
	: 'package'
	;

	K_CLASS
	: 'class'
	;

	K_END
	: 'end'
	;

	K_DEF
	: 'def'
	;

	K_VAR
	: 'var'
	;

	K_REQUIRE
	: 'require'
	;

	K_IMPLEMENTS
	:'implements'
	;

	K_EXTENDS
	:'extends'
	;

	K_IMPRIMIR
	:('puts'|'print'|'write')
	;

	K_CONVERSION
	: ('STRING'|'INT'|'FLOAT'|'VAR'|'TIME'|'DATE')
	;

	K_ASIGNACION
	:('add'|'div'|'mul'|'sub'|'pot'|'sqrt'|'copy'|'del'|'porcent')
	;

	K_RETORNO
	:('break'|'return')
	;

	K_ACCIONSYS
	: ('beep'|'help'|'exit')
	;

	K_INTERFACE
	: 'interface'
	;

	K_IF
	: ('if'|'when')
	;

	K_TIMES
	: 'times'
	;

	K_DO
	: 'do'
	;

	K_EACH
	: 'each'
	;

	K_ELSE
	: 'else'
	;
	
	K_INVOKE
	: 'invoke'
	;

	K_NEW
	: 'new'
	;

	TIPO
	: ('bool'|'byte'|'bit'|'char'|'double'|'int'|'string'|'float'|'vector'|'time'|'date'|'point')
	;

	K_REFERENCIA
	: ('sizeof'|'typeof'|'ref')
	;

	K_INSPECCIONAR
	: 'inspect'
	;

	K_MATEMATICA
	:('sin'|'cos'|'cot'|'tan'|'asin'|'acos'|'atan'|'log'|'loge'|'logn'|'fac'|'avg'|'abs'|'fraction'|'max'|'min'|'count'|'res')
	;

	K_NUM
	: ('round'|'aleatorio'|'between')
	;

	K_RESIZE
	:'resize'
	;

	K_ORDENAR
	:'sort'
	;

	ModoOrd
	:('asc'|'desc')
	;

	K_BUSQUEDA
	:'search'
	;

	K_TIPOBUSQUEDA
	:('like'|'equals'|'dif')
	;

	K_WHERE
	: 'where'
	;

	K_SPLIT
	: 'split'
	;

	K_BEGIN
	:'begin'
	;

	K_DIR
	:'dir'
	;

	K_UNION
	:'union'
	;

	K_VISIBILIDAD
	: ('private'|'protected'|'public'|'global')
	;

	K_MODIFICADOR
	: ('static'|'abstract'|'constant'|'final'|'virtual')
	;

	K_ARRAY
	:'array'
	;

	K_PROPIEDAD
	: 'property'
	;

	K_GET
	:'get'
	;

	K_SET
	:'set'
	;

	K_VALUE
	:'value'
	;

	K_INITIALIZE
	:'initialize'
	;

	K_FUNC
	:'func'
	;

	K_VOID
	:'void'
	;
	HexLiteral : '0' ('x'|'X') HexDigit+;

	DecimalLiteral : ('0' | '1'..'9' '0'..'9'*);

	OctalLiteral : '0' ('0'..'7')+;

	fragment
	HexDigit : ('0'..'9'|'a'..'f'|'A'..'F');

	fragment
		Letter
	    :  '\u0024' |
	       '\u0041'..'\u005a' |
	       '\u005f' |
	       '\u0061'..'\u007a' |
	       '\u00c0'..'\u00d6' |
	       '\u00d8'..'\u00f6' |
	       '\u00f8'..'\u00ff' |
	       '\u0100'..'\u1fff' |
	       '\u3040'..'\u318f' |
	       '\u3300'..'\u337f' |
	       '\u3400'..'\u3d2d' |
	       '\u4e00'..'\u9fff' |
	       '\uf900'..'\ufaff'
	    ;

	fragment
		Digito
	    :  '\u0030'..'\u0039' |
	       '\u0660'..'\u0669' |
	       '\u06f0'..'\u06f9' |
	       '\u0966'..'\u096f' |
	       '\u09e6'..'\u09ef' |
	       '\u0a66'..'\u0a6f' |
	       '\u0ae6'..'\u0aef' |
	       '\u0b66'..'\u0b6f' |
	       '\u0be7'..'\u0bef' |
	       '\u0c66'..'\u0c6f' |
	       '\u0ce6'..'\u0cef' |
	       '\u0d66'..'\u0d6f' |
	       '\u0e50'..'\u0e59' |
	       '\u0ed0'..'\u0ed9' |
	       '\u1040'..'\u1049'
	   ;

	char
	    :   COMILLA ( EscapeSequence | ~('\''|'\\') ) COMILLA
	    ;

	string
	    :  COMILLA ( EscapeSequence | ~('\''|'\\') )* COMILLA
	    ;

	booleano
	:('true'|'false')
	;

	valor
	: (char|string|DecimalLiteral|booleano|var_local|usar_metodo|qualified_name)
	;

	fragment
		EscapeSequence
		    :   '\\' ('b'|'t'|'n'|'f'|'r'|'\"'|'\''|'\\')
		    |   UnicodeEscape
		    |   OctalEscape
		    ;

	fragment
		OctalEscape
		    :   '\\' ('0'..'3') ('0'..'7') ('0'..'7')
		    |   '\\' ('0'..'7') ('0'..'7')
		    |   '\\' ('0'..'7')
		    ;

	fragment
		UnicodeEscape
		    :   '\\' 'u' HexDigit HexDigit HexDigit HexDigit
		    ;

	WS  
		:  (' '|'\r'|'\t'|'\u000C'|'\n') {$channel=HIDDEN;}
	    ;

	LINE_COMMENT
	    : '#' ~('\n'|'\r')* '\r'? '\n' {$channel=HIDDEN;}
	    ;

	qualified_name
	:   Identificador (CORIZQ valor CORDER)? (PUNTO Identificador (CORIZQ valor CORDER)?)*
	;

	Identificador 
	:   Letter (Letter|Digito)*
	;

	var_local
	: DOUBLEDOT Identificador
	;