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

  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Compilador
    include TokenData

    begin
      generated_using( "Compilador.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    RULE_NAMES   = [ "T__80", "T__81", "T__82", "EOL", "LPAR", "RPAR", "LLAIZQ", 
                     "LLADER", "COMA", "PUNTO", "CORDER", "CORIZQ", "DELIM", 
                     "ASIGNACION", "DOUBLEDOT", "COMILLA", "OP_REL", "OP_ARI", 
                     "OP_LOG", "K_ACCIONARCHIVO", "K_ACCIONARREGLO", "K_PACKAGE", 
                     "K_CLASS", "K_END", "K_DEF", "K_VAR", "K_REQUIRE", 
                     "K_IMPLEMENTS", "K_EXTENDS", "K_IMPRIMIR", "K_CONVERSION", 
                     "K_ASIGNACION", "K_RETORNO", "K_ACCIONSYS", "K_INTERFACE", 
                     "K_IF", "K_TIMES", "K_DO", "K_EACH", "K_ELSE", "K_INVOKE", 
                     "K_NEW", "TIPO", "K_REFERENCIA", "K_INSPECCIONAR", 
                     "K_MATEMATICA", "K_NUM", "K_RESIZE", "K_ORDENAR", "ModoOrd", 
                     "K_BUSQUEDA", "K_TIPOBUSQUEDA", "K_WHERE", "K_SPLIT", 
                     "K_BEGIN", "K_DIR", "K_UNION", "K_VISIBILIDAD", "K_MODIFICADOR", 
                     "K_ARRAY", "K_PROPIEDAD", "K_GET", "K_SET", "K_VALUE", 
                     "K_INITIALIZE", "K_FUNC", "K_VOID", "HexLiteral", "DecimalLiteral", 
                     "OctalLiteral", "HexDigit", "Letter", "Digito", "EscapeSequence", 
                     "OctalEscape", "UnicodeEscape", "WS", "LINE_COMMENT", 
                     "Identificador" ].freeze
    RULE_METHODS = [ :t__80!, :t__81!, :t__82!, :eol!, :lpar!, :rpar!, :llaizq!, 
                     :llader!, :coma!, :punto!, :corder!, :corizq!, :delim!, 
                     :asignacion!, :doubledot!, :comilla!, :op_rel!, :op_ari!, 
                     :op_log!, :k_accionarchivo!, :k_accionarreglo!, :k_package!, 
                     :k_class!, :k_end!, :k_def!, :k_var!, :k_require!, 
                     :k_implements!, :k_extends!, :k_imprimir!, :k_conversion!, 
                     :k_asignacion!, :k_retorno!, :k_accionsys!, :k_interface!, 
                     :k_if!, :k_times!, :k_do!, :k_each!, :k_else!, :k_invoke!, 
                     :k_new!, :tipo!, :k_referencia!, :k_inspeccionar!, 
                     :k_matematica!, :k_num!, :k_resize!, :k_ordenar!, :modo_ord!, 
                     :k_busqueda!, :k_tipobusqueda!, :k_where!, :k_split!, 
                     :k_begin!, :k_dir!, :k_union!, :k_visibilidad!, :k_modificador!, 
                     :k_array!, :k_propiedad!, :k_get!, :k_set!, :k_value!, 
                     :k_initialize!, :k_func!, :k_void!, :hex_literal!, 
                     :decimal_literal!, :octal_literal!, :hex_digit!, :letter!, 
                     :digito!, :escape_sequence!, :octal_escape!, :unicode_escape!, 
                     :ws!, :line_comment!, :identificador! ].freeze

    def initialize( input=nil, options = {} )
      super( input, options )
    end


    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule t__80! (T__80)
    # (in Compilador.g)
    def t__80!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )



      type = T__80
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 7:9: '\\\\'
      match( 0x5c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )


    end

    # lexer rule t__81! (T__81)
    # (in Compilador.g)
    def t__81!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )



      type = T__81
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 8:9: 'false'
      match( "false" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )


    end

    # lexer rule t__82! (T__82)
    # (in Compilador.g)
    def t__82!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )



      type = T__82
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 9:9: 'true'
      match( "true" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )


    end

    # lexer rule eol! (EOL)
    # (in Compilador.g)
    def eol!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )



      type = EOL
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 269:3: ';'
      match( 0x3b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )


    end

    # lexer rule lpar! (LPAR)
    # (in Compilador.g)
    def lpar!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )



      type = LPAR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 273:4: '('
      match( 0x28 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )


    end

    # lexer rule rpar! (RPAR)
    # (in Compilador.g)
    def rpar!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )



      type = RPAR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 277:4: ')'
      match( 0x29 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )


    end

    # lexer rule llaizq! (LLAIZQ)
    # (in Compilador.g)
    def llaizq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )



      type = LLAIZQ
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 281:4: '{'
      match( 0x7b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )


    end

    # lexer rule llader! (LLADER)
    # (in Compilador.g)
    def llader!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )



      type = LLADER
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 285:4: '}'
      match( 0x7d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )


    end

    # lexer rule coma! (COMA)
    # (in Compilador.g)
    def coma!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )



      type = COMA
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 289:3: ','
      match( 0x2c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 9 )


    end

    # lexer rule punto! (PUNTO)
    # (in Compilador.g)
    def punto!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )



      type = PUNTO
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 293:3: '.'
      match( 0x2e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )


    end

    # lexer rule corder! (CORDER)
    # (in Compilador.g)
    def corder!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )



      type = CORDER
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 297:3: ']'
      match( 0x5d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )


    end

    # lexer rule corizq! (CORIZQ)
    # (in Compilador.g)
    def corizq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )



      type = CORIZQ
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 301:3: '['
      match( 0x5b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )


    end

    # lexer rule delim! (DELIM)
    # (in Compilador.g)
    def delim!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )



      type = DELIM
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 305:3: '|'
      match( 0x7c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )


    end

    # lexer rule asignacion! (ASIGNACION)
    # (in Compilador.g)
    def asignacion!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )



      type = ASIGNACION
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 309:3: '='
      match( 0x3d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )


    end

    # lexer rule doubledot! (DOUBLEDOT)
    # (in Compilador.g)
    def doubledot!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )



      type = DOUBLEDOT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 313:4: ':'
      match( 0x3a )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )


    end

    # lexer rule comilla! (COMILLA)
    # (in Compilador.g)
    def comilla!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )



      type = COMILLA
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 317:3: '\\''
      match( 0x27 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )


    end

    # lexer rule op_rel! (OP_REL)
    # (in Compilador.g)
    def op_rel!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )



      type = OP_REL
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 321:4: ( '>=' | '<=' | '==' | '!=' | '<' | '>' )
      # at line 321:4: ( '>=' | '<=' | '==' | '!=' | '<' | '>' )
      alt_1 = 6
      case look_1 = @input.peek( 1 )
      when 0x3e then look_1_1 = @input.peek( 2 )

      if ( look_1_1 == 0x3d )
        alt_1 = 1
      else
        alt_1 = 6

      end
      when 0x3c then look_1_2 = @input.peek( 2 )

      if ( look_1_2 == 0x3d )
        alt_1 = 2
      else
        alt_1 = 5

      end
      when 0x3d then alt_1 = 3
      when 0x21 then alt_1 = 4
      else
        raise NoViableAlternative( "", 1, 0 )

      end
      case alt_1
      when 1
        # at line 321:5: '>='
        match( ">=" )


      when 2
        # at line 321:10: '<='
        match( "<=" )


      when 3
        # at line 321:15: '=='
        match( "==" )


      when 4
        # at line 321:20: '!='
        match( "!=" )


      when 5
        # at line 321:25: '<'
        match( 0x3c )

      when 6
        # at line 321:29: '>'
        match( 0x3e )

      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )


    end

    # lexer rule op_ari! (OP_ARI)
    # (in Compilador.g)
    def op_ari!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )



      type = OP_ARI
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 
      if @input.peek( 1 ).between?( 0x2a, 0x2b ) || @input.peek(1) == 0x2d || @input.peek(1) == 0x2f
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end




      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )


    end

    # lexer rule op_log! (OP_LOG)
    # (in Compilador.g)
    def op_log!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )



      type = OP_LOG
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 329:4: ( 'and' | 'or' | 'not' | 'nand' | 'nor' )
      # at line 329:4: ( 'and' | 'or' | 'not' | 'nand' | 'nor' )
      alt_2 = 5
      case look_2 = @input.peek( 1 )
      when 0x61 then alt_2 = 1
      when 0x6f then alt_2 = 2
      when 0x6e then look_2_3 = @input.peek( 2 )

      if ( look_2_3 == 0x6f )
        look_2_4 = @input.peek( 3 )

        if ( look_2_4 == 0x74 )
          alt_2 = 3
        elsif ( look_2_4 == 0x72 )
          alt_2 = 5
        else
          raise NoViableAlternative( "", 2, 4 )

        end
      elsif ( look_2_3 == 0x61 )
        alt_2 = 4
      else
        raise NoViableAlternative( "", 2, 3 )

      end
      else
        raise NoViableAlternative( "", 2, 0 )

      end
      case alt_2
      when 1
        # at line 329:5: 'and'
        match( "and" )


      when 2
        # at line 329:11: 'or'
        match( "or" )


      when 3
        # at line 329:16: 'not'
        match( "not" )


      when 4
        # at line 329:22: 'nand'
        match( "nand" )


      when 5
        # at line 329:29: 'nor'
        match( "nor" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )


    end

    # lexer rule k_accionarchivo! (K_ACCIONARCHIVO)
    # (in Compilador.g)
    def k_accionarchivo!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )



      type = K_ACCIONARCHIVO
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 333:4: ( 'file' | 'stream' | 'open' | 'close' | 'readAll' )
      # at line 333:4: ( 'file' | 'stream' | 'open' | 'close' | 'readAll' )
      alt_3 = 5
      case look_3 = @input.peek( 1 )
      when 0x66 then alt_3 = 1
      when 0x73 then alt_3 = 2
      when 0x6f then alt_3 = 3
      when 0x63 then alt_3 = 4
      when 0x72 then alt_3 = 5
      else
        raise NoViableAlternative( "", 3, 0 )

      end
      case alt_3
      when 1
        # at line 333:5: 'file'
        match( "file" )


      when 2
        # at line 333:12: 'stream'
        match( "stream" )


      when 3
        # at line 333:21: 'open'
        match( "open" )


      when 4
        # at line 333:28: 'close'
        match( "close" )


      when 5
        # at line 333:36: 'readAll'
        match( "readAll" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )


    end

    # lexer rule k_accionarreglo! (K_ACCIONARREGLO)
    # (in Compilador.g)
    def k_accionarreglo!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )



      type = K_ACCIONARREGLO
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 337:4: ( 'push' | 'pop' | 'remove' | 'next' | 'prev' | 'val' | 'eval' )
      # at line 337:4: ( 'push' | 'pop' | 'remove' | 'next' | 'prev' | 'val' | 'eval' )
      alt_4 = 7
      case look_4 = @input.peek( 1 )
      when 0x70 then case look_4 = @input.peek( 2 )
      when 0x75 then alt_4 = 1
      when 0x6f then alt_4 = 2
      when 0x72 then alt_4 = 5
      else
        raise NoViableAlternative( "", 4, 1 )

      end
      when 0x72 then alt_4 = 3
      when 0x6e then alt_4 = 4
      when 0x76 then alt_4 = 6
      when 0x65 then alt_4 = 7
      else
        raise NoViableAlternative( "", 4, 0 )

      end
      case alt_4
      when 1
        # at line 337:5: 'push'
        match( "push" )


      when 2
        # at line 337:12: 'pop'
        match( "pop" )


      when 3
        # at line 337:18: 'remove'
        match( "remove" )


      when 4
        # at line 337:27: 'next'
        match( "next" )


      when 5
        # at line 337:34: 'prev'
        match( "prev" )


      when 6
        # at line 337:41: 'val'
        match( "val" )


      when 7
        # at line 337:47: 'eval'
        match( "eval" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )


    end

    # lexer rule k_package! (K_PACKAGE)
    # (in Compilador.g)
    def k_package!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )



      type = K_PACKAGE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 341:4: 'package'
      match( "package" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )


    end

    # lexer rule k_class! (K_CLASS)
    # (in Compilador.g)
    def k_class!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )



      type = K_CLASS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 345:4: 'class'
      match( "class" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 23 )


    end

    # lexer rule k_end! (K_END)
    # (in Compilador.g)
    def k_end!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )



      type = K_END
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 349:4: 'end'
      match( "end" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 24 )


    end

    # lexer rule k_def! (K_DEF)
    # (in Compilador.g)
    def k_def!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )



      type = K_DEF
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 353:4: 'def'
      match( "def" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )


    end

    # lexer rule k_var! (K_VAR)
    # (in Compilador.g)
    def k_var!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )



      type = K_VAR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 357:4: 'var'
      match( "var" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 26 )


    end

    # lexer rule k_require! (K_REQUIRE)
    # (in Compilador.g)
    def k_require!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )



      type = K_REQUIRE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 361:4: 'require'
      match( "require" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )


    end

    # lexer rule k_implements! (K_IMPLEMENTS)
    # (in Compilador.g)
    def k_implements!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )



      type = K_IMPLEMENTS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 365:3: 'implements'
      match( "implements" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 28 )


    end

    # lexer rule k_extends! (K_EXTENDS)
    # (in Compilador.g)
    def k_extends!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )



      type = K_EXTENDS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 369:3: 'extends'
      match( "extends" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 29 )


    end

    # lexer rule k_imprimir! (K_IMPRIMIR)
    # (in Compilador.g)
    def k_imprimir!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )



      type = K_IMPRIMIR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 373:3: ( 'puts' | 'print' | 'write' )
      # at line 373:3: ( 'puts' | 'print' | 'write' )
      alt_5 = 3
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == 0x70 )
        look_5_1 = @input.peek( 2 )

        if ( look_5_1 == 0x75 )
          alt_5 = 1
        elsif ( look_5_1 == 0x72 )
          alt_5 = 2
        else
          raise NoViableAlternative( "", 5, 1 )

        end
      elsif ( look_5_0 == 0x77 )
        alt_5 = 3
      else
        raise NoViableAlternative( "", 5, 0 )

      end
      case alt_5
      when 1
        # at line 373:4: 'puts'
        match( "puts" )


      when 2
        # at line 373:11: 'print'
        match( "print" )


      when 3
        # at line 373:19: 'write'
        match( "write" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )


    end

    # lexer rule k_conversion! (K_CONVERSION)
    # (in Compilador.g)
    def k_conversion!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )



      type = K_CONVERSION
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 377:4: ( 'STRING' | 'INT' | 'FLOAT' | 'VAR' | 'TIME' | 'DATE' )
      # at line 377:4: ( 'STRING' | 'INT' | 'FLOAT' | 'VAR' | 'TIME' | 'DATE' )
      alt_6 = 6
      case look_6 = @input.peek( 1 )
      when 0x53 then alt_6 = 1
      when 0x49 then alt_6 = 2
      when 0x46 then alt_6 = 3
      when 0x56 then alt_6 = 4
      when 0x54 then alt_6 = 5
      when 0x44 then alt_6 = 6
      else
        raise NoViableAlternative( "", 6, 0 )

      end
      case alt_6
      when 1
        # at line 377:5: 'STRING'
        match( "STRING" )


      when 2
        # at line 377:14: 'INT'
        match( "INT" )


      when 3
        # at line 377:20: 'FLOAT'
        match( "FLOAT" )


      when 4
        # at line 377:28: 'VAR'
        match( "VAR" )


      when 5
        # at line 377:34: 'TIME'
        match( "TIME" )


      when 6
        # at line 377:41: 'DATE'
        match( "DATE" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 31 )


    end

    # lexer rule k_asignacion! (K_ASIGNACION)
    # (in Compilador.g)
    def k_asignacion!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )



      type = K_ASIGNACION
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 381:3: ( 'add' | 'div' | 'mul' | 'sub' | 'pot' | 'sqrt' | 'copy' | 'del' | 'porcent' )
      # at line 381:3: ( 'add' | 'div' | 'mul' | 'sub' | 'pot' | 'sqrt' | 'copy' | 'del' | 'porcent' )
      alt_7 = 9
      case look_7 = @input.peek( 1 )
      when 0x61 then alt_7 = 1
      when 0x64 then look_7_2 = @input.peek( 2 )

      if ( look_7_2 == 0x69 )
        alt_7 = 2
      elsif ( look_7_2 == 0x65 )
        alt_7 = 8
      else
        raise NoViableAlternative( "", 7, 2 )

      end
      when 0x6d then alt_7 = 3
      when 0x73 then look_7_4 = @input.peek( 2 )

      if ( look_7_4 == 0x75 )
        alt_7 = 4
      elsif ( look_7_4 == 0x71 )
        alt_7 = 6
      else
        raise NoViableAlternative( "", 7, 4 )

      end
      when 0x70 then look_7_5 = @input.peek( 2 )

      if ( look_7_5 == 0x6f )
        look_7_11 = @input.peek( 3 )

        if ( look_7_11 == 0x74 )
          alt_7 = 5
        elsif ( look_7_11 == 0x72 )
          alt_7 = 9
        else
          raise NoViableAlternative( "", 7, 11 )

        end
      else
        raise NoViableAlternative( "", 7, 5 )

      end
      when 0x63 then alt_7 = 7
      else
        raise NoViableAlternative( "", 7, 0 )

      end
      case alt_7
      when 1
        # at line 381:4: 'add'
        match( "add" )


      when 2
        # at line 381:10: 'div'
        match( "div" )


      when 3
        # at line 381:16: 'mul'
        match( "mul" )


      when 4
        # at line 381:22: 'sub'
        match( "sub" )


      when 5
        # at line 381:28: 'pot'
        match( "pot" )


      when 6
        # at line 381:34: 'sqrt'
        match( "sqrt" )


      when 7
        # at line 381:41: 'copy'
        match( "copy" )


      when 8
        # at line 381:48: 'del'
        match( "del" )


      when 9
        # at line 381:54: 'porcent'
        match( "porcent" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 32 )


    end

    # lexer rule k_retorno! (K_RETORNO)
    # (in Compilador.g)
    def k_retorno!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )



      type = K_RETORNO
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 385:3: ( 'break' | 'return' )
      # at line 385:3: ( 'break' | 'return' )
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == 0x62 )
        alt_8 = 1
      elsif ( look_8_0 == 0x72 )
        alt_8 = 2
      else
        raise NoViableAlternative( "", 8, 0 )

      end
      case alt_8
      when 1
        # at line 385:4: 'break'
        match( "break" )


      when 2
        # at line 385:12: 'return'
        match( "return" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 33 )


    end

    # lexer rule k_accionsys! (K_ACCIONSYS)
    # (in Compilador.g)
    def k_accionsys!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )



      type = K_ACCIONSYS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 389:4: ( 'beep' | 'help' | 'exit' )
      # at line 389:4: ( 'beep' | 'help' | 'exit' )
      alt_9 = 3
      case look_9 = @input.peek( 1 )
      when 0x62 then alt_9 = 1
      when 0x68 then alt_9 = 2
      when 0x65 then alt_9 = 3
      else
        raise NoViableAlternative( "", 9, 0 )

      end
      case alt_9
      when 1
        # at line 389:5: 'beep'
        match( "beep" )


      when 2
        # at line 389:12: 'help'
        match( "help" )


      when 3
        # at line 389:19: 'exit'
        match( "exit" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 34 )


    end

    # lexer rule k_interface! (K_INTERFACE)
    # (in Compilador.g)
    def k_interface!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )



      type = K_INTERFACE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 393:4: 'interface'
      match( "interface" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 35 )


    end

    # lexer rule k_if! (K_IF)
    # (in Compilador.g)
    def k_if!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )



      type = K_IF
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 397:4: ( 'if' | 'when' )
      # at line 397:4: ( 'if' | 'when' )
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == 0x69 )
        alt_10 = 1
      elsif ( look_10_0 == 0x77 )
        alt_10 = 2
      else
        raise NoViableAlternative( "", 10, 0 )

      end
      case alt_10
      when 1
        # at line 397:5: 'if'
        match( "if" )


      when 2
        # at line 397:10: 'when'
        match( "when" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 36 )


    end

    # lexer rule k_times! (K_TIMES)
    # (in Compilador.g)
    def k_times!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )



      type = K_TIMES
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 401:4: 'times'
      match( "times" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 37 )


    end

    # lexer rule k_do! (K_DO)
    # (in Compilador.g)
    def k_do!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )



      type = K_DO
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 405:4: 'do'
      match( "do" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 38 )


    end

    # lexer rule k_each! (K_EACH)
    # (in Compilador.g)
    def k_each!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )



      type = K_EACH
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 409:4: 'each'
      match( "each" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 39 )


    end

    # lexer rule k_else! (K_ELSE)
    # (in Compilador.g)
    def k_else!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )



      type = K_ELSE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 413:4: 'else'
      match( "else" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 40 )


    end

    # lexer rule k_invoke! (K_INVOKE)
    # (in Compilador.g)
    def k_invoke!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )



      type = K_INVOKE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 417:4: 'invoke'
      match( "invoke" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 41 )


    end

    # lexer rule k_new! (K_NEW)
    # (in Compilador.g)
    def k_new!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )



      type = K_NEW
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 421:4: 'new'
      match( "new" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 42 )


    end

    # lexer rule tipo! (TIPO)
    # (in Compilador.g)
    def tipo!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )



      type = TIPO
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 425:4: ( 'bool' | 'byte' | 'bit' | 'char' | 'double' | 'int' | 'string' | 'float' | 'vector' | 'time' | 'date' | 'point' )
      # at line 425:4: ( 'bool' | 'byte' | 'bit' | 'char' | 'double' | 'int' | 'string' | 'float' | 'vector' | 'time' | 'date' | 'point' )
      alt_11 = 12
      case look_11 = @input.peek( 1 )
      when 0x62 then case look_11 = @input.peek( 2 )
      when 0x6f then alt_11 = 1
      when 0x79 then alt_11 = 2
      when 0x69 then alt_11 = 3
      else
        raise NoViableAlternative( "", 11, 1 )

      end
      when 0x63 then alt_11 = 4
      when 0x64 then look_11_3 = @input.peek( 2 )

      if ( look_11_3 == 0x6f )
        alt_11 = 5
      elsif ( look_11_3 == 0x61 )
        alt_11 = 11
      else
        raise NoViableAlternative( "", 11, 3 )

      end
      when 0x69 then alt_11 = 6
      when 0x73 then alt_11 = 7
      when 0x66 then alt_11 = 8
      when 0x76 then alt_11 = 9
      when 0x74 then alt_11 = 10
      when 0x70 then alt_11 = 12
      else
        raise NoViableAlternative( "", 11, 0 )

      end
      case alt_11
      when 1
        # at line 425:5: 'bool'
        match( "bool" )


      when 2
        # at line 425:12: 'byte'
        match( "byte" )


      when 3
        # at line 425:19: 'bit'
        match( "bit" )


      when 4
        # at line 425:25: 'char'
        match( "char" )


      when 5
        # at line 425:32: 'double'
        match( "double" )


      when 6
        # at line 425:41: 'int'
        match( "int" )


      when 7
        # at line 425:47: 'string'
        match( "string" )


      when 8
        # at line 425:56: 'float'
        match( "float" )


      when 9
        # at line 425:64: 'vector'
        match( "vector" )


      when 10
        # at line 425:73: 'time'
        match( "time" )


      when 11
        # at line 425:80: 'date'
        match( "date" )


      when 12
        # at line 425:87: 'point'
        match( "point" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 43 )


    end

    # lexer rule k_referencia! (K_REFERENCIA)
    # (in Compilador.g)
    def k_referencia!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )



      type = K_REFERENCIA
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 429:4: ( 'sizeof' | 'typeof' | 'ref' )
      # at line 429:4: ( 'sizeof' | 'typeof' | 'ref' )
      alt_12 = 3
      case look_12 = @input.peek( 1 )
      when 0x73 then alt_12 = 1
      when 0x74 then alt_12 = 2
      when 0x72 then alt_12 = 3
      else
        raise NoViableAlternative( "", 12, 0 )

      end
      case alt_12
      when 1
        # at line 429:5: 'sizeof'
        match( "sizeof" )


      when 2
        # at line 429:14: 'typeof'
        match( "typeof" )


      when 3
        # at line 429:23: 'ref'
        match( "ref" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 44 )


    end

    # lexer rule k_inspeccionar! (K_INSPECCIONAR)
    # (in Compilador.g)
    def k_inspeccionar!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 45 )



      type = K_INSPECCIONAR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 433:4: 'inspect'
      match( "inspect" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 45 )


    end

    # lexer rule k_matematica! (K_MATEMATICA)
    # (in Compilador.g)
    def k_matematica!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 46 )



      type = K_MATEMATICA
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 437:3: ( 'sin' | 'cos' | 'cot' | 'tan' | 'asin' | 'acos' | 'atan' | 'log' | 'loge' | 'logn' | 'fac' | 'avg' | 'abs' | 'fraction' | 'max' | 'min' | 'count' | 'res' )
      # at line 437:3: ( 'sin' | 'cos' | 'cot' | 'tan' | 'asin' | 'acos' | 'atan' | 'log' | 'loge' | 'logn' | 'fac' | 'avg' | 'abs' | 'fraction' | 'max' | 'min' | 'count' | 'res' )
      alt_13 = 18
      case look_13 = @input.peek( 1 )
      when 0x73 then alt_13 = 1
      when 0x63 then look_13_2 = @input.peek( 2 )

      if ( look_13_2 == 0x6f )
        case look_13 = @input.peek( 3 )
        when 0x73 then alt_13 = 2
        when 0x74 then alt_13 = 3
        when 0x75 then alt_13 = 17
        else
          raise NoViableAlternative( "", 13, 9 )

        end
      else
        raise NoViableAlternative( "", 13, 2 )

      end
      when 0x74 then alt_13 = 4
      when 0x61 then case look_13 = @input.peek( 2 )
      when 0x73 then alt_13 = 5
      when 0x63 then alt_13 = 6
      when 0x74 then alt_13 = 7
      when 0x76 then alt_13 = 12
      when 0x62 then alt_13 = 13
      else
        raise NoViableAlternative( "", 13, 4 )

      end
      when 0x6c then look_13_5 = @input.peek( 2 )

      if ( look_13_5 == 0x6f )
        look_13_15 = @input.peek( 3 )

        if ( look_13_15 == 0x67 )
          case look_13 = @input.peek( 4 )
          when 0x65 then alt_13 = 9
          when 0x6e then alt_13 = 10
          else
            alt_13 = 8

          end
        else
          raise NoViableAlternative( "", 13, 15 )

        end
      else
        raise NoViableAlternative( "", 13, 5 )

      end
      when 0x66 then look_13_6 = @input.peek( 2 )

      if ( look_13_6 == 0x61 )
        alt_13 = 11
      elsif ( look_13_6 == 0x72 )
        alt_13 = 14
      else
        raise NoViableAlternative( "", 13, 6 )

      end
      when 0x6d then look_13_7 = @input.peek( 2 )

      if ( look_13_7 == 0x61 )
        alt_13 = 15
      elsif ( look_13_7 == 0x69 )
        alt_13 = 16
      else
        raise NoViableAlternative( "", 13, 7 )

      end
      when 0x72 then alt_13 = 18
      else
        raise NoViableAlternative( "", 13, 0 )

      end
      case alt_13
      when 1
        # at line 437:4: 'sin'
        match( "sin" )


      when 2
        # at line 437:10: 'cos'
        match( "cos" )


      when 3
        # at line 437:16: 'cot'
        match( "cot" )


      when 4
        # at line 437:22: 'tan'
        match( "tan" )


      when 5
        # at line 437:28: 'asin'
        match( "asin" )


      when 6
        # at line 437:35: 'acos'
        match( "acos" )


      when 7
        # at line 437:42: 'atan'
        match( "atan" )


      when 8
        # at line 437:49: 'log'
        match( "log" )


      when 9
        # at line 437:55: 'loge'
        match( "loge" )


      when 10
        # at line 437:62: 'logn'
        match( "logn" )


      when 11
        # at line 437:69: 'fac'
        match( "fac" )


      when 12
        # at line 437:75: 'avg'
        match( "avg" )


      when 13
        # at line 437:81: 'abs'
        match( "abs" )


      when 14
        # at line 437:87: 'fraction'
        match( "fraction" )


      when 15
        # at line 437:98: 'max'
        match( "max" )


      when 16
        # at line 437:104: 'min'
        match( "min" )


      when 17
        # at line 437:110: 'count'
        match( "count" )


      when 18
        # at line 437:118: 'res'
        match( "res" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 46 )


    end

    # lexer rule k_num! (K_NUM)
    # (in Compilador.g)
    def k_num!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 47 )



      type = K_NUM
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 441:4: ( 'round' | 'aleatorio' | 'between' )
      # at line 441:4: ( 'round' | 'aleatorio' | 'between' )
      alt_14 = 3
      case look_14 = @input.peek( 1 )
      when 0x72 then alt_14 = 1
      when 0x61 then alt_14 = 2
      when 0x62 then alt_14 = 3
      else
        raise NoViableAlternative( "", 14, 0 )

      end
      case alt_14
      when 1
        # at line 441:5: 'round'
        match( "round" )


      when 2
        # at line 441:13: 'aleatorio'
        match( "aleatorio" )


      when 3
        # at line 441:25: 'between'
        match( "between" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 47 )


    end

    # lexer rule k_resize! (K_RESIZE)
    # (in Compilador.g)
    def k_resize!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 48 )



      type = K_RESIZE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 445:3: 'resize'
      match( "resize" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 48 )


    end

    # lexer rule k_ordenar! (K_ORDENAR)
    # (in Compilador.g)
    def k_ordenar!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 49 )



      type = K_ORDENAR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 449:3: 'sort'
      match( "sort" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 49 )


    end

    # lexer rule modo_ord! (ModoOrd)
    # (in Compilador.g)
    def modo_ord!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 50 )



      type = ModoOrd
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 453:3: ( 'asc' | 'desc' )
      # at line 453:3: ( 'asc' | 'desc' )
      alt_15 = 2
      look_15_0 = @input.peek( 1 )

      if ( look_15_0 == 0x61 )
        alt_15 = 1
      elsif ( look_15_0 == 0x64 )
        alt_15 = 2
      else
        raise NoViableAlternative( "", 15, 0 )

      end
      case alt_15
      when 1
        # at line 453:4: 'asc'
        match( "asc" )


      when 2
        # at line 453:10: 'desc'
        match( "desc" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 50 )


    end

    # lexer rule k_busqueda! (K_BUSQUEDA)
    # (in Compilador.g)
    def k_busqueda!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 51 )



      type = K_BUSQUEDA
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 457:3: 'search'
      match( "search" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 51 )


    end

    # lexer rule k_tipobusqueda! (K_TIPOBUSQUEDA)
    # (in Compilador.g)
    def k_tipobusqueda!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 52 )



      type = K_TIPOBUSQUEDA
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 461:3: ( 'like' | 'equals' | 'dif' )
      # at line 461:3: ( 'like' | 'equals' | 'dif' )
      alt_16 = 3
      case look_16 = @input.peek( 1 )
      when 0x6c then alt_16 = 1
      when 0x65 then alt_16 = 2
      when 0x64 then alt_16 = 3
      else
        raise NoViableAlternative( "", 16, 0 )

      end
      case alt_16
      when 1
        # at line 461:4: 'like'
        match( "like" )


      when 2
        # at line 461:11: 'equals'
        match( "equals" )


      when 3
        # at line 461:20: 'dif'
        match( "dif" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 52 )


    end

    # lexer rule k_where! (K_WHERE)
    # (in Compilador.g)
    def k_where!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 53 )



      type = K_WHERE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 465:4: 'where'
      match( "where" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 53 )


    end

    # lexer rule k_split! (K_SPLIT)
    # (in Compilador.g)
    def k_split!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 54 )



      type = K_SPLIT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 469:4: 'split'
      match( "split" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 54 )


    end

    # lexer rule k_begin! (K_BEGIN)
    # (in Compilador.g)
    def k_begin!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 55 )



      type = K_BEGIN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 473:3: 'begin'
      match( "begin" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 55 )


    end

    # lexer rule k_dir! (K_DIR)
    # (in Compilador.g)
    def k_dir!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 56 )



      type = K_DIR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 477:3: 'dir'
      match( "dir" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 56 )


    end

    # lexer rule k_union! (K_UNION)
    # (in Compilador.g)
    def k_union!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 57 )



      type = K_UNION
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 481:3: 'union'
      match( "union" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 57 )


    end

    # lexer rule k_visibilidad! (K_VISIBILIDAD)
    # (in Compilador.g)
    def k_visibilidad!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 58 )



      type = K_VISIBILIDAD
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 485:4: ( 'private' | 'protected' | 'public' | 'global' )
      # at line 485:4: ( 'private' | 'protected' | 'public' | 'global' )
      alt_17 = 4
      look_17_0 = @input.peek( 1 )

      if ( look_17_0 == 0x70 )
        look_17_1 = @input.peek( 2 )

        if ( look_17_1 == 0x72 )
          look_17_3 = @input.peek( 3 )

          if ( look_17_3 == 0x69 )
            alt_17 = 1
          elsif ( look_17_3 == 0x6f )
            alt_17 = 2
          else
            raise NoViableAlternative( "", 17, 3 )

          end
        elsif ( look_17_1 == 0x75 )
          alt_17 = 3
        else
          raise NoViableAlternative( "", 17, 1 )

        end
      elsif ( look_17_0 == 0x67 )
        alt_17 = 4
      else
        raise NoViableAlternative( "", 17, 0 )

      end
      case alt_17
      when 1
        # at line 485:5: 'private'
        match( "private" )


      when 2
        # at line 485:15: 'protected'
        match( "protected" )


      when 3
        # at line 485:27: 'public'
        match( "public" )


      when 4
        # at line 485:36: 'global'
        match( "global" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 58 )


    end

    # lexer rule k_modificador! (K_MODIFICADOR)
    # (in Compilador.g)
    def k_modificador!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 59 )



      type = K_MODIFICADOR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 489:4: ( 'static' | 'abstract' | 'constant' | 'final' | 'virtual' )
      # at line 489:4: ( 'static' | 'abstract' | 'constant' | 'final' | 'virtual' )
      alt_18 = 5
      case look_18 = @input.peek( 1 )
      when 0x73 then alt_18 = 1
      when 0x61 then alt_18 = 2
      when 0x63 then alt_18 = 3
      when 0x66 then alt_18 = 4
      when 0x76 then alt_18 = 5
      else
        raise NoViableAlternative( "", 18, 0 )

      end
      case alt_18
      when 1
        # at line 489:5: 'static'
        match( "static" )


      when 2
        # at line 489:14: 'abstract'
        match( "abstract" )


      when 3
        # at line 489:25: 'constant'
        match( "constant" )


      when 4
        # at line 489:36: 'final'
        match( "final" )


      when 5
        # at line 489:44: 'virtual'
        match( "virtual" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 59 )


    end

    # lexer rule k_array! (K_ARRAY)
    # (in Compilador.g)
    def k_array!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 60 )



      type = K_ARRAY
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 493:3: 'array'
      match( "array" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 60 )


    end

    # lexer rule k_propiedad! (K_PROPIEDAD)
    # (in Compilador.g)
    def k_propiedad!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 61 )



      type = K_PROPIEDAD
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 497:4: 'property'
      match( "property" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 61 )


    end

    # lexer rule k_get! (K_GET)
    # (in Compilador.g)
    def k_get!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 62 )



      type = K_GET
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 501:3: 'get'
      match( "get" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 62 )


    end

    # lexer rule k_set! (K_SET)
    # (in Compilador.g)
    def k_set!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 63 )



      type = K_SET
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 505:3: 'set'
      match( "set" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 63 )


    end

    # lexer rule k_value! (K_VALUE)
    # (in Compilador.g)
    def k_value!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 64 )



      type = K_VALUE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 509:3: 'value'
      match( "value" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 64 )


    end

    # lexer rule k_initialize! (K_INITIALIZE)
    # (in Compilador.g)
    def k_initialize!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 65 )



      type = K_INITIALIZE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 513:3: 'initialize'
      match( "initialize" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 65 )


    end

    # lexer rule k_func! (K_FUNC)
    # (in Compilador.g)
    def k_func!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 66 )



      type = K_FUNC
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 517:3: 'func'
      match( "func" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 66 )


    end

    # lexer rule k_void! (K_VOID)
    # (in Compilador.g)
    def k_void!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 67 )



      type = K_VOID
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 521:3: 'void'
      match( "void" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 67 )


    end

    # lexer rule hex_literal! (HexLiteral)
    # (in Compilador.g)
    def hex_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 68 )



      type = HexLiteral
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 523:14: '0' ( 'x' | 'X' ) ( HexDigit )+
      match( 0x30 )
      if @input.peek(1) == 0x58 || @input.peek(1) == 0x78
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end


      # at file 523:28: ( HexDigit )+
      match_count_19 = 0
      while true
        alt_19 = 2
        look_19_0 = @input.peek( 1 )

        if ( look_19_0.between?( 0x30, 0x39 ) || look_19_0.between?( 0x41, 0x46 ) || look_19_0.between?( 0x61, 0x66 ) )
          alt_19 = 1

        end
        case alt_19
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x46 ) || @input.peek( 1 ).between?( 0x61, 0x66 )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_19 > 0 and break
          eee = EarlyExit(19)


          raise eee
        end
        match_count_19 += 1
      end




      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 68 )


    end

    # lexer rule decimal_literal! (DecimalLiteral)
    # (in Compilador.g)
    def decimal_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 69 )



      type = DecimalLiteral
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 525:18: ( '0' | '1' .. '9' ( '0' .. '9' )* )
      # at line 525:18: ( '0' | '1' .. '9' ( '0' .. '9' )* )
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == 0x30 )
        alt_21 = 1
      elsif ( look_21_0.between?( 0x31, 0x39 ) )
        alt_21 = 2
      else
        raise NoViableAlternative( "", 21, 0 )

      end
      case alt_21
      when 1
        # at line 525:19: '0'
        match( 0x30 )

      when 2
        # at line 525:25: '1' .. '9' ( '0' .. '9' )*
        match_range( 0x31, 0x39 )
        # at line 525:34: ( '0' .. '9' )*
        while true # decision 20
          alt_20 = 2
          look_20_0 = @input.peek( 1 )

          if ( look_20_0.between?( 0x30, 0x39 ) )
            alt_20 = 1

          end
          case alt_20
          when 1
            # at line 
            if @input.peek( 1 ).between?( 0x30, 0x39 )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse

            end



          else
            break # out of loop for decision 20
          end
        end # loop for decision 20


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 69 )


    end

    # lexer rule octal_literal! (OctalLiteral)
    # (in Compilador.g)
    def octal_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 70 )



      type = OctalLiteral
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 527:16: '0' ( '0' .. '7' )+
      match( 0x30 )
      # at file 527:20: ( '0' .. '7' )+
      match_count_22 = 0
      while true
        alt_22 = 2
        look_22_0 = @input.peek( 1 )

        if ( look_22_0.between?( 0x30, 0x37 ) )
          alt_22 = 1

        end
        case alt_22
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x37 )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_22 > 0 and break
          eee = EarlyExit(22)


          raise eee
        end
        match_count_22 += 1
      end




      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 70 )


    end

    # lexer rule hex_digit! (HexDigit)
    # (in Compilador.g)
    def hex_digit!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 71 )


    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 
      if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x46 ) || @input.peek( 1 ).between?( 0x61, 0x66 )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 71 )


    end

    # lexer rule letter! (Letter)
    # (in Compilador.g)
    def letter!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 72 )


    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 
      if @input.peek(1) == 0x24 || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a ) || @input.peek( 1 ).between?( 0xc0, 0xd6 ) || @input.peek( 1 ).between?( 0xd8, 0xf6 ) || @input.peek( 1 ).between?( 0xf8, 0x1fff ) || @input.peek( 1 ).between?( 0x3040, 0x318f ) || @input.peek( 1 ).between?( 0x3300, 0x337f ) || @input.peek( 1 ).between?( 0x3400, 0x3d2d ) || @input.peek( 1 ).between?( 0x4e00, 0x9fff ) || @input.peek( 1 ).between?( 0xf900, 0xfaff )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 72 )


    end

    # lexer rule digito! (Digito)
    # (in Compilador.g)
    def digito!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 73 )


    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 
      if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x660, 0x669 ) || @input.peek( 1 ).between?( 0x6f0, 0x6f9 ) || @input.peek( 1 ).between?( 0x966, 0x96f ) || @input.peek( 1 ).between?( 0x9e6, 0x9ef ) || @input.peek( 1 ).between?( 0xa66, 0xa6f ) || @input.peek( 1 ).between?( 0xae6, 0xaef ) || @input.peek( 1 ).between?( 0xb66, 0xb6f ) || @input.peek( 1 ).between?( 0xbe7, 0xbef ) || @input.peek( 1 ).between?( 0xc66, 0xc6f ) || @input.peek( 1 ).between?( 0xce6, 0xcef ) || @input.peek( 1 ).between?( 0xd66, 0xd6f ) || @input.peek( 1 ).between?( 0xe50, 0xe59 ) || @input.peek( 1 ).between?( 0xed0, 0xed9 ) || @input.peek( 1 ).between?( 0x1040, 0x1049 )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 73 )


    end

    # lexer rule escape_sequence! (EscapeSequence)
    # (in Compilador.g)
    def escape_sequence!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 74 )


    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 587:7: ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' ) | UnicodeEscape | OctalEscape )
      alt_23 = 3
      look_23_0 = @input.peek( 1 )

      if ( look_23_0 == 0x5c )
        case look_23 = @input.peek( 2 )
        when 0x22, 0x27, 0x5c, 0x62, 0x66, 0x6e, 0x72, 0x74 then alt_23 = 1
        when 0x75 then alt_23 = 2
        when 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37 then alt_23 = 3
        else
          raise NoViableAlternative( "", 23, 1 )

        end
      else
        raise NoViableAlternative( "", 23, 0 )

      end
      case alt_23
      when 1
        # at line 587:11: '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' )
        match( 0x5c )
        if @input.peek(1) == 0x22 || @input.peek(1) == 0x27 || @input.peek(1) == 0x5c || @input.peek(1) == 0x62 || @input.peek(1) == 0x66 || @input.peek(1) == 0x6e || @input.peek(1) == 0x72 || @input.peek(1) == 0x74
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end



      when 2
        # at line 588:11: UnicodeEscape
        unicode_escape!


      when 3
        # at line 589:11: OctalEscape
        octal_escape!


      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 74 )


    end

    # lexer rule octal_escape! (OctalEscape)
    # (in Compilador.g)
    def octal_escape!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 75 )


    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 594:7: ( '\\\\' ( '0' .. '3' ) ( '0' .. '7' ) ( '0' .. '7' ) | '\\\\' ( '0' .. '7' ) ( '0' .. '7' ) | '\\\\' ( '0' .. '7' ) )
      alt_24 = 3
      look_24_0 = @input.peek( 1 )

      if ( look_24_0 == 0x5c )
        look_24_1 = @input.peek( 2 )

        if ( look_24_1.between?( 0x30, 0x33 ) )
          look_24_2 = @input.peek( 3 )

          if ( look_24_2.between?( 0x30, 0x37 ) )
            look_24_4 = @input.peek( 4 )

            if ( look_24_4.between?( 0x30, 0x37 ) )
              alt_24 = 1
            else
              alt_24 = 2

            end
          else
            alt_24 = 3

          end
        elsif ( look_24_1.between?( 0x34, 0x37 ) )
          look_24_3 = @input.peek( 3 )

          if ( look_24_3.between?( 0x30, 0x37 ) )
            alt_24 = 2
          else
            alt_24 = 3

          end
        else
          raise NoViableAlternative( "", 24, 1 )

        end
      else
        raise NoViableAlternative( "", 24, 0 )

      end
      case alt_24
      when 1
        # at line 594:11: '\\\\' ( '0' .. '3' ) ( '0' .. '7' ) ( '0' .. '7' )
        match( 0x5c )
        if @input.peek( 1 ).between?( 0x30, 0x33 )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end


        if @input.peek( 1 ).between?( 0x30, 0x37 )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end


        if @input.peek( 1 ).between?( 0x30, 0x37 )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end



      when 2
        # at line 595:11: '\\\\' ( '0' .. '7' ) ( '0' .. '7' )
        match( 0x5c )
        if @input.peek( 1 ).between?( 0x30, 0x37 )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end


        if @input.peek( 1 ).between?( 0x30, 0x37 )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end



      when 3
        # at line 596:11: '\\\\' ( '0' .. '7' )
        match( 0x5c )
        if @input.peek( 1 ).between?( 0x30, 0x37 )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end



      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 75 )


    end

    # lexer rule unicode_escape! (UnicodeEscape)
    # (in Compilador.g)
    def unicode_escape!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 76 )


    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 601:11: '\\\\' 'u' HexDigit HexDigit HexDigit HexDigit
      match( 0x5c )
      match( 0x75 )

      hex_digit!


      hex_digit!


      hex_digit!


      hex_digit!


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 76 )


    end

    # lexer rule ws! (WS)
    # (in Compilador.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 77 )



      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 604:6: ( ' ' | '\\r' | '\\t' | '\\u000C' | '\\n' )
      if @input.peek( 1 ).between?( 0x9, 0xa ) || @input.peek( 1 ).between?( 0xc, 0xd ) || @input.peek(1) == 0x20
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end



      # --> action
      channel=HIDDEN;
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 77 )


    end

    # lexer rule line_comment! (LINE_COMMENT)
    # (in Compilador.g)
    def line_comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 78 )



      type = LINE_COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 608:8: '#' (~ ( '\\n' | '\\r' ) )* ( '\\r' )? '\\n'
      match( 0x23 )
      # at line 608:12: (~ ( '\\n' | '\\r' ) )*
      while true # decision 25
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0.between?( 0x0, 0x9 ) || look_25_0.between?( 0xb, 0xc ) || look_25_0.between?( 0xe, 0xffff ) )
          alt_25 = 1

        end
        case alt_25
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xc ) || @input.peek( 1 ).between?( 0xe, 0xffff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          break # out of loop for decision 25
        end
      end # loop for decision 25

      # at line 608:26: ( '\\r' )?
      alt_26 = 2
      look_26_0 = @input.peek( 1 )

      if ( look_26_0 == 0xd )
        alt_26 = 1
      end
      case alt_26
      when 1
        # at line 608:26: '\\r'
        match( 0xd )

      end
      match( 0xa )

      # --> action
      channel=HIDDEN;
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 78 )


    end

    # lexer rule identificador! (Identificador)
    # (in Compilador.g)
    def identificador!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 79 )



      type = Identificador
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 616:6: Letter ( Letter | Digito )*
      letter!

      # at line 616:13: ( Letter | Digito )*
      while true # decision 27
        alt_27 = 2
        look_27_0 = @input.peek( 1 )

        if ( look_27_0 == 0x24 || look_27_0.between?( 0x30, 0x39 ) || look_27_0.between?( 0x41, 0x5a ) || look_27_0 == 0x5f || look_27_0.between?( 0x61, 0x7a ) || look_27_0.between?( 0xc0, 0xd6 ) || look_27_0.between?( 0xd8, 0xf6 ) || look_27_0.between?( 0xf8, 0x1fff ) || look_27_0.between?( 0x3040, 0x318f ) || look_27_0.between?( 0x3300, 0x337f ) || look_27_0.between?( 0x3400, 0x3d2d ) || look_27_0.between?( 0x4e00, 0x9fff ) || look_27_0.between?( 0xf900, 0xfaff ) )
          alt_27 = 1

        end
        case alt_27
        when 1
          # at line 
          if @input.peek(1) == 0x24 || @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a ) || @input.peek( 1 ).between?( 0xc0, 0xd6 ) || @input.peek( 1 ).between?( 0xd8, 0xf6 ) || @input.peek( 1 ).between?( 0xf8, 0x1fff ) || @input.peek( 1 ).between?( 0x3040, 0x318f ) || @input.peek( 1 ).between?( 0x3300, 0x337f ) || @input.peek( 1 ).between?( 0x3400, 0x3d2d ) || @input.peek( 1 ).between?( 0x4e00, 0x9fff ) || @input.peek( 1 ).between?( 0xf900, 0xfaff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          break # out of loop for decision 27
        end
      end # loop for decision 27



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 79 )


    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    #
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( T__80 | T__81 | T__82 | EOL | LPAR | RPAR | LLAIZQ | LLADER | COMA | PUNTO | CORDER | CORIZQ | DELIM | ASIGNACION | DOUBLEDOT | COMILLA | OP_REL | OP_ARI | OP_LOG | K_ACCIONARCHIVO | K_ACCIONARREGLO | K_PACKAGE | K_CLASS | K_END | K_DEF | K_VAR | K_REQUIRE | K_IMPLEMENTS | K_EXTENDS | K_IMPRIMIR | K_CONVERSION | K_ASIGNACION | K_RETORNO | K_ACCIONSYS | K_INTERFACE | K_IF | K_TIMES | K_DO | K_EACH | K_ELSE | K_INVOKE | K_NEW | TIPO | K_REFERENCIA | K_INSPECCIONAR | K_MATEMATICA | K_NUM | K_RESIZE | K_ORDENAR | ModoOrd | K_BUSQUEDA | K_TIPOBUSQUEDA | K_WHERE | K_SPLIT | K_BEGIN | K_DIR | K_UNION | K_VISIBILIDAD | K_MODIFICADOR | K_ARRAY | K_PROPIEDAD | K_GET | K_SET | K_VALUE | K_INITIALIZE | K_FUNC | K_VOID | HexLiteral | DecimalLiteral | OctalLiteral | WS | LINE_COMMENT | Identificador )
      alt_28 = 73
      alt_28 = @dfa28.predict( @input )
      case alt_28
      when 1
        # at line 1:10: T__80
        t__80!


      when 2
        # at line 1:16: T__81
        t__81!


      when 3
        # at line 1:22: T__82
        t__82!


      when 4
        # at line 1:28: EOL
        eol!


      when 5
        # at line 1:32: LPAR
        lpar!


      when 6
        # at line 1:37: RPAR
        rpar!


      when 7
        # at line 1:42: LLAIZQ
        llaizq!


      when 8
        # at line 1:49: LLADER
        llader!


      when 9
        # at line 1:56: COMA
        coma!


      when 10
        # at line 1:61: PUNTO
        punto!


      when 11
        # at line 1:67: CORDER
        corder!


      when 12
        # at line 1:74: CORIZQ
        corizq!


      when 13
        # at line 1:81: DELIM
        delim!


      when 14
        # at line 1:87: ASIGNACION
        asignacion!


      when 15
        # at line 1:98: DOUBLEDOT
        doubledot!


      when 16
        # at line 1:108: COMILLA
        comilla!


      when 17
        # at line 1:116: OP_REL
        op_rel!


      when 18
        # at line 1:123: OP_ARI
        op_ari!


      when 19
        # at line 1:130: OP_LOG
        op_log!


      when 20
        # at line 1:137: K_ACCIONARCHIVO
        k_accionarchivo!


      when 21
        # at line 1:153: K_ACCIONARREGLO
        k_accionarreglo!


      when 22
        # at line 1:169: K_PACKAGE
        k_package!


      when 23
        # at line 1:179: K_CLASS
        k_class!


      when 24
        # at line 1:187: K_END
        k_end!


      when 25
        # at line 1:193: K_DEF
        k_def!


      when 26
        # at line 1:199: K_VAR
        k_var!


      when 27
        # at line 1:205: K_REQUIRE
        k_require!


      when 28
        # at line 1:215: K_IMPLEMENTS
        k_implements!


      when 29
        # at line 1:228: K_EXTENDS
        k_extends!


      when 30
        # at line 1:238: K_IMPRIMIR
        k_imprimir!


      when 31
        # at line 1:249: K_CONVERSION
        k_conversion!


      when 32
        # at line 1:262: K_ASIGNACION
        k_asignacion!


      when 33
        # at line 1:275: K_RETORNO
        k_retorno!


      when 34
        # at line 1:285: K_ACCIONSYS
        k_accionsys!


      when 35
        # at line 1:297: K_INTERFACE
        k_interface!


      when 36
        # at line 1:309: K_IF
        k_if!


      when 37
        # at line 1:314: K_TIMES
        k_times!


      when 38
        # at line 1:322: K_DO
        k_do!


      when 39
        # at line 1:327: K_EACH
        k_each!


      when 40
        # at line 1:334: K_ELSE
        k_else!


      when 41
        # at line 1:341: K_INVOKE
        k_invoke!


      when 42
        # at line 1:350: K_NEW
        k_new!


      when 43
        # at line 1:356: TIPO
        tipo!


      when 44
        # at line 1:361: K_REFERENCIA
        k_referencia!


      when 45
        # at line 1:374: K_INSPECCIONAR
        k_inspeccionar!


      when 46
        # at line 1:389: K_MATEMATICA
        k_matematica!


      when 47
        # at line 1:402: K_NUM
        k_num!


      when 48
        # at line 1:408: K_RESIZE
        k_resize!


      when 49
        # at line 1:417: K_ORDENAR
        k_ordenar!


      when 50
        # at line 1:427: ModoOrd
        modo_ord!


      when 51
        # at line 1:435: K_BUSQUEDA
        k_busqueda!


      when 52
        # at line 1:446: K_TIPOBUSQUEDA
        k_tipobusqueda!


      when 53
        # at line 1:461: K_WHERE
        k_where!


      when 54
        # at line 1:469: K_SPLIT
        k_split!


      when 55
        # at line 1:477: K_BEGIN
        k_begin!


      when 56
        # at line 1:485: K_DIR
        k_dir!


      when 57
        # at line 1:491: K_UNION
        k_union!


      when 58
        # at line 1:499: K_VISIBILIDAD
        k_visibilidad!


      when 59
        # at line 1:513: K_MODIFICADOR
        k_modificador!


      when 60
        # at line 1:527: K_ARRAY
        k_array!


      when 61
        # at line 1:535: K_PROPIEDAD
        k_propiedad!


      when 62
        # at line 1:547: K_GET
        k_get!


      when 63
        # at line 1:553: K_SET
        k_set!


      when 64
        # at line 1:559: K_VALUE
        k_value!


      when 65
        # at line 1:567: K_INITIALIZE
        k_initialize!


      when 66
        # at line 1:580: K_FUNC
        k_func!


      when 67
        # at line 1:587: K_VOID
        k_void!


      when 68
        # at line 1:594: HexLiteral
        hex_literal!


      when 69
        # at line 1:605: DecimalLiteral
        decimal_literal!


      when 70
        # at line 1:620: OctalLiteral
        octal_literal!


      when 71
        # at line 1:633: WS
        ws!


      when 72
        # at line 1:636: LINE_COMMENT
        line_comment!


      when 73
        # at line 1:649: Identificador
        identificador!


      end
    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA28 < ANTLR3::DFA
      EOT = unpack( 2, -1, 2, 47, 10, -1, 1, 57, 4, -1, 24, 47, 1, 44, 4, 
                    -1, 9, 47, 1, -1, 9, 47, 1, 150, 32, 47, 1, 212, 3, 
                    47, 1, 219, 22, 47, 2, -1, 1, 47, 1, 245, 8, 47, 1, 
                    245, 1, 150, 1, 254, 1, 47, 1, 256, 2, 47, 2, 245, 2, 
                    47, 1, -1, 1, 47, 2, 150, 2, 47, 1, 265, 2, 47, 1, 254, 
                    2, 47, 1, 245, 2, 47, 1, 273, 4, 47, 2, 245, 7, 47, 
                    1, 285, 1, 245, 4, 47, 1, 291, 1, 254, 6, 47, 1, 291, 
                    1, 301, 4, 47, 1, 306, 5, 47, 1, 312, 1, 254, 1, 47, 
                    1, 254, 1, 314, 1, 315, 1, 47, 1, -1, 2, 47, 1, 320, 
                    3, 47, 1, -1, 3, 47, 1, 328, 1, 47, 1, 328, 2, 47, 1, 
                    254, 2, 245, 6, 47, 1, 320, 1, 47, 1, 245, 3, 47, 1, 
                    344, 1, 47, 1, -1, 1, 346, 3, 47, 1, 350, 1, 351, 1, 
                    320, 1, 47, 1, -1, 1, 245, 1, -1, 2, 245, 3, 47, 1, 
                    346, 1, 150, 1, 291, 1, -1, 3, 47, 1, 254, 1, 47, 1, 
                    361, 1, 47, 1, -1, 3, 47, 1, 254, 2, 47, 1, 320, 4, 
                    47, 1, -1, 2, 47, 1, 291, 1, 374, 1, 47, 1, -1, 2, 47, 
                    1, 291, 6, 47, 1, -1, 2, 47, 1, 386, 1, 291, 1, -1, 
                    1, 47, 1, 388, 1, 389, 1, 390, 1, 47, 1, -1, 1, 256, 
                    2, -1, 1, 47, 1, 320, 2, 47, 1, -1, 4, 47, 1, 219, 2, 
                    47, 1, -1, 1, 47, 2, 328, 1, 47, 1, 388, 2, 47, 2, 320, 
                    1, 388, 2, 245, 1, 314, 2, 47, 1, -1, 1, 407, 1, -1, 
                    1, 408, 1, 320, 1, 47, 2, -1, 1, 410, 3, 47, 1, 414, 
                    4, 47, 1, -1, 1, 47, 1, 420, 1, 346, 1, 421, 1, 245, 
                    6, 47, 1, 428, 1, -1, 2, 47, 1, 320, 1, 374, 4, 47, 
                    1, 435, 2, 47, 1, -1, 1, 47, 3, -1, 7, 47, 1, 374, 1, 
                    446, 1, 47, 1, 328, 1, 448, 1, 47, 1, 450, 1, 451, 1, 
                    47, 2, -1, 1, 47, 1, -1, 1, 285, 2, 47, 1, -1, 1, 346, 
                    1, 320, 1, 408, 1, 285, 1, 456, 2, -1, 2, 47, 1, 291, 
                    1, 47, 1, 448, 1, 460, 1, -1, 1, 461, 5, 47, 1, -1, 
                    1, 320, 2, 47, 1, 314, 1, 320, 2, 47, 1, 471, 2, 47, 
                    1, -1, 1, 328, 1, -1, 1, 47, 2, -1, 1, 461, 3, 47, 1, 
                    -1, 1, 47, 1, 346, 1, 479, 2, -1, 1, 254, 1, 461, 2, 
                    47, 1, 482, 1, 408, 1, 483, 2, 47, 1, -1, 1, 486, 1, 
                    47, 1, 428, 1, 245, 1, 408, 1, 47, 1, 408, 1, -1, 1, 
                    47, 1, 490, 2, -1, 2, 47, 1, -1, 1, 47, 1, 428, 1, 461, 
                    1, -1, 1, 47, 1, 495, 1, 47, 1, 497, 1, -1, 1, 498, 
                    2, -1 )
      EOF = unpack( 499, -1 )
      MIN = unpack( 1, 9, 1, -1, 2, 97, 10, -1, 1, 61, 4, -1, 1, 98, 1, 
                    112, 1, 97, 1, 101, 1, 104, 1, 101, 4, 97, 1, 102, 1, 
                    104, 1, 84, 1, 78, 1, 76, 1, 65, 1, 73, 1, 65, 1, 97, 
                    2, 101, 1, 105, 1, 110, 1, 101, 1, 48, 4, -1, 1, 99, 
                    1, 108, 1, 111, 1, 97, 1, 110, 1, 117, 1, 109, 1, 112, 
                    1, 110, 1, -1, 2, 100, 1, 99, 1, 111, 1, 97, 1, 103, 
                    1, 115, 1, 101, 1, 114, 1, 36, 1, 101, 1, 114, 1, 110, 
                    1, 119, 1, 97, 1, 98, 1, 114, 1, 110, 1, 114, 1, 97, 
                    1, 108, 1, 97, 1, 110, 2, 97, 1, 117, 1, 98, 1, 105, 
                    1, 101, 1, 99, 1, 108, 1, 99, 1, 114, 1, 105, 1, 97, 
                    1, 100, 1, 105, 1, 99, 1, 115, 1, 117, 2, 102, 1, 36, 
                    1, 116, 1, 112, 1, 105, 1, 36, 1, 105, 1, 101, 1, 82, 
                    1, 84, 1, 79, 1, 82, 1, 77, 1, 84, 1, 108, 1, 120, 1, 
                    110, 2, 101, 1, 111, 2, 116, 1, 108, 1, 103, 1, 107, 
                    1, 105, 1, 111, 1, 116, 2, -1, 1, 115, 1, 36, 1, 101, 
                    2, 97, 2, 99, 3, 101, 3, 36, 1, 110, 1, 36, 1, 115, 
                    1, 110, 2, 36, 2, 97, 1, -1, 1, 110, 2, 36, 1, 100, 
                    1, 116, 1, 36, 1, 101, 1, 116, 1, 36, 1, 116, 1, 101, 
                    1, 36, 1, 116, 1, 114, 1, 36, 1, 105, 2, 115, 1, 121, 
                    2, 36, 1, 110, 1, 115, 1, 114, 1, 100, 1, 111, 2, 117, 
                    2, 36, 1, 110, 1, 104, 1, 115, 1, 108, 2, 36, 1, 99, 
                    1, 110, 1, 118, 1, 110, 1, 112, 1, 107, 2, 36, 2, 116, 
                    1, 100, 1, 108, 1, 36, 1, 101, 1, 116, 1, 104, 1, 101, 
                    1, 97, 2, 36, 1, 99, 3, 36, 1, 98, 1, -1, 1, 101, 1, 
                    108, 1, 36, 1, 111, 1, 112, 1, 116, 1, -1, 1, 116, 1, 
                    110, 1, 73, 1, 36, 1, 65, 1, 36, 2, 69, 3, 36, 1, 97, 
                    1, 112, 1, 119, 1, 105, 1, 108, 1, 101, 1, 36, 1, 112, 
                    1, 36, 1, 101, 1, 111, 1, 98, 1, 36, 1, 101, 1, -1, 
                    1, 36, 1, 108, 2, 116, 3, 36, 1, 111, 1, -1, 1, 36, 
                    1, -1, 2, 36, 1, 114, 1, 116, 1, 121, 3, 36, 1, -1, 
                    1, 97, 1, 110, 1, 105, 1, 36, 1, 111, 1, 36, 1, 99, 
                    1, -1, 1, 116, 1, 101, 1, 115, 1, 36, 2, 116, 1, 36, 
                    1, 65, 1, 118, 1, 105, 1, 114, 1, -1, 1, 122, 1, 100, 
                    2, 36, 1, 105, 1, -1, 1, 101, 1, 116, 1, 36, 1, 116, 
                    1, 97, 2, 101, 1, 97, 1, 101, 1, -1, 1, 111, 1, 117, 
                    2, 36, 1, -1, 1, 110, 3, 36, 1, 108, 1, -1, 1, 36, 2, 
                    -1, 1, 108, 1, 36, 1, 101, 1, 114, 1, -1, 1, 107, 1, 
                    101, 1, 105, 1, 101, 1, 36, 1, 101, 1, 78, 1, -1, 1, 
                    84, 2, 36, 1, 107, 1, 36, 1, 101, 1, 110, 6, 36, 1, 
                    110, 1, 97, 1, -1, 1, 36, 1, -1, 2, 36, 1, 105, 2, -1, 
                    1, 36, 1, 102, 1, 97, 1, 111, 1, 36, 1, 109, 1, 103, 
                    1, 99, 1, 102, 1, -1, 1, 104, 4, 36, 1, 97, 1, 108, 
                    1, 101, 1, 114, 1, 110, 1, 101, 1, 36, 1, -1, 1, 99, 
                    1, 110, 2, 36, 1, 116, 1, 99, 1, 114, 1, 103, 1, 36, 
                    1, 114, 1, 97, 1, -1, 1, 100, 3, -1, 1, 115, 1, 101, 
                    1, 109, 1, 102, 1, 101, 1, 99, 1, 97, 2, 36, 1, 71, 
                    2, 36, 1, 101, 2, 36, 1, 108, 2, -1, 1, 111, 1, -1, 
                    1, 36, 1, 99, 1, 114, 1, -1, 5, 36, 2, -1, 1, 110, 1, 
                    108, 1, 36, 1, 101, 2, 36, 1, -1, 1, 36, 1, 116, 1, 
                    101, 2, 116, 1, 101, 1, -1, 1, 36, 1, 108, 1, 115, 2, 
                    36, 1, 101, 1, 97, 1, 36, 1, 116, 1, 108, 1, -1, 1, 
                    36, 1, -1, 1, 110, 2, -1, 1, 36, 1, 110, 1, 116, 1, 
                    105, 1, -1, 1, 116, 2, 36, 2, -1, 2, 36, 1, 101, 1, 
                    121, 3, 36, 1, 110, 1, 99, 1, -1, 1, 36, 1, 105, 3, 
                    36, 1, 111, 1, 36, 1, -1, 1, 100, 1, 36, 2, -1, 1, 116, 
                    1, 101, 1, -1, 1, 122, 2, 36, 1, -1, 1, 115, 1, 36, 
                    1, 101, 1, 36, 1, -1, 1, 36, 2, -1 )
      MAX = unpack( 1, 64255, 1, -1, 1, 117, 1, 121, 10, -1, 1, 61, 4, -1, 
                    1, 118, 1, 114, 1, 111, 1, 117, 2, 111, 1, 117, 1, 111, 
                    1, 120, 1, 111, 1, 110, 1, 114, 1, 84, 1, 78, 1, 76, 
                    1, 65, 1, 73, 1, 65, 1, 117, 1, 121, 1, 101, 1, 111, 
                    1, 110, 1, 108, 1, 120, 4, -1, 1, 108, 1, 110, 1, 111, 
                    1, 97, 1, 110, 1, 117, 1, 109, 1, 112, 1, 110, 1, -1, 
                    2, 100, 1, 105, 1, 111, 1, 97, 1, 103, 1, 115, 1, 101, 
                    1, 114, 1, 64255, 1, 101, 1, 116, 1, 110, 1, 120, 1, 
                    114, 1, 98, 1, 114, 1, 122, 1, 114, 1, 116, 1, 108, 
                    1, 111, 1, 117, 1, 97, 1, 116, 1, 117, 2, 116, 1, 111, 
                    1, 99, 1, 114, 1, 99, 1, 114, 1, 105, 1, 97, 1, 100, 
                    1, 116, 1, 99, 1, 115, 1, 117, 1, 115, 1, 118, 1, 64255, 
                    1, 116, 1, 112, 1, 118, 1, 64255, 1, 105, 1, 101, 1, 
                    82, 1, 84, 1, 79, 1, 82, 1, 77, 1, 84, 1, 108, 1, 120, 
                    1, 110, 1, 101, 1, 116, 1, 111, 2, 116, 1, 108, 1, 103, 
                    1, 107, 1, 105, 1, 111, 1, 116, 2, -1, 1, 115, 1, 64255, 
                    1, 101, 2, 97, 2, 99, 3, 101, 3, 64255, 1, 110, 1, 64255, 
                    1, 115, 1, 110, 2, 64255, 2, 97, 1, -1, 1, 110, 2, 64255, 
                    1, 100, 1, 116, 1, 64255, 1, 105, 1, 116, 1, 64255, 
                    1, 116, 1, 101, 1, 64255, 1, 116, 1, 114, 1, 64255, 
                    1, 105, 2, 115, 1, 121, 2, 64255, 1, 110, 1, 115, 1, 
                    114, 1, 100, 1, 111, 2, 117, 2, 64255, 1, 110, 1, 104, 
                    1, 115, 1, 108, 2, 64255, 1, 99, 1, 110, 2, 118, 1, 
                    116, 1, 107, 2, 64255, 2, 116, 1, 100, 1, 108, 1, 64255, 
                    1, 101, 1, 116, 1, 104, 1, 101, 1, 97, 2, 64255, 1, 
                    99, 3, 64255, 1, 98, 1, -1, 1, 101, 1, 108, 1, 64255, 
                    1, 111, 1, 112, 1, 116, 1, -1, 1, 116, 1, 114, 1, 73, 
                    1, 64255, 1, 65, 1, 64255, 2, 69, 3, 64255, 1, 97, 1, 
                    112, 1, 119, 1, 105, 1, 108, 1, 101, 1, 64255, 1, 112, 
                    1, 64255, 1, 101, 1, 111, 1, 98, 1, 64255, 1, 101, 1, 
                    -1, 1, 64255, 1, 108, 2, 116, 3, 64255, 1, 111, 1, -1, 
                    1, 64255, 1, -1, 2, 64255, 1, 114, 1, 116, 1, 121, 3, 
                    64255, 1, -1, 1, 97, 1, 110, 1, 105, 1, 64255, 1, 111, 
                    1, 64255, 1, 99, 1, -1, 1, 116, 1, 101, 1, 115, 1, 64255, 
                    2, 116, 1, 64255, 1, 65, 1, 118, 1, 105, 1, 114, 1, 
                    -1, 1, 122, 1, 100, 2, 64255, 1, 105, 1, -1, 1, 101, 
                    1, 116, 1, 64255, 1, 116, 1, 97, 2, 101, 1, 97, 1, 101, 
                    1, -1, 1, 111, 1, 117, 2, 64255, 1, -1, 1, 110, 3, 64255, 
                    1, 108, 1, -1, 1, 64255, 2, -1, 1, 108, 1, 64255, 1, 
                    101, 1, 114, 1, -1, 1, 107, 1, 101, 1, 105, 1, 101, 
                    1, 64255, 1, 101, 1, 78, 1, -1, 1, 84, 2, 64255, 1, 
                    107, 1, 64255, 1, 101, 1, 110, 6, 64255, 1, 110, 1, 
                    97, 1, -1, 1, 64255, 1, -1, 2, 64255, 1, 105, 2, -1, 
                    1, 64255, 1, 102, 1, 97, 1, 111, 1, 64255, 1, 109, 1, 
                    103, 1, 99, 1, 102, 1, -1, 1, 104, 4, 64255, 1, 97, 
                    1, 108, 1, 101, 1, 114, 1, 110, 1, 101, 1, 64255, 1, 
                    -1, 1, 99, 1, 110, 2, 64255, 1, 116, 1, 99, 1, 114, 
                    1, 103, 1, 64255, 1, 114, 1, 97, 1, -1, 1, 100, 3, -1, 
                    1, 115, 1, 101, 1, 109, 1, 102, 1, 101, 1, 99, 1, 97, 
                    2, 64255, 1, 71, 2, 64255, 1, 101, 2, 64255, 1, 108, 
                    2, -1, 1, 111, 1, -1, 1, 64255, 1, 99, 1, 114, 1, -1, 
                    5, 64255, 2, -1, 1, 110, 1, 108, 1, 64255, 1, 101, 2, 
                    64255, 1, -1, 1, 64255, 1, 116, 1, 101, 2, 116, 1, 101, 
                    1, -1, 1, 64255, 1, 108, 1, 115, 2, 64255, 1, 101, 1, 
                    97, 1, 64255, 1, 116, 1, 108, 1, -1, 1, 64255, 1, -1, 
                    1, 110, 2, -1, 1, 64255, 1, 110, 1, 116, 1, 105, 1, 
                    -1, 1, 116, 2, 64255, 2, -1, 2, 64255, 1, 101, 1, 121, 
                    3, 64255, 1, 110, 1, 99, 1, -1, 1, 64255, 1, 105, 3, 
                    64255, 1, 111, 1, 64255, 1, -1, 1, 100, 1, 64255, 2, 
                    -1, 1, 116, 1, 101, 1, -1, 1, 122, 2, 64255, 1, -1, 
                    1, 115, 1, 64255, 1, 101, 1, 64255, 1, -1, 1, 64255, 
                    2, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 2, -1, 1, 4, 1, 5, 1, 6, 1, 7, 1, 8, 
                       1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 1, -1, 1, 15, 1, 
                       16, 1, 17, 1, 18, 25, -1, 1, 69, 1, 71, 1, 72, 1, 
                       73, 9, -1, 1, 14, 69, -1, 1, 68, 1, 70, 21, -1, 1, 
                       19, 61, -1, 1, 38, 6, -1, 1, 36, 25, -1, 1, 46, 8, 
                       -1, 1, 32, 1, -1, 1, 50, 8, -1, 1, 42, 7, -1, 1, 
                       63, 11, -1, 1, 44, 5, -1, 1, 21, 9, -1, 1, 26, 4, 
                       -1, 1, 24, 5, -1, 1, 25, 1, -1, 1, 52, 1, 56, 4, 
                       -1, 1, 43, 7, -1, 1, 31, 15, -1, 1, 62, 1, -1, 1, 
                       20, 3, -1, 1, 66, 1, 3, 9, -1, 1, 49, 12, -1, 1, 
                       30, 11, -1, 1, 67, 1, -1, 1, 34, 1, 39, 1, 40, 16, 
                       -1, 1, 2, 1, 59, 1, -1, 1, 37, 3, -1, 1, 60, 5, -1, 
                       1, 54, 1, 23, 6, -1, 1, 47, 6, -1, 1, 64, 10, -1, 
                       1, 53, 1, -1, 1, 33, 1, -1, 1, 55, 1, 57, 4, -1, 
                       1, 51, 3, -1, 1, 48, 1, 58, 9, -1, 1, 41, 7, -1, 
                       1, 27, 2, -1, 1, 22, 1, 29, 2, -1, 1, 45, 3, -1, 
                       1, 61, 4, -1, 1, 35, 1, -1, 1, 28, 1, 65 )
      SPECIAL = unpack( 499, -1 )
      TRANSITION = [
        unpack( 2, 45, 1, -1, 2, 45, 18, -1, 1, 45, 1, 17, 1, -1, 1, 46, 
                1, 47, 2, -1, 1, 16, 1, 5, 1, 6, 2, 18, 1, 9, 1, 18, 1, 
                10, 1, 18, 1, 43, 9, 44, 1, 15, 1, 4, 1, 17, 1, 14, 1, 17, 
                2, -1, 3, 47, 1, 36, 1, 47, 1, 33, 2, 47, 1, 32, 9, 47, 
                1, 31, 1, 35, 1, 47, 1, 34, 4, 47, 1, 12, 1, 1, 1, 11, 1, 
                -1, 1, 47, 1, -1, 1, 19, 1, 38, 1, 23, 1, 28, 1, 27, 1, 
                2, 1, 42, 1, 39, 1, 29, 2, 47, 1, 40, 1, 37, 1, 21, 1, 20, 
                1, 25, 1, 47, 1, 24, 1, 22, 1, 3, 1, 41, 1, 26, 1, 30, 3, 
                47, 1, 7, 1, 13, 1, 8, 66, -1, 23, 47, 1, -1, 31, 47, 1, 
                -1, 7944, 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, 
                -1, 2350, 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack( 1, 48, 7, -1, 1, 49, 2, -1, 1, 50, 5, -1, 1, 51, 2, -1, 
                 1, 52 ),
        unpack( 1, 56, 7, -1, 1, 54, 8, -1, 1, 53, 6, -1, 1, 55 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 17 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 64, 1, 61, 1, 59, 7, -1, 1, 65, 1, -1, 1, 58, 3, -1, 
                 1, 66, 1, 60, 1, 62, 1, -1, 1, 63 ),
        unpack( 1, 68, 1, -1, 1, 67 ),
        unpack( 1, 70, 3, -1, 1, 71, 9, -1, 1, 69 ),
        unpack( 1, 77, 3, -1, 1, 75, 5, -1, 1, 76, 1, 78, 1, 74, 2, -1, 
                 1, 72, 1, 73 ),
        unpack( 1, 81, 3, -1, 1, 79, 2, -1, 1, 80 ),
        unpack( 1, 82, 9, -1, 1, 83 ),
        unpack( 1, 87, 13, -1, 1, 85, 2, -1, 1, 86, 2, -1, 1, 84 ),
        unpack( 1, 88, 3, -1, 1, 89, 3, -1, 1, 90, 5, -1, 1, 91 ),
        unpack( 1, 95, 10, -1, 1, 96, 1, -1, 1, 93, 2, -1, 1, 97, 4, -1, 
                 1, 92, 1, -1, 1, 94 ),
        unpack( 1, 101, 3, -1, 1, 98, 3, -1, 1, 99, 5, -1, 1, 100 ),
        unpack( 1, 104, 6, -1, 1, 102, 1, 103 ),
        unpack( 1, 106, 9, -1, 1, 105 ),
        unpack( 1, 107 ),
        unpack( 1, 108 ),
        unpack( 1, 109 ),
        unpack( 1, 110 ),
        unpack( 1, 111 ),
        unpack( 1, 112 ),
        unpack( 1, 114, 7, -1, 1, 115, 11, -1, 1, 113 ),
        unpack( 1, 117, 3, -1, 1, 120, 5, -1, 1, 118, 2, -1, 1, 116, 6, 
                 -1, 1, 119 ),
        unpack( 1, 121 ),
        unpack( 1, 123, 5, -1, 1, 122 ),
        unpack( 1, 124 ),
        unpack( 1, 126, 6, -1, 1, 125 ),
        unpack( 8, 128, 32, -1, 1, 127, 31, -1, 1, 127 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 130, 8, -1, 1, 129 ),
        unpack( 1, 131, 1, -1, 1, 132 ),
        unpack( 1, 133 ),
        unpack( 1, 134 ),
        unpack( 1, 135 ),
        unpack( 1, 136 ),
        unpack( 1, 137 ),
        unpack( 1, 138 ),
        unpack( 1, 139 ),
        unpack(  ),
        unpack( 1, 140 ),
        unpack( 1, 141 ),
        unpack( 1, 143, 5, -1, 1, 142 ),
        unpack( 1, 144 ),
        unpack( 1, 145 ),
        unpack( 1, 146 ),
        unpack( 1, 147 ),
        unpack( 1, 148 ),
        unpack( 1, 149 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 151 ),
        unpack( 1, 153, 1, -1, 1, 152 ),
        unpack( 1, 154 ),
        unpack( 1, 156, 1, 155 ),
        unpack( 1, 158, 16, -1, 1, 157 ),
        unpack( 1, 159 ),
        unpack( 1, 160 ),
        unpack( 1, 162, 11, -1, 1, 161 ),
        unpack( 1, 163 ),
        unpack( 1, 164, 18, -1, 1, 165 ),
        unpack( 1, 166 ),
        unpack( 1, 168, 13, -1, 1, 167 ),
        unpack( 1, 173, 1, -1, 1, 169, 2, -1, 1, 170, 1, 171, 1, 172 ),
        unpack( 1, 174 ),
        unpack( 1, 175, 4, -1, 1, 179, 6, -1, 1, 176, 3, -1, 1, 177, 1, 
                 -1, 1, 180, 1, 178 ),
        unpack( 1, 181 ),
        unpack( 1, 184, 16, -1, 1, 182, 1, 183 ),
        unpack( 1, 188, 6, -1, 1, 185, 1, -1, 1, 187, 1, -1, 1, 186 ),
        unpack( 1, 189, 3, -1, 1, 190, 5, -1, 1, 191 ),
        unpack( 1, 192 ),
        unpack( 1, 193, 5, -1, 1, 194 ),
        unpack( 1, 195 ),
        unpack( 1, 196 ),
        unpack( 1, 197 ),
        unpack( 1, 198 ),
        unpack( 1, 199 ),
        unpack( 1, 201, 10, -1, 1, 200 ),
        unpack( 1, 202 ),
        unpack( 1, 203 ),
        unpack( 1, 204 ),
        unpack( 1, 205, 5, -1, 1, 206, 6, -1, 1, 207 ),
        unpack( 1, 209, 11, -1, 1, 210, 3, -1, 1, 208 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 20, 47, 1, 211, 5, 47, 69, -1, 23, 47, 1, -1, 31, 47, 
                 1, -1, 7944, 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, 
                 -1, 2350, 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 213 ),
        unpack( 1, 214 ),
        unpack( 1, 218, 9, -1, 1, 217, 1, 215, 1, -1, 1, 216 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 220 ),
        unpack( 1, 221 ),
        unpack( 1, 222 ),
        unpack( 1, 223 ),
        unpack( 1, 224 ),
        unpack( 1, 225 ),
        unpack( 1, 226 ),
        unpack( 1, 227 ),
        unpack( 1, 228 ),
        unpack( 1, 229 ),
        unpack( 1, 230 ),
        unpack( 1, 231 ),
        unpack( 1, 232, 1, -1, 1, 234, 12, -1, 1, 233 ),
        unpack( 1, 235 ),
        unpack( 1, 236 ),
        unpack( 1, 237 ),
        unpack( 1, 238 ),
        unpack( 1, 239 ),
        unpack( 1, 240 ),
        unpack( 1, 241 ),
        unpack( 1, 242 ),
        unpack( 1, 243 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 244 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 246 ),
        unpack( 1, 247 ),
        unpack( 1, 248 ),
        unpack( 1, 249 ),
        unpack( 1, 250 ),
        unpack( 1, 251 ),
        unpack( 1, 252 ),
        unpack( 1, 253 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 255 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 257 ),
        unpack( 1, 258 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 19, 47, 1, 259, 6, 47, 69, -1, 23, 47, 1, -1, 31, 47, 
                 1, -1, 7944, 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, 
                 -1, 2350, 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 260 ),
        unpack( 1, 261 ),
        unpack(  ),
        unpack( 1, 262 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 263 ),
        unpack( 1, 264 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 266, 3, -1, 1, 267 ),
        unpack( 1, 268 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 269 ),
        unpack( 1, 270 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 271 ),
        unpack( 1, 272 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 274 ),
        unpack( 1, 275 ),
        unpack( 1, 276 ),
        unpack( 1, 277 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 278 ),
        unpack( 1, 279 ),
        unpack( 1, 280 ),
        unpack( 1, 281 ),
        unpack( 1, 282 ),
        unpack( 1, 283 ),
        unpack( 1, 284 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 8, 47, 1, 286, 17, 47, 69, -1, 23, 47, 1, -1, 31, 47, 
                 1, -1, 7944, 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, 
                 -1, 2350, 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 287 ),
        unpack( 1, 288 ),
        unpack( 1, 289 ),
        unpack( 1, 290 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 292 ),
        unpack( 1, 293 ),
        unpack( 1, 294 ),
        unpack( 1, 295, 7, -1, 1, 296 ),
        unpack( 1, 298, 3, -1, 1, 297 ),
        unpack( 1, 299 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 20, 47, 1, 300, 5, 47, 69, -1, 23, 47, 1, -1, 31, 47, 
                 1, -1, 7944, 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, 
                 -1, 2350, 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 302 ),
        unpack( 1, 303 ),
        unpack( 1, 304 ),
        unpack( 1, 305 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 307 ),
        unpack( 1, 308 ),
        unpack( 1, 309 ),
        unpack( 1, 310 ),
        unpack( 1, 311 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 313 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 316 ),
        unpack(  ),
        unpack( 1, 317 ),
        unpack( 1, 318 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 4, 47, 1, 319, 21, 47, 69, -1, 23, 47, 1, -1, 31, 47, 
                 1, -1, 7944, 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, 
                 -1, 2350, 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 321 ),
        unpack( 1, 322 ),
        unpack( 1, 323 ),
        unpack(  ),
        unpack( 1, 324 ),
        unpack( 1, 325, 3, -1, 1, 326 ),
        unpack( 1, 327 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 329 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 330 ),
        unpack( 1, 331 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 332 ),
        unpack( 1, 333 ),
        unpack( 1, 334 ),
        unpack( 1, 335 ),
        unpack( 1, 336 ),
        unpack( 1, 337 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 338 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 4, 47, 1, 339, 8, 47, 1, 340, 12, 47, 69, -1, 23, 47, 
                 1, -1, 31, 47, 1, -1, 7944, 47, 4160, -1, 336, 47, 368, 
                 -1, 128, 47, 128, -1, 2350, 47, 4306, -1, 20992, 47, 22784, 
                 -1, 512, 47 ),
        unpack( 1, 341 ),
        unpack( 1, 342 ),
        unpack( 1, 343 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 345 ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 347 ),
        unpack( 1, 348 ),
        unpack( 1, 349 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 18, 47, 1, 352, 7, 47, 69, -1, 23, 47, 1, -1, 31, 47, 
                 1, -1, 7944, 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, 
                 -1, 2350, 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 353 ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 354 ),
        unpack( 1, 355 ),
        unpack( 1, 356 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack( 1, 357 ),
        unpack( 1, 358 ),
        unpack( 1, 359 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 360 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 362 ),
        unpack(  ),
        unpack( 1, 363 ),
        unpack( 1, 364 ),
        unpack( 1, 365 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 366 ),
        unpack( 1, 367 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 368 ),
        unpack( 1, 369 ),
        unpack( 1, 370 ),
        unpack( 1, 371 ),
        unpack(  ),
        unpack( 1, 372 ),
        unpack( 1, 373 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 375 ),
        unpack(  ),
        unpack( 1, 376 ),
        unpack( 1, 377 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 378 ),
        unpack( 1, 379 ),
        unpack( 1, 380 ),
        unpack( 1, 381 ),
        unpack( 1, 382 ),
        unpack( 1, 383 ),
        unpack(  ),
        unpack( 1, 384 ),
        unpack( 1, 385 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack( 1, 387 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 391 ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 392 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 393 ),
        unpack( 1, 394 ),
        unpack(  ),
        unpack( 1, 395 ),
        unpack( 1, 396 ),
        unpack( 1, 397 ),
        unpack( 1, 398 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 399 ),
        unpack( 1, 400 ),
        unpack(  ),
        unpack( 1, 401 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 402 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 403 ),
        unpack( 1, 404 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 405 ),
        unpack( 1, 406 ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 409 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 411 ),
        unpack( 1, 412 ),
        unpack( 1, 413 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 415 ),
        unpack( 1, 416 ),
        unpack( 1, 417 ),
        unpack( 1, 418 ),
        unpack(  ),
        unpack( 1, 419 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 422 ),
        unpack( 1, 423 ),
        unpack( 1, 424 ),
        unpack( 1, 425 ),
        unpack( 1, 426 ),
        unpack( 1, 427 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack( 1, 429 ),
        unpack( 1, 430 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 431 ),
        unpack( 1, 432 ),
        unpack( 1, 433 ),
        unpack( 1, 434 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 436 ),
        unpack( 1, 437 ),
        unpack(  ),
        unpack( 1, 438 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 439 ),
        unpack( 1, 440 ),
        unpack( 1, 441 ),
        unpack( 1, 442 ),
        unpack( 1, 443 ),
        unpack( 1, 444 ),
        unpack( 1, 445 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 447 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 449 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 452 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 453 ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 454 ),
        unpack( 1, 455 ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 457 ),
        unpack( 1, 458 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 459 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 462 ),
        unpack( 1, 463 ),
        unpack( 1, 464 ),
        unpack( 1, 465 ),
        unpack( 1, 466 ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 467 ),
        unpack( 1, 468 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 469 ),
        unpack( 1, 470 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 472 ),
        unpack( 1, 473 ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack( 1, 474 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 475 ),
        unpack( 1, 476 ),
        unpack( 1, 477 ),
        unpack(  ),
        unpack( 1, 478 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 480 ),
        unpack( 1, 481 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 484 ),
        unpack( 1, 485 ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 487 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 488 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack( 1, 489 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 491 ),
        unpack( 1, 492 ),
        unpack(  ),
        unpack( 1, 493 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack( 1, 494 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack( 1, 496 ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack( 1, 47, 11, -1, 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, 
                 -1, 26, 47, 69, -1, 23, 47, 1, -1, 31, 47, 1, -1, 7944, 
                 47, 4160, -1, 336, 47, 368, -1, 128, 47, 128, -1, 2350, 
                 47, 4306, -1, 20992, 47, 22784, -1, 512, 47 ),
        unpack(  ),
        unpack(  )
      ].freeze

      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end

      @decision = 28


      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( T__80 | T__81 | T__82 | EOL | LPAR | RPAR | LLAIZQ | LLADER | COMA | PUNTO | CORDER | CORIZQ | DELIM | ASIGNACION | DOUBLEDOT | COMILLA | OP_REL | OP_ARI | OP_LOG | K_ACCIONARCHIVO | K_ACCIONARREGLO | K_PACKAGE | K_CLASS | K_END | K_DEF | K_VAR | K_REQUIRE | K_IMPLEMENTS | K_EXTENDS | K_IMPRIMIR | K_CONVERSION | K_ASIGNACION | K_RETORNO | K_ACCIONSYS | K_INTERFACE | K_IF | K_TIMES | K_DO | K_EACH | K_ELSE | K_INVOKE | K_NEW | TIPO | K_REFERENCIA | K_INSPECCIONAR | K_MATEMATICA | K_NUM | K_RESIZE | K_ORDENAR | ModoOrd | K_BUSQUEDA | K_TIPOBUSQUEDA | K_WHERE | K_SPLIT | K_BEGIN | K_DIR | K_UNION | K_VISIBILIDAD | K_MODIFICADOR | K_ARRAY | K_PROPIEDAD | K_GET | K_SET | K_VALUE | K_INITIALIZE | K_FUNC | K_VOID | HexLiteral | DecimalLiteral | OctalLiteral | WS | LINE_COMMENT | Identificador );
        __dfa_description__
      end

    end


    private

    def initialize_dfas
      super rescue nil
      @dfa28 = DFA28.new( self, 28 )


    end

  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0

end
