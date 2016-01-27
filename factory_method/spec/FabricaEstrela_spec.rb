describe 'FabricaEstrela' do
  it 'retorna mario com 5 vidas, grande, com poder de voar e sem yoshi' do
    mario = FabricaEstrela.new.cria_mario(['cogumelo vermelho', 'asinha', 'formiga', 'formiga'])

    expect(mario.vida).to be 5
    expect(mario.tamanho).to eq 'grande'
    expect(mario.poder).to eq 'voar'
  end

  it 'retorna mario com 5 vidas, grande, com poder de atirar e sem yoshi' do
    mario = FabricaEstrela.new.cria_mario(['florzinha', 'formiga', 'formiga'])

    expect(mario.vida).to be 5
    expect(mario.tamanho).to eq 'grande'
    expect(mario.poder).to eq 'atirar'
  end
end
