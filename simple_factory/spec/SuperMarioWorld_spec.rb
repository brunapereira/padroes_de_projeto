require_relative '../SuperMarioWorld'

describe 'Super Mário World' do

  it 'utiliza fábrica do mario para gerar um novo estado do mário' do
    atributo = 'cogumelo_vermelho'
    expect(FabricaDeMario).to receive(:cria_mario).with(atributo)
    SuperMarioWorld.pega(atributo)
  end
end
