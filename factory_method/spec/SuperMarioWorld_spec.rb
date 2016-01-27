require_relative '../SuperMarioWorld'

describe 'Super Mario World' do

  it 'utiliza a fabrica para criar mario sem bonus' do
    atributos = ['cogumelo vermelho', 'formiga']
    fabrica = Fabrica.new
    expect(fabrica).to receive(:cria_mario).with(atributos)
    SuperMarioWorld.pega(atributos, fabrica)
  end

  it 'utiliza a FabricaEstrela para criar mario com bonus de estrela' do
    atributos = ['cogumelo vermelho', 'formiga']
    fabrica_estrela = Fabrica.new
    expect(fabrica_estrela).to receive(:cria_mario).with(atributos)
    SuperMarioWorld.pega(atributos, fabrica_estrela)
  end

  it 'utiliza a FabricaYoshi para criar mario com bonus de Yoshi' do
    atributos = ['cogumelo vermelho', 'formiga']
    fabrica_yoshi = FabricaYoshi.new
    expect(fabrica_yoshi).to receive(:cria_mario).with(atributos)
    SuperMarioWorld.pega(atributos, fabrica_yoshi)
  end
end
