require_relative '../model/IdentificadorDeOpciones'
require_relative '../model/DescomponedorEnFactores'
require_relative '../model/ImpresorEnFormatos'
require_relative '../model/PersistidorEnArchivo'

class Programa

    @numero_a_factorizar
    @format
    @sort
    @path

    def main(argumentos)
        
        sin_output = "sinOutput"
        get_parametros_aplicacion(argumentos)

        if @numero_a_factorizar != 0

            lista_de_factores_primos = get_lista_de_factores_primos
            impresion_resultante = get_impresion_resultante(lista_de_factores_primos)
            if @path == sin_output
                puts impresion_resultante
            else
                persistir(impresion_resultante)
            end
        else
            puts "Debe indicar un numero."
        end
    end

    private
    def get_parametros_aplicacion(argumentos)
        
        identificador_de_opciones = IdentificadorDeOpciones.new(argumentos)
        identificador_de_opciones.identificar_opciones()
        @numero_a_factorizar = identificador_de_opciones.numero_a_factorizar        
        @format = identificador_de_opciones.format
        @sort = identificador_de_opciones.sort
        @path = identificador_de_opciones.output
    end

    private
    def get_lista_de_factores_primos
        
        descomponedor_en_factores = DescomponedorEnFactores.new
        lista_de_factores_primos = descomponedor_en_factores.descomponer_en_factores_primos(@numero_a_factorizar.to_i)
        return lista_de_factores_primos
    end

    private
    def get_impresion_resultante(lista_de_factores_primos) 

        impresor_en_formatos = ImpresorEnFormatos.new
        impresion_resultante = impresor_en_formatos.get_impresion_resultante(@format, @numero_a_factorizar.to_i, lista_de_factores_primos, @sort)
        return impresion_resultante
    end 

    private
    def persistir(impresion_a_persistir) 

        posicion_path_real = 14;
        path_real = @path[posicion_path_real, @path.length]
        persistidor = Persistidor.new(path_real)
        persistidor.escribir_factorizacion(impresion_a_persistir)
    end 

end