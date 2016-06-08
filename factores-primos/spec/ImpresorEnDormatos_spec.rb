require 'rspec' 
require_relative '../model/ImpresorEnFormatos'

describe 'ImpresorEnFormatos' do

  it 'deberia imprimir "Factores primos 360: 2 2 2 3 3 5 " cuando get_impresion_resultante' do
    
    numero_a_factorizar = 360
    impresor_en_formatos = ImpresorEnFormatos.new()
    lista_de_factores_primos = [2, 2, 2, 3, 3, 5]
    impresion_esperada = "Factores primos 360: 2 2 2 3 3 5 "

    impresion_obtenida = impresor_en_formatos.get_impresion_resultante("--format=pretty", numero_a_factorizar, lista_de_factores_primos, "")
    
    expect(impresion_esperada).to eq impresion_obtenida
  end

  it 'deberia imprimir "2\n2\n2\n3\n3\n5\n" " cuando get_impresion_resultante' do
    
    numero_a_factorizar = 360
    impresor_en_formatos = ImpresorEnFormatos.new()
    lista_de_factores_primos = [2, 2, 2, 3, 3, 5]
    impresion_esperada = "2\n2\n2\n3\n3\n5\n";

    impresion_obtenida = impresor_en_formatos.get_impresion_resultante("--format=quiet", numero_a_factorizar, lista_de_factores_primos, "")
    
    expect(impresion_esperada).to eq impresion_obtenida
  end

  it 'deberia imprimir "Factores primos 360: 5 3 3 2 2 2 " cuando get_impresion_resultante' do
    
    numero_a_factorizar = 360
    impresor_en_formatos = ImpresorEnFormatos.new()
    lista_de_factores_primos = [2, 2, 2, 3, 3, 5]
    impresion_esperada = "Factores primos 360: 5 3 3 2 2 2 "

    impresion_obtenida = impresor_en_formatos.get_impresion_resultante("--format=pretty", numero_a_factorizar, lista_de_factores_primos, "--sort:des")
    
    expect(impresion_esperada).to eq impresion_obtenida
  end

  it 'deberia imprimir "Factores primos 90: 5 3 3 2 " cuando get_impresion_resultante' do
    
    numero_a_factorizar = 90
    impresor_en_formatos = ImpresorEnFormatos.new()
    lista_de_factores_primos = [2, 3, 3, 5,]
    impresion_esperada = "Factores primos 90: 5 3 3 2 "

    impresion_obtenida = impresor_en_formatos.get_impresion_resultante("--format=pretty", numero_a_factorizar, lista_de_factores_primos, "--sort:des")
    
    expect(impresion_esperada).to eq impresion_obtenida
  end

end