class IdentificadorDeOpciones

    @argumentos = []
    @numero_a_factorizar = 0
    @format
    @sort
    @output
    
    def initialize(argumentos)     
        @argumentos = argumentos    
        @format = "--FORMAT=PRETTY"
        @sort = "--SORT:ASC"
        @output = "sinOutput"
    end

    def identificar_opciones()
        
        @numero_a_factorizar = @argumentos[0]
        for indice in 1...@argumentos.length do
            
            parametro_a_evaluar = @argumentos[indice][0, 3].upcase 
            case parametro_a_evaluar
                when "--F"
                    @format = @argumentos[indice]
                when "--S"
                    @sort = @argumentos[indice]
                when "--O"
                    @output = @argumentos[indice]
            end
        end
    end
    
    def numero_a_factorizar
        @numero_a_factorizar
    end

    def format  
        @format
    end

    def sort
        @sort
    end

    def output
        @output
    end     

end
