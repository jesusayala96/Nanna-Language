#!/usr/bin/env ruby
#
# Compilador.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Compilador.g
# Generated at: 2017-05-26 10:16:42
#

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!

Failed to load the ANTLR3 runtime library (version 1.10.0):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:

  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?( ANTLR3 ) or begin

  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'

rescue LoadError

  # 2: try to load rubygems if it isn't already loaded
  defined?( Gem ) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end

  # 3: try to activate the antlr3 gem
  begin
    defined?( gem ) and gem( 'antlr3', '~> 1.10.0' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end

  require 'antlr3'

end
# <~~~ end load path setup

module Compilador
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :EOF => -1, :T__80 => 80, :T__81 => 81, :T__82 => 82, 
                   :ASIGNACION => 4, :COMA => 5, :COMILLA => 6, :CORDER => 7, 
                   :CORIZQ => 8, :DELIM => 9, :DOUBLEDOT => 10, :DecimalLiteral => 11, 
                   :Digito => 12, :EOL => 13, :EscapeSequence => 14, :HexDigit => 15, 
                   :HexLiteral => 16, :Identificador => 17, :K_ACCIONARCHIVO => 18, 
                   :K_ACCIONARREGLO => 19, :K_ACCIONSYS => 20, :K_ARRAY => 21, 
                   :K_ASIGNACION => 22, :K_BEGIN => 23, :K_BUSQUEDA => 24, 
                   :K_CLASS => 25, :K_CONVERSION => 26, :K_DEF => 27, :K_DIR => 28, 
                   :K_DO => 29, :K_EACH => 30, :K_ELSE => 31, :K_END => 32, 
                   :K_EXTENDS => 33, :K_FUNC => 34, :K_GET => 35, :K_IF => 36, 
                   :K_IMPLEMENTS => 37, :K_IMPRIMIR => 38, :K_INITIALIZE => 39, 
                   :K_INSPECCIONAR => 40, :K_INTERFACE => 41, :K_INVOKE => 42, 
                   :K_MATEMATICA => 43, :K_MODIFICADOR => 44, :K_NEW => 45, 
                   :K_NUM => 46, :K_ORDENAR => 47, :K_PACKAGE => 48, :K_PROPIEDAD => 49, 
                   :K_REFERENCIA => 50, :K_REQUIRE => 51, :K_RESIZE => 52, 
                   :K_RETORNO => 53, :K_SET => 54, :K_SPLIT => 55, :K_TIMES => 56, 
                   :K_TIPOBUSQUEDA => 57, :K_UNION => 58, :K_VALUE => 59, 
                   :K_VAR => 60, :K_VISIBILIDAD => 61, :K_VOID => 62, :K_WHERE => 63, 
                   :LINE_COMMENT => 64, :LLADER => 65, :LLAIZQ => 66, :LPAR => 67, 
                   :Letter => 68, :ModoOrd => 69, :OP_ARI => 70, :OP_LOG => 71, 
                   :OP_REL => 72, :OctalEscape => 73, :OctalLiteral => 74, 
                   :PUNTO => 75, :RPAR => 76, :TIPO => 77, :UnicodeEscape => 78, 
                   :WS => 79 )


    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "ASIGNACION", "COMA", "COMILLA", "CORDER", "CORIZQ", 
                    "DELIM", "DOUBLEDOT", "DecimalLiteral", "Digito", "EOL", 
                    "EscapeSequence", "HexDigit", "HexLiteral", "Identificador", 
                    "K_ACCIONARCHIVO", "K_ACCIONARREGLO", "K_ACCIONSYS", 
                    "K_ARRAY", "K_ASIGNACION", "K_BEGIN", "K_BUSQUEDA", 
                    "K_CLASS", "K_CONVERSION", "K_DEF", "K_DIR", "K_DO", 
                    "K_EACH", "K_ELSE", "K_END", "K_EXTENDS", "K_FUNC", 
                    "K_GET", "K_IF", "K_IMPLEMENTS", "K_IMPRIMIR", "K_INITIALIZE", 
                    "K_INSPECCIONAR", "K_INTERFACE", "K_INVOKE", "K_MATEMATICA", 
                    "K_MODIFICADOR", "K_NEW", "K_NUM", "K_ORDENAR", "K_PACKAGE", 
                    "K_PROPIEDAD", "K_REFERENCIA", "K_REQUIRE", "K_RESIZE", 
                    "K_RETORNO", "K_SET", "K_SPLIT", "K_TIMES", "K_TIPOBUSQUEDA", 
                    "K_UNION", "K_VALUE", "K_VAR", "K_VISIBILIDAD", "K_VOID", 
                    "K_WHERE", "LINE_COMMENT", "LLADER", "LLAIZQ", "LPAR", 
                    "Letter", "ModoOrd", "OP_ARI", "OP_LOG", "OP_REL", "OctalEscape", 
                    "OctalLiteral", "PUNTO", "RPAR", "TIPO", "UnicodeEscape", 
                    "WS", "'\\\\'", "'false'", "'true'" )


  end


  class Parser < ANTLR3::Parser
    @grammar_home = Compilador
    include ANTLR3::ASTBuilder

    RULE_METHODS = [ :archivo_compilado, :paquete, :librerias, :clase_interface_declaracion, 
                     :clase_declaration, :extends, :implements, :interface_declaration, 
                     :bodyclass, :acciones, :imprimir, :asignacion_especial, 
                     :retorno, :retorno_valor, :conversion_variable, :accion_sistema, 
                     :condicional, :bodyexp, :ciclos, :ciclo_times, :ciclo_each, 
                     :condicion_exp, :condicion, :elseb, :definir_var_local, 
                     :body_var_local, :invocar_metodo_funcion, :parametros, 
                     :crear_objeto, :referencia_objeto, :inspeccionar_objeto, 
                     :usar_metodo, :matematica_especial, :accion_num, :ajuste_array, 
                     :ordenar_arreglo, :busqueda_array, :split, :manejo_archivos, 
                     :manejo, :accion_arreglo, :union, :asignacion, :expresion, 
                     :definir_variables, :definir_variable, :var_exp, :definir_arreglo, 
                     :exp_arreglo, :definir_propiedad, :body_propiedad, 
                     :get, :set, :constructor, :parametros_tipos, :metodos, 
                     :funcion, :metodo, :char, :string, :booleano, :valor, 
                     :qualified_name, :var_local, :synpred78_Compilador, 
                     :synpred79_Compilador, :synpred83_Compilador ].freeze

    include TokenData

    begin
      generated_using( "Compilador.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )
    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -
    ArchivoCompiladoReturnValue = define_return_scope

    #
    # parser rule archivo_compilado
    #
    # (in Compilador.g)
    # 9:1: archivo_compilado : paquete ( librerias )* clase_interface_declaracion ;
    #
    def archivo_compilado
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      return_value = ArchivoCompiladoReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      paquete1 = nil
      librerias2 = nil
      clase_interface_declaracion3 = nil



      begin
      root_0 = @adaptor.create_flat_list


      # at line 10:4: paquete ( librerias )* clase_interface_declaracion
      @state.following.push( TOKENS_FOLLOWING_paquete_IN_archivo_compilado_41 )
      paquete1 = paquete
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, paquete1.tree )
      end

      # at line 10:12: ( librerias )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == K_REQUIRE )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 10:12: librerias
          @state.following.push( TOKENS_FOLLOWING_librerias_IN_archivo_compilado_43 )
          librerias2 = librerias
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, librerias2.tree )
          end


        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      @state.following.push( TOKENS_FOLLOWING_clase_interface_declaracion_IN_archivo_compilado_46 )
      clase_interface_declaracion3 = clase_interface_declaracion
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, clase_interface_declaracion3.tree )
      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )


      end
      return return_value
    end

    PaqueteReturnValue = define_return_scope

    #
    # parser rule paquete
    #
    # (in Compilador.g)
    # 13:1: paquete : K_PACKAGE qualified_name EOL ;
    #
    def paquete
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      return_value = PaqueteReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_PACKAGE4__ = nil
      __EOL6__ = nil
      qualified_name5 = nil


      tree_for_K_PACKAGE4 = nil
      tree_for_EOL6 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 14:4: K_PACKAGE qualified_name EOL
      __K_PACKAGE4__ = match( K_PACKAGE, TOKENS_FOLLOWING_K_PACKAGE_IN_paquete_57 )
      if @state.backtracking == 0
        tree_for_K_PACKAGE4 = @adaptor.create_with_payload( __K_PACKAGE4__ )
        @adaptor.add_child( root_0, tree_for_K_PACKAGE4 )

      end

      @state.following.push( TOKENS_FOLLOWING_qualified_name_IN_paquete_59 )
      qualified_name5 = qualified_name
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, qualified_name5.tree )
      end

      __EOL6__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_paquete_61 )
      if @state.backtracking == 0
        tree_for_EOL6 = @adaptor.create_with_payload( __EOL6__ )
        @adaptor.add_child( root_0, tree_for_EOL6 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )


      end

      return return_value
    end

    LibreriasReturnValue = define_return_scope

    #
    # parser rule librerias
    #
    # (in Compilador.g)
    # 17:1: librerias : K_REQUIRE qualified_name EOL ;
    #
    def librerias
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      return_value = LibreriasReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_REQUIRE7__ = nil
      __EOL9__ = nil
      qualified_name8 = nil


      tree_for_K_REQUIRE7 = nil
      tree_for_EOL9 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 18:4: K_REQUIRE qualified_name EOL
      __K_REQUIRE7__ = match( K_REQUIRE, TOKENS_FOLLOWING_K_REQUIRE_IN_librerias_72 )
      if @state.backtracking == 0
        tree_for_K_REQUIRE7 = @adaptor.create_with_payload( __K_REQUIRE7__ )
        @adaptor.add_child( root_0, tree_for_K_REQUIRE7 )

      end

      @state.following.push( TOKENS_FOLLOWING_qualified_name_IN_librerias_74 )
      qualified_name8 = qualified_name
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, qualified_name8.tree )
      end

      __EOL9__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_librerias_76 )
      if @state.backtracking == 0
        tree_for_EOL9 = @adaptor.create_with_payload( __EOL9__ )
        @adaptor.add_child( root_0, tree_for_EOL9 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 3 )


      end

      return return_value
    end

    ClaseInterfaceDeclaracionReturnValue = define_return_scope

    #
    # parser rule clase_interface_declaracion
    #
    # (in Compilador.g)
    # 21:1: clase_interface_declaracion : ( clase_declaration | interface_declaration ) ;
    #
    def clase_interface_declaracion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      return_value = ClaseInterfaceDeclaracionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      clase_declaration10 = nil
      interface_declaration11 = nil



      begin
      root_0 = @adaptor.create_flat_list


      # at line 22:3: ( clase_declaration | interface_declaration )
      # at line 22:3: ( clase_declaration | interface_declaration )
      alt_2 = 2
      look_2_0 = @input.peek( 1 )

      if ( look_2_0 == K_CLASS )
        alt_2 = 1
      elsif ( look_2_0 == K_INTERFACE )
        alt_2 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 2, 0 )

      end
      case alt_2
      when 1
        # at line 22:4: clase_declaration
        @state.following.push( TOKENS_FOLLOWING_clase_declaration_IN_clase_interface_declaracion_87 )
        clase_declaration10 = clase_declaration
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, clase_declaration10.tree )
        end


      when 2
        # at line 22:22: interface_declaration
        @state.following.push( TOKENS_FOLLOWING_interface_declaration_IN_clase_interface_declaracion_89 )
        interface_declaration11 = interface_declaration
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, interface_declaration11.tree )
        end


      end

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )




      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 4 )


      end

      return return_value
    end

    ClaseDeclarationReturnValue = define_return_scope

    #
    # parser rule clase_declaration
    #
    # (in Compilador.g)
    # 25:1: clase_declaration : K_CLASS Identificador ( extends )? ( implements )? bodyclass K_END ;
    #
    def clase_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      return_value = ClaseDeclarationReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_CLASS12__ = nil
      __Identificador13__ = nil
      __K_END17__ = nil
      extends14 = nil
      implements15 = nil
      bodyclass16 = nil


      tree_for_K_CLASS12 = nil
      tree_for_Identificador13 = nil
      tree_for_K_END17 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 26:4: K_CLASS Identificador ( extends )? ( implements )? bodyclass K_END
      __K_CLASS12__ = match( K_CLASS, TOKENS_FOLLOWING_K_CLASS_IN_clase_declaration_102 )
      if @state.backtracking == 0
        tree_for_K_CLASS12 = @adaptor.create_with_payload( __K_CLASS12__ )
        @adaptor.add_child( root_0, tree_for_K_CLASS12 )

      end

      __Identificador13__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_clase_declaration_104 )
      if @state.backtracking == 0
        tree_for_Identificador13 = @adaptor.create_with_payload( __Identificador13__ )
        @adaptor.add_child( root_0, tree_for_Identificador13 )

      end

      # at line 26:26: ( extends )?
      alt_3 = 2
      look_3_0 = @input.peek( 1 )

      if ( look_3_0 == K_EXTENDS )
        alt_3 = 1
      end
      case alt_3
      when 1
        # at line 26:26: extends
        @state.following.push( TOKENS_FOLLOWING_extends_IN_clase_declaration_106 )
        extends14 = extends
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, extends14.tree )
        end


      end
      # at line 26:35: ( implements )?
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == K_IMPLEMENTS )
        alt_4 = 1
      end
      case alt_4
      when 1
        # at line 26:35: implements
        @state.following.push( TOKENS_FOLLOWING_implements_IN_clase_declaration_109 )
        implements15 = implements
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, implements15.tree )
        end


      end
      @state.following.push( TOKENS_FOLLOWING_bodyclass_IN_clase_declaration_112 )
      bodyclass16 = bodyclass
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, bodyclass16.tree )
      end

      __K_END17__ = match( K_END, TOKENS_FOLLOWING_K_END_IN_clase_declaration_114 )
      if @state.backtracking == 0
        tree_for_K_END17 = @adaptor.create_with_payload( __K_END17__ )
        @adaptor.add_child( root_0, tree_for_K_END17 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 5 )


      end

      return return_value
    end

    ExtendsReturnValue = define_return_scope

    #
    # parser rule extends
    #
    # (in Compilador.g)
    # 29:1: extends : K_EXTENDS Identificador ;
    #
    def extends
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      return_value = ExtendsReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_EXTENDS18__ = nil
      __Identificador19__ = nil


      tree_for_K_EXTENDS18 = nil
      tree_for_Identificador19 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 30:3: K_EXTENDS Identificador
      __K_EXTENDS18__ = match( K_EXTENDS, TOKENS_FOLLOWING_K_EXTENDS_IN_extends_124 )
      if @state.backtracking == 0
        tree_for_K_EXTENDS18 = @adaptor.create_with_payload( __K_EXTENDS18__ )
        @adaptor.add_child( root_0, tree_for_K_EXTENDS18 )

      end

      __Identificador19__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_extends_126 )
      if @state.backtracking == 0
        tree_for_Identificador19 = @adaptor.create_with_payload( __Identificador19__ )
        @adaptor.add_child( root_0, tree_for_Identificador19 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 6 )


      end

      return return_value
    end

    ImplementsReturnValue = define_return_scope

    #
    # parser rule implements
    #
    # (in Compilador.g)
    # 33:1: implements : K_IMPLEMENTS qualified_name ( COMA qualified_name )* ;
    #
    def implements
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      return_value = ImplementsReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_IMPLEMENTS20__ = nil
      __COMA22__ = nil
      qualified_name21 = nil
      qualified_name23 = nil


      tree_for_K_IMPLEMENTS20 = nil
      tree_for_COMA22 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 34:4: K_IMPLEMENTS qualified_name ( COMA qualified_name )*
      __K_IMPLEMENTS20__ = match( K_IMPLEMENTS, TOKENS_FOLLOWING_K_IMPLEMENTS_IN_implements_137 )
      if @state.backtracking == 0
        tree_for_K_IMPLEMENTS20 = @adaptor.create_with_payload( __K_IMPLEMENTS20__ )
        @adaptor.add_child( root_0, tree_for_K_IMPLEMENTS20 )

      end

      @state.following.push( TOKENS_FOLLOWING_qualified_name_IN_implements_139 )
      qualified_name21 = qualified_name
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, qualified_name21.tree )
      end

      # at line 34:32: ( COMA qualified_name )*
      while true # decision 5
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0 == COMA )
          alt_5 = 1

        end
        case alt_5
        when 1
          # at line 34:33: COMA qualified_name
          __COMA22__ = match( COMA, TOKENS_FOLLOWING_COMA_IN_implements_142 )
          if @state.backtracking == 0
            tree_for_COMA22 = @adaptor.create_with_payload( __COMA22__ )
            @adaptor.add_child( root_0, tree_for_COMA22 )

          end

          @state.following.push( TOKENS_FOLLOWING_qualified_name_IN_implements_144 )
          qualified_name23 = qualified_name
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, qualified_name23.tree )
          end


        else
          break # out of loop for decision 5
        end
      end # loop for decision 5


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 7 )


      end

      return return_value
    end

    InterfaceDeclarationReturnValue = define_return_scope

    #
    # parser rule interface_declaration
    #
    # (in Compilador.g)
    # 37:1: interface_declaration : K_INTERFACE Identificador bodyclass K_END ;
    #
    def interface_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      return_value = InterfaceDeclarationReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_INTERFACE24__ = nil
      __Identificador25__ = nil
      __K_END27__ = nil
      bodyclass26 = nil


      tree_for_K_INTERFACE24 = nil
      tree_for_Identificador25 = nil
      tree_for_K_END27 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 38:4: K_INTERFACE Identificador bodyclass K_END
      __K_INTERFACE24__ = match( K_INTERFACE, TOKENS_FOLLOWING_K_INTERFACE_IN_interface_declaration_157 )
      if @state.backtracking == 0
        tree_for_K_INTERFACE24 = @adaptor.create_with_payload( __K_INTERFACE24__ )
        @adaptor.add_child( root_0, tree_for_K_INTERFACE24 )

      end

      __Identificador25__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_interface_declaration_159 )
      if @state.backtracking == 0
        tree_for_Identificador25 = @adaptor.create_with_payload( __Identificador25__ )
        @adaptor.add_child( root_0, tree_for_Identificador25 )

      end

      @state.following.push( TOKENS_FOLLOWING_bodyclass_IN_interface_declaration_161 )
      bodyclass26 = bodyclass
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, bodyclass26.tree )
      end

      __K_END27__ = match( K_END, TOKENS_FOLLOWING_K_END_IN_interface_declaration_163 )
      if @state.backtracking == 0
        tree_for_K_END27 = @adaptor.create_with_payload( __K_END27__ )
        @adaptor.add_child( root_0, tree_for_K_END27 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 8 )


      end

      return return_value
    end

    BodyclassReturnValue = define_return_scope

    #
    # parser rule bodyclass
    #
    # (in Compilador.g)
    # 41:1: bodyclass : ( acciones | definir_variables | definir_arreglo | definir_propiedad | ciclos | clase_interface_declaracion | metodos | constructor )* ;
    #
    def bodyclass
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      return_value = BodyclassReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      acciones28 = nil
      definir_variables29 = nil
      definir_arreglo30 = nil
      definir_propiedad31 = nil
      ciclos32 = nil
      clase_interface_declaracion33 = nil
      metodos34 = nil
      constructor35 = nil



      begin
      root_0 = @adaptor.create_flat_list


      # at line 42:4: ( acciones | definir_variables | definir_arreglo | definir_propiedad | ciclos | clase_interface_declaracion | metodos | constructor )*
      # at line 42:4: ( acciones | definir_variables | definir_arreglo | definir_propiedad | ciclos | clase_interface_declaracion | metodos | constructor )*
      while true # decision 6
        alt_6 = 9
        case look_6 = @input.peek( 1 )
        when COMILLA, K_ACCIONARREGLO, K_ACCIONSYS, K_ASIGNACION, K_BEGIN, K_CONVERSION, K_IMPRIMIR, K_INSPECCIONAR, K_INVOKE, K_MATEMATICA, K_NUM, K_ORDENAR, K_REFERENCIA, K_RESIZE, K_RETORNO, K_SPLIT, LLAIZQ then alt_6 = 1
        when Identificador then look_6_3 = @input.peek( 2 )

        if ( look_6_3 == ASIGNACION || look_6_3 == CORIZQ || look_6_3 == K_WHERE || look_6_3 == PUNTO )
          alt_6 = 1
        elsif ( look_6_3 == K_EACH )
          alt_6 = 5

        end
        when DOUBLEDOT then look_6_4 = @input.peek( 2 )

        if ( look_6_4 == Identificador )
          case look_6 = @input.peek( 3 )
          when ASIGNACION, K_WHERE then alt_6 = 1
          when LPAR then alt_6 = 2
          when K_EACH then alt_6 = 5
          end

        end
        when K_DEF then case look_6 = @input.peek( 2 )
        when K_VAR then alt_6 = 2
        when K_ARRAY then alt_6 = 3
        when K_PROPIEDAD then alt_6 = 4
        when K_FUNC, K_VOID then alt_6 = 7
        when K_INITIALIZE then alt_6 = 8
        end
        when DecimalLiteral then alt_6 = 5
        when K_CLASS, K_INTERFACE then alt_6 = 6
        end
        case alt_6
        when 1
          # at line 42:5: acciones
          @state.following.push( TOKENS_FOLLOWING_acciones_IN_bodyclass_175 )
          acciones28 = acciones
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, acciones28.tree )
          end


        when 2
          # at line 43:4: definir_variables
          @state.following.push( TOKENS_FOLLOWING_definir_variables_IN_bodyclass_180 )
          definir_variables29 = definir_variables
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, definir_variables29.tree )
          end


        when 3
          # at line 44:4: definir_arreglo
          @state.following.push( TOKENS_FOLLOWING_definir_arreglo_IN_bodyclass_185 )
          definir_arreglo30 = definir_arreglo
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, definir_arreglo30.tree )
          end


        when 4
          # at line 45:4: definir_propiedad
          @state.following.push( TOKENS_FOLLOWING_definir_propiedad_IN_bodyclass_190 )
          definir_propiedad31 = definir_propiedad
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, definir_propiedad31.tree )
          end


        when 5
          # at line 46:4: ciclos
          @state.following.push( TOKENS_FOLLOWING_ciclos_IN_bodyclass_195 )
          ciclos32 = ciclos
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, ciclos32.tree )
          end


        when 6
          # at line 47:4: clase_interface_declaracion
          @state.following.push( TOKENS_FOLLOWING_clase_interface_declaracion_IN_bodyclass_200 )
          clase_interface_declaracion33 = clase_interface_declaracion
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, clase_interface_declaracion33.tree )
          end


        when 7
          # at line 48:4: metodos
          @state.following.push( TOKENS_FOLLOWING_metodos_IN_bodyclass_205 )
          metodos34 = metodos
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, metodos34.tree )
          end


        when 8
          # at line 49:4: constructor
          @state.following.push( TOKENS_FOLLOWING_constructor_IN_bodyclass_210 )
          constructor35 = constructor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, constructor35.tree )
          end


        else
          break # out of loop for decision 6
        end
      end # loop for decision 6


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )


      end

      return return_value
    end

    AccionesReturnValue = define_return_scope

    #
    # parser rule acciones
    #
    # (in Compilador.g)
    # 52:1: acciones : ( imprimir | asignacion_especial | retorno | conversion_variable | accion_sistema | condicional | invocar_metodo_funcion | crear_objeto | referencia_objeto | inspeccionar_objeto | matematica_especial | accion_num | ajuste_array | ordenar_arreglo | busqueda_array | split | manejo_archivos | accion_arreglo | union | asignacion );
    #
    def acciones
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      return_value = AccionesReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      imprimir36 = nil
      asignacion_especial37 = nil
      retorno38 = nil
      conversion_variable39 = nil
      accion_sistema40 = nil
      condicional41 = nil
      invocar_metodo_funcion42 = nil
      crear_objeto43 = nil
      referencia_objeto44 = nil
      inspeccionar_objeto45 = nil
      matematica_especial46 = nil
      accion_num47 = nil
      ajuste_array48 = nil
      ordenar_arreglo49 = nil
      busqueda_array50 = nil
      split51 = nil
      manejo_archivos52 = nil
      accion_arreglo53 = nil
      union54 = nil
      asignacion55 = nil



      begin
      # at line 53:2: ( imprimir | asignacion_especial | retorno | conversion_variable | accion_sistema | condicional | invocar_metodo_funcion | crear_objeto | referencia_objeto | inspeccionar_objeto | matematica_especial | accion_num | ajuste_array | ordenar_arreglo | busqueda_array | split | manejo_archivos | accion_arreglo | union | asignacion )
      alt_7 = 20
      case look_7 = @input.peek( 1 )
      when K_IMPRIMIR then alt_7 = 1
      when K_ASIGNACION then alt_7 = 2
      when K_RETORNO then alt_7 = 3
      when K_CONVERSION then alt_7 = 4
      when K_ACCIONSYS then alt_7 = 5
      when LLAIZQ then alt_7 = 6
      when K_INVOKE then alt_7 = 7
      when Identificador then case look_7 = @input.peek( 2 )
      when CORIZQ, PUNTO then alt_7 = 8
      when K_WHERE then alt_7 = 15
      when ASIGNACION then alt_7 = 20
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 7, 8 )

      end
      when K_REFERENCIA then alt_7 = 9
      when K_INSPECCIONAR then alt_7 = 10
      when K_MATEMATICA then alt_7 = 11
      when K_NUM then alt_7 = 12
      when K_RESIZE then alt_7 = 13
      when K_ORDENAR then alt_7 = 14
      when DOUBLEDOT then look_7_15 = @input.peek( 2 )

      if ( look_7_15 == Identificador )
        look_7_23 = @input.peek( 3 )

        if ( look_7_23 == K_WHERE )
          alt_7 = 15
        elsif ( look_7_23 == ASIGNACION )
          alt_7 = 20
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



          raise NoViableAlternative( "", 7, 23 )

        end
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 7, 15 )

      end
      when K_SPLIT then alt_7 = 16
      when K_BEGIN then alt_7 = 17
      when K_ACCIONARREGLO then alt_7 = 18
      when COMILLA then alt_7 = 19
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 7, 0 )

      end
      case alt_7
      when 1
        root_0 = @adaptor.create_flat_list


        # at line 53:4: imprimir
        @state.following.push( TOKENS_FOLLOWING_imprimir_IN_acciones_223 )
        imprimir36 = imprimir
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, imprimir36.tree )
        end


      when 2
        root_0 = @adaptor.create_flat_list


        # at line 54:3: asignacion_especial
        @state.following.push( TOKENS_FOLLOWING_asignacion_especial_IN_acciones_227 )
        asignacion_especial37 = asignacion_especial
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, asignacion_especial37.tree )
        end


      when 3
        root_0 = @adaptor.create_flat_list


        # at line 55:3: retorno
        @state.following.push( TOKENS_FOLLOWING_retorno_IN_acciones_231 )
        retorno38 = retorno
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, retorno38.tree )
        end


      when 4
        root_0 = @adaptor.create_flat_list


        # at line 56:3: conversion_variable
        @state.following.push( TOKENS_FOLLOWING_conversion_variable_IN_acciones_235 )
        conversion_variable39 = conversion_variable
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, conversion_variable39.tree )
        end


      when 5
        root_0 = @adaptor.create_flat_list


        # at line 57:3: accion_sistema
        @state.following.push( TOKENS_FOLLOWING_accion_sistema_IN_acciones_239 )
        accion_sistema40 = accion_sistema
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, accion_sistema40.tree )
        end


      when 6
        root_0 = @adaptor.create_flat_list


        # at line 58:3: condicional
        @state.following.push( TOKENS_FOLLOWING_condicional_IN_acciones_243 )
        condicional41 = condicional
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, condicional41.tree )
        end


      when 7
        root_0 = @adaptor.create_flat_list


        # at line 59:3: invocar_metodo_funcion
        @state.following.push( TOKENS_FOLLOWING_invocar_metodo_funcion_IN_acciones_247 )
        invocar_metodo_funcion42 = invocar_metodo_funcion
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, invocar_metodo_funcion42.tree )
        end


      when 8
        root_0 = @adaptor.create_flat_list


        # at line 60:3: crear_objeto
        @state.following.push( TOKENS_FOLLOWING_crear_objeto_IN_acciones_251 )
        crear_objeto43 = crear_objeto
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, crear_objeto43.tree )
        end


      when 9
        root_0 = @adaptor.create_flat_list


        # at line 61:3: referencia_objeto
        @state.following.push( TOKENS_FOLLOWING_referencia_objeto_IN_acciones_255 )
        referencia_objeto44 = referencia_objeto
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, referencia_objeto44.tree )
        end


      when 10
        root_0 = @adaptor.create_flat_list


        # at line 62:3: inspeccionar_objeto
        @state.following.push( TOKENS_FOLLOWING_inspeccionar_objeto_IN_acciones_259 )
        inspeccionar_objeto45 = inspeccionar_objeto
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, inspeccionar_objeto45.tree )
        end


      when 11
        root_0 = @adaptor.create_flat_list


        # at line 63:3: matematica_especial
        @state.following.push( TOKENS_FOLLOWING_matematica_especial_IN_acciones_263 )
        matematica_especial46 = matematica_especial
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, matematica_especial46.tree )
        end


      when 12
        root_0 = @adaptor.create_flat_list


        # at line 64:3: accion_num
        @state.following.push( TOKENS_FOLLOWING_accion_num_IN_acciones_267 )
        accion_num47 = accion_num
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, accion_num47.tree )
        end


      when 13
        root_0 = @adaptor.create_flat_list


        # at line 65:3: ajuste_array
        @state.following.push( TOKENS_FOLLOWING_ajuste_array_IN_acciones_271 )
        ajuste_array48 = ajuste_array
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, ajuste_array48.tree )
        end


      when 14
        root_0 = @adaptor.create_flat_list


        # at line 66:3: ordenar_arreglo
        @state.following.push( TOKENS_FOLLOWING_ordenar_arreglo_IN_acciones_275 )
        ordenar_arreglo49 = ordenar_arreglo
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, ordenar_arreglo49.tree )
        end


      when 15
        root_0 = @adaptor.create_flat_list


        # at line 67:3: busqueda_array
        @state.following.push( TOKENS_FOLLOWING_busqueda_array_IN_acciones_279 )
        busqueda_array50 = busqueda_array
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, busqueda_array50.tree )
        end


      when 16
        root_0 = @adaptor.create_flat_list


        # at line 68:3: split
        @state.following.push( TOKENS_FOLLOWING_split_IN_acciones_283 )
        split51 = split
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, split51.tree )
        end


      when 17
        root_0 = @adaptor.create_flat_list


        # at line 69:3: manejo_archivos
        @state.following.push( TOKENS_FOLLOWING_manejo_archivos_IN_acciones_287 )
        manejo_archivos52 = manejo_archivos
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, manejo_archivos52.tree )
        end


      when 18
        root_0 = @adaptor.create_flat_list


        # at line 70:3: accion_arreglo
        @state.following.push( TOKENS_FOLLOWING_accion_arreglo_IN_acciones_291 )
        accion_arreglo53 = accion_arreglo
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, accion_arreglo53.tree )
        end


      when 19
        root_0 = @adaptor.create_flat_list


        # at line 71:3: union
        @state.following.push( TOKENS_FOLLOWING_union_IN_acciones_295 )
        union54 = union
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, union54.tree )
        end


      when 20
        root_0 = @adaptor.create_flat_list


        # at line 72:3: asignacion
        @state.following.push( TOKENS_FOLLOWING_asignacion_IN_acciones_299 )
        asignacion55 = asignacion
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, asignacion55.tree )
        end


      end
      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )


      end

      return return_value
    end

    ImprimirReturnValue = define_return_scope

    #
    # parser rule imprimir
    #
    # (in Compilador.g)
    # 75:1: imprimir : K_IMPRIMIR valor EOL ;
    #
    def imprimir
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      return_value = ImprimirReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_IMPRIMIR56__ = nil
      __EOL58__ = nil
      valor57 = nil


      tree_for_K_IMPRIMIR56 = nil
      tree_for_EOL58 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 76:4: K_IMPRIMIR valor EOL
      __K_IMPRIMIR56__ = match( K_IMPRIMIR, TOKENS_FOLLOWING_K_IMPRIMIR_IN_imprimir_310 )
      if @state.backtracking == 0
        tree_for_K_IMPRIMIR56 = @adaptor.create_with_payload( __K_IMPRIMIR56__ )
        @adaptor.add_child( root_0, tree_for_K_IMPRIMIR56 )

      end

      @state.following.push( TOKENS_FOLLOWING_valor_IN_imprimir_312 )
      valor57 = valor
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, valor57.tree )
      end

      __EOL58__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_imprimir_314 )
      if @state.backtracking == 0
        tree_for_EOL58 = @adaptor.create_with_payload( __EOL58__ )
        @adaptor.add_child( root_0, tree_for_EOL58 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 11 )


      end

      return return_value
    end

    AsignacionEspecialReturnValue = define_return_scope

    #
    # parser rule asignacion_especial
    #
    # (in Compilador.g)
    # 79:1: asignacion_especial : K_ASIGNACION LPAR ( Identificador | var_local ) COMA valor RPAR EOL ;
    #
    def asignacion_especial
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      return_value = AsignacionEspecialReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_ASIGNACION59__ = nil
      __LPAR60__ = nil
      __Identificador61__ = nil
      __COMA63__ = nil
      __RPAR65__ = nil
      __EOL66__ = nil
      var_local62 = nil
      valor64 = nil


      tree_for_K_ASIGNACION59 = nil
      tree_for_LPAR60 = nil
      tree_for_Identificador61 = nil
      tree_for_COMA63 = nil
      tree_for_RPAR65 = nil
      tree_for_EOL66 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 80:4: K_ASIGNACION LPAR ( Identificador | var_local ) COMA valor RPAR EOL
      __K_ASIGNACION59__ = match( K_ASIGNACION, TOKENS_FOLLOWING_K_ASIGNACION_IN_asignacion_especial_325 )
      if @state.backtracking == 0
        tree_for_K_ASIGNACION59 = @adaptor.create_with_payload( __K_ASIGNACION59__ )
        @adaptor.add_child( root_0, tree_for_K_ASIGNACION59 )

      end

      __LPAR60__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_asignacion_especial_327 )
      if @state.backtracking == 0
        tree_for_LPAR60 = @adaptor.create_with_payload( __LPAR60__ )
        @adaptor.add_child( root_0, tree_for_LPAR60 )

      end

      # at line 80:22: ( Identificador | var_local )
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == Identificador )
        alt_8 = 1
      elsif ( look_8_0 == DOUBLEDOT )
        alt_8 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 8, 0 )

      end
      case alt_8
      when 1
        # at line 80:23: Identificador
        __Identificador61__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_asignacion_especial_330 )
        if @state.backtracking == 0
          tree_for_Identificador61 = @adaptor.create_with_payload( __Identificador61__ )
          @adaptor.add_child( root_0, tree_for_Identificador61 )

        end


      when 2
        # at line 80:37: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_asignacion_especial_332 )
        var_local62 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local62.tree )
        end


      end
      __COMA63__ = match( COMA, TOKENS_FOLLOWING_COMA_IN_asignacion_especial_335 )
      if @state.backtracking == 0
        tree_for_COMA63 = @adaptor.create_with_payload( __COMA63__ )
        @adaptor.add_child( root_0, tree_for_COMA63 )

      end

      @state.following.push( TOKENS_FOLLOWING_valor_IN_asignacion_especial_337 )
      valor64 = valor
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, valor64.tree )
      end

      __RPAR65__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_asignacion_especial_339 )
      if @state.backtracking == 0
        tree_for_RPAR65 = @adaptor.create_with_payload( __RPAR65__ )
        @adaptor.add_child( root_0, tree_for_RPAR65 )

      end

      __EOL66__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_asignacion_especial_341 )
      if @state.backtracking == 0
        tree_for_EOL66 = @adaptor.create_with_payload( __EOL66__ )
        @adaptor.add_child( root_0, tree_for_EOL66 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 12 )


      end

      return return_value
    end

    RetornoReturnValue = define_return_scope

    #
    # parser rule retorno
    #
    # (in Compilador.g)
    # 83:1: retorno : K_RETORNO EOL ;
    #
    def retorno
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      return_value = RetornoReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_RETORNO67__ = nil
      __EOL68__ = nil


      tree_for_K_RETORNO67 = nil
      tree_for_EOL68 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 84:4: K_RETORNO EOL
      __K_RETORNO67__ = match( K_RETORNO, TOKENS_FOLLOWING_K_RETORNO_IN_retorno_352 )
      if @state.backtracking == 0
        tree_for_K_RETORNO67 = @adaptor.create_with_payload( __K_RETORNO67__ )
        @adaptor.add_child( root_0, tree_for_K_RETORNO67 )

      end

      __EOL68__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_retorno_354 )
      if @state.backtracking == 0
        tree_for_EOL68 = @adaptor.create_with_payload( __EOL68__ )
        @adaptor.add_child( root_0, tree_for_EOL68 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 13 )


      end

      return return_value
    end

    RetornoValorReturnValue = define_return_scope

    #
    # parser rule retorno_valor
    #
    # (in Compilador.g)
    # 86:1: retorno_valor : K_RETORNO valor EOL ;
    #
    def retorno_valor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      return_value = RetornoValorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_RETORNO69__ = nil
      __EOL71__ = nil
      valor70 = nil


      tree_for_K_RETORNO69 = nil
      tree_for_EOL71 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 87:4: K_RETORNO valor EOL
      __K_RETORNO69__ = match( K_RETORNO, TOKENS_FOLLOWING_K_RETORNO_IN_retorno_valor_364 )
      if @state.backtracking == 0
        tree_for_K_RETORNO69 = @adaptor.create_with_payload( __K_RETORNO69__ )
        @adaptor.add_child( root_0, tree_for_K_RETORNO69 )

      end

      @state.following.push( TOKENS_FOLLOWING_valor_IN_retorno_valor_366 )
      valor70 = valor
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, valor70.tree )
      end

      __EOL71__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_retorno_valor_368 )
      if @state.backtracking == 0
        tree_for_EOL71 = @adaptor.create_with_payload( __EOL71__ )
        @adaptor.add_child( root_0, tree_for_EOL71 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 14 )


      end

      return return_value
    end

    ConversionVariableReturnValue = define_return_scope

    #
    # parser rule conversion_variable
    #
    # (in Compilador.g)
    # 90:1: conversion_variable : K_CONVERSION LPAR ( Identificador | var_local ) RPAR EOL ;
    #
    def conversion_variable
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      return_value = ConversionVariableReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_CONVERSION72__ = nil
      __LPAR73__ = nil
      __Identificador74__ = nil
      __RPAR76__ = nil
      __EOL77__ = nil
      var_local75 = nil


      tree_for_K_CONVERSION72 = nil
      tree_for_LPAR73 = nil
      tree_for_Identificador74 = nil
      tree_for_RPAR76 = nil
      tree_for_EOL77 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 91:4: K_CONVERSION LPAR ( Identificador | var_local ) RPAR EOL
      __K_CONVERSION72__ = match( K_CONVERSION, TOKENS_FOLLOWING_K_CONVERSION_IN_conversion_variable_379 )
      if @state.backtracking == 0
        tree_for_K_CONVERSION72 = @adaptor.create_with_payload( __K_CONVERSION72__ )
        @adaptor.add_child( root_0, tree_for_K_CONVERSION72 )

      end

      __LPAR73__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_conversion_variable_381 )
      if @state.backtracking == 0
        tree_for_LPAR73 = @adaptor.create_with_payload( __LPAR73__ )
        @adaptor.add_child( root_0, tree_for_LPAR73 )

      end

      # at line 91:22: ( Identificador | var_local )
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0 == Identificador )
        alt_9 = 1
      elsif ( look_9_0 == DOUBLEDOT )
        alt_9 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 9, 0 )

      end
      case alt_9
      when 1
        # at line 91:23: Identificador
        __Identificador74__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_conversion_variable_384 )
        if @state.backtracking == 0
          tree_for_Identificador74 = @adaptor.create_with_payload( __Identificador74__ )
          @adaptor.add_child( root_0, tree_for_Identificador74 )

        end


      when 2
        # at line 91:37: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_conversion_variable_386 )
        var_local75 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local75.tree )
        end


      end
      __RPAR76__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_conversion_variable_389 )
      if @state.backtracking == 0
        tree_for_RPAR76 = @adaptor.create_with_payload( __RPAR76__ )
        @adaptor.add_child( root_0, tree_for_RPAR76 )

      end

      __EOL77__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_conversion_variable_391 )
      if @state.backtracking == 0
        tree_for_EOL77 = @adaptor.create_with_payload( __EOL77__ )
        @adaptor.add_child( root_0, tree_for_EOL77 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 15 )


      end

      return return_value
    end

    AccionSistemaReturnValue = define_return_scope

    #
    # parser rule accion_sistema
    #
    # (in Compilador.g)
    # 94:1: accion_sistema : K_ACCIONSYS EOL ;
    #
    def accion_sistema
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      return_value = AccionSistemaReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_ACCIONSYS78__ = nil
      __EOL79__ = nil


      tree_for_K_ACCIONSYS78 = nil
      tree_for_EOL79 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 95:4: K_ACCIONSYS EOL
      __K_ACCIONSYS78__ = match( K_ACCIONSYS, TOKENS_FOLLOWING_K_ACCIONSYS_IN_accion_sistema_402 )
      if @state.backtracking == 0
        tree_for_K_ACCIONSYS78 = @adaptor.create_with_payload( __K_ACCIONSYS78__ )
        @adaptor.add_child( root_0, tree_for_K_ACCIONSYS78 )

      end

      __EOL79__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_accion_sistema_404 )
      if @state.backtracking == 0
        tree_for_EOL79 = @adaptor.create_with_payload( __EOL79__ )
        @adaptor.add_child( root_0, tree_for_EOL79 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 16 )


      end

      return return_value
    end

    CondicionalReturnValue = define_return_scope

    #
    # parser rule condicional
    #
    # (in Compilador.g)
    # 98:1: condicional : LLAIZQ bodyexp LLADER K_IF LPAR condicion_exp RPAR ( elseb )? ;
    #
    def condicional
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      return_value = CondicionalReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __LLAIZQ80__ = nil
      __LLADER82__ = nil
      __K_IF83__ = nil
      __LPAR84__ = nil
      __RPAR86__ = nil
      bodyexp81 = nil
      condicion_exp85 = nil
      elseb87 = nil


      tree_for_LLAIZQ80 = nil
      tree_for_LLADER82 = nil
      tree_for_K_IF83 = nil
      tree_for_LPAR84 = nil
      tree_for_RPAR86 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 99:4: LLAIZQ bodyexp LLADER K_IF LPAR condicion_exp RPAR ( elseb )?
      __LLAIZQ80__ = match( LLAIZQ, TOKENS_FOLLOWING_LLAIZQ_IN_condicional_415 )
      if @state.backtracking == 0
        tree_for_LLAIZQ80 = @adaptor.create_with_payload( __LLAIZQ80__ )
        @adaptor.add_child( root_0, tree_for_LLAIZQ80 )

      end

      @state.following.push( TOKENS_FOLLOWING_bodyexp_IN_condicional_417 )
      bodyexp81 = bodyexp
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, bodyexp81.tree )
      end

      __LLADER82__ = match( LLADER, TOKENS_FOLLOWING_LLADER_IN_condicional_419 )
      if @state.backtracking == 0
        tree_for_LLADER82 = @adaptor.create_with_payload( __LLADER82__ )
        @adaptor.add_child( root_0, tree_for_LLADER82 )

      end

      __K_IF83__ = match( K_IF, TOKENS_FOLLOWING_K_IF_IN_condicional_421 )
      if @state.backtracking == 0
        tree_for_K_IF83 = @adaptor.create_with_payload( __K_IF83__ )
        @adaptor.add_child( root_0, tree_for_K_IF83 )

      end

      __LPAR84__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condicional_423 )
      if @state.backtracking == 0
        tree_for_LPAR84 = @adaptor.create_with_payload( __LPAR84__ )
        @adaptor.add_child( root_0, tree_for_LPAR84 )

      end

      @state.following.push( TOKENS_FOLLOWING_condicion_exp_IN_condicional_425 )
      condicion_exp85 = condicion_exp
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, condicion_exp85.tree )
      end

      __RPAR86__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condicional_427 )
      if @state.backtracking == 0
        tree_for_RPAR86 = @adaptor.create_with_payload( __RPAR86__ )
        @adaptor.add_child( root_0, tree_for_RPAR86 )

      end

      # at line 99:55: ( elseb )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == K_ELSE )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 99:55: elseb
        @state.following.push( TOKENS_FOLLOWING_elseb_IN_condicional_429 )
        elseb87 = elseb
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, elseb87.tree )
        end


      end

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 17 )


      end

      return return_value
    end

    BodyexpReturnValue = define_return_scope

    #
    # parser rule bodyexp
    #
    # (in Compilador.g)
    # 102:1: bodyexp : ( acciones | ciclos | definir_var_local | retorno_valor )* ;
    #
    def bodyexp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      return_value = BodyexpReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      acciones88 = nil
      ciclos89 = nil
      definir_var_local90 = nil
      retorno_valor91 = nil



      begin
      root_0 = @adaptor.create_flat_list


      # at line 103:3: ( acciones | ciclos | definir_var_local | retorno_valor )*
      # at line 103:3: ( acciones | ciclos | definir_var_local | retorno_valor )*
      while true # decision 11
        alt_11 = 5
        case look_11 = @input.peek( 1 )
        when COMILLA, K_ACCIONARREGLO, K_ACCIONSYS, K_ASIGNACION, K_BEGIN, K_CONVERSION, K_IMPRIMIR, K_INSPECCIONAR, K_INVOKE, K_MATEMATICA, K_NUM, K_ORDENAR, K_REFERENCIA, K_RESIZE, K_SPLIT, LLAIZQ then alt_11 = 1
        when K_RETORNO then look_11_3 = @input.peek( 2 )

        if ( look_11_3 == EOL )
          alt_11 = 1
        elsif ( look_11_3 == COMILLA || look_11_3.between?( DOUBLEDOT, DecimalLiteral ) || look_11_3 == Identificador || look_11_3.between?( T__81, T__82 ) )
          alt_11 = 4

        end
        when Identificador then look_11_4 = @input.peek( 2 )

        if ( look_11_4 == ASIGNACION || look_11_4 == CORIZQ || look_11_4 == K_WHERE || look_11_4 == PUNTO )
          alt_11 = 1
        elsif ( look_11_4 == K_EACH )
          alt_11 = 2

        end
        when DOUBLEDOT then look_11_5 = @input.peek( 2 )

        if ( look_11_5 == Identificador )
          case look_11 = @input.peek( 3 )
          when ASIGNACION, K_WHERE then alt_11 = 1
          when K_EACH then alt_11 = 2
          when LPAR then alt_11 = 3
          end

        end
        when DecimalLiteral then alt_11 = 2
        end
        case alt_11
        when 1
          # at line 103:4: acciones
          @state.following.push( TOKENS_FOLLOWING_acciones_IN_bodyexp_441 )
          acciones88 = acciones
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, acciones88.tree )
          end


        when 2
          # at line 103:13: ciclos
          @state.following.push( TOKENS_FOLLOWING_ciclos_IN_bodyexp_443 )
          ciclos89 = ciclos
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, ciclos89.tree )
          end


        when 3
          # at line 103:20: definir_var_local
          @state.following.push( TOKENS_FOLLOWING_definir_var_local_IN_bodyexp_445 )
          definir_var_local90 = definir_var_local
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, definir_var_local90.tree )
          end


        when 4
          # at line 103:38: retorno_valor
          @state.following.push( TOKENS_FOLLOWING_retorno_valor_IN_bodyexp_447 )
          retorno_valor91 = retorno_valor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, retorno_valor91.tree )
          end


        else
          break # out of loop for decision 11
        end
      end # loop for decision 11


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 18 )


      end

      return return_value
    end

    CiclosReturnValue = define_return_scope

    #
    # parser rule ciclos
    #
    # (in Compilador.g)
    # 106:1: ciclos : ( ciclo_times | ciclo_each ) ;
    #
    def ciclos
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      return_value = CiclosReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      ciclo_times92 = nil
      ciclo_each93 = nil



      begin
      root_0 = @adaptor.create_flat_list


      # at line 107:4: ( ciclo_times | ciclo_each )
      # at line 107:4: ( ciclo_times | ciclo_each )
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0 == DecimalLiteral )
        alt_12 = 1
      elsif ( look_12_0 == DOUBLEDOT || look_12_0 == Identificador )
        alt_12 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 12, 0 )

      end
      case alt_12
      when 1
        # at line 107:5: ciclo_times
        @state.following.push( TOKENS_FOLLOWING_ciclo_times_IN_ciclos_461 )
        ciclo_times92 = ciclo_times
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, ciclo_times92.tree )
        end


      when 2
        # at line 107:17: ciclo_each
        @state.following.push( TOKENS_FOLLOWING_ciclo_each_IN_ciclos_463 )
        ciclo_each93 = ciclo_each
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, ciclo_each93.tree )
        end


      end

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 19 )


      end

      return return_value
    end

    CicloTimesReturnValue = define_return_scope

    #
    # parser rule ciclo_times
    #
    # (in Compilador.g)
    # 110:1: ciclo_times : DecimalLiteral K_TIMES K_DO LLAIZQ bodyexp LLADER ;
    #
    def ciclo_times
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      return_value = CicloTimesReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __DecimalLiteral94__ = nil
      __K_TIMES95__ = nil
      __K_DO96__ = nil
      __LLAIZQ97__ = nil
      __LLADER99__ = nil
      bodyexp98 = nil


      tree_for_DecimalLiteral94 = nil
      tree_for_K_TIMES95 = nil
      tree_for_K_DO96 = nil
      tree_for_LLAIZQ97 = nil
      tree_for_LLADER99 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 111:4: DecimalLiteral K_TIMES K_DO LLAIZQ bodyexp LLADER
      __DecimalLiteral94__ = match( DecimalLiteral, TOKENS_FOLLOWING_DecimalLiteral_IN_ciclo_times_475 )
      if @state.backtracking == 0
        tree_for_DecimalLiteral94 = @adaptor.create_with_payload( __DecimalLiteral94__ )
        @adaptor.add_child( root_0, tree_for_DecimalLiteral94 )

      end

      __K_TIMES95__ = match( K_TIMES, TOKENS_FOLLOWING_K_TIMES_IN_ciclo_times_477 )
      if @state.backtracking == 0
        tree_for_K_TIMES95 = @adaptor.create_with_payload( __K_TIMES95__ )
        @adaptor.add_child( root_0, tree_for_K_TIMES95 )

      end

      __K_DO96__ = match( K_DO, TOKENS_FOLLOWING_K_DO_IN_ciclo_times_479 )
      if @state.backtracking == 0
        tree_for_K_DO96 = @adaptor.create_with_payload( __K_DO96__ )
        @adaptor.add_child( root_0, tree_for_K_DO96 )

      end

      __LLAIZQ97__ = match( LLAIZQ, TOKENS_FOLLOWING_LLAIZQ_IN_ciclo_times_481 )
      if @state.backtracking == 0
        tree_for_LLAIZQ97 = @adaptor.create_with_payload( __LLAIZQ97__ )
        @adaptor.add_child( root_0, tree_for_LLAIZQ97 )

      end

      @state.following.push( TOKENS_FOLLOWING_bodyexp_IN_ciclo_times_483 )
      bodyexp98 = bodyexp
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, bodyexp98.tree )
      end

      __LLADER99__ = match( LLADER, TOKENS_FOLLOWING_LLADER_IN_ciclo_times_485 )
      if @state.backtracking == 0
        tree_for_LLADER99 = @adaptor.create_with_payload( __LLADER99__ )
        @adaptor.add_child( root_0, tree_for_LLADER99 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 20 )


      end

      return return_value
    end

    CicloEachReturnValue = define_return_scope

    #
    # parser rule ciclo_each
    #
    # (in Compilador.g)
    # 114:1: ciclo_each : ( Identificador | var_local ) K_EACH K_DO DELIM var_local DELIM LLAIZQ bodyexp LLADER ;
    #
    def ciclo_each
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      return_value = CicloEachReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __Identificador100__ = nil
      __K_EACH102__ = nil
      __K_DO103__ = nil
      __DELIM104__ = nil
      __DELIM106__ = nil
      __LLAIZQ107__ = nil
      __LLADER109__ = nil
      var_local101 = nil
      var_local105 = nil
      bodyexp108 = nil


      tree_for_Identificador100 = nil
      tree_for_K_EACH102 = nil
      tree_for_K_DO103 = nil
      tree_for_DELIM104 = nil
      tree_for_DELIM106 = nil
      tree_for_LLAIZQ107 = nil
      tree_for_LLADER109 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 115:4: ( Identificador | var_local ) K_EACH K_DO DELIM var_local DELIM LLAIZQ bodyexp LLADER
      # at line 115:4: ( Identificador | var_local )
      alt_13 = 2
      look_13_0 = @input.peek( 1 )

      if ( look_13_0 == Identificador )
        alt_13 = 1
      elsif ( look_13_0 == DOUBLEDOT )
        alt_13 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 13, 0 )

      end
      case alt_13
      when 1
        # at line 115:5: Identificador
        __Identificador100__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_ciclo_each_497 )
        if @state.backtracking == 0
          tree_for_Identificador100 = @adaptor.create_with_payload( __Identificador100__ )
          @adaptor.add_child( root_0, tree_for_Identificador100 )

        end


      when 2
        # at line 115:19: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_ciclo_each_499 )
        var_local101 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local101.tree )
        end


      end
      __K_EACH102__ = match( K_EACH, TOKENS_FOLLOWING_K_EACH_IN_ciclo_each_502 )
      if @state.backtracking == 0
        tree_for_K_EACH102 = @adaptor.create_with_payload( __K_EACH102__ )
        @adaptor.add_child( root_0, tree_for_K_EACH102 )

      end

      __K_DO103__ = match( K_DO, TOKENS_FOLLOWING_K_DO_IN_ciclo_each_504 )
      if @state.backtracking == 0
        tree_for_K_DO103 = @adaptor.create_with_payload( __K_DO103__ )
        @adaptor.add_child( root_0, tree_for_K_DO103 )

      end

      __DELIM104__ = match( DELIM, TOKENS_FOLLOWING_DELIM_IN_ciclo_each_506 )
      if @state.backtracking == 0
        tree_for_DELIM104 = @adaptor.create_with_payload( __DELIM104__ )
        @adaptor.add_child( root_0, tree_for_DELIM104 )

      end

      @state.following.push( TOKENS_FOLLOWING_var_local_IN_ciclo_each_508 )
      var_local105 = var_local
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, var_local105.tree )
      end

      __DELIM106__ = match( DELIM, TOKENS_FOLLOWING_DELIM_IN_ciclo_each_510 )
      if @state.backtracking == 0
        tree_for_DELIM106 = @adaptor.create_with_payload( __DELIM106__ )
        @adaptor.add_child( root_0, tree_for_DELIM106 )

      end

      __LLAIZQ107__ = match( LLAIZQ, TOKENS_FOLLOWING_LLAIZQ_IN_ciclo_each_512 )
      if @state.backtracking == 0
        tree_for_LLAIZQ107 = @adaptor.create_with_payload( __LLAIZQ107__ )
        @adaptor.add_child( root_0, tree_for_LLAIZQ107 )

      end

      @state.following.push( TOKENS_FOLLOWING_bodyexp_IN_ciclo_each_514 )
      bodyexp108 = bodyexp
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, bodyexp108.tree )
      end

      __LLADER109__ = match( LLADER, TOKENS_FOLLOWING_LLADER_IN_ciclo_each_516 )
      if @state.backtracking == 0
        tree_for_LLADER109 = @adaptor.create_with_payload( __LLADER109__ )
        @adaptor.add_child( root_0, tree_for_LLADER109 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 21 )


      end

      return return_value
    end

    CondicionExpReturnValue = define_return_scope

    #
    # parser rule condicion_exp
    #
    # (in Compilador.g)
    # 118:1: condicion_exp : condicion ( OP_LOG condicion )* ;
    #
    def condicion_exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      return_value = CondicionExpReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __OP_LOG111__ = nil
      condicion110 = nil
      condicion112 = nil


      tree_for_OP_LOG111 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 119:4: condicion ( OP_LOG condicion )*
      @state.following.push( TOKENS_FOLLOWING_condicion_IN_condicion_exp_527 )
      condicion110 = condicion
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, condicion110.tree )
      end

      # at line 119:14: ( OP_LOG condicion )*
      while true # decision 14
        alt_14 = 2
        look_14_0 = @input.peek( 1 )

        if ( look_14_0 == OP_LOG )
          alt_14 = 1

        end
        case alt_14
        when 1
          # at line 119:15: OP_LOG condicion
          __OP_LOG111__ = match( OP_LOG, TOKENS_FOLLOWING_OP_LOG_IN_condicion_exp_530 )
          if @state.backtracking == 0
            tree_for_OP_LOG111 = @adaptor.create_with_payload( __OP_LOG111__ )
            @adaptor.add_child( root_0, tree_for_OP_LOG111 )

          end

          @state.following.push( TOKENS_FOLLOWING_condicion_IN_condicion_exp_532 )
          condicion112 = condicion
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, condicion112.tree )
          end


        else
          break # out of loop for decision 14
        end
      end # loop for decision 14


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 22 )


      end

      return return_value
    end

    CondicionReturnValue = define_return_scope

    #
    # parser rule condicion
    #
    # (in Compilador.g)
    # 122:1: condicion : valor OP_REL valor ;
    #
    def condicion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      return_value = CondicionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __OP_REL114__ = nil
      valor113 = nil
      valor115 = nil


      tree_for_OP_REL114 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 123:4: valor OP_REL valor
      @state.following.push( TOKENS_FOLLOWING_valor_IN_condicion_545 )
      valor113 = valor
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, valor113.tree )
      end

      __OP_REL114__ = match( OP_REL, TOKENS_FOLLOWING_OP_REL_IN_condicion_547 )
      if @state.backtracking == 0
        tree_for_OP_REL114 = @adaptor.create_with_payload( __OP_REL114__ )
        @adaptor.add_child( root_0, tree_for_OP_REL114 )

      end

      @state.following.push( TOKENS_FOLLOWING_valor_IN_condicion_549 )
      valor115 = valor
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, valor115.tree )
      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 23 )


      end

      return return_value
    end

    ElsebReturnValue = define_return_scope

    #
    # parser rule elseb
    #
    # (in Compilador.g)
    # 126:1: elseb : K_ELSE LLAIZQ bodyexp LLADER ;
    #
    def elseb
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      return_value = ElsebReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_ELSE116__ = nil
      __LLAIZQ117__ = nil
      __LLADER119__ = nil
      bodyexp118 = nil


      tree_for_K_ELSE116 = nil
      tree_for_LLAIZQ117 = nil
      tree_for_LLADER119 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 127:4: K_ELSE LLAIZQ bodyexp LLADER
      __K_ELSE116__ = match( K_ELSE, TOKENS_FOLLOWING_K_ELSE_IN_elseb_560 )
      if @state.backtracking == 0
        tree_for_K_ELSE116 = @adaptor.create_with_payload( __K_ELSE116__ )
        @adaptor.add_child( root_0, tree_for_K_ELSE116 )

      end

      __LLAIZQ117__ = match( LLAIZQ, TOKENS_FOLLOWING_LLAIZQ_IN_elseb_562 )
      if @state.backtracking == 0
        tree_for_LLAIZQ117 = @adaptor.create_with_payload( __LLAIZQ117__ )
        @adaptor.add_child( root_0, tree_for_LLAIZQ117 )

      end

      @state.following.push( TOKENS_FOLLOWING_bodyexp_IN_elseb_564 )
      bodyexp118 = bodyexp
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, bodyexp118.tree )
      end

      __LLADER119__ = match( LLADER, TOKENS_FOLLOWING_LLADER_IN_elseb_566 )
      if @state.backtracking == 0
        tree_for_LLADER119 = @adaptor.create_with_payload( __LLADER119__ )
        @adaptor.add_child( root_0, tree_for_LLADER119 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 24 )


      end

      return return_value
    end

    DefinirVarLocalReturnValue = define_return_scope

    #
    # parser rule definir_var_local
    #
    # (in Compilador.g)
    # 130:1: definir_var_local : var_local LPAR body_var_local RPAR EOL ;
    #
    def definir_var_local
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      return_value = DefinirVarLocalReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __LPAR121__ = nil
      __RPAR123__ = nil
      __EOL124__ = nil
      var_local120 = nil
      body_var_local122 = nil


      tree_for_LPAR121 = nil
      tree_for_RPAR123 = nil
      tree_for_EOL124 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 131:4: var_local LPAR body_var_local RPAR EOL
      @state.following.push( TOKENS_FOLLOWING_var_local_IN_definir_var_local_577 )
      var_local120 = var_local
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, var_local120.tree )
      end

      __LPAR121__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_definir_var_local_579 )
      if @state.backtracking == 0
        tree_for_LPAR121 = @adaptor.create_with_payload( __LPAR121__ )
        @adaptor.add_child( root_0, tree_for_LPAR121 )

      end

      @state.following.push( TOKENS_FOLLOWING_body_var_local_IN_definir_var_local_581 )
      body_var_local122 = body_var_local
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, body_var_local122.tree )
      end

      __RPAR123__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_definir_var_local_583 )
      if @state.backtracking == 0
        tree_for_RPAR123 = @adaptor.create_with_payload( __RPAR123__ )
        @adaptor.add_child( root_0, tree_for_RPAR123 )

      end

      __EOL124__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_definir_var_local_585 )
      if @state.backtracking == 0
        tree_for_EOL124 = @adaptor.create_with_payload( __EOL124__ )
        @adaptor.add_child( root_0, tree_for_EOL124 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 25 )


      end

      return return_value
    end

    BodyVarLocalReturnValue = define_return_scope

    #
    # parser rule body_var_local
    #
    # (in Compilador.g)
    # 134:1: body_var_local : TIPO COMA ( valor )? ;
    #
    def body_var_local
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      return_value = BodyVarLocalReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __TIPO125__ = nil
      __COMA126__ = nil
      valor127 = nil


      tree_for_TIPO125 = nil
      tree_for_COMA126 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 135:4: TIPO COMA ( valor )?
      __TIPO125__ = match( TIPO, TOKENS_FOLLOWING_TIPO_IN_body_var_local_596 )
      if @state.backtracking == 0
        tree_for_TIPO125 = @adaptor.create_with_payload( __TIPO125__ )
        @adaptor.add_child( root_0, tree_for_TIPO125 )

      end

      __COMA126__ = match( COMA, TOKENS_FOLLOWING_COMA_IN_body_var_local_598 )
      if @state.backtracking == 0
        tree_for_COMA126 = @adaptor.create_with_payload( __COMA126__ )
        @adaptor.add_child( root_0, tree_for_COMA126 )

      end

      # at line 135:14: ( valor )?
      alt_15 = 2
      look_15_0 = @input.peek( 1 )

      if ( look_15_0 == COMILLA || look_15_0.between?( DOUBLEDOT, DecimalLiteral ) || look_15_0 == Identificador || look_15_0.between?( T__81, T__82 ) )
        alt_15 = 1
      end
      case alt_15
      when 1
        # at line 135:14: valor
        @state.following.push( TOKENS_FOLLOWING_valor_IN_body_var_local_600 )
        valor127 = valor
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, valor127.tree )
        end


      end

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 26 )


      end

      return return_value
    end

    InvocarMetodoFuncionReturnValue = define_return_scope

    #
    # parser rule invocar_metodo_funcion
    #
    # (in Compilador.g)
    # 138:1: invocar_metodo_funcion : K_INVOKE qualified_name LPAR ( parametros )? RPAR EOL ;
    #
    def invocar_metodo_funcion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )


      return_value = InvocarMetodoFuncionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_INVOKE128__ = nil
      __LPAR130__ = nil
      __RPAR132__ = nil
      __EOL133__ = nil
      qualified_name129 = nil
      parametros131 = nil


      tree_for_K_INVOKE128 = nil
      tree_for_LPAR130 = nil
      tree_for_RPAR132 = nil
      tree_for_EOL133 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 139:4: K_INVOKE qualified_name LPAR ( parametros )? RPAR EOL
      __K_INVOKE128__ = match( K_INVOKE, TOKENS_FOLLOWING_K_INVOKE_IN_invocar_metodo_funcion_612 )
      if @state.backtracking == 0
        tree_for_K_INVOKE128 = @adaptor.create_with_payload( __K_INVOKE128__ )
        @adaptor.add_child( root_0, tree_for_K_INVOKE128 )

      end

      @state.following.push( TOKENS_FOLLOWING_qualified_name_IN_invocar_metodo_funcion_614 )
      qualified_name129 = qualified_name
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, qualified_name129.tree )
      end

      __LPAR130__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_invocar_metodo_funcion_616 )
      if @state.backtracking == 0
        tree_for_LPAR130 = @adaptor.create_with_payload( __LPAR130__ )
        @adaptor.add_child( root_0, tree_for_LPAR130 )

      end

      # at line 139:33: ( parametros )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == COMILLA || look_16_0.between?( DOUBLEDOT, DecimalLiteral ) || look_16_0 == Identificador || look_16_0.between?( T__81, T__82 ) )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 139:33: parametros
        @state.following.push( TOKENS_FOLLOWING_parametros_IN_invocar_metodo_funcion_618 )
        parametros131 = parametros
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, parametros131.tree )
        end


      end
      __RPAR132__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_invocar_metodo_funcion_621 )
      if @state.backtracking == 0
        tree_for_RPAR132 = @adaptor.create_with_payload( __RPAR132__ )
        @adaptor.add_child( root_0, tree_for_RPAR132 )

      end

      __EOL133__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_invocar_metodo_funcion_623 )
      if @state.backtracking == 0
        tree_for_EOL133 = @adaptor.create_with_payload( __EOL133__ )
        @adaptor.add_child( root_0, tree_for_EOL133 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 27 )


      end

      return return_value
    end

    ParametrosReturnValue = define_return_scope

    #
    # parser rule parametros
    #
    # (in Compilador.g)
    # 142:1: parametros : valor ( COMA valor )* ;
    #
    def parametros
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )


      return_value = ParametrosReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __COMA135__ = nil
      valor134 = nil
      valor136 = nil


      tree_for_COMA135 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 143:4: valor ( COMA valor )*
      @state.following.push( TOKENS_FOLLOWING_valor_IN_parametros_634 )
      valor134 = valor
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, valor134.tree )
      end

      # at line 143:10: ( COMA valor )*
      while true # decision 17
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0 == COMA )
          alt_17 = 1

        end
        case alt_17
        when 1
          # at line 143:11: COMA valor
          __COMA135__ = match( COMA, TOKENS_FOLLOWING_COMA_IN_parametros_637 )
          if @state.backtracking == 0
            tree_for_COMA135 = @adaptor.create_with_payload( __COMA135__ )
            @adaptor.add_child( root_0, tree_for_COMA135 )

          end

          @state.following.push( TOKENS_FOLLOWING_valor_IN_parametros_639 )
          valor136 = valor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, valor136.tree )
          end


        else
          break # out of loop for decision 17
        end
      end # loop for decision 17


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 28 )


      end

      return return_value
    end

    CrearObjetoReturnValue = define_return_scope

    #
    # parser rule crear_objeto
    #
    # (in Compilador.g)
    # 146:1: crear_objeto : qualified_name PUNTO K_NEW LPAR ( parametros )? RPAR EOL ;
    #
    def crear_objeto
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )


      return_value = CrearObjetoReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __PUNTO138__ = nil
      __K_NEW139__ = nil
      __LPAR140__ = nil
      __RPAR142__ = nil
      __EOL143__ = nil
      qualified_name137 = nil
      parametros141 = nil


      tree_for_PUNTO138 = nil
      tree_for_K_NEW139 = nil
      tree_for_LPAR140 = nil
      tree_for_RPAR142 = nil
      tree_for_EOL143 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 147:4: qualified_name PUNTO K_NEW LPAR ( parametros )? RPAR EOL
      @state.following.push( TOKENS_FOLLOWING_qualified_name_IN_crear_objeto_652 )
      qualified_name137 = qualified_name
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, qualified_name137.tree )
      end

      __PUNTO138__ = match( PUNTO, TOKENS_FOLLOWING_PUNTO_IN_crear_objeto_654 )
      if @state.backtracking == 0
        tree_for_PUNTO138 = @adaptor.create_with_payload( __PUNTO138__ )
        @adaptor.add_child( root_0, tree_for_PUNTO138 )

      end

      __K_NEW139__ = match( K_NEW, TOKENS_FOLLOWING_K_NEW_IN_crear_objeto_656 )
      if @state.backtracking == 0
        tree_for_K_NEW139 = @adaptor.create_with_payload( __K_NEW139__ )
        @adaptor.add_child( root_0, tree_for_K_NEW139 )

      end

      __LPAR140__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_crear_objeto_658 )
      if @state.backtracking == 0
        tree_for_LPAR140 = @adaptor.create_with_payload( __LPAR140__ )
        @adaptor.add_child( root_0, tree_for_LPAR140 )

      end

      # at line 147:36: ( parametros )?
      alt_18 = 2
      look_18_0 = @input.peek( 1 )

      if ( look_18_0 == COMILLA || look_18_0.between?( DOUBLEDOT, DecimalLiteral ) || look_18_0 == Identificador || look_18_0.between?( T__81, T__82 ) )
        alt_18 = 1
      end
      case alt_18
      when 1
        # at line 147:36: parametros
        @state.following.push( TOKENS_FOLLOWING_parametros_IN_crear_objeto_660 )
        parametros141 = parametros
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, parametros141.tree )
        end


      end
      __RPAR142__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_crear_objeto_663 )
      if @state.backtracking == 0
        tree_for_RPAR142 = @adaptor.create_with_payload( __RPAR142__ )
        @adaptor.add_child( root_0, tree_for_RPAR142 )

      end

      __EOL143__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_crear_objeto_665 )
      if @state.backtracking == 0
        tree_for_EOL143 = @adaptor.create_with_payload( __EOL143__ )
        @adaptor.add_child( root_0, tree_for_EOL143 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 29 )


      end

      return return_value
    end

    ReferenciaObjetoReturnValue = define_return_scope

    #
    # parser rule referencia_objeto
    #
    # (in Compilador.g)
    # 150:1: referencia_objeto : K_REFERENCIA LPAR ( Identificador | var_local ) RPAR EOL ;
    #
    def referencia_objeto
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )


      return_value = ReferenciaObjetoReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_REFERENCIA144__ = nil
      __LPAR145__ = nil
      __Identificador146__ = nil
      __RPAR148__ = nil
      __EOL149__ = nil
      var_local147 = nil


      tree_for_K_REFERENCIA144 = nil
      tree_for_LPAR145 = nil
      tree_for_Identificador146 = nil
      tree_for_RPAR148 = nil
      tree_for_EOL149 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 151:4: K_REFERENCIA LPAR ( Identificador | var_local ) RPAR EOL
      __K_REFERENCIA144__ = match( K_REFERENCIA, TOKENS_FOLLOWING_K_REFERENCIA_IN_referencia_objeto_676 )
      if @state.backtracking == 0
        tree_for_K_REFERENCIA144 = @adaptor.create_with_payload( __K_REFERENCIA144__ )
        @adaptor.add_child( root_0, tree_for_K_REFERENCIA144 )

      end

      __LPAR145__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_referencia_objeto_678 )
      if @state.backtracking == 0
        tree_for_LPAR145 = @adaptor.create_with_payload( __LPAR145__ )
        @adaptor.add_child( root_0, tree_for_LPAR145 )

      end

      # at line 151:22: ( Identificador | var_local )
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0 == Identificador )
        alt_19 = 1
      elsif ( look_19_0 == DOUBLEDOT )
        alt_19 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 19, 0 )

      end
      case alt_19
      when 1
        # at line 151:23: Identificador
        __Identificador146__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_referencia_objeto_681 )
        if @state.backtracking == 0
          tree_for_Identificador146 = @adaptor.create_with_payload( __Identificador146__ )
          @adaptor.add_child( root_0, tree_for_Identificador146 )

        end


      when 2
        # at line 151:37: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_referencia_objeto_683 )
        var_local147 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local147.tree )
        end


      end
      __RPAR148__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_referencia_objeto_686 )
      if @state.backtracking == 0
        tree_for_RPAR148 = @adaptor.create_with_payload( __RPAR148__ )
        @adaptor.add_child( root_0, tree_for_RPAR148 )

      end

      __EOL149__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_referencia_objeto_688 )
      if @state.backtracking == 0
        tree_for_EOL149 = @adaptor.create_with_payload( __EOL149__ )
        @adaptor.add_child( root_0, tree_for_EOL149 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 30 )


      end

      return return_value
    end

    InspeccionarObjetoReturnValue = define_return_scope

    #
    # parser rule inspeccionar_objeto
    #
    # (in Compilador.g)
    # 155:1: inspeccionar_objeto : K_INSPECCIONAR LPAR ( Identificador | var_local ) RPAR EOL ;
    #
    def inspeccionar_objeto
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )


      return_value = InspeccionarObjetoReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_INSPECCIONAR150__ = nil
      __LPAR151__ = nil
      __Identificador152__ = nil
      __RPAR154__ = nil
      __EOL155__ = nil
      var_local153 = nil


      tree_for_K_INSPECCIONAR150 = nil
      tree_for_LPAR151 = nil
      tree_for_Identificador152 = nil
      tree_for_RPAR154 = nil
      tree_for_EOL155 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 156:4: K_INSPECCIONAR LPAR ( Identificador | var_local ) RPAR EOL
      __K_INSPECCIONAR150__ = match( K_INSPECCIONAR, TOKENS_FOLLOWING_K_INSPECCIONAR_IN_inspeccionar_objeto_700 )
      if @state.backtracking == 0
        tree_for_K_INSPECCIONAR150 = @adaptor.create_with_payload( __K_INSPECCIONAR150__ )
        @adaptor.add_child( root_0, tree_for_K_INSPECCIONAR150 )

      end

      __LPAR151__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_inspeccionar_objeto_702 )
      if @state.backtracking == 0
        tree_for_LPAR151 = @adaptor.create_with_payload( __LPAR151__ )
        @adaptor.add_child( root_0, tree_for_LPAR151 )

      end

      # at line 156:24: ( Identificador | var_local )
      alt_20 = 2
      look_20_0 = @input.peek( 1 )

      if ( look_20_0 == Identificador )
        alt_20 = 1
      elsif ( look_20_0 == DOUBLEDOT )
        alt_20 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 20, 0 )

      end
      case alt_20
      when 1
        # at line 156:25: Identificador
        __Identificador152__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_inspeccionar_objeto_705 )
        if @state.backtracking == 0
          tree_for_Identificador152 = @adaptor.create_with_payload( __Identificador152__ )
          @adaptor.add_child( root_0, tree_for_Identificador152 )

        end


      when 2
        # at line 156:39: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_inspeccionar_objeto_707 )
        var_local153 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local153.tree )
        end


      end
      __RPAR154__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_inspeccionar_objeto_710 )
      if @state.backtracking == 0
        tree_for_RPAR154 = @adaptor.create_with_payload( __RPAR154__ )
        @adaptor.add_child( root_0, tree_for_RPAR154 )

      end

      __EOL155__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_inspeccionar_objeto_712 )
      if @state.backtracking == 0
        tree_for_EOL155 = @adaptor.create_with_payload( __EOL155__ )
        @adaptor.add_child( root_0, tree_for_EOL155 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 31 )


      end

      return return_value
    end

    UsarMetodoReturnValue = define_return_scope

    #
    # parser rule usar_metodo
    #
    # (in Compilador.g)
    # 159:1: usar_metodo : qualified_name LPAR ( parametros )? RPAR ;
    #
    def usar_metodo
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )


      return_value = UsarMetodoReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __LPAR157__ = nil
      __RPAR159__ = nil
      qualified_name156 = nil
      parametros158 = nil


      tree_for_LPAR157 = nil
      tree_for_RPAR159 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 160:4: qualified_name LPAR ( parametros )? RPAR
      @state.following.push( TOKENS_FOLLOWING_qualified_name_IN_usar_metodo_723 )
      qualified_name156 = qualified_name
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, qualified_name156.tree )
      end

      __LPAR157__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_usar_metodo_725 )
      if @state.backtracking == 0
        tree_for_LPAR157 = @adaptor.create_with_payload( __LPAR157__ )
        @adaptor.add_child( root_0, tree_for_LPAR157 )

      end

      # at line 160:24: ( parametros )?
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == COMILLA || look_21_0.between?( DOUBLEDOT, DecimalLiteral ) || look_21_0 == Identificador || look_21_0.between?( T__81, T__82 ) )
        alt_21 = 1
      end
      case alt_21
      when 1
        # at line 160:24: parametros
        @state.following.push( TOKENS_FOLLOWING_parametros_IN_usar_metodo_727 )
        parametros158 = parametros
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, parametros158.tree )
        end


      end
      __RPAR159__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_usar_metodo_730 )
      if @state.backtracking == 0
        tree_for_RPAR159 = @adaptor.create_with_payload( __RPAR159__ )
        @adaptor.add_child( root_0, tree_for_RPAR159 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 32 )


      end

      return return_value
    end

    MatematicaEspecialReturnValue = define_return_scope

    #
    # parser rule matematica_especial
    #
    # (in Compilador.g)
    # 163:1: matematica_especial : K_MATEMATICA LPAR ( Identificador | var_local ) COMA valor RPAR EOL ;
    #
    def matematica_especial
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )


      return_value = MatematicaEspecialReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_MATEMATICA160__ = nil
      __LPAR161__ = nil
      __Identificador162__ = nil
      __COMA164__ = nil
      __RPAR166__ = nil
      __EOL167__ = nil
      var_local163 = nil
      valor165 = nil


      tree_for_K_MATEMATICA160 = nil
      tree_for_LPAR161 = nil
      tree_for_Identificador162 = nil
      tree_for_COMA164 = nil
      tree_for_RPAR166 = nil
      tree_for_EOL167 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 164:4: K_MATEMATICA LPAR ( Identificador | var_local ) COMA valor RPAR EOL
      __K_MATEMATICA160__ = match( K_MATEMATICA, TOKENS_FOLLOWING_K_MATEMATICA_IN_matematica_especial_741 )
      if @state.backtracking == 0
        tree_for_K_MATEMATICA160 = @adaptor.create_with_payload( __K_MATEMATICA160__ )
        @adaptor.add_child( root_0, tree_for_K_MATEMATICA160 )

      end

      __LPAR161__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_matematica_especial_743 )
      if @state.backtracking == 0
        tree_for_LPAR161 = @adaptor.create_with_payload( __LPAR161__ )
        @adaptor.add_child( root_0, tree_for_LPAR161 )

      end

      # at line 164:22: ( Identificador | var_local )
      alt_22 = 2
      look_22_0 = @input.peek( 1 )

      if ( look_22_0 == Identificador )
        alt_22 = 1
      elsif ( look_22_0 == DOUBLEDOT )
        alt_22 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 22, 0 )

      end
      case alt_22
      when 1
        # at line 164:23: Identificador
        __Identificador162__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_matematica_especial_746 )
        if @state.backtracking == 0
          tree_for_Identificador162 = @adaptor.create_with_payload( __Identificador162__ )
          @adaptor.add_child( root_0, tree_for_Identificador162 )

        end


      when 2
        # at line 164:37: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_matematica_especial_748 )
        var_local163 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local163.tree )
        end


      end
      __COMA164__ = match( COMA, TOKENS_FOLLOWING_COMA_IN_matematica_especial_751 )
      if @state.backtracking == 0
        tree_for_COMA164 = @adaptor.create_with_payload( __COMA164__ )
        @adaptor.add_child( root_0, tree_for_COMA164 )

      end

      @state.following.push( TOKENS_FOLLOWING_valor_IN_matematica_especial_753 )
      valor165 = valor
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, valor165.tree )
      end

      __RPAR166__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_matematica_especial_755 )
      if @state.backtracking == 0
        tree_for_RPAR166 = @adaptor.create_with_payload( __RPAR166__ )
        @adaptor.add_child( root_0, tree_for_RPAR166 )

      end

      __EOL167__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_matematica_especial_757 )
      if @state.backtracking == 0
        tree_for_EOL167 = @adaptor.create_with_payload( __EOL167__ )
        @adaptor.add_child( root_0, tree_for_EOL167 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 33 )


      end

      return return_value
    end

    AccionNumReturnValue = define_return_scope

    #
    # parser rule accion_num
    #
    # (in Compilador.g)
    # 167:1: accion_num : K_NUM LPAR ( Identificador | var_local ) COMA valor RPAR EOL ;
    #
    def accion_num
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )


      return_value = AccionNumReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_NUM168__ = nil
      __LPAR169__ = nil
      __Identificador170__ = nil
      __COMA172__ = nil
      __RPAR174__ = nil
      __EOL175__ = nil
      var_local171 = nil
      valor173 = nil


      tree_for_K_NUM168 = nil
      tree_for_LPAR169 = nil
      tree_for_Identificador170 = nil
      tree_for_COMA172 = nil
      tree_for_RPAR174 = nil
      tree_for_EOL175 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 168:4: K_NUM LPAR ( Identificador | var_local ) COMA valor RPAR EOL
      __K_NUM168__ = match( K_NUM, TOKENS_FOLLOWING_K_NUM_IN_accion_num_768 )
      if @state.backtracking == 0
        tree_for_K_NUM168 = @adaptor.create_with_payload( __K_NUM168__ )
        @adaptor.add_child( root_0, tree_for_K_NUM168 )

      end

      __LPAR169__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_accion_num_770 )
      if @state.backtracking == 0
        tree_for_LPAR169 = @adaptor.create_with_payload( __LPAR169__ )
        @adaptor.add_child( root_0, tree_for_LPAR169 )

      end

      # at line 168:15: ( Identificador | var_local )
      alt_23 = 2
      look_23_0 = @input.peek( 1 )

      if ( look_23_0 == Identificador )
        alt_23 = 1
      elsif ( look_23_0 == DOUBLEDOT )
        alt_23 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 23, 0 )

      end
      case alt_23
      when 1
        # at line 168:16: Identificador
        __Identificador170__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_accion_num_773 )
        if @state.backtracking == 0
          tree_for_Identificador170 = @adaptor.create_with_payload( __Identificador170__ )
          @adaptor.add_child( root_0, tree_for_Identificador170 )

        end


      when 2
        # at line 168:30: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_accion_num_775 )
        var_local171 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local171.tree )
        end


      end
      __COMA172__ = match( COMA, TOKENS_FOLLOWING_COMA_IN_accion_num_778 )
      if @state.backtracking == 0
        tree_for_COMA172 = @adaptor.create_with_payload( __COMA172__ )
        @adaptor.add_child( root_0, tree_for_COMA172 )

      end

      @state.following.push( TOKENS_FOLLOWING_valor_IN_accion_num_780 )
      valor173 = valor
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, valor173.tree )
      end

      __RPAR174__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_accion_num_782 )
      if @state.backtracking == 0
        tree_for_RPAR174 = @adaptor.create_with_payload( __RPAR174__ )
        @adaptor.add_child( root_0, tree_for_RPAR174 )

      end

      __EOL175__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_accion_num_784 )
      if @state.backtracking == 0
        tree_for_EOL175 = @adaptor.create_with_payload( __EOL175__ )
        @adaptor.add_child( root_0, tree_for_EOL175 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 34 )


      end

      return return_value
    end

    AjusteArrayReturnValue = define_return_scope

    #
    # parser rule ajuste_array
    #
    # (in Compilador.g)
    # 171:1: ajuste_array : K_RESIZE LPAR ( Identificador | var_local ) RPAR EOL ;
    #
    def ajuste_array
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )


      return_value = AjusteArrayReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_RESIZE176__ = nil
      __LPAR177__ = nil
      __Identificador178__ = nil
      __RPAR180__ = nil
      __EOL181__ = nil
      var_local179 = nil


      tree_for_K_RESIZE176 = nil
      tree_for_LPAR177 = nil
      tree_for_Identificador178 = nil
      tree_for_RPAR180 = nil
      tree_for_EOL181 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 172:4: K_RESIZE LPAR ( Identificador | var_local ) RPAR EOL
      __K_RESIZE176__ = match( K_RESIZE, TOKENS_FOLLOWING_K_RESIZE_IN_ajuste_array_795 )
      if @state.backtracking == 0
        tree_for_K_RESIZE176 = @adaptor.create_with_payload( __K_RESIZE176__ )
        @adaptor.add_child( root_0, tree_for_K_RESIZE176 )

      end

      __LPAR177__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_ajuste_array_797 )
      if @state.backtracking == 0
        tree_for_LPAR177 = @adaptor.create_with_payload( __LPAR177__ )
        @adaptor.add_child( root_0, tree_for_LPAR177 )

      end

      # at line 172:18: ( Identificador | var_local )
      alt_24 = 2
      look_24_0 = @input.peek( 1 )

      if ( look_24_0 == Identificador )
        alt_24 = 1
      elsif ( look_24_0 == DOUBLEDOT )
        alt_24 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 24, 0 )

      end
      case alt_24
      when 1
        # at line 172:19: Identificador
        __Identificador178__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_ajuste_array_800 )
        if @state.backtracking == 0
          tree_for_Identificador178 = @adaptor.create_with_payload( __Identificador178__ )
          @adaptor.add_child( root_0, tree_for_Identificador178 )

        end


      when 2
        # at line 172:33: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_ajuste_array_802 )
        var_local179 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local179.tree )
        end


      end
      __RPAR180__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_ajuste_array_805 )
      if @state.backtracking == 0
        tree_for_RPAR180 = @adaptor.create_with_payload( __RPAR180__ )
        @adaptor.add_child( root_0, tree_for_RPAR180 )

      end

      __EOL181__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_ajuste_array_807 )
      if @state.backtracking == 0
        tree_for_EOL181 = @adaptor.create_with_payload( __EOL181__ )
        @adaptor.add_child( root_0, tree_for_EOL181 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 35 )


      end

      return return_value
    end

    OrdenarArregloReturnValue = define_return_scope

    #
    # parser rule ordenar_arreglo
    #
    # (in Compilador.g)
    # 175:1: ordenar_arreglo : K_ORDENAR ModoOrd LPAR ( Identificador | var_local ) RPAR EOL ;
    #
    def ordenar_arreglo
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )


      return_value = OrdenarArregloReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_ORDENAR182__ = nil
      __ModoOrd183__ = nil
      __LPAR184__ = nil
      __Identificador185__ = nil
      __RPAR187__ = nil
      __EOL188__ = nil
      var_local186 = nil


      tree_for_K_ORDENAR182 = nil
      tree_for_ModoOrd183 = nil
      tree_for_LPAR184 = nil
      tree_for_Identificador185 = nil
      tree_for_RPAR187 = nil
      tree_for_EOL188 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 176:4: K_ORDENAR ModoOrd LPAR ( Identificador | var_local ) RPAR EOL
      __K_ORDENAR182__ = match( K_ORDENAR, TOKENS_FOLLOWING_K_ORDENAR_IN_ordenar_arreglo_818 )
      if @state.backtracking == 0
        tree_for_K_ORDENAR182 = @adaptor.create_with_payload( __K_ORDENAR182__ )
        @adaptor.add_child( root_0, tree_for_K_ORDENAR182 )

      end

      __ModoOrd183__ = match( ModoOrd, TOKENS_FOLLOWING_ModoOrd_IN_ordenar_arreglo_820 )
      if @state.backtracking == 0
        tree_for_ModoOrd183 = @adaptor.create_with_payload( __ModoOrd183__ )
        @adaptor.add_child( root_0, tree_for_ModoOrd183 )

      end

      __LPAR184__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_ordenar_arreglo_822 )
      if @state.backtracking == 0
        tree_for_LPAR184 = @adaptor.create_with_payload( __LPAR184__ )
        @adaptor.add_child( root_0, tree_for_LPAR184 )

      end

      # at line 176:27: ( Identificador | var_local )
      alt_25 = 2
      look_25_0 = @input.peek( 1 )

      if ( look_25_0 == Identificador )
        alt_25 = 1
      elsif ( look_25_0 == DOUBLEDOT )
        alt_25 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 25, 0 )

      end
      case alt_25
      when 1
        # at line 176:28: Identificador
        __Identificador185__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_ordenar_arreglo_825 )
        if @state.backtracking == 0
          tree_for_Identificador185 = @adaptor.create_with_payload( __Identificador185__ )
          @adaptor.add_child( root_0, tree_for_Identificador185 )

        end


      when 2
        # at line 176:42: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_ordenar_arreglo_827 )
        var_local186 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local186.tree )
        end


      end
      __RPAR187__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_ordenar_arreglo_830 )
      if @state.backtracking == 0
        tree_for_RPAR187 = @adaptor.create_with_payload( __RPAR187__ )
        @adaptor.add_child( root_0, tree_for_RPAR187 )

      end

      __EOL188__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_ordenar_arreglo_832 )
      if @state.backtracking == 0
        tree_for_EOL188 = @adaptor.create_with_payload( __EOL188__ )
        @adaptor.add_child( root_0, tree_for_EOL188 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 36 )


      end

      return return_value
    end

    BusquedaArrayReturnValue = define_return_scope

    #
    # parser rule busqueda_array
    #
    # (in Compilador.g)
    # 179:1: busqueda_array : ( Identificador | var_local ) K_WHERE ( Identificador | var_local ) K_TIPOBUSQUEDA valor EOL ;
    #
    def busqueda_array
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )


      return_value = BusquedaArrayReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __Identificador189__ = nil
      __K_WHERE191__ = nil
      __Identificador192__ = nil
      __K_TIPOBUSQUEDA194__ = nil
      __EOL196__ = nil
      var_local190 = nil
      var_local193 = nil
      valor195 = nil


      tree_for_Identificador189 = nil
      tree_for_K_WHERE191 = nil
      tree_for_Identificador192 = nil
      tree_for_K_TIPOBUSQUEDA194 = nil
      tree_for_EOL196 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 180:4: ( Identificador | var_local ) K_WHERE ( Identificador | var_local ) K_TIPOBUSQUEDA valor EOL
      # at line 180:4: ( Identificador | var_local )
      alt_26 = 2
      look_26_0 = @input.peek( 1 )

      if ( look_26_0 == Identificador )
        alt_26 = 1
      elsif ( look_26_0 == DOUBLEDOT )
        alt_26 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 26, 0 )

      end
      case alt_26
      when 1
        # at line 180:5: Identificador
        __Identificador189__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_busqueda_array_844 )
        if @state.backtracking == 0
          tree_for_Identificador189 = @adaptor.create_with_payload( __Identificador189__ )
          @adaptor.add_child( root_0, tree_for_Identificador189 )

        end


      when 2
        # at line 180:19: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_busqueda_array_846 )
        var_local190 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local190.tree )
        end


      end
      __K_WHERE191__ = match( K_WHERE, TOKENS_FOLLOWING_K_WHERE_IN_busqueda_array_849 )
      if @state.backtracking == 0
        tree_for_K_WHERE191 = @adaptor.create_with_payload( __K_WHERE191__ )
        @adaptor.add_child( root_0, tree_for_K_WHERE191 )

      end

      # at line 180:38: ( Identificador | var_local )
      alt_27 = 2
      look_27_0 = @input.peek( 1 )

      if ( look_27_0 == Identificador )
        alt_27 = 1
      elsif ( look_27_0 == DOUBLEDOT )
        alt_27 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 27, 0 )

      end
      case alt_27
      when 1
        # at line 180:39: Identificador
        __Identificador192__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_busqueda_array_852 )
        if @state.backtracking == 0
          tree_for_Identificador192 = @adaptor.create_with_payload( __Identificador192__ )
          @adaptor.add_child( root_0, tree_for_Identificador192 )

        end


      when 2
        # at line 180:53: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_busqueda_array_854 )
        var_local193 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local193.tree )
        end


      end
      __K_TIPOBUSQUEDA194__ = match( K_TIPOBUSQUEDA, TOKENS_FOLLOWING_K_TIPOBUSQUEDA_IN_busqueda_array_857 )
      if @state.backtracking == 0
        tree_for_K_TIPOBUSQUEDA194 = @adaptor.create_with_payload( __K_TIPOBUSQUEDA194__ )
        @adaptor.add_child( root_0, tree_for_K_TIPOBUSQUEDA194 )

      end

      @state.following.push( TOKENS_FOLLOWING_valor_IN_busqueda_array_859 )
      valor195 = valor
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, valor195.tree )
      end

      __EOL196__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_busqueda_array_861 )
      if @state.backtracking == 0
        tree_for_EOL196 = @adaptor.create_with_payload( __EOL196__ )
        @adaptor.add_child( root_0, tree_for_EOL196 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 37 )


      end

      return return_value
    end

    SplitReturnValue = define_return_scope

    #
    # parser rule split
    #
    # (in Compilador.g)
    # 183:1: split : K_SPLIT LPAR string RPAR ( Identificador | var_local ) EOL ;
    #
    def split
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )


      return_value = SplitReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_SPLIT197__ = nil
      __LPAR198__ = nil
      __RPAR200__ = nil
      __Identificador201__ = nil
      __EOL203__ = nil
      string199 = nil
      var_local202 = nil


      tree_for_K_SPLIT197 = nil
      tree_for_LPAR198 = nil
      tree_for_RPAR200 = nil
      tree_for_Identificador201 = nil
      tree_for_EOL203 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 184:4: K_SPLIT LPAR string RPAR ( Identificador | var_local ) EOL
      __K_SPLIT197__ = match( K_SPLIT, TOKENS_FOLLOWING_K_SPLIT_IN_split_872 )
      if @state.backtracking == 0
        tree_for_K_SPLIT197 = @adaptor.create_with_payload( __K_SPLIT197__ )
        @adaptor.add_child( root_0, tree_for_K_SPLIT197 )

      end

      __LPAR198__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_split_874 )
      if @state.backtracking == 0
        tree_for_LPAR198 = @adaptor.create_with_payload( __LPAR198__ )
        @adaptor.add_child( root_0, tree_for_LPAR198 )

      end

      @state.following.push( TOKENS_FOLLOWING_string_IN_split_876 )
      string199 = string
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, string199.tree )
      end

      __RPAR200__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_split_878 )
      if @state.backtracking == 0
        tree_for_RPAR200 = @adaptor.create_with_payload( __RPAR200__ )
        @adaptor.add_child( root_0, tree_for_RPAR200 )

      end

      # at line 184:29: ( Identificador | var_local )
      alt_28 = 2
      look_28_0 = @input.peek( 1 )

      if ( look_28_0 == Identificador )
        alt_28 = 1
      elsif ( look_28_0 == DOUBLEDOT )
        alt_28 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 28, 0 )

      end
      case alt_28
      when 1
        # at line 184:30: Identificador
        __Identificador201__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_split_881 )
        if @state.backtracking == 0
          tree_for_Identificador201 = @adaptor.create_with_payload( __Identificador201__ )
          @adaptor.add_child( root_0, tree_for_Identificador201 )

        end


      when 2
        # at line 184:44: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_split_883 )
        var_local202 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local202.tree )
        end


      end
      __EOL203__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_split_886 )
      if @state.backtracking == 0
        tree_for_EOL203 = @adaptor.create_with_payload( __EOL203__ )
        @adaptor.add_child( root_0, tree_for_EOL203 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 38 )


      end

      return return_value
    end

    ManejoArchivosReturnValue = define_return_scope

    #
    # parser rule manejo_archivos
    #
    # (in Compilador.g)
    # 187:1: manejo_archivos : K_BEGIN K_DIR LPAR manejo RPAR EOL ;
    #
    def manejo_archivos
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )


      return_value = ManejoArchivosReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_BEGIN204__ = nil
      __K_DIR205__ = nil
      __LPAR206__ = nil
      __RPAR208__ = nil
      __EOL209__ = nil
      manejo207 = nil


      tree_for_K_BEGIN204 = nil
      tree_for_K_DIR205 = nil
      tree_for_LPAR206 = nil
      tree_for_RPAR208 = nil
      tree_for_EOL209 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 188:4: K_BEGIN K_DIR LPAR manejo RPAR EOL
      __K_BEGIN204__ = match( K_BEGIN, TOKENS_FOLLOWING_K_BEGIN_IN_manejo_archivos_897 )
      if @state.backtracking == 0
        tree_for_K_BEGIN204 = @adaptor.create_with_payload( __K_BEGIN204__ )
        @adaptor.add_child( root_0, tree_for_K_BEGIN204 )

      end

      __K_DIR205__ = match( K_DIR, TOKENS_FOLLOWING_K_DIR_IN_manejo_archivos_899 )
      if @state.backtracking == 0
        tree_for_K_DIR205 = @adaptor.create_with_payload( __K_DIR205__ )
        @adaptor.add_child( root_0, tree_for_K_DIR205 )

      end

      __LPAR206__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_manejo_archivos_901 )
      if @state.backtracking == 0
        tree_for_LPAR206 = @adaptor.create_with_payload( __LPAR206__ )
        @adaptor.add_child( root_0, tree_for_LPAR206 )

      end

      @state.following.push( TOKENS_FOLLOWING_manejo_IN_manejo_archivos_903 )
      manejo207 = manejo
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, manejo207.tree )
      end

      __RPAR208__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_manejo_archivos_905 )
      if @state.backtracking == 0
        tree_for_RPAR208 = @adaptor.create_with_payload( __RPAR208__ )
        @adaptor.add_child( root_0, tree_for_RPAR208 )

      end

      __EOL209__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_manejo_archivos_907 )
      if @state.backtracking == 0
        tree_for_EOL209 = @adaptor.create_with_payload( __EOL209__ )
        @adaptor.add_child( root_0, tree_for_EOL209 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 39 )


      end

      return return_value
    end

    ManejoReturnValue = define_return_scope

    #
    # parser rule manejo
    #
    # (in Compilador.g)
    # 191:1: manejo : K_ACCIONARCHIVO COMA string COMA Identificador ;
    #
    def manejo
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )


      return_value = ManejoReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_ACCIONARCHIVO210__ = nil
      __COMA211__ = nil
      __COMA213__ = nil
      __Identificador214__ = nil
      string212 = nil


      tree_for_K_ACCIONARCHIVO210 = nil
      tree_for_COMA211 = nil
      tree_for_COMA213 = nil
      tree_for_Identificador214 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 192:4: K_ACCIONARCHIVO COMA string COMA Identificador
      __K_ACCIONARCHIVO210__ = match( K_ACCIONARCHIVO, TOKENS_FOLLOWING_K_ACCIONARCHIVO_IN_manejo_919 )
      if @state.backtracking == 0
        tree_for_K_ACCIONARCHIVO210 = @adaptor.create_with_payload( __K_ACCIONARCHIVO210__ )
        @adaptor.add_child( root_0, tree_for_K_ACCIONARCHIVO210 )

      end

      __COMA211__ = match( COMA, TOKENS_FOLLOWING_COMA_IN_manejo_921 )
      if @state.backtracking == 0
        tree_for_COMA211 = @adaptor.create_with_payload( __COMA211__ )
        @adaptor.add_child( root_0, tree_for_COMA211 )

      end

      @state.following.push( TOKENS_FOLLOWING_string_IN_manejo_923 )
      string212 = string
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, string212.tree )
      end

      __COMA213__ = match( COMA, TOKENS_FOLLOWING_COMA_IN_manejo_925 )
      if @state.backtracking == 0
        tree_for_COMA213 = @adaptor.create_with_payload( __COMA213__ )
        @adaptor.add_child( root_0, tree_for_COMA213 )

      end

      __Identificador214__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_manejo_928 )
      if @state.backtracking == 0
        tree_for_Identificador214 = @adaptor.create_with_payload( __Identificador214__ )
        @adaptor.add_child( root_0, tree_for_Identificador214 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 40 )


      end

      return return_value
    end

    AccionArregloReturnValue = define_return_scope

    #
    # parser rule accion_arreglo
    #
    # (in Compilador.g)
    # 195:1: accion_arreglo : K_ACCIONARREGLO LPAR ( Identificador | var_local ) COMA valor RPAR EOL ;
    #
    def accion_arreglo
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )


      return_value = AccionArregloReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_ACCIONARREGLO215__ = nil
      __LPAR216__ = nil
      __Identificador217__ = nil
      __COMA219__ = nil
      __RPAR221__ = nil
      __EOL222__ = nil
      var_local218 = nil
      valor220 = nil


      tree_for_K_ACCIONARREGLO215 = nil
      tree_for_LPAR216 = nil
      tree_for_Identificador217 = nil
      tree_for_COMA219 = nil
      tree_for_RPAR221 = nil
      tree_for_EOL222 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 196:4: K_ACCIONARREGLO LPAR ( Identificador | var_local ) COMA valor RPAR EOL
      __K_ACCIONARREGLO215__ = match( K_ACCIONARREGLO, TOKENS_FOLLOWING_K_ACCIONARREGLO_IN_accion_arreglo_939 )
      if @state.backtracking == 0
        tree_for_K_ACCIONARREGLO215 = @adaptor.create_with_payload( __K_ACCIONARREGLO215__ )
        @adaptor.add_child( root_0, tree_for_K_ACCIONARREGLO215 )

      end

      __LPAR216__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_accion_arreglo_941 )
      if @state.backtracking == 0
        tree_for_LPAR216 = @adaptor.create_with_payload( __LPAR216__ )
        @adaptor.add_child( root_0, tree_for_LPAR216 )

      end

      # at line 196:25: ( Identificador | var_local )
      alt_29 = 2
      look_29_0 = @input.peek( 1 )

      if ( look_29_0 == Identificador )
        alt_29 = 1
      elsif ( look_29_0 == DOUBLEDOT )
        alt_29 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 29, 0 )

      end
      case alt_29
      when 1
        # at line 196:26: Identificador
        __Identificador217__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_accion_arreglo_944 )
        if @state.backtracking == 0
          tree_for_Identificador217 = @adaptor.create_with_payload( __Identificador217__ )
          @adaptor.add_child( root_0, tree_for_Identificador217 )

        end


      when 2
        # at line 196:40: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_accion_arreglo_946 )
        var_local218 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local218.tree )
        end


      end
      __COMA219__ = match( COMA, TOKENS_FOLLOWING_COMA_IN_accion_arreglo_949 )
      if @state.backtracking == 0
        tree_for_COMA219 = @adaptor.create_with_payload( __COMA219__ )
        @adaptor.add_child( root_0, tree_for_COMA219 )

      end

      @state.following.push( TOKENS_FOLLOWING_valor_IN_accion_arreglo_951 )
      valor220 = valor
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, valor220.tree )
      end

      __RPAR221__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_accion_arreglo_953 )
      if @state.backtracking == 0
        tree_for_RPAR221 = @adaptor.create_with_payload( __RPAR221__ )
        @adaptor.add_child( root_0, tree_for_RPAR221 )

      end

      __EOL222__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_accion_arreglo_955 )
      if @state.backtracking == 0
        tree_for_EOL222 = @adaptor.create_with_payload( __EOL222__ )
        @adaptor.add_child( root_0, tree_for_EOL222 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 41 )


      end

      return return_value
    end

    UnionReturnValue = define_return_scope

    #
    # parser rule union
    #
    # (in Compilador.g)
    # 199:1: union : string K_UNION LPAR ( Identificador | var_local ) RPAR string EOL ;
    #
    def union
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )


      return_value = UnionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_UNION224__ = nil
      __LPAR225__ = nil
      __Identificador226__ = nil
      __RPAR228__ = nil
      __EOL230__ = nil
      string223 = nil
      var_local227 = nil
      string229 = nil


      tree_for_K_UNION224 = nil
      tree_for_LPAR225 = nil
      tree_for_Identificador226 = nil
      tree_for_RPAR228 = nil
      tree_for_EOL230 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 200:3: string K_UNION LPAR ( Identificador | var_local ) RPAR string EOL
      @state.following.push( TOKENS_FOLLOWING_string_IN_union_965 )
      string223 = string
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, string223.tree )
      end

      __K_UNION224__ = match( K_UNION, TOKENS_FOLLOWING_K_UNION_IN_union_967 )
      if @state.backtracking == 0
        tree_for_K_UNION224 = @adaptor.create_with_payload( __K_UNION224__ )
        @adaptor.add_child( root_0, tree_for_K_UNION224 )

      end

      __LPAR225__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_union_969 )
      if @state.backtracking == 0
        tree_for_LPAR225 = @adaptor.create_with_payload( __LPAR225__ )
        @adaptor.add_child( root_0, tree_for_LPAR225 )

      end

      # at line 200:23: ( Identificador | var_local )
      alt_30 = 2
      look_30_0 = @input.peek( 1 )

      if ( look_30_0 == Identificador )
        alt_30 = 1
      elsif ( look_30_0 == DOUBLEDOT )
        alt_30 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 30, 0 )

      end
      case alt_30
      when 1
        # at line 200:24: Identificador
        __Identificador226__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_union_972 )
        if @state.backtracking == 0
          tree_for_Identificador226 = @adaptor.create_with_payload( __Identificador226__ )
          @adaptor.add_child( root_0, tree_for_Identificador226 )

        end


      when 2
        # at line 200:38: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_union_974 )
        var_local227 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local227.tree )
        end


      end
      __RPAR228__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_union_977 )
      if @state.backtracking == 0
        tree_for_RPAR228 = @adaptor.create_with_payload( __RPAR228__ )
        @adaptor.add_child( root_0, tree_for_RPAR228 )

      end

      @state.following.push( TOKENS_FOLLOWING_string_IN_union_979 )
      string229 = string
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, string229.tree )
      end

      __EOL230__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_union_981 )
      if @state.backtracking == 0
        tree_for_EOL230 = @adaptor.create_with_payload( __EOL230__ )
        @adaptor.add_child( root_0, tree_for_EOL230 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 42 )


      end

      return return_value
    end

    AsignacionReturnValue = define_return_scope

    #
    # parser rule asignacion
    #
    # (in Compilador.g)
    # 203:1: asignacion : ( Identificador | var_local ) ASIGNACION expresion EOL ;
    #
    def asignacion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )


      return_value = AsignacionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __Identificador231__ = nil
      __ASIGNACION233__ = nil
      __EOL235__ = nil
      var_local232 = nil
      expresion234 = nil


      tree_for_Identificador231 = nil
      tree_for_ASIGNACION233 = nil
      tree_for_EOL235 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 204:4: ( Identificador | var_local ) ASIGNACION expresion EOL
      # at line 204:4: ( Identificador | var_local )
      alt_31 = 2
      look_31_0 = @input.peek( 1 )

      if ( look_31_0 == Identificador )
        alt_31 = 1
      elsif ( look_31_0 == DOUBLEDOT )
        alt_31 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 31, 0 )

      end
      case alt_31
      when 1
        # at line 204:5: Identificador
        __Identificador231__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_asignacion_993 )
        if @state.backtracking == 0
          tree_for_Identificador231 = @adaptor.create_with_payload( __Identificador231__ )
          @adaptor.add_child( root_0, tree_for_Identificador231 )

        end


      when 2
        # at line 204:19: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_asignacion_995 )
        var_local232 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local232.tree )
        end


      end
      __ASIGNACION233__ = match( ASIGNACION, TOKENS_FOLLOWING_ASIGNACION_IN_asignacion_998 )
      if @state.backtracking == 0
        tree_for_ASIGNACION233 = @adaptor.create_with_payload( __ASIGNACION233__ )
        @adaptor.add_child( root_0, tree_for_ASIGNACION233 )

      end

      @state.following.push( TOKENS_FOLLOWING_expresion_IN_asignacion_1000 )
      expresion234 = expresion
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, expresion234.tree )
      end

      __EOL235__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_asignacion_1002 )
      if @state.backtracking == 0
        tree_for_EOL235 = @adaptor.create_with_payload( __EOL235__ )
        @adaptor.add_child( root_0, tree_for_EOL235 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 43 )


      end

      return return_value
    end

    ExpresionReturnValue = define_return_scope

    #
    # parser rule expresion
    #
    # (in Compilador.g)
    # 207:1: expresion : valor ( OP_ARI valor )* ;
    #
    def expresion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )


      return_value = ExpresionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __OP_ARI237__ = nil
      valor236 = nil
      valor238 = nil


      tree_for_OP_ARI237 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 208:4: valor ( OP_ARI valor )*
      @state.following.push( TOKENS_FOLLOWING_valor_IN_expresion_1013 )
      valor236 = valor
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, valor236.tree )
      end

      # at line 208:10: ( OP_ARI valor )*
      while true # decision 32
        alt_32 = 2
        look_32_0 = @input.peek( 1 )

        if ( look_32_0 == OP_ARI )
          alt_32 = 1

        end
        case alt_32
        when 1
          # at line 208:11: OP_ARI valor
          __OP_ARI237__ = match( OP_ARI, TOKENS_FOLLOWING_OP_ARI_IN_expresion_1016 )
          if @state.backtracking == 0
            tree_for_OP_ARI237 = @adaptor.create_with_payload( __OP_ARI237__ )
            @adaptor.add_child( root_0, tree_for_OP_ARI237 )

          end

          @state.following.push( TOKENS_FOLLOWING_valor_IN_expresion_1018 )
          valor238 = valor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, valor238.tree )
          end


        else
          break # out of loop for decision 32
        end
      end # loop for decision 32


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 44 )


      end

      return return_value
    end

    DefinirVariablesReturnValue = define_return_scope

    #
    # parser rule definir_variables
    #
    # (in Compilador.g)
    # 211:1: definir_variables : ( definir_variable | definir_var_local ) ;
    #
    def definir_variables
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 45 )


      return_value = DefinirVariablesReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      definir_variable239 = nil
      definir_var_local240 = nil



      begin
      root_0 = @adaptor.create_flat_list


      # at line 212:4: ( definir_variable | definir_var_local )
      # at line 212:4: ( definir_variable | definir_var_local )
      alt_33 = 2
      look_33_0 = @input.peek( 1 )

      if ( look_33_0 == K_DEF )
        alt_33 = 1
      elsif ( look_33_0 == DOUBLEDOT )
        alt_33 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 33, 0 )

      end
      case alt_33
      when 1
        # at line 212:5: definir_variable
        @state.following.push( TOKENS_FOLLOWING_definir_variable_IN_definir_variables_1032 )
        definir_variable239 = definir_variable
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, definir_variable239.tree )
        end


      when 2
        # at line 212:22: definir_var_local
        @state.following.push( TOKENS_FOLLOWING_definir_var_local_IN_definir_variables_1034 )
        definir_var_local240 = definir_var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, definir_var_local240.tree )
        end


      end

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 45 )


      end

      return return_value
    end

    DefinirVariableReturnValue = define_return_scope

    #
    # parser rule definir_variable
    #
    # (in Compilador.g)
    # 215:1: definir_variable : K_DEF K_VAR Identificador LPAR var_exp EOL ;
    #
    def definir_variable
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 46 )


      return_value = DefinirVariableReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_DEF241__ = nil
      __K_VAR242__ = nil
      __Identificador243__ = nil
      __LPAR244__ = nil
      __EOL246__ = nil
      var_exp245 = nil


      tree_for_K_DEF241 = nil
      tree_for_K_VAR242 = nil
      tree_for_Identificador243 = nil
      tree_for_LPAR244 = nil
      tree_for_EOL246 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 216:4: K_DEF K_VAR Identificador LPAR var_exp EOL
      __K_DEF241__ = match( K_DEF, TOKENS_FOLLOWING_K_DEF_IN_definir_variable_1046 )
      if @state.backtracking == 0
        tree_for_K_DEF241 = @adaptor.create_with_payload( __K_DEF241__ )
        @adaptor.add_child( root_0, tree_for_K_DEF241 )

      end

      __K_VAR242__ = match( K_VAR, TOKENS_FOLLOWING_K_VAR_IN_definir_variable_1048 )
      if @state.backtracking == 0
        tree_for_K_VAR242 = @adaptor.create_with_payload( __K_VAR242__ )
        @adaptor.add_child( root_0, tree_for_K_VAR242 )

      end

      __Identificador243__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_definir_variable_1050 )
      if @state.backtracking == 0
        tree_for_Identificador243 = @adaptor.create_with_payload( __Identificador243__ )
        @adaptor.add_child( root_0, tree_for_Identificador243 )

      end

      __LPAR244__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_definir_variable_1052 )
      if @state.backtracking == 0
        tree_for_LPAR244 = @adaptor.create_with_payload( __LPAR244__ )
        @adaptor.add_child( root_0, tree_for_LPAR244 )

      end

      @state.following.push( TOKENS_FOLLOWING_var_exp_IN_definir_variable_1054 )
      var_exp245 = var_exp
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, var_exp245.tree )
      end

      __EOL246__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_definir_variable_1056 )
      if @state.backtracking == 0
        tree_for_EOL246 = @adaptor.create_with_payload( __EOL246__ )
        @adaptor.add_child( root_0, tree_for_EOL246 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 46 )


      end

      return return_value
    end

    VarExpReturnValue = define_return_scope

    #
    # parser rule var_exp
    #
    # (in Compilador.g)
    # 219:1: var_exp : TIPO COMA K_VISIBILIDAD COMA ( K_MODIFICADOR )? COMA ( valor )? RPAR ;
    #
    def var_exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 47 )


      return_value = VarExpReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __TIPO247__ = nil
      __COMA248__ = nil
      __K_VISIBILIDAD249__ = nil
      __COMA250__ = nil
      __K_MODIFICADOR251__ = nil
      __COMA252__ = nil
      __RPAR254__ = nil
      valor253 = nil


      tree_for_TIPO247 = nil
      tree_for_COMA248 = nil
      tree_for_K_VISIBILIDAD249 = nil
      tree_for_COMA250 = nil
      tree_for_K_MODIFICADOR251 = nil
      tree_for_COMA252 = nil
      tree_for_RPAR254 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 220:4: TIPO COMA K_VISIBILIDAD COMA ( K_MODIFICADOR )? COMA ( valor )? RPAR
      __TIPO247__ = match( TIPO, TOKENS_FOLLOWING_TIPO_IN_var_exp_1067 )
      if @state.backtracking == 0
        tree_for_TIPO247 = @adaptor.create_with_payload( __TIPO247__ )
        @adaptor.add_child( root_0, tree_for_TIPO247 )

      end

      __COMA248__ = match( COMA, TOKENS_FOLLOWING_COMA_IN_var_exp_1069 )
      if @state.backtracking == 0
        tree_for_COMA248 = @adaptor.create_with_payload( __COMA248__ )
        @adaptor.add_child( root_0, tree_for_COMA248 )

      end

      __K_VISIBILIDAD249__ = match( K_VISIBILIDAD, TOKENS_FOLLOWING_K_VISIBILIDAD_IN_var_exp_1071 )
      if @state.backtracking == 0
        tree_for_K_VISIBILIDAD249 = @adaptor.create_with_payload( __K_VISIBILIDAD249__ )
        @adaptor.add_child( root_0, tree_for_K_VISIBILIDAD249 )

      end

      __COMA250__ = match( COMA, TOKENS_FOLLOWING_COMA_IN_var_exp_1073 )
      if @state.backtracking == 0
        tree_for_COMA250 = @adaptor.create_with_payload( __COMA250__ )
        @adaptor.add_child( root_0, tree_for_COMA250 )

      end

      # at line 220:33: ( K_MODIFICADOR )?
      alt_34 = 2
      look_34_0 = @input.peek( 1 )

      if ( look_34_0 == K_MODIFICADOR )
        alt_34 = 1
      end
      case alt_34
      when 1
        # at line 220:33: K_MODIFICADOR
        __K_MODIFICADOR251__ = match( K_MODIFICADOR, TOKENS_FOLLOWING_K_MODIFICADOR_IN_var_exp_1075 )
        if @state.backtracking == 0
          tree_for_K_MODIFICADOR251 = @adaptor.create_with_payload( __K_MODIFICADOR251__ )
          @adaptor.add_child( root_0, tree_for_K_MODIFICADOR251 )

        end


      end
      __COMA252__ = match( COMA, TOKENS_FOLLOWING_COMA_IN_var_exp_1078 )
      if @state.backtracking == 0
        tree_for_COMA252 = @adaptor.create_with_payload( __COMA252__ )
        @adaptor.add_child( root_0, tree_for_COMA252 )

      end

      # at line 220:53: ( valor )?
      alt_35 = 2
      look_35_0 = @input.peek( 1 )

      if ( look_35_0 == COMILLA || look_35_0.between?( DOUBLEDOT, DecimalLiteral ) || look_35_0 == Identificador || look_35_0.between?( T__81, T__82 ) )
        alt_35 = 1
      end
      case alt_35
      when 1
        # at line 220:53: valor
        @state.following.push( TOKENS_FOLLOWING_valor_IN_var_exp_1080 )
        valor253 = valor
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, valor253.tree )
        end


      end
      __RPAR254__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_var_exp_1083 )
      if @state.backtracking == 0
        tree_for_RPAR254 = @adaptor.create_with_payload( __RPAR254__ )
        @adaptor.add_child( root_0, tree_for_RPAR254 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 47 )


      end

      return return_value
    end

    DefinirArregloReturnValue = define_return_scope

    #
    # parser rule definir_arreglo
    #
    # (in Compilador.g)
    # 223:1: definir_arreglo : K_DEF K_ARRAY ( Identificador | var_local ) LPAR DecimalLiteral RPAR LLAIZQ exp_arreglo LLADER EOL ;
    #
    def definir_arreglo
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 48 )


      return_value = DefinirArregloReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_DEF255__ = nil
      __K_ARRAY256__ = nil
      __Identificador257__ = nil
      __LPAR259__ = nil
      __DecimalLiteral260__ = nil
      __RPAR261__ = nil
      __LLAIZQ262__ = nil
      __LLADER264__ = nil
      __EOL265__ = nil
      var_local258 = nil
      exp_arreglo263 = nil


      tree_for_K_DEF255 = nil
      tree_for_K_ARRAY256 = nil
      tree_for_Identificador257 = nil
      tree_for_LPAR259 = nil
      tree_for_DecimalLiteral260 = nil
      tree_for_RPAR261 = nil
      tree_for_LLAIZQ262 = nil
      tree_for_LLADER264 = nil
      tree_for_EOL265 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 224:4: K_DEF K_ARRAY ( Identificador | var_local ) LPAR DecimalLiteral RPAR LLAIZQ exp_arreglo LLADER EOL
      __K_DEF255__ = match( K_DEF, TOKENS_FOLLOWING_K_DEF_IN_definir_arreglo_1094 )
      if @state.backtracking == 0
        tree_for_K_DEF255 = @adaptor.create_with_payload( __K_DEF255__ )
        @adaptor.add_child( root_0, tree_for_K_DEF255 )

      end

      __K_ARRAY256__ = match( K_ARRAY, TOKENS_FOLLOWING_K_ARRAY_IN_definir_arreglo_1096 )
      if @state.backtracking == 0
        tree_for_K_ARRAY256 = @adaptor.create_with_payload( __K_ARRAY256__ )
        @adaptor.add_child( root_0, tree_for_K_ARRAY256 )

      end

      # at line 224:18: ( Identificador | var_local )
      alt_36 = 2
      look_36_0 = @input.peek( 1 )

      if ( look_36_0 == Identificador )
        alt_36 = 1
      elsif ( look_36_0 == DOUBLEDOT )
        alt_36 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 36, 0 )

      end
      case alt_36
      when 1
        # at line 224:19: Identificador
        __Identificador257__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_definir_arreglo_1099 )
        if @state.backtracking == 0
          tree_for_Identificador257 = @adaptor.create_with_payload( __Identificador257__ )
          @adaptor.add_child( root_0, tree_for_Identificador257 )

        end


      when 2
        # at line 224:33: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_definir_arreglo_1101 )
        var_local258 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local258.tree )
        end


      end
      __LPAR259__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_definir_arreglo_1104 )
      if @state.backtracking == 0
        tree_for_LPAR259 = @adaptor.create_with_payload( __LPAR259__ )
        @adaptor.add_child( root_0, tree_for_LPAR259 )

      end

      __DecimalLiteral260__ = match( DecimalLiteral, TOKENS_FOLLOWING_DecimalLiteral_IN_definir_arreglo_1106 )
      if @state.backtracking == 0
        tree_for_DecimalLiteral260 = @adaptor.create_with_payload( __DecimalLiteral260__ )
        @adaptor.add_child( root_0, tree_for_DecimalLiteral260 )

      end

      __RPAR261__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_definir_arreglo_1108 )
      if @state.backtracking == 0
        tree_for_RPAR261 = @adaptor.create_with_payload( __RPAR261__ )
        @adaptor.add_child( root_0, tree_for_RPAR261 )

      end

      __LLAIZQ262__ = match( LLAIZQ, TOKENS_FOLLOWING_LLAIZQ_IN_definir_arreglo_1110 )
      if @state.backtracking == 0
        tree_for_LLAIZQ262 = @adaptor.create_with_payload( __LLAIZQ262__ )
        @adaptor.add_child( root_0, tree_for_LLAIZQ262 )

      end

      @state.following.push( TOKENS_FOLLOWING_exp_arreglo_IN_definir_arreglo_1112 )
      exp_arreglo263 = exp_arreglo
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, exp_arreglo263.tree )
      end

      __LLADER264__ = match( LLADER, TOKENS_FOLLOWING_LLADER_IN_definir_arreglo_1114 )
      if @state.backtracking == 0
        tree_for_LLADER264 = @adaptor.create_with_payload( __LLADER264__ )
        @adaptor.add_child( root_0, tree_for_LLADER264 )

      end

      __EOL265__ = match( EOL, TOKENS_FOLLOWING_EOL_IN_definir_arreglo_1116 )
      if @state.backtracking == 0
        tree_for_EOL265 = @adaptor.create_with_payload( __EOL265__ )
        @adaptor.add_child( root_0, tree_for_EOL265 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 48 )


      end

      return return_value
    end

    ExpArregloReturnValue = define_return_scope

    #
    # parser rule exp_arreglo
    #
    # (in Compilador.g)
    # 227:1: exp_arreglo : valor ( COMA valor )* ;
    #
    def exp_arreglo
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 49 )


      return_value = ExpArregloReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __COMA267__ = nil
      valor266 = nil
      valor268 = nil


      tree_for_COMA267 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 228:4: valor ( COMA valor )*
      @state.following.push( TOKENS_FOLLOWING_valor_IN_exp_arreglo_1127 )
      valor266 = valor
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, valor266.tree )
      end

      # at line 228:10: ( COMA valor )*
      while true # decision 37
        alt_37 = 2
        look_37_0 = @input.peek( 1 )

        if ( look_37_0 == COMA )
          alt_37 = 1

        end
        case alt_37
        when 1
          # at line 228:11: COMA valor
          __COMA267__ = match( COMA, TOKENS_FOLLOWING_COMA_IN_exp_arreglo_1130 )
          if @state.backtracking == 0
            tree_for_COMA267 = @adaptor.create_with_payload( __COMA267__ )
            @adaptor.add_child( root_0, tree_for_COMA267 )

          end

          @state.following.push( TOKENS_FOLLOWING_valor_IN_exp_arreglo_1132 )
          valor268 = valor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, valor268.tree )
          end


        else
          break # out of loop for decision 37
        end
      end # loop for decision 37


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 49 )


      end

      return return_value
    end

    DefinirPropiedadReturnValue = define_return_scope

    #
    # parser rule definir_propiedad
    #
    # (in Compilador.g)
    # 231:1: definir_propiedad : K_DEF K_PROPIEDAD Identificador LPAR Identificador RPAR LLAIZQ body_propiedad LLADER ;
    #
    def definir_propiedad
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 50 )


      return_value = DefinirPropiedadReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_DEF269__ = nil
      __K_PROPIEDAD270__ = nil
      __Identificador271__ = nil
      __LPAR272__ = nil
      __Identificador273__ = nil
      __RPAR274__ = nil
      __LLAIZQ275__ = nil
      __LLADER277__ = nil
      body_propiedad276 = nil


      tree_for_K_DEF269 = nil
      tree_for_K_PROPIEDAD270 = nil
      tree_for_Identificador271 = nil
      tree_for_LPAR272 = nil
      tree_for_Identificador273 = nil
      tree_for_RPAR274 = nil
      tree_for_LLAIZQ275 = nil
      tree_for_LLADER277 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 232:4: K_DEF K_PROPIEDAD Identificador LPAR Identificador RPAR LLAIZQ body_propiedad LLADER
      __K_DEF269__ = match( K_DEF, TOKENS_FOLLOWING_K_DEF_IN_definir_propiedad_1145 )
      if @state.backtracking == 0
        tree_for_K_DEF269 = @adaptor.create_with_payload( __K_DEF269__ )
        @adaptor.add_child( root_0, tree_for_K_DEF269 )

      end

      __K_PROPIEDAD270__ = match( K_PROPIEDAD, TOKENS_FOLLOWING_K_PROPIEDAD_IN_definir_propiedad_1147 )
      if @state.backtracking == 0
        tree_for_K_PROPIEDAD270 = @adaptor.create_with_payload( __K_PROPIEDAD270__ )
        @adaptor.add_child( root_0, tree_for_K_PROPIEDAD270 )

      end

      __Identificador271__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_definir_propiedad_1149 )
      if @state.backtracking == 0
        tree_for_Identificador271 = @adaptor.create_with_payload( __Identificador271__ )
        @adaptor.add_child( root_0, tree_for_Identificador271 )

      end

      __LPAR272__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_definir_propiedad_1151 )
      if @state.backtracking == 0
        tree_for_LPAR272 = @adaptor.create_with_payload( __LPAR272__ )
        @adaptor.add_child( root_0, tree_for_LPAR272 )

      end

      __Identificador273__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_definir_propiedad_1153 )
      if @state.backtracking == 0
        tree_for_Identificador273 = @adaptor.create_with_payload( __Identificador273__ )
        @adaptor.add_child( root_0, tree_for_Identificador273 )

      end

      __RPAR274__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_definir_propiedad_1155 )
      if @state.backtracking == 0
        tree_for_RPAR274 = @adaptor.create_with_payload( __RPAR274__ )
        @adaptor.add_child( root_0, tree_for_RPAR274 )

      end

      __LLAIZQ275__ = match( LLAIZQ, TOKENS_FOLLOWING_LLAIZQ_IN_definir_propiedad_1157 )
      if @state.backtracking == 0
        tree_for_LLAIZQ275 = @adaptor.create_with_payload( __LLAIZQ275__ )
        @adaptor.add_child( root_0, tree_for_LLAIZQ275 )

      end

      @state.following.push( TOKENS_FOLLOWING_body_propiedad_IN_definir_propiedad_1159 )
      body_propiedad276 = body_propiedad
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, body_propiedad276.tree )
      end

      __LLADER277__ = match( LLADER, TOKENS_FOLLOWING_LLADER_IN_definir_propiedad_1161 )
      if @state.backtracking == 0
        tree_for_LLADER277 = @adaptor.create_with_payload( __LLADER277__ )
        @adaptor.add_child( root_0, tree_for_LLADER277 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 50 )


      end

      return return_value
    end

    BodyPropiedadReturnValue = define_return_scope

    #
    # parser rule body_propiedad
    #
    # (in Compilador.g)
    # 235:1: body_propiedad : get ( set )? ;
    #
    def body_propiedad
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 51 )


      return_value = BodyPropiedadReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      get278 = nil
      set279 = nil



      begin
      root_0 = @adaptor.create_flat_list


      # at line 236:6: get ( set )?
      @state.following.push( TOKENS_FOLLOWING_get_IN_body_propiedad_1174 )
      get278 = get
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, get278.tree )
      end

      # at line 236:10: ( set )?
      alt_38 = 2
      look_38_0 = @input.peek( 1 )

      if ( look_38_0 == K_SET )
        alt_38 = 1
      end
      case alt_38
      when 1
        # at line 236:10: set
        @state.following.push( TOKENS_FOLLOWING_set_IN_body_propiedad_1176 )
        set279 = set
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, set279.tree )
        end


      end

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 51 )


      end

      return return_value
    end

    GetReturnValue = define_return_scope

    #
    # parser rule get
    #
    # (in Compilador.g)
    # 238:1: get : K_GET LLAIZQ Identificador LLADER ;
    #
    def get
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 52 )


      return_value = GetReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_GET280__ = nil
      __LLAIZQ281__ = nil
      __Identificador282__ = nil
      __LLADER283__ = nil


      tree_for_K_GET280 = nil
      tree_for_LLAIZQ281 = nil
      tree_for_Identificador282 = nil
      tree_for_LLADER283 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 239:3: K_GET LLAIZQ Identificador LLADER
      __K_GET280__ = match( K_GET, TOKENS_FOLLOWING_K_GET_IN_get_1187 )
      if @state.backtracking == 0
        tree_for_K_GET280 = @adaptor.create_with_payload( __K_GET280__ )
        @adaptor.add_child( root_0, tree_for_K_GET280 )

      end

      __LLAIZQ281__ = match( LLAIZQ, TOKENS_FOLLOWING_LLAIZQ_IN_get_1189 )
      if @state.backtracking == 0
        tree_for_LLAIZQ281 = @adaptor.create_with_payload( __LLAIZQ281__ )
        @adaptor.add_child( root_0, tree_for_LLAIZQ281 )

      end

      __Identificador282__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_get_1191 )
      if @state.backtracking == 0
        tree_for_Identificador282 = @adaptor.create_with_payload( __Identificador282__ )
        @adaptor.add_child( root_0, tree_for_Identificador282 )

      end

      __LLADER283__ = match( LLADER, TOKENS_FOLLOWING_LLADER_IN_get_1193 )
      if @state.backtracking == 0
        tree_for_LLADER283 = @adaptor.create_with_payload( __LLADER283__ )
        @adaptor.add_child( root_0, tree_for_LLADER283 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 52 )


      end

      return return_value
    end

    SetReturnValue = define_return_scope

    #
    # parser rule set
    #
    # (in Compilador.g)
    # 242:1: set : K_SET LLAIZQ K_VALUE LLADER ;
    #
    def set
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 53 )


      return_value = SetReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_SET284__ = nil
      __LLAIZQ285__ = nil
      __K_VALUE286__ = nil
      __LLADER287__ = nil


      tree_for_K_SET284 = nil
      tree_for_LLAIZQ285 = nil
      tree_for_K_VALUE286 = nil
      tree_for_LLADER287 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 243:3: K_SET LLAIZQ K_VALUE LLADER
      __K_SET284__ = match( K_SET, TOKENS_FOLLOWING_K_SET_IN_set_1202 )
      if @state.backtracking == 0
        tree_for_K_SET284 = @adaptor.create_with_payload( __K_SET284__ )
        @adaptor.add_child( root_0, tree_for_K_SET284 )

      end

      __LLAIZQ285__ = match( LLAIZQ, TOKENS_FOLLOWING_LLAIZQ_IN_set_1204 )
      if @state.backtracking == 0
        tree_for_LLAIZQ285 = @adaptor.create_with_payload( __LLAIZQ285__ )
        @adaptor.add_child( root_0, tree_for_LLAIZQ285 )

      end

      __K_VALUE286__ = match( K_VALUE, TOKENS_FOLLOWING_K_VALUE_IN_set_1206 )
      if @state.backtracking == 0
        tree_for_K_VALUE286 = @adaptor.create_with_payload( __K_VALUE286__ )
        @adaptor.add_child( root_0, tree_for_K_VALUE286 )

      end

      __LLADER287__ = match( LLADER, TOKENS_FOLLOWING_LLADER_IN_set_1208 )
      if @state.backtracking == 0
        tree_for_LLADER287 = @adaptor.create_with_payload( __LLADER287__ )
        @adaptor.add_child( root_0, tree_for_LLADER287 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 53 )


      end

      return return_value
    end

    ConstructorReturnValue = define_return_scope

    #
    # parser rule constructor
    #
    # (in Compilador.g)
    # 246:1: constructor : K_DEF K_INITIALIZE LPAR ( parametros_tipos )? RPAR LLAIZQ bodyexp LLADER ;
    #
    def constructor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 54 )


      return_value = ConstructorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_DEF288__ = nil
      __K_INITIALIZE289__ = nil
      __LPAR290__ = nil
      __RPAR292__ = nil
      __LLAIZQ293__ = nil
      __LLADER295__ = nil
      parametros_tipos291 = nil
      bodyexp294 = nil


      tree_for_K_DEF288 = nil
      tree_for_K_INITIALIZE289 = nil
      tree_for_LPAR290 = nil
      tree_for_RPAR292 = nil
      tree_for_LLAIZQ293 = nil
      tree_for_LLADER295 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 247:4: K_DEF K_INITIALIZE LPAR ( parametros_tipos )? RPAR LLAIZQ bodyexp LLADER
      __K_DEF288__ = match( K_DEF, TOKENS_FOLLOWING_K_DEF_IN_constructor_1218 )
      if @state.backtracking == 0
        tree_for_K_DEF288 = @adaptor.create_with_payload( __K_DEF288__ )
        @adaptor.add_child( root_0, tree_for_K_DEF288 )

      end

      __K_INITIALIZE289__ = match( K_INITIALIZE, TOKENS_FOLLOWING_K_INITIALIZE_IN_constructor_1220 )
      if @state.backtracking == 0
        tree_for_K_INITIALIZE289 = @adaptor.create_with_payload( __K_INITIALIZE289__ )
        @adaptor.add_child( root_0, tree_for_K_INITIALIZE289 )

      end

      __LPAR290__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_constructor_1222 )
      if @state.backtracking == 0
        tree_for_LPAR290 = @adaptor.create_with_payload( __LPAR290__ )
        @adaptor.add_child( root_0, tree_for_LPAR290 )

      end

      # at line 247:28: ( parametros_tipos )?
      alt_39 = 2
      look_39_0 = @input.peek( 1 )

      if ( look_39_0 == TIPO )
        alt_39 = 1
      end
      case alt_39
      when 1
        # at line 247:28: parametros_tipos
        @state.following.push( TOKENS_FOLLOWING_parametros_tipos_IN_constructor_1224 )
        parametros_tipos291 = parametros_tipos
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, parametros_tipos291.tree )
        end


      end
      __RPAR292__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_constructor_1227 )
      if @state.backtracking == 0
        tree_for_RPAR292 = @adaptor.create_with_payload( __RPAR292__ )
        @adaptor.add_child( root_0, tree_for_RPAR292 )

      end

      __LLAIZQ293__ = match( LLAIZQ, TOKENS_FOLLOWING_LLAIZQ_IN_constructor_1229 )
      if @state.backtracking == 0
        tree_for_LLAIZQ293 = @adaptor.create_with_payload( __LLAIZQ293__ )
        @adaptor.add_child( root_0, tree_for_LLAIZQ293 )

      end

      @state.following.push( TOKENS_FOLLOWING_bodyexp_IN_constructor_1231 )
      bodyexp294 = bodyexp
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, bodyexp294.tree )
      end

      __LLADER295__ = match( LLADER, TOKENS_FOLLOWING_LLADER_IN_constructor_1233 )
      if @state.backtracking == 0
        tree_for_LLADER295 = @adaptor.create_with_payload( __LLADER295__ )
        @adaptor.add_child( root_0, tree_for_LLADER295 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 54 )


      end

      return return_value
    end

    ParametrosTiposReturnValue = define_return_scope

    #
    # parser rule parametros_tipos
    #
    # (in Compilador.g)
    # 250:1: parametros_tipos : TIPO valor ( COMA TIPO valor )* ;
    #
    def parametros_tipos
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 55 )


      return_value = ParametrosTiposReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __TIPO296__ = nil
      __COMA298__ = nil
      __TIPO299__ = nil
      valor297 = nil
      valor300 = nil


      tree_for_TIPO296 = nil
      tree_for_COMA298 = nil
      tree_for_TIPO299 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 251:4: TIPO valor ( COMA TIPO valor )*
      __TIPO296__ = match( TIPO, TOKENS_FOLLOWING_TIPO_IN_parametros_tipos_1244 )
      if @state.backtracking == 0
        tree_for_TIPO296 = @adaptor.create_with_payload( __TIPO296__ )
        @adaptor.add_child( root_0, tree_for_TIPO296 )

      end

      @state.following.push( TOKENS_FOLLOWING_valor_IN_parametros_tipos_1246 )
      valor297 = valor
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, valor297.tree )
      end

      # at line 251:15: ( COMA TIPO valor )*
      while true # decision 40
        alt_40 = 2
        look_40_0 = @input.peek( 1 )

        if ( look_40_0 == COMA )
          alt_40 = 1

        end
        case alt_40
        when 1
          # at line 251:16: COMA TIPO valor
          __COMA298__ = match( COMA, TOKENS_FOLLOWING_COMA_IN_parametros_tipos_1249 )
          if @state.backtracking == 0
            tree_for_COMA298 = @adaptor.create_with_payload( __COMA298__ )
            @adaptor.add_child( root_0, tree_for_COMA298 )

          end

          __TIPO299__ = match( TIPO, TOKENS_FOLLOWING_TIPO_IN_parametros_tipos_1251 )
          if @state.backtracking == 0
            tree_for_TIPO299 = @adaptor.create_with_payload( __TIPO299__ )
            @adaptor.add_child( root_0, tree_for_TIPO299 )

          end

          @state.following.push( TOKENS_FOLLOWING_valor_IN_parametros_tipos_1253 )
          valor300 = valor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child( root_0, valor300.tree )
          end


        else
          break # out of loop for decision 40
        end
      end # loop for decision 40


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 55 )


      end

      return return_value
    end

    MetodosReturnValue = define_return_scope

    #
    # parser rule metodos
    #
    # (in Compilador.g)
    # 254:1: metodos : ( funcion | metodo ) ;
    #
    def metodos
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 56 )


      return_value = MetodosReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      funcion301 = nil
      metodo302 = nil



      begin
      root_0 = @adaptor.create_flat_list


      # at line 255:3: ( funcion | metodo )
      # at line 255:3: ( funcion | metodo )
      alt_41 = 2
      look_41_0 = @input.peek( 1 )

      if ( look_41_0 == K_DEF )
        look_41_1 = @input.peek( 2 )

        if ( look_41_1 == K_FUNC )
          alt_41 = 1
        elsif ( look_41_1 == K_VOID )
          alt_41 = 2
        else
          @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



          raise NoViableAlternative( "", 41, 1 )

        end
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 41, 0 )

      end
      case alt_41
      when 1
        # at line 255:4: funcion
        @state.following.push( TOKENS_FOLLOWING_funcion_IN_metodos_1266 )
        funcion301 = funcion
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, funcion301.tree )
        end


      when 2
        # at line 255:12: metodo
        @state.following.push( TOKENS_FOLLOWING_metodo_IN_metodos_1268 )
        metodo302 = metodo
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, metodo302.tree )
        end


      end

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 56 )


      end

      return return_value
    end

    FuncionReturnValue = define_return_scope

    #
    # parser rule funcion
    #
    # (in Compilador.g)
    # 258:1: funcion : K_DEF K_FUNC Identificador LPAR ( parametros_tipos )? RPAR LLAIZQ bodyexp LLADER ;
    #
    def funcion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 57 )


      return_value = FuncionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_DEF303__ = nil
      __K_FUNC304__ = nil
      __Identificador305__ = nil
      __LPAR306__ = nil
      __RPAR308__ = nil
      __LLAIZQ309__ = nil
      __LLADER311__ = nil
      parametros_tipos307 = nil
      bodyexp310 = nil


      tree_for_K_DEF303 = nil
      tree_for_K_FUNC304 = nil
      tree_for_Identificador305 = nil
      tree_for_LPAR306 = nil
      tree_for_RPAR308 = nil
      tree_for_LLAIZQ309 = nil
      tree_for_LLADER311 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 259:4: K_DEF K_FUNC Identificador LPAR ( parametros_tipos )? RPAR LLAIZQ bodyexp LLADER
      __K_DEF303__ = match( K_DEF, TOKENS_FOLLOWING_K_DEF_IN_funcion_1280 )
      if @state.backtracking == 0
        tree_for_K_DEF303 = @adaptor.create_with_payload( __K_DEF303__ )
        @adaptor.add_child( root_0, tree_for_K_DEF303 )

      end

      __K_FUNC304__ = match( K_FUNC, TOKENS_FOLLOWING_K_FUNC_IN_funcion_1282 )
      if @state.backtracking == 0
        tree_for_K_FUNC304 = @adaptor.create_with_payload( __K_FUNC304__ )
        @adaptor.add_child( root_0, tree_for_K_FUNC304 )

      end

      __Identificador305__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_funcion_1284 )
      if @state.backtracking == 0
        tree_for_Identificador305 = @adaptor.create_with_payload( __Identificador305__ )
        @adaptor.add_child( root_0, tree_for_Identificador305 )

      end

      __LPAR306__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_funcion_1286 )
      if @state.backtracking == 0
        tree_for_LPAR306 = @adaptor.create_with_payload( __LPAR306__ )
        @adaptor.add_child( root_0, tree_for_LPAR306 )

      end

      # at line 259:36: ( parametros_tipos )?
      alt_42 = 2
      look_42_0 = @input.peek( 1 )

      if ( look_42_0 == TIPO )
        alt_42 = 1
      end
      case alt_42
      when 1
        # at line 259:36: parametros_tipos
        @state.following.push( TOKENS_FOLLOWING_parametros_tipos_IN_funcion_1288 )
        parametros_tipos307 = parametros_tipos
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, parametros_tipos307.tree )
        end


      end
      __RPAR308__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_funcion_1291 )
      if @state.backtracking == 0
        tree_for_RPAR308 = @adaptor.create_with_payload( __RPAR308__ )
        @adaptor.add_child( root_0, tree_for_RPAR308 )

      end

      __LLAIZQ309__ = match( LLAIZQ, TOKENS_FOLLOWING_LLAIZQ_IN_funcion_1293 )
      if @state.backtracking == 0
        tree_for_LLAIZQ309 = @adaptor.create_with_payload( __LLAIZQ309__ )
        @adaptor.add_child( root_0, tree_for_LLAIZQ309 )

      end

      @state.following.push( TOKENS_FOLLOWING_bodyexp_IN_funcion_1295 )
      bodyexp310 = bodyexp
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, bodyexp310.tree )
      end

      __LLADER311__ = match( LLADER, TOKENS_FOLLOWING_LLADER_IN_funcion_1297 )
      if @state.backtracking == 0
        tree_for_LLADER311 = @adaptor.create_with_payload( __LLADER311__ )
        @adaptor.add_child( root_0, tree_for_LLADER311 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 57 )


      end

      return return_value
    end

    MetodoReturnValue = define_return_scope

    #
    # parser rule metodo
    #
    # (in Compilador.g)
    # 262:1: metodo : K_DEF K_VOID Identificador LPAR ( parametros_tipos )? RPAR LLAIZQ bodyexp LLADER ;
    #
    def metodo
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 58 )


      return_value = MetodoReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __K_DEF312__ = nil
      __K_VOID313__ = nil
      __Identificador314__ = nil
      __LPAR315__ = nil
      __RPAR317__ = nil
      __LLAIZQ318__ = nil
      __LLADER320__ = nil
      parametros_tipos316 = nil
      bodyexp319 = nil


      tree_for_K_DEF312 = nil
      tree_for_K_VOID313 = nil
      tree_for_Identificador314 = nil
      tree_for_LPAR315 = nil
      tree_for_RPAR317 = nil
      tree_for_LLAIZQ318 = nil
      tree_for_LLADER320 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 263:4: K_DEF K_VOID Identificador LPAR ( parametros_tipos )? RPAR LLAIZQ bodyexp LLADER
      __K_DEF312__ = match( K_DEF, TOKENS_FOLLOWING_K_DEF_IN_metodo_1308 )
      if @state.backtracking == 0
        tree_for_K_DEF312 = @adaptor.create_with_payload( __K_DEF312__ )
        @adaptor.add_child( root_0, tree_for_K_DEF312 )

      end

      __K_VOID313__ = match( K_VOID, TOKENS_FOLLOWING_K_VOID_IN_metodo_1310 )
      if @state.backtracking == 0
        tree_for_K_VOID313 = @adaptor.create_with_payload( __K_VOID313__ )
        @adaptor.add_child( root_0, tree_for_K_VOID313 )

      end

      __Identificador314__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_metodo_1312 )
      if @state.backtracking == 0
        tree_for_Identificador314 = @adaptor.create_with_payload( __Identificador314__ )
        @adaptor.add_child( root_0, tree_for_Identificador314 )

      end

      __LPAR315__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_metodo_1314 )
      if @state.backtracking == 0
        tree_for_LPAR315 = @adaptor.create_with_payload( __LPAR315__ )
        @adaptor.add_child( root_0, tree_for_LPAR315 )

      end

      # at line 263:36: ( parametros_tipos )?
      alt_43 = 2
      look_43_0 = @input.peek( 1 )

      if ( look_43_0 == TIPO )
        alt_43 = 1
      end
      case alt_43
      when 1
        # at line 263:36: parametros_tipos
        @state.following.push( TOKENS_FOLLOWING_parametros_tipos_IN_metodo_1316 )
        parametros_tipos316 = parametros_tipos
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, parametros_tipos316.tree )
        end


      end
      __RPAR317__ = match( RPAR, TOKENS_FOLLOWING_RPAR_IN_metodo_1319 )
      if @state.backtracking == 0
        tree_for_RPAR317 = @adaptor.create_with_payload( __RPAR317__ )
        @adaptor.add_child( root_0, tree_for_RPAR317 )

      end

      __LLAIZQ318__ = match( LLAIZQ, TOKENS_FOLLOWING_LLAIZQ_IN_metodo_1321 )
      if @state.backtracking == 0
        tree_for_LLAIZQ318 = @adaptor.create_with_payload( __LLAIZQ318__ )
        @adaptor.add_child( root_0, tree_for_LLAIZQ318 )

      end

      @state.following.push( TOKENS_FOLLOWING_bodyexp_IN_metodo_1323 )
      bodyexp319 = bodyexp
      @state.following.pop
      if @state.backtracking == 0
        @adaptor.add_child( root_0, bodyexp319.tree )
      end

      __LLADER320__ = match( LLADER, TOKENS_FOLLOWING_LLADER_IN_metodo_1325 )
      if @state.backtracking == 0
        tree_for_LLADER320 = @adaptor.create_with_payload( __LLADER320__ )
        @adaptor.add_child( root_0, tree_for_LLADER320 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 58 )


      end

      return return_value
    end

    CharReturnValue = define_return_scope

    #
    # parser rule char
    #
    # (in Compilador.g)
    # 568:2: char : COMILLA ( EscapeSequence |~ ( '\\'' | '\\\\' ) ) COMILLA ;
    #
    def char
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 59 )


      return_value = CharReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __COMILLA321__ = nil
      set322 = nil
      __COMILLA323__ = nil


      tree_for_COMILLA321 = nil
      tree_for_set322 = nil
      tree_for_COMILLA323 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 569:10: COMILLA ( EscapeSequence |~ ( '\\'' | '\\\\' ) ) COMILLA
      __COMILLA321__ = match( COMILLA, TOKENS_FOLLOWING_COMILLA_IN_char_2781 )
      if @state.backtracking == 0
        tree_for_COMILLA321 = @adaptor.create_with_payload( __COMILLA321__ )
        @adaptor.add_child( root_0, tree_for_COMILLA321 )

      end


      set322 = @input.look

      if @input.peek( 1 ).between?( ASIGNACION, COMA ) || @input.peek( 1 ).between?( CORDER, WS ) || @input.peek( 1 ).between?( T__81, T__82 )
        @input.consume
        if @state.backtracking == 0
          @adaptor.add_child( root_0, @adaptor.create_with_payload( set322 ) )
        end

        @state.error_recovery = false

      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )


        mse = MismatchedSet( nil )
        raise mse

      end


      __COMILLA323__ = match( COMILLA, TOKENS_FOLLOWING_COMILLA_IN_char_2798 )
      if @state.backtracking == 0
        tree_for_COMILLA323 = @adaptor.create_with_payload( __COMILLA323__ )
        @adaptor.add_child( root_0, tree_for_COMILLA323 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 59 )


      end

      return return_value
    end

    StringReturnValue = define_return_scope

    #
    # parser rule string
    #
    # (in Compilador.g)
    # 572:2: string : COMILLA ( EscapeSequence |~ ( '\\'' | '\\\\' ) )* COMILLA ;
    #
    def string
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 60 )


      return_value = StringReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __COMILLA324__ = nil
      set325 = nil
      __COMILLA326__ = nil


      tree_for_COMILLA324 = nil
      tree_for_set325 = nil
      tree_for_COMILLA326 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 573:9: COMILLA ( EscapeSequence |~ ( '\\'' | '\\\\' ) )* COMILLA
      __COMILLA324__ = match( COMILLA, TOKENS_FOLLOWING_COMILLA_IN_string_2819 )
      if @state.backtracking == 0
        tree_for_COMILLA324 = @adaptor.create_with_payload( __COMILLA324__ )
        @adaptor.add_child( root_0, tree_for_COMILLA324 )

      end

      # at line 573:17: ( EscapeSequence |~ ( '\\'' | '\\\\' ) )*
      while true # decision 44
        alt_44 = 2
        look_44_0 = @input.peek( 1 )

        if ( look_44_0.between?( ASIGNACION, COMA ) || look_44_0.between?( CORDER, WS ) || look_44_0.between?( T__81, T__82 ) )
          alt_44 = 1

        end
        case alt_44
        when 1
          # at line 
          set325 = @input.look

          if @input.peek( 1 ).between?( ASIGNACION, COMA ) || @input.peek( 1 ).between?( CORDER, WS ) || @input.peek( 1 ).between?( T__81, T__82 )
            @input.consume
            if @state.backtracking == 0
              @adaptor.add_child( root_0, @adaptor.create_with_payload( set325 ) )
            end

            @state.error_recovery = false

          else
            @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )


            mse = MismatchedSet( nil )
            raise mse

          end



        else
          break # out of loop for decision 44
        end
      end # loop for decision 44

      __COMILLA326__ = match( COMILLA, TOKENS_FOLLOWING_COMILLA_IN_string_2837 )
      if @state.backtracking == 0
        tree_for_COMILLA326 = @adaptor.create_with_payload( __COMILLA326__ )
        @adaptor.add_child( root_0, tree_for_COMILLA326 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 60 )


      end

      return return_value
    end

    BooleanoReturnValue = define_return_scope

    #
    # parser rule booleano
    #
    # (in Compilador.g)
    # 576:2: booleano : ( 'true' | 'false' ) ;
    #
    def booleano
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 61 )


      return_value = BooleanoReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      set327 = nil


      tree_for_set327 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 
      set327 = @input.look

      if @input.peek( 1 ).between?( T__81, T__82 )
        @input.consume
        if @state.backtracking == 0
          @adaptor.add_child( root_0, @adaptor.create_with_payload( set327 ) )
        end

        @state.error_recovery = false

      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )


        mse = MismatchedSet( nil )
        raise mse

      end



      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 61 )


      end

      return return_value
    end

    ValorReturnValue = define_return_scope

    #
    # parser rule valor
    #
    # (in Compilador.g)
    # 580:2: valor : ( char | string | DecimalLiteral | booleano | var_local | usar_metodo | qualified_name ) ;
    #
    def valor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 62 )


      return_value = ValorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __DecimalLiteral330__ = nil
      char328 = nil
      string329 = nil
      booleano331 = nil
      var_local332 = nil
      usar_metodo333 = nil
      qualified_name334 = nil


      tree_for_DecimalLiteral330 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 581:4: ( char | string | DecimalLiteral | booleano | var_local | usar_metodo | qualified_name )
      # at line 581:4: ( char | string | DecimalLiteral | booleano | var_local | usar_metodo | qualified_name )
      alt_45 = 7
      case look_45 = @input.peek( 1 )
      when COMILLA then look_45_1 = @input.peek( 2 )

      if ( syntactic_predicate?( :synpred78_Compilador ) )
        alt_45 = 1
      elsif ( syntactic_predicate?( :synpred79_Compilador ) )
        alt_45 = 2
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 45, 1 )

      end
      when DecimalLiteral then alt_45 = 3
      when T__81, T__82 then alt_45 = 4
      when DOUBLEDOT then alt_45 = 5
      when Identificador then look_45_5 = @input.peek( 2 )

      if ( syntactic_predicate?( :synpred83_Compilador ) )
        alt_45 = 6
      elsif ( true )
        alt_45 = 7
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 45, 5 )

      end
      else
        @state.backtracking > 0 and raise( ANTLR3::Error::BacktrackingFailed )



        raise NoViableAlternative( "", 45, 0 )

      end
      case alt_45
      when 1
        # at line 581:5: char
        @state.following.push( TOKENS_FOLLOWING_char_IN_valor_2869 )
        char328 = char
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, char328.tree )
        end


      when 2
        # at line 581:10: string
        @state.following.push( TOKENS_FOLLOWING_string_IN_valor_2871 )
        string329 = string
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, string329.tree )
        end


      when 3
        # at line 581:17: DecimalLiteral
        __DecimalLiteral330__ = match( DecimalLiteral, TOKENS_FOLLOWING_DecimalLiteral_IN_valor_2873 )
        if @state.backtracking == 0
          tree_for_DecimalLiteral330 = @adaptor.create_with_payload( __DecimalLiteral330__ )
          @adaptor.add_child( root_0, tree_for_DecimalLiteral330 )

        end


      when 4
        # at line 581:32: booleano
        @state.following.push( TOKENS_FOLLOWING_booleano_IN_valor_2875 )
        booleano331 = booleano
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, booleano331.tree )
        end


      when 5
        # at line 581:41: var_local
        @state.following.push( TOKENS_FOLLOWING_var_local_IN_valor_2877 )
        var_local332 = var_local
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, var_local332.tree )
        end


      when 6
        # at line 581:51: usar_metodo
        @state.following.push( TOKENS_FOLLOWING_usar_metodo_IN_valor_2879 )
        usar_metodo333 = usar_metodo
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, usar_metodo333.tree )
        end


      when 7
        # at line 581:63: qualified_name
        @state.following.push( TOKENS_FOLLOWING_qualified_name_IN_valor_2881 )
        qualified_name334 = qualified_name
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, qualified_name334.tree )
        end


      end

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 62 )


      end

      return return_value
    end

    QualifiedNameReturnValue = define_return_scope

    #
    # parser rule qualified_name
    #
    # (in Compilador.g)
    # 611:2: qualified_name : Identificador ( CORIZQ valor CORDER )? ( PUNTO Identificador ( CORIZQ valor CORDER )? )* ;
    #
    def qualified_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 63 )


      return_value = QualifiedNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __Identificador335__ = nil
      __CORIZQ336__ = nil
      __CORDER338__ = nil
      __PUNTO339__ = nil
      __Identificador340__ = nil
      __CORIZQ341__ = nil
      __CORDER343__ = nil
      valor337 = nil
      valor342 = nil


      tree_for_Identificador335 = nil
      tree_for_CORIZQ336 = nil
      tree_for_CORDER338 = nil
      tree_for_PUNTO339 = nil
      tree_for_Identificador340 = nil
      tree_for_CORIZQ341 = nil
      tree_for_CORDER343 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 612:6: Identificador ( CORIZQ valor CORDER )? ( PUNTO Identificador ( CORIZQ valor CORDER )? )*
      __Identificador335__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_qualified_name_3159 )
      if @state.backtracking == 0
        tree_for_Identificador335 = @adaptor.create_with_payload( __Identificador335__ )
        @adaptor.add_child( root_0, tree_for_Identificador335 )

      end

      # at line 612:20: ( CORIZQ valor CORDER )?
      alt_46 = 2
      look_46_0 = @input.peek( 1 )

      if ( look_46_0 == CORIZQ )
        alt_46 = 1
      end
      case alt_46
      when 1
        # at line 612:21: CORIZQ valor CORDER
        __CORIZQ336__ = match( CORIZQ, TOKENS_FOLLOWING_CORIZQ_IN_qualified_name_3162 )
        if @state.backtracking == 0
          tree_for_CORIZQ336 = @adaptor.create_with_payload( __CORIZQ336__ )
          @adaptor.add_child( root_0, tree_for_CORIZQ336 )

        end

        @state.following.push( TOKENS_FOLLOWING_valor_IN_qualified_name_3164 )
        valor337 = valor
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child( root_0, valor337.tree )
        end

        __CORDER338__ = match( CORDER, TOKENS_FOLLOWING_CORDER_IN_qualified_name_3166 )
        if @state.backtracking == 0
          tree_for_CORDER338 = @adaptor.create_with_payload( __CORDER338__ )
          @adaptor.add_child( root_0, tree_for_CORDER338 )

        end


      end
      # at line 612:43: ( PUNTO Identificador ( CORIZQ valor CORDER )? )*
      while true # decision 48
        alt_48 = 2
        look_48_0 = @input.peek( 1 )

        if ( look_48_0 == PUNTO )
          look_48_2 = @input.peek( 2 )

          if ( look_48_2 == Identificador )
            alt_48 = 1

          end

        end
        case alt_48
        when 1
          # at line 612:44: PUNTO Identificador ( CORIZQ valor CORDER )?
          __PUNTO339__ = match( PUNTO, TOKENS_FOLLOWING_PUNTO_IN_qualified_name_3171 )
          if @state.backtracking == 0
            tree_for_PUNTO339 = @adaptor.create_with_payload( __PUNTO339__ )
            @adaptor.add_child( root_0, tree_for_PUNTO339 )

          end

          __Identificador340__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_qualified_name_3173 )
          if @state.backtracking == 0
            tree_for_Identificador340 = @adaptor.create_with_payload( __Identificador340__ )
            @adaptor.add_child( root_0, tree_for_Identificador340 )

          end

          # at line 612:64: ( CORIZQ valor CORDER )?
          alt_47 = 2
          look_47_0 = @input.peek( 1 )

          if ( look_47_0 == CORIZQ )
            alt_47 = 1
          end
          case alt_47
          when 1
            # at line 612:65: CORIZQ valor CORDER
            __CORIZQ341__ = match( CORIZQ, TOKENS_FOLLOWING_CORIZQ_IN_qualified_name_3176 )
            if @state.backtracking == 0
              tree_for_CORIZQ341 = @adaptor.create_with_payload( __CORIZQ341__ )
              @adaptor.add_child( root_0, tree_for_CORIZQ341 )

            end

            @state.following.push( TOKENS_FOLLOWING_valor_IN_qualified_name_3178 )
            valor342 = valor
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child( root_0, valor342.tree )
            end

            __CORDER343__ = match( CORDER, TOKENS_FOLLOWING_CORDER_IN_qualified_name_3180 )
            if @state.backtracking == 0
              tree_for_CORDER343 = @adaptor.create_with_payload( __CORDER343__ )
              @adaptor.add_child( root_0, tree_for_CORDER343 )

            end


          end

        else
          break # out of loop for decision 48
        end
      end # loop for decision 48


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 63 )


      end

      return return_value
    end

    VarLocalReturnValue = define_return_scope

    #
    # parser rule var_local
    #
    # (in Compilador.g)
    # 619:2: var_local : DOUBLEDOT Identificador ;
    #
    def var_local
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 64 )


      return_value = VarLocalReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __DOUBLEDOT344__ = nil
      __Identificador345__ = nil


      tree_for_DOUBLEDOT344 = nil
      tree_for_Identificador345 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 620:4: DOUBLEDOT Identificador
      __DOUBLEDOT344__ = match( DOUBLEDOT, TOKENS_FOLLOWING_DOUBLEDOT_IN_var_local_3218 )
      if @state.backtracking == 0
        tree_for_DOUBLEDOT344 = @adaptor.create_with_payload( __DOUBLEDOT344__ )
        @adaptor.add_child( root_0, tree_for_DOUBLEDOT344 )

      end

      __Identificador345__ = match( Identificador, TOKENS_FOLLOWING_Identificador_IN_var_local_3220 )
      if @state.backtracking == 0
        tree_for_Identificador345 = @adaptor.create_with_payload( __Identificador345__ )
        @adaptor.add_child( root_0, tree_for_Identificador345 )

      end


      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      if @state.backtracking == 0
        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 64 )


      end

      return return_value
    end

    #
    # syntactic predicate synpred78_Compilador
    #
    # (in Compilador.g)
    # 581:5: synpred78_Compilador : char ;
    #
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    #
    def synpred78_Compilador
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 142 )


      # at line 581:5: char
      @state.following.push( TOKENS_FOLLOWING_char_IN_synpred78_Compilador_2869 )
      char
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 142 )


    end
    #
    # syntactic predicate synpred79_Compilador
    #
    # (in Compilador.g)
    # 581:10: synpred79_Compilador : string ;
    #
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    #
    def synpred79_Compilador
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 143 )


      # at line 581:10: string
      @state.following.push( TOKENS_FOLLOWING_string_IN_synpred79_Compilador_2871 )
      string
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 143 )


    end
    #
    # syntactic predicate synpred83_Compilador
    #
    # (in Compilador.g)
    # 581:51: synpred83_Compilador : usar_metodo ;
    #
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    #
    def synpred83_Compilador
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 147 )


      # at line 581:51: usar_metodo
      @state.following.push( TOKENS_FOLLOWING_usar_metodo_IN_synpred83_Compilador_2879 )
      usar_metodo
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 147 )


    end


    TOKENS_FOLLOWING_paquete_IN_archivo_compilado_41 = Set[ 25, 41, 51 ]
    TOKENS_FOLLOWING_librerias_IN_archivo_compilado_43 = Set[ 25, 41, 51 ]
    TOKENS_FOLLOWING_clase_interface_declaracion_IN_archivo_compilado_46 = Set[ 1 ]
    TOKENS_FOLLOWING_K_PACKAGE_IN_paquete_57 = Set[ 17 ]
    TOKENS_FOLLOWING_qualified_name_IN_paquete_59 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_paquete_61 = Set[ 1 ]
    TOKENS_FOLLOWING_K_REQUIRE_IN_librerias_72 = Set[ 17 ]
    TOKENS_FOLLOWING_qualified_name_IN_librerias_74 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_librerias_76 = Set[ 1 ]
    TOKENS_FOLLOWING_clase_declaration_IN_clase_interface_declaracion_87 = Set[ 1 ]
    TOKENS_FOLLOWING_interface_declaration_IN_clase_interface_declaracion_89 = Set[ 1 ]
    TOKENS_FOLLOWING_K_CLASS_IN_clase_declaration_102 = Set[ 17 ]
    TOKENS_FOLLOWING_Identificador_IN_clase_declaration_104 = Set[ 6, 10, 11, 17, 19, 20, 22, 23, 25, 26, 27, 32, 33, 37, 38, 40, 41, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_extends_IN_clase_declaration_106 = Set[ 6, 10, 11, 17, 19, 20, 22, 23, 25, 26, 27, 32, 37, 38, 40, 41, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_implements_IN_clase_declaration_109 = Set[ 6, 10, 11, 17, 19, 20, 22, 23, 25, 26, 27, 32, 38, 40, 41, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_bodyclass_IN_clase_declaration_112 = Set[ 32 ]
    TOKENS_FOLLOWING_K_END_IN_clase_declaration_114 = Set[ 1 ]
    TOKENS_FOLLOWING_K_EXTENDS_IN_extends_124 = Set[ 17 ]
    TOKENS_FOLLOWING_Identificador_IN_extends_126 = Set[ 1 ]
    TOKENS_FOLLOWING_K_IMPLEMENTS_IN_implements_137 = Set[ 17 ]
    TOKENS_FOLLOWING_qualified_name_IN_implements_139 = Set[ 1, 5 ]
    TOKENS_FOLLOWING_COMA_IN_implements_142 = Set[ 17 ]
    TOKENS_FOLLOWING_qualified_name_IN_implements_144 = Set[ 1, 5 ]
    TOKENS_FOLLOWING_K_INTERFACE_IN_interface_declaration_157 = Set[ 17 ]
    TOKENS_FOLLOWING_Identificador_IN_interface_declaration_159 = Set[ 6, 10, 11, 17, 19, 20, 22, 23, 25, 26, 27, 32, 38, 40, 41, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_bodyclass_IN_interface_declaration_161 = Set[ 32 ]
    TOKENS_FOLLOWING_K_END_IN_interface_declaration_163 = Set[ 1 ]
    TOKENS_FOLLOWING_acciones_IN_bodyclass_175 = Set[ 1, 6, 10, 11, 17, 19, 20, 22, 23, 25, 26, 27, 38, 40, 41, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_definir_variables_IN_bodyclass_180 = Set[ 1, 6, 10, 11, 17, 19, 20, 22, 23, 25, 26, 27, 38, 40, 41, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_definir_arreglo_IN_bodyclass_185 = Set[ 1, 6, 10, 11, 17, 19, 20, 22, 23, 25, 26, 27, 38, 40, 41, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_definir_propiedad_IN_bodyclass_190 = Set[ 1, 6, 10, 11, 17, 19, 20, 22, 23, 25, 26, 27, 38, 40, 41, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_ciclos_IN_bodyclass_195 = Set[ 1, 6, 10, 11, 17, 19, 20, 22, 23, 25, 26, 27, 38, 40, 41, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_clase_interface_declaracion_IN_bodyclass_200 = Set[ 1, 6, 10, 11, 17, 19, 20, 22, 23, 25, 26, 27, 38, 40, 41, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_metodos_IN_bodyclass_205 = Set[ 1, 6, 10, 11, 17, 19, 20, 22, 23, 25, 26, 27, 38, 40, 41, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_constructor_IN_bodyclass_210 = Set[ 1, 6, 10, 11, 17, 19, 20, 22, 23, 25, 26, 27, 38, 40, 41, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_imprimir_IN_acciones_223 = Set[ 1 ]
    TOKENS_FOLLOWING_asignacion_especial_IN_acciones_227 = Set[ 1 ]
    TOKENS_FOLLOWING_retorno_IN_acciones_231 = Set[ 1 ]
    TOKENS_FOLLOWING_conversion_variable_IN_acciones_235 = Set[ 1 ]
    TOKENS_FOLLOWING_accion_sistema_IN_acciones_239 = Set[ 1 ]
    TOKENS_FOLLOWING_condicional_IN_acciones_243 = Set[ 1 ]
    TOKENS_FOLLOWING_invocar_metodo_funcion_IN_acciones_247 = Set[ 1 ]
    TOKENS_FOLLOWING_crear_objeto_IN_acciones_251 = Set[ 1 ]
    TOKENS_FOLLOWING_referencia_objeto_IN_acciones_255 = Set[ 1 ]
    TOKENS_FOLLOWING_inspeccionar_objeto_IN_acciones_259 = Set[ 1 ]
    TOKENS_FOLLOWING_matematica_especial_IN_acciones_263 = Set[ 1 ]
    TOKENS_FOLLOWING_accion_num_IN_acciones_267 = Set[ 1 ]
    TOKENS_FOLLOWING_ajuste_array_IN_acciones_271 = Set[ 1 ]
    TOKENS_FOLLOWING_ordenar_arreglo_IN_acciones_275 = Set[ 1 ]
    TOKENS_FOLLOWING_busqueda_array_IN_acciones_279 = Set[ 1 ]
    TOKENS_FOLLOWING_split_IN_acciones_283 = Set[ 1 ]
    TOKENS_FOLLOWING_manejo_archivos_IN_acciones_287 = Set[ 1 ]
    TOKENS_FOLLOWING_accion_arreglo_IN_acciones_291 = Set[ 1 ]
    TOKENS_FOLLOWING_union_IN_acciones_295 = Set[ 1 ]
    TOKENS_FOLLOWING_asignacion_IN_acciones_299 = Set[ 1 ]
    TOKENS_FOLLOWING_K_IMPRIMIR_IN_imprimir_310 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_imprimir_312 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_imprimir_314 = Set[ 1 ]
    TOKENS_FOLLOWING_K_ASIGNACION_IN_asignacion_especial_325 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_asignacion_especial_327 = Set[ 10, 17 ]
    TOKENS_FOLLOWING_Identificador_IN_asignacion_especial_330 = Set[ 5 ]
    TOKENS_FOLLOWING_var_local_IN_asignacion_especial_332 = Set[ 5 ]
    TOKENS_FOLLOWING_COMA_IN_asignacion_especial_335 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_asignacion_especial_337 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_asignacion_especial_339 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_asignacion_especial_341 = Set[ 1 ]
    TOKENS_FOLLOWING_K_RETORNO_IN_retorno_352 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_retorno_354 = Set[ 1 ]
    TOKENS_FOLLOWING_K_RETORNO_IN_retorno_valor_364 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_retorno_valor_366 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_retorno_valor_368 = Set[ 1 ]
    TOKENS_FOLLOWING_K_CONVERSION_IN_conversion_variable_379 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_conversion_variable_381 = Set[ 10, 17 ]
    TOKENS_FOLLOWING_Identificador_IN_conversion_variable_384 = Set[ 76 ]
    TOKENS_FOLLOWING_var_local_IN_conversion_variable_386 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_conversion_variable_389 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_conversion_variable_391 = Set[ 1 ]
    TOKENS_FOLLOWING_K_ACCIONSYS_IN_accion_sistema_402 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_accion_sistema_404 = Set[ 1 ]
    TOKENS_FOLLOWING_LLAIZQ_IN_condicional_415 = Set[ 6, 10, 11, 17, 19, 20, 22, 23, 26, 38, 40, 42, 43, 46, 47, 50, 52, 53, 55, 65, 66 ]
    TOKENS_FOLLOWING_bodyexp_IN_condicional_417 = Set[ 65 ]
    TOKENS_FOLLOWING_LLADER_IN_condicional_419 = Set[ 36 ]
    TOKENS_FOLLOWING_K_IF_IN_condicional_421 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_condicional_423 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_condicion_exp_IN_condicional_425 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_condicional_427 = Set[ 1, 31 ]
    TOKENS_FOLLOWING_elseb_IN_condicional_429 = Set[ 1 ]
    TOKENS_FOLLOWING_acciones_IN_bodyexp_441 = Set[ 1, 6, 10, 11, 17, 19, 20, 22, 23, 26, 38, 40, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_ciclos_IN_bodyexp_443 = Set[ 1, 6, 10, 11, 17, 19, 20, 22, 23, 26, 38, 40, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_definir_var_local_IN_bodyexp_445 = Set[ 1, 6, 10, 11, 17, 19, 20, 22, 23, 26, 38, 40, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_retorno_valor_IN_bodyexp_447 = Set[ 1, 6, 10, 11, 17, 19, 20, 22, 23, 26, 38, 40, 42, 43, 46, 47, 50, 52, 53, 55, 66 ]
    TOKENS_FOLLOWING_ciclo_times_IN_ciclos_461 = Set[ 1 ]
    TOKENS_FOLLOWING_ciclo_each_IN_ciclos_463 = Set[ 1 ]
    TOKENS_FOLLOWING_DecimalLiteral_IN_ciclo_times_475 = Set[ 56 ]
    TOKENS_FOLLOWING_K_TIMES_IN_ciclo_times_477 = Set[ 29 ]
    TOKENS_FOLLOWING_K_DO_IN_ciclo_times_479 = Set[ 66 ]
    TOKENS_FOLLOWING_LLAIZQ_IN_ciclo_times_481 = Set[ 6, 10, 11, 17, 19, 20, 22, 23, 26, 38, 40, 42, 43, 46, 47, 50, 52, 53, 55, 65, 66 ]
    TOKENS_FOLLOWING_bodyexp_IN_ciclo_times_483 = Set[ 65 ]
    TOKENS_FOLLOWING_LLADER_IN_ciclo_times_485 = Set[ 1 ]
    TOKENS_FOLLOWING_Identificador_IN_ciclo_each_497 = Set[ 30 ]
    TOKENS_FOLLOWING_var_local_IN_ciclo_each_499 = Set[ 30 ]
    TOKENS_FOLLOWING_K_EACH_IN_ciclo_each_502 = Set[ 29 ]
    TOKENS_FOLLOWING_K_DO_IN_ciclo_each_504 = Set[ 9 ]
    TOKENS_FOLLOWING_DELIM_IN_ciclo_each_506 = Set[ 10 ]
    TOKENS_FOLLOWING_var_local_IN_ciclo_each_508 = Set[ 9 ]
    TOKENS_FOLLOWING_DELIM_IN_ciclo_each_510 = Set[ 66 ]
    TOKENS_FOLLOWING_LLAIZQ_IN_ciclo_each_512 = Set[ 6, 10, 11, 17, 19, 20, 22, 23, 26, 38, 40, 42, 43, 46, 47, 50, 52, 53, 55, 65, 66 ]
    TOKENS_FOLLOWING_bodyexp_IN_ciclo_each_514 = Set[ 65 ]
    TOKENS_FOLLOWING_LLADER_IN_ciclo_each_516 = Set[ 1 ]
    TOKENS_FOLLOWING_condicion_IN_condicion_exp_527 = Set[ 1, 71 ]
    TOKENS_FOLLOWING_OP_LOG_IN_condicion_exp_530 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_condicion_IN_condicion_exp_532 = Set[ 1, 71 ]
    TOKENS_FOLLOWING_valor_IN_condicion_545 = Set[ 72 ]
    TOKENS_FOLLOWING_OP_REL_IN_condicion_547 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_condicion_549 = Set[ 1 ]
    TOKENS_FOLLOWING_K_ELSE_IN_elseb_560 = Set[ 66 ]
    TOKENS_FOLLOWING_LLAIZQ_IN_elseb_562 = Set[ 6, 10, 11, 17, 19, 20, 22, 23, 26, 38, 40, 42, 43, 46, 47, 50, 52, 53, 55, 65, 66 ]
    TOKENS_FOLLOWING_bodyexp_IN_elseb_564 = Set[ 65 ]
    TOKENS_FOLLOWING_LLADER_IN_elseb_566 = Set[ 1 ]
    TOKENS_FOLLOWING_var_local_IN_definir_var_local_577 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_definir_var_local_579 = Set[ 77 ]
    TOKENS_FOLLOWING_body_var_local_IN_definir_var_local_581 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_definir_var_local_583 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_definir_var_local_585 = Set[ 1 ]
    TOKENS_FOLLOWING_TIPO_IN_body_var_local_596 = Set[ 5 ]
    TOKENS_FOLLOWING_COMA_IN_body_var_local_598 = Set[ 1, 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_body_var_local_600 = Set[ 1 ]
    TOKENS_FOLLOWING_K_INVOKE_IN_invocar_metodo_funcion_612 = Set[ 17 ]
    TOKENS_FOLLOWING_qualified_name_IN_invocar_metodo_funcion_614 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_invocar_metodo_funcion_616 = Set[ 6, 10, 11, 17, 76, 81, 82 ]
    TOKENS_FOLLOWING_parametros_IN_invocar_metodo_funcion_618 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_invocar_metodo_funcion_621 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_invocar_metodo_funcion_623 = Set[ 1 ]
    TOKENS_FOLLOWING_valor_IN_parametros_634 = Set[ 1, 5 ]
    TOKENS_FOLLOWING_COMA_IN_parametros_637 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_parametros_639 = Set[ 1, 5 ]
    TOKENS_FOLLOWING_qualified_name_IN_crear_objeto_652 = Set[ 75 ]
    TOKENS_FOLLOWING_PUNTO_IN_crear_objeto_654 = Set[ 45 ]
    TOKENS_FOLLOWING_K_NEW_IN_crear_objeto_656 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_crear_objeto_658 = Set[ 6, 10, 11, 17, 76, 81, 82 ]
    TOKENS_FOLLOWING_parametros_IN_crear_objeto_660 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_crear_objeto_663 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_crear_objeto_665 = Set[ 1 ]
    TOKENS_FOLLOWING_K_REFERENCIA_IN_referencia_objeto_676 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_referencia_objeto_678 = Set[ 10, 17 ]
    TOKENS_FOLLOWING_Identificador_IN_referencia_objeto_681 = Set[ 76 ]
    TOKENS_FOLLOWING_var_local_IN_referencia_objeto_683 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_referencia_objeto_686 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_referencia_objeto_688 = Set[ 1 ]
    TOKENS_FOLLOWING_K_INSPECCIONAR_IN_inspeccionar_objeto_700 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_inspeccionar_objeto_702 = Set[ 10, 17 ]
    TOKENS_FOLLOWING_Identificador_IN_inspeccionar_objeto_705 = Set[ 76 ]
    TOKENS_FOLLOWING_var_local_IN_inspeccionar_objeto_707 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_inspeccionar_objeto_710 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_inspeccionar_objeto_712 = Set[ 1 ]
    TOKENS_FOLLOWING_qualified_name_IN_usar_metodo_723 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_usar_metodo_725 = Set[ 6, 10, 11, 17, 76, 81, 82 ]
    TOKENS_FOLLOWING_parametros_IN_usar_metodo_727 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_usar_metodo_730 = Set[ 1 ]
    TOKENS_FOLLOWING_K_MATEMATICA_IN_matematica_especial_741 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_matematica_especial_743 = Set[ 10, 17 ]
    TOKENS_FOLLOWING_Identificador_IN_matematica_especial_746 = Set[ 5 ]
    TOKENS_FOLLOWING_var_local_IN_matematica_especial_748 = Set[ 5 ]
    TOKENS_FOLLOWING_COMA_IN_matematica_especial_751 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_matematica_especial_753 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_matematica_especial_755 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_matematica_especial_757 = Set[ 1 ]
    TOKENS_FOLLOWING_K_NUM_IN_accion_num_768 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_accion_num_770 = Set[ 10, 17 ]
    TOKENS_FOLLOWING_Identificador_IN_accion_num_773 = Set[ 5 ]
    TOKENS_FOLLOWING_var_local_IN_accion_num_775 = Set[ 5 ]
    TOKENS_FOLLOWING_COMA_IN_accion_num_778 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_accion_num_780 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_accion_num_782 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_accion_num_784 = Set[ 1 ]
    TOKENS_FOLLOWING_K_RESIZE_IN_ajuste_array_795 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_ajuste_array_797 = Set[ 10, 17 ]
    TOKENS_FOLLOWING_Identificador_IN_ajuste_array_800 = Set[ 76 ]
    TOKENS_FOLLOWING_var_local_IN_ajuste_array_802 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_ajuste_array_805 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_ajuste_array_807 = Set[ 1 ]
    TOKENS_FOLLOWING_K_ORDENAR_IN_ordenar_arreglo_818 = Set[ 69 ]
    TOKENS_FOLLOWING_ModoOrd_IN_ordenar_arreglo_820 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_ordenar_arreglo_822 = Set[ 10, 17 ]
    TOKENS_FOLLOWING_Identificador_IN_ordenar_arreglo_825 = Set[ 76 ]
    TOKENS_FOLLOWING_var_local_IN_ordenar_arreglo_827 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_ordenar_arreglo_830 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_ordenar_arreglo_832 = Set[ 1 ]
    TOKENS_FOLLOWING_Identificador_IN_busqueda_array_844 = Set[ 63 ]
    TOKENS_FOLLOWING_var_local_IN_busqueda_array_846 = Set[ 63 ]
    TOKENS_FOLLOWING_K_WHERE_IN_busqueda_array_849 = Set[ 10, 17 ]
    TOKENS_FOLLOWING_Identificador_IN_busqueda_array_852 = Set[ 57 ]
    TOKENS_FOLLOWING_var_local_IN_busqueda_array_854 = Set[ 57 ]
    TOKENS_FOLLOWING_K_TIPOBUSQUEDA_IN_busqueda_array_857 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_busqueda_array_859 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_busqueda_array_861 = Set[ 1 ]
    TOKENS_FOLLOWING_K_SPLIT_IN_split_872 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_split_874 = Set[ 6 ]
    TOKENS_FOLLOWING_string_IN_split_876 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_split_878 = Set[ 10, 17 ]
    TOKENS_FOLLOWING_Identificador_IN_split_881 = Set[ 13 ]
    TOKENS_FOLLOWING_var_local_IN_split_883 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_split_886 = Set[ 1 ]
    TOKENS_FOLLOWING_K_BEGIN_IN_manejo_archivos_897 = Set[ 28 ]
    TOKENS_FOLLOWING_K_DIR_IN_manejo_archivos_899 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_manejo_archivos_901 = Set[ 18 ]
    TOKENS_FOLLOWING_manejo_IN_manejo_archivos_903 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_manejo_archivos_905 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_manejo_archivos_907 = Set[ 1 ]
    TOKENS_FOLLOWING_K_ACCIONARCHIVO_IN_manejo_919 = Set[ 5 ]
    TOKENS_FOLLOWING_COMA_IN_manejo_921 = Set[ 6 ]
    TOKENS_FOLLOWING_string_IN_manejo_923 = Set[ 5 ]
    TOKENS_FOLLOWING_COMA_IN_manejo_925 = Set[ 17 ]
    TOKENS_FOLLOWING_Identificador_IN_manejo_928 = Set[ 1 ]
    TOKENS_FOLLOWING_K_ACCIONARREGLO_IN_accion_arreglo_939 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_accion_arreglo_941 = Set[ 10, 17 ]
    TOKENS_FOLLOWING_Identificador_IN_accion_arreglo_944 = Set[ 5 ]
    TOKENS_FOLLOWING_var_local_IN_accion_arreglo_946 = Set[ 5 ]
    TOKENS_FOLLOWING_COMA_IN_accion_arreglo_949 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_accion_arreglo_951 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_accion_arreglo_953 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_accion_arreglo_955 = Set[ 1 ]
    TOKENS_FOLLOWING_string_IN_union_965 = Set[ 58 ]
    TOKENS_FOLLOWING_K_UNION_IN_union_967 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_union_969 = Set[ 10, 17 ]
    TOKENS_FOLLOWING_Identificador_IN_union_972 = Set[ 76 ]
    TOKENS_FOLLOWING_var_local_IN_union_974 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_union_977 = Set[ 6 ]
    TOKENS_FOLLOWING_string_IN_union_979 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_union_981 = Set[ 1 ]
    TOKENS_FOLLOWING_Identificador_IN_asignacion_993 = Set[ 4 ]
    TOKENS_FOLLOWING_var_local_IN_asignacion_995 = Set[ 4 ]
    TOKENS_FOLLOWING_ASIGNACION_IN_asignacion_998 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_expresion_IN_asignacion_1000 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_asignacion_1002 = Set[ 1 ]
    TOKENS_FOLLOWING_valor_IN_expresion_1013 = Set[ 1, 70 ]
    TOKENS_FOLLOWING_OP_ARI_IN_expresion_1016 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_expresion_1018 = Set[ 1, 70 ]
    TOKENS_FOLLOWING_definir_variable_IN_definir_variables_1032 = Set[ 1 ]
    TOKENS_FOLLOWING_definir_var_local_IN_definir_variables_1034 = Set[ 1 ]
    TOKENS_FOLLOWING_K_DEF_IN_definir_variable_1046 = Set[ 60 ]
    TOKENS_FOLLOWING_K_VAR_IN_definir_variable_1048 = Set[ 17 ]
    TOKENS_FOLLOWING_Identificador_IN_definir_variable_1050 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_definir_variable_1052 = Set[ 77 ]
    TOKENS_FOLLOWING_var_exp_IN_definir_variable_1054 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_definir_variable_1056 = Set[ 1 ]
    TOKENS_FOLLOWING_TIPO_IN_var_exp_1067 = Set[ 5 ]
    TOKENS_FOLLOWING_COMA_IN_var_exp_1069 = Set[ 61 ]
    TOKENS_FOLLOWING_K_VISIBILIDAD_IN_var_exp_1071 = Set[ 5 ]
    TOKENS_FOLLOWING_COMA_IN_var_exp_1073 = Set[ 5, 44 ]
    TOKENS_FOLLOWING_K_MODIFICADOR_IN_var_exp_1075 = Set[ 5 ]
    TOKENS_FOLLOWING_COMA_IN_var_exp_1078 = Set[ 6, 10, 11, 17, 76, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_var_exp_1080 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_var_exp_1083 = Set[ 1 ]
    TOKENS_FOLLOWING_K_DEF_IN_definir_arreglo_1094 = Set[ 21 ]
    TOKENS_FOLLOWING_K_ARRAY_IN_definir_arreglo_1096 = Set[ 10, 17 ]
    TOKENS_FOLLOWING_Identificador_IN_definir_arreglo_1099 = Set[ 67 ]
    TOKENS_FOLLOWING_var_local_IN_definir_arreglo_1101 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_definir_arreglo_1104 = Set[ 11 ]
    TOKENS_FOLLOWING_DecimalLiteral_IN_definir_arreglo_1106 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_definir_arreglo_1108 = Set[ 66 ]
    TOKENS_FOLLOWING_LLAIZQ_IN_definir_arreglo_1110 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_exp_arreglo_IN_definir_arreglo_1112 = Set[ 65 ]
    TOKENS_FOLLOWING_LLADER_IN_definir_arreglo_1114 = Set[ 13 ]
    TOKENS_FOLLOWING_EOL_IN_definir_arreglo_1116 = Set[ 1 ]
    TOKENS_FOLLOWING_valor_IN_exp_arreglo_1127 = Set[ 1, 5 ]
    TOKENS_FOLLOWING_COMA_IN_exp_arreglo_1130 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_exp_arreglo_1132 = Set[ 1, 5 ]
    TOKENS_FOLLOWING_K_DEF_IN_definir_propiedad_1145 = Set[ 49 ]
    TOKENS_FOLLOWING_K_PROPIEDAD_IN_definir_propiedad_1147 = Set[ 17 ]
    TOKENS_FOLLOWING_Identificador_IN_definir_propiedad_1149 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_definir_propiedad_1151 = Set[ 17 ]
    TOKENS_FOLLOWING_Identificador_IN_definir_propiedad_1153 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_definir_propiedad_1155 = Set[ 66 ]
    TOKENS_FOLLOWING_LLAIZQ_IN_definir_propiedad_1157 = Set[ 35 ]
    TOKENS_FOLLOWING_body_propiedad_IN_definir_propiedad_1159 = Set[ 65 ]
    TOKENS_FOLLOWING_LLADER_IN_definir_propiedad_1161 = Set[ 1 ]
    TOKENS_FOLLOWING_get_IN_body_propiedad_1174 = Set[ 1, 54 ]
    TOKENS_FOLLOWING_set_IN_body_propiedad_1176 = Set[ 1 ]
    TOKENS_FOLLOWING_K_GET_IN_get_1187 = Set[ 66 ]
    TOKENS_FOLLOWING_LLAIZQ_IN_get_1189 = Set[ 17 ]
    TOKENS_FOLLOWING_Identificador_IN_get_1191 = Set[ 65 ]
    TOKENS_FOLLOWING_LLADER_IN_get_1193 = Set[ 1 ]
    TOKENS_FOLLOWING_K_SET_IN_set_1202 = Set[ 66 ]
    TOKENS_FOLLOWING_LLAIZQ_IN_set_1204 = Set[ 59 ]
    TOKENS_FOLLOWING_K_VALUE_IN_set_1206 = Set[ 65 ]
    TOKENS_FOLLOWING_LLADER_IN_set_1208 = Set[ 1 ]
    TOKENS_FOLLOWING_K_DEF_IN_constructor_1218 = Set[ 39 ]
    TOKENS_FOLLOWING_K_INITIALIZE_IN_constructor_1220 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_constructor_1222 = Set[ 76, 77 ]
    TOKENS_FOLLOWING_parametros_tipos_IN_constructor_1224 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_constructor_1227 = Set[ 66 ]
    TOKENS_FOLLOWING_LLAIZQ_IN_constructor_1229 = Set[ 6, 10, 11, 17, 19, 20, 22, 23, 26, 38, 40, 42, 43, 46, 47, 50, 52, 53, 55, 65, 66 ]
    TOKENS_FOLLOWING_bodyexp_IN_constructor_1231 = Set[ 65 ]
    TOKENS_FOLLOWING_LLADER_IN_constructor_1233 = Set[ 1 ]
    TOKENS_FOLLOWING_TIPO_IN_parametros_tipos_1244 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_parametros_tipos_1246 = Set[ 1, 5 ]
    TOKENS_FOLLOWING_COMA_IN_parametros_tipos_1249 = Set[ 77 ]
    TOKENS_FOLLOWING_TIPO_IN_parametros_tipos_1251 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_parametros_tipos_1253 = Set[ 1, 5 ]
    TOKENS_FOLLOWING_funcion_IN_metodos_1266 = Set[ 1 ]
    TOKENS_FOLLOWING_metodo_IN_metodos_1268 = Set[ 1 ]
    TOKENS_FOLLOWING_K_DEF_IN_funcion_1280 = Set[ 34 ]
    TOKENS_FOLLOWING_K_FUNC_IN_funcion_1282 = Set[ 17 ]
    TOKENS_FOLLOWING_Identificador_IN_funcion_1284 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_funcion_1286 = Set[ 76, 77 ]
    TOKENS_FOLLOWING_parametros_tipos_IN_funcion_1288 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_funcion_1291 = Set[ 66 ]
    TOKENS_FOLLOWING_LLAIZQ_IN_funcion_1293 = Set[ 6, 10, 11, 17, 19, 20, 22, 23, 26, 38, 40, 42, 43, 46, 47, 50, 52, 53, 55, 65, 66 ]
    TOKENS_FOLLOWING_bodyexp_IN_funcion_1295 = Set[ 65 ]
    TOKENS_FOLLOWING_LLADER_IN_funcion_1297 = Set[ 1 ]
    TOKENS_FOLLOWING_K_DEF_IN_metodo_1308 = Set[ 62 ]
    TOKENS_FOLLOWING_K_VOID_IN_metodo_1310 = Set[ 17 ]
    TOKENS_FOLLOWING_Identificador_IN_metodo_1312 = Set[ 67 ]
    TOKENS_FOLLOWING_LPAR_IN_metodo_1314 = Set[ 76, 77 ]
    TOKENS_FOLLOWING_parametros_tipos_IN_metodo_1316 = Set[ 76 ]
    TOKENS_FOLLOWING_RPAR_IN_metodo_1319 = Set[ 66 ]
    TOKENS_FOLLOWING_LLAIZQ_IN_metodo_1321 = Set[ 6, 10, 11, 17, 19, 20, 22, 23, 26, 38, 40, 42, 43, 46, 47, 50, 52, 53, 55, 65, 66 ]
    TOKENS_FOLLOWING_bodyexp_IN_metodo_1323 = Set[ 65 ]
    TOKENS_FOLLOWING_LLADER_IN_metodo_1325 = Set[ 1 ]
    TOKENS_FOLLOWING_COMILLA_IN_char_2781 = Set[ 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 81, 82 ]
    TOKENS_FOLLOWING_set_IN_char_2783 = Set[ 6 ]
    TOKENS_FOLLOWING_COMILLA_IN_char_2798 = Set[ 1 ]
    TOKENS_FOLLOWING_COMILLA_IN_string_2819 = Set[ 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 81, 82 ]
    TOKENS_FOLLOWING_COMILLA_IN_string_2837 = Set[ 1 ]
    TOKENS_FOLLOWING_char_IN_valor_2869 = Set[ 1 ]
    TOKENS_FOLLOWING_string_IN_valor_2871 = Set[ 1 ]
    TOKENS_FOLLOWING_DecimalLiteral_IN_valor_2873 = Set[ 1 ]
    TOKENS_FOLLOWING_booleano_IN_valor_2875 = Set[ 1 ]
    TOKENS_FOLLOWING_var_local_IN_valor_2877 = Set[ 1 ]
    TOKENS_FOLLOWING_usar_metodo_IN_valor_2879 = Set[ 1 ]
    TOKENS_FOLLOWING_qualified_name_IN_valor_2881 = Set[ 1 ]
    TOKENS_FOLLOWING_Identificador_IN_qualified_name_3159 = Set[ 1, 8, 75 ]
    TOKENS_FOLLOWING_CORIZQ_IN_qualified_name_3162 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_qualified_name_3164 = Set[ 7 ]
    TOKENS_FOLLOWING_CORDER_IN_qualified_name_3166 = Set[ 1, 75 ]
    TOKENS_FOLLOWING_PUNTO_IN_qualified_name_3171 = Set[ 17 ]
    TOKENS_FOLLOWING_Identificador_IN_qualified_name_3173 = Set[ 1, 8, 75 ]
    TOKENS_FOLLOWING_CORIZQ_IN_qualified_name_3176 = Set[ 6, 10, 11, 17, 81, 82 ]
    TOKENS_FOLLOWING_valor_IN_qualified_name_3178 = Set[ 7 ]
    TOKENS_FOLLOWING_CORDER_IN_qualified_name_3180 = Set[ 1, 75 ]
    TOKENS_FOLLOWING_DOUBLEDOT_IN_var_local_3218 = Set[ 17 ]
    TOKENS_FOLLOWING_Identificador_IN_var_local_3220 = Set[ 1 ]
    TOKENS_FOLLOWING_char_IN_synpred78_Compilador_2869 = Set[ 1 ]
    TOKENS_FOLLOWING_string_IN_synpred79_Compilador_2871 = Set[ 1 ]
    TOKENS_FOLLOWING_usar_metodo_IN_synpred83_Compilador_2879 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
