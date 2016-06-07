class Programa

	@numero_a_factorizar = 0
	@format = ""
	@sort = ""
	@path = ""
	
	def main(argumentos)
		
		get_parametros_aplicacion(argumentos)
		
		if numero_a_factorizar != 0
			
			lista_de_factores_primos = get_lista_de_factores_primos(numero_a_factorizar);
	    	impresionResultante = get_impresion_resultante(@format, @numero_a_factorizar, lista_de_factores_primos, @sort)
	    	
	    	if @pathImpresion == ""
	    		puts impresion_resultante
	    	else
	    		persistir_en_archivo(@path, impresion_resultante)
	    	end	
		else
			puts "Debe indicar un numero."
		end
	end
	
	def get_lista_de_factores_primos
    	
		descomponedor_en_factores = DescomponedorEnFactores.new
    	lista_de_factores_primos = descomponedor_en_factores.descomponer_en_factores_primos(@numero_a_factorizar)
    	return lista_de_factores_primos
	end
	
	def get_parametros_aplicacion(argumentos)
	
		identificador_de_opciones = IdentificadorDeOpciones.new(argumentos)
		@numero_a_factorizar = identificador_de_opciones.get_numero_a_factorizar		
		@format = identificador_de_opciones.get_format
		@sort = identificador_de_opciones.get_sort
		@path = identificador_de_opciones.get_output
	end
	
	def get_impresion_resultante(lista_de_factores_primos) 

		impresor_en_formatos = ImpresorEnFormatos.new
		impresion_resultante = impresor_en_formatos.get_impresion_resultante(@format, @numero_a_factorizar, lista_de_factores_primos, @sort)
		return impresion_resultante
	end	
	
	def persistir(impresion_a_persistir) 

		posicion_path_real = 14;
		path_real = @path[0, posicion_path_real]
		persistidor = Persistidor.new(path_real)
		persistidor.escribir_factorizacion(impresion_a_persistir)		
	end	

end