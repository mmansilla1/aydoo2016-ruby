require 'rspec' 
require_relative '../model/descomponedor_en_factores'

describe 'DescomponedorEnFactores' do

  it 'deberia retornar 2 cuando descomponer_en_factores_primos(2)' do
    descomponedor_en_factores_primos = DescomponedorEnFactores.new
    expect(descomponedor_en_factores_primos.descomponer_en_factores_primos(2)).to eq [2]  
  end

  it 'deberia retornar [2, 3, 3, 5] cuando descomponer_en_factores_primos(90)' do
    descomponedor_en_factores_primos = DescomponedorEnFactores.new
    expect(descomponedor_en_factores_primos.descomponer_en_factores_primos(90)).to eq [2, 3, 3, 5]  
   end

  it 'deberia retornar [2, 2, 2, 3, 3, 5] cuando descomponer_en_factores_primos(360)' do
    descomponedor_en_factores_primos = DescomponedorEnFactores.new
    expect(descomponedor_en_factores_primos.descomponer_en_factores_primos(360)).to eq [2, 2, 2, 3, 3, 5]  
  end

end
