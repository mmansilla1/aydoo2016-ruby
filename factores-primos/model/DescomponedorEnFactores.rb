class DescomponedorEnFactores

  def descomponer_en_factores_primos(numero_a_factorizar)
    
  	lista_de_factores_primos = []
  	factor = 2

  	while factor <= numero_a_factorizar do
  		if numero_a_factorizar % factor == 0
  			lista_de_factores_primos << factor
  			numero_a_factorizar = numero_a_factorizar / factor 
  		else
  			factor += 1
  		end
  	end

  	return lista_de_factores_primos

  end

end
