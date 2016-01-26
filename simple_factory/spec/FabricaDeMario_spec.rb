require_relative '../FabricaDeMario'

describe 'Fabrica de Mario' do

  it 'retorna mario grande e sem poderes quando pega o cogumelo vermelho' do
    mario = FabricaDeMario.cria_mario('cogumelo vermelho')

    expect(mario.tamanho).to eq('grande')
    expect(mario.poder).to eq(nil)
  end

  it 'retorna mario grande e poder de atirar quando pega a florzinha' do
    mario = FabricaDeMario.cria_mario('florzinha')

    expect(mario.tamanho).to eq('grande')
    expect(mario.poder).to eq('atirar')
  end

  it 'retorna mario grande e poder de voar quando pega a asinha' do
    mario = FabricaDeMario.cria_mario('asinha')

    expect(mario.tamanho).to eq('grande')
    expect(mario.poder).to eq('voar')
  end
end
