require_relative '../SuperMarioWorld'

describe 'Super Mário World' do

  it 'retorna mario grande e sem poderes quando pega o cogumelo vermelho' do
    mario = SuperMarioWorld.pega('cogumelo vermelho')

    expect(mario.tamanho).to eq('grande')
    expect(mario.poder).to eq(nil)
  end

  it 'retorna mario grande e poder de atirar quando pega a florzinha' do
    mario = SuperMarioWorld.pega('florzinha')

    expect(mario.tamanho).to eq('grande')
    expect(mario.poder).to eq('atirar')
  end

  it 'retorna mario grande e poder de voar quando pega a asinha' do
    mario = SuperMarioWorld.pega('asinha')

    expect(mario.tamanho).to eq('grande')
    expect(mario.poder).to eq('voar')
  end
end
