require 'rspec' 
require_relative '../model/Persistidor'

describe 'Persistidor' do

  it 'deberia persistir en archivo en el directorio del proyecto cuando escribir_factorizacion' do
    
    impresion_esperada = "Factores primos 90: 2 2 2 3 3 5 \n"
    path = "salida.txt"
    persistidor = Persistidor.new(path)
    persistidor.escribir_factorizacion(impresion_esperada)
    
    impresion_obtenida = persistidor.leer_factorizacion
    
    expect(impresion_esperada).to eq impresion_obtenida
  end
  
    it 'deberia persistir en archivo en varias lineas en el directorio del proyecto cuando escribir_factorizacion' do
    
    impresion_esperada = "2\n2\n2\n3\n3\n5 \n"
    path = "salida.txt"
    persistidor = Persistidor.new(path)
    persistidor.escribir_factorizacion(impresion_esperada)
    
    impresion_obtenida = persistidor.leer_factorizacion
    
    expect(impresion_esperada).to eq impresion_obtenida
  end

end