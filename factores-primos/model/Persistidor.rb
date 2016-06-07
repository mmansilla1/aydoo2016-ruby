class Persistidor

	@path
	
	def initialize(path)     
    	@path = path    
  	end

  	def escribir_factorizacion(factorizacion)
		
		File.open(@path, 'w') do |file|
  			file.puts factorizacion
		end
	end

	def leer_factorizacion()
		
		factorizacion = ""
		File.open(@path, 'r') do |file|
			while linea = file.gets
	    		factorizacion = factorizacion + linea 
	  		end
		end
		return factorizacion
	end

end