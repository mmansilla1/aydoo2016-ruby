require 'rspec' 
require_relative '../model/IdentificadorDeOpciones'

describe 'IdentificadorDeOpciones' do

  it 'deberia retornar 360 cuando numero_a_factorizar' do
    argumentos = [360]
    identificador_de_opciones = IdentificadorDeOpciones.new(argumentos)

    identificador_de_opciones.identificar_opciones()
    
    expect(identificador_de_opciones.numero_a_factorizar).to eq 360  
  end

  it 'deberia retornar "--FORMAT=PRETTY" cuando format' do
    argumentos = [0, "--FORMAT=PRETTY"]
    identificador_de_opciones = IdentificadorDeOpciones.new(argumentos)

    identificador_de_opciones.identificar_opciones()
    
    expect(identificador_de_opciones.format).to eq "--FORMAT=PRETTY"
  end

  it 'deberia retornar "--SORT:ASC" cuando sort' do
    argumentos = [0, "--FORMAT=PRETTY", "--SORT:ASC"]
    identificador_de_opciones = IdentificadorDeOpciones.new(argumentos)

    identificador_de_opciones.identificar_opciones()
    
    expect(identificador_de_opciones.sort).to eq "--SORT:ASC"
  end

end
