class Identificador
	attr_accessor :pos,:id
	def initialize(_pos,_id)
		@pos=_pos
		@id=_id
	end
end

class Token
	attr_accessor :lexema, :categoria
	def initialize(lexema,categoria)
		@lexema=lexema
		@categoria=categoria
	end
end


#Analizador Lexico
	file = File.read 'C:\Users\Jesus\Dropbox\Nanna\VersionEstable\Palabras.txt'
	#file = File.read 'C:\Users\Jesus\Desktop\Nanna Language\Compilador\Palabras.txt'
	eRegular = { 

		"ParIzq"=>/\(/,	
		"ParDer"=>/\)/,
		"CorDer"=>/\]/,
		"CorIzq"=>/\[/,
		"LlaveDer"=>/\}/,
		"LlaveIzq"=>/\{/,
		"coma"=>/\,/,
		"Punto"=>/\./,
		"EOL"=>/(\;)/,
		
		"Delim"=>/\|/,
		"BFalse"=>/\!/,
		"Asignacion"=>/\=/,
		"BTrue"=>/\?/,
		"GlobalSign"=>/\$/,
		"OAritmetico"=>/(\*|\/|\+|\-)/,
		"ORelacional"=>/((\>\=)|(\=\=)|(\<\=)|(\!\=)|(\<)|(\>))/,


		"End"=>/^(end)\s?$/,
		"Imprimir"=>/^(print|puts|write)\s?$/,
		"Nuevo"=>/^(new|create)\s?$/,
		"Declaracion"=>/^(def)\s?$/,
		"Var"=>/^(var)\s?$/,
		"Invocar"=>/^(invoke)\s?$/,
		"Inicializar"=>/^(initialize)\s?$/,
		"Retorno"=>/^(return|break)\s?$/,
		"TipoDato"=>/^(bool|byte|bit|char|double|int|string|float|vector|time|date|point)\s?$/,
		"Visibilidad"=>/^(private|protected|public|global)\s?$/,
		"Modificador"=>/^(static|abstract|constant|final|virtual)\s?$/,
		"AsignacionEspecial"=>/^(add|div|mul|sub|pot|sqrt|copy|del|porcent)\s?$/,
		"Booleano"=>/^(true|false)\s?$/,
		"OperadorLogico"=>/^(and|or|not|nand|nor)\s?$/,

		"Conversion"=>/^(STRING|INT|FLOAT|VAR|TIME|DATE)\s?$/,
		"Try"=>/^(try)\s?$/,
		"Libreria"=>/^(include)\s?$/,
		"Union"=>/^(union)\s?$/,
		"Reference"=>/^(sizeof|typeof|ref)\s?$/,
		"Clase"=>/^(class)\s?$/,
		"Funcion"=>/^(func)\s?$/,
		"Metodo"=>/^(void)\s?$/,
		"Interface"=>/^(interface)\s?$/,
		"EstructuraDatos"=>/^(struct|enum|list|stack|queue|object)\s?$/,
		"Paquete"=>/^(package)\s?$/,
		"Matriz"=>/^(matrix)\s?$/,
		"Array"=>/^(array)\s?$/,
		"Respuesta"=>/^(else|catch|finally)\s?$/,
		#EspaciosOpcionales abajo
		"Condicional"=>/^(if|when)\s?$/,
		"IteradorC"=>/^(for)\s?$/,
		"Do"=>/^(do)\s?$/,
		"Times"=>/^(times)\s?$/,
		"goto"=>/^(goto)\s?$/,
		"Get"=>/^(get)\s?$/,
		"Set"=>/^(set)\s?$/,
		"Sort"=>/^(sort|asc|desc)\s?$/,
		"Leer"=>/^(read)\s?$/,
		"Switch"=>/^(switch)\s?$/,
		"IteradorV"=>/^(until|while)\s?$/,
		"Value"=>/^(null|self|nil|default)\s?$/,
		"RespuestaEspecial"=>/^(elsif)\s?$/,
		"Case"=>/^(case)\s?$/,
		"Propiedad"=>/^(property)\s?$/,
		"Relacion"=>/^(as|is|by)\s?$/,
		"OperacionEspecial"=>/^(sin|cos|cot|tan|asin|acos|atan|log|loge|logn|fac|avg|abs|fraction|max|min|count|res)\s?$/,
		"Busqueda"=>/^(search)\s?$/,
		"Dibuja"=>/^(draw|graphics|color|font|fontsize)\s?$/,
		"EachV"=>/^(each)\s?$/,
		"Requerir"=>/^(require)\s?$/,
		"Implementar"=>/^(implements)\s?$/,
		"Extender"=>/^(extends)\s?$/,
		"Longitud"=>/^(size)\s?$/,
		"Ajustar"=>/^(resize)\s?$/,
		"Inspeccion"=>/^(inspect)\s?$/,
		"Direccion"=>/^(dir)\s?$/,
		"BusquedaL"=>/^(like)\s?$/,
		"BusquedaE"=>/^(equals)\s?$/,
		"Condicion"=>/^(where)\s?$/,
		"Regex"=>/^(regex)\s?$/,
		"PosicionR"=>/^(top|bot|middle)\s?$/,
		"Inicio"=>/^(begin)\s?$/,
		"AccionEstructuras"=>/^(push|pop|remove|next|prev|val|eval)\s?$/,
		"AccionString"=>/^(split|replace|lenght|merge|reverse)\s?$/,
		"AccionNum"=>/^(round|aleatorio|between)\s?$/,
		"DireccionE"=>/^(DIR)\s?$/,
		"AccionSistema"=>/^(beep|help|exit)\s?$/,
		"AccionArchivos"=>/^(file|stream|open|close|readAll)\s?$/,
		"Repeticiones"=>/^(absent|maybe|repeat)\s?$/,
		"Override"=>/^(Override)\s?$/,

		#Especiales
		
		"Sobreescribir"=>/(\@)/,
		"String"=>/(\"(\w| )*\")/,
		"Char"=>/\'(\w)\'/,
		"ILocal"=>/(\:)([A-z]((\d|\w)+)?)/,
		"Comentario"=>/(\#)(.)* ?/,
		"Identificador"=>/([A-z]((\d|\w)+)?)/,
		
		"Numero"=>/(\d+)(\.\d+)?/,
		#"Entero"=>/(\d)(\d)?/,
		#"Digito"=>/(\d)/,
		
		}

	todas=Regexp.new /\n/
	$pila = []
	$tabla_simbolos=[]
	$tokens=[]

	eRegular.each_value do |valor|
		expresion=Regexp.new valor
		todas=Regexp.union(expresion,todas)
	 end

	def CheckForId(id)
		pos=0
		$tabla_simbolos.each do |found|
		if found.id==id
			$pila.push(id+"(id)->"+ pos.to_s)
			return true
			end
			pos+=1
		end
		return false
	end

	file.gsub(todas).map{Regexp.last_match}.each do |_match|
		eRegular.each do |categoria,expresion|
			case _match.to_s
				when Regexp.new(expresion); 
					a=_match.to_s
					x= a.strip
					$tokens.push(Token.new(x,categoria))
					if categoria=="Identificador" or categoria=="ILocal"
						a=x
						if($tabla_simbolos.size==0)
							$pila.push(x+"(id)"+"se guardo en "+$tabla_simbolos.size.to_s)
							$tabla_simbolos.push(Identificador.new($tabla_simbolos.size,x))
						else
							if CheckForId(a)
							else
							$pila.push(x+"(id)"+"se guardo en "+$tabla_simbolos.size.to_s)
							$tabla_simbolos.push(Identificador.new($tabla_simbolos.size,x))
							end
						end
					else
						$pila.push(x  + "|->("+categoria+")")
					end
				break
			end
		end
	end
	
#Imprime Lexico
		pos=0
		$pila.each do |match|
			p (pos+=1).to_s+" "+match
		end

#Imprime Tabla de Simbolos
	p "________________"
	p "Tabla de Simbolos"
	p "pos|Identificador"
	$tabla_simbolos.each do |identificador|
		p " "+identificador.pos.to_s + " |" + " "+identificador.id 
	end