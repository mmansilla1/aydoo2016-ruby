class ImpresorEnFormatos

	def get_impresion_resultante(formato, numero_a_factorizar, lista_de_factores_primos, sort)
		
		impresion_resultante = ""			

		case formato.upcase 
			when ""
	        	impresion_resultante = imprimir_en_formato_pretty_segun_sort(numero_a_factorizar, lista_de_factores_primos, sort)
	    	when "--FORMAT=PRETTY"
	    		impresion_resultante = imprimir_en_formato_pretty_segun_sort(numero_a_factorizar, lista_de_factores_primos, sort)
	        when "--FORMAT=QUIET"
	   			impresion_resultante = imprimir_en_formato_quiet_segun_sort(lista_de_factores_primos, sort)
	        else
	        	impresion_resultante = "Formato no aceptado. Las opciones posibles son: pretty o quiet."
		end
		
		return impresion_resultante
	end

	def imprimir_en_formato_pretty_segun_sort(numero_a_factorizar, lista_de_factores_primos, sort) 
			
		impresion_formato_pretty = "Factores primos " + numero_a_factorizar.to_s + ": "
	
		ordenar_lista(lista_de_factores_primos, sort)
		lista_de_factores_primos.each do |factor|
			impresion_formato_pretty = impresion_formato_pretty + "#{factor}" + " "
		end
		
		return impresion_formato_pretty
	end

	def imprimir_en_formato_quiet_segun_sort(lista_de_factores_primos, sort) 

		impresion_formato_quiet = ""

		ordenar_lista(lista_de_factores_primos, sort)
		lista_de_factores_primos.each do |factor|
			impresion_formato_quiet = impresion_formato_quiet + "#{factor}" + "\n"
		end

		return impresion_formato_quiet
	end 	

 	def ordenar_lista(lista_de_factores_primos, sort) 

		case sort.upcase 
		when "--SORT:ASC"
			lista_de_factores_primos.sort
		when "--SORT:DES"
			lista_de_factores_primos.sort.reverse
		else
			lista_de_factores_primos.sort
		end

		return lista_de_factores_primos
	end

end