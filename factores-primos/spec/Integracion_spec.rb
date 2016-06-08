require 'rspec' 
require_relative '../model/IdentificadorDeOpciones'
require_relative '../model/DescomponedorEnFactores'
require_relative '../model/ImpresorEnFormatos'

describe 'Integracion' do

  it 'deberia imprimir por pantalla en formato pretty y en orden ascendente cuando get_impresion_resultante' do

    numero_a_factorizar = 360
    argumentos = [numero_a_factorizar]
    identificador_de_opciones = IdentificadorDeOpciones.new(argumentos)
    identificador_de_opciones.identificar_opciones()
    descomponedor_en_factores = DescomponedorEnFactores.new
    lista_de_factores_primos = descomponedor_en_factores.descomponer_en_factores_primos(identificador_de_opciones.numero_a_factorizar)
    impresor_en_formatos = ImpresorEnFormatos.new
    impresion_esperada = "Factores primos 360: 2 2 2 3 3 5 "
        
    impresion_resultante = impresor_en_formatos.get_impresion_resultante("", numero_a_factorizar, lista_de_factores_primos, "")

    expect(impresion_esperada).to eq impresion_resultante  
   end
   
     it 'deberia persistir en archivo en directorio del proyecto cuando escribir_factorizacion' do

    posicion_path_real = 14
    numero_a_factorizar = 360
    argumentos = [numero_a_factorizar, "--output-file:archivo.txt"]
    identificador_de_opciones = IdentificadorDeOpciones.new(argumentos)
    identificador_de_opciones.identificar_opciones()
    numero_a_factorizar = identificador_de_opciones.numero_a_factorizar
    format = identificador_de_opciones.format
    sort = identificador_de_opciones.sort
    output = identificador_de_opciones.output();
    path = output[posicion_path_real, output.length]
    descomponedor_en_factores = DescomponedorEnFactores.new
    lista_de_factores_primos = descomponedor_en_factores.descomponer_en_factores_primos(identificador_de_opciones.numero_a_factorizar)
    impresor_en_formatos = ImpresorEnFormatos.new
    impresion_resultante = impresor_en_formatos.get_impresion_resultante("", numero_a_factorizar, lista_de_factores_primos, "")
    persistidor = Persistidor.new(path)
    
    persistidor.escribir_factorizacion(impresion_resultante)
    impresion_obtenida = persistidor.leer_factorizacion
    
    expect(impresion_obtenida.strip).to eq impresion_resultante.strip  
   end

end