describe 'Fabrica' do
  it 'retorna mario com 5 vidas, pequeno, sem poder e sem yoshi' do
    mario = Fabrica.new.cria_mario(['cogumelo vermelho', 'asinha', 'formiga', 'formiga'])

    expect(mario.vida).to eq 5
    expect(mario.tamanho).to eq 'pequeno'
    expect(mario.poder).to eq nil
  end

  it 'retorna mario com 4 vidas, pequeno, sem poder e sem yoshi' do
    mario = Fabrica.new.cria_mario(['formiga', 'florzinha', 'cogumelo vermelho'])

    expect(mario.vida).to eq 4
    expect(mario.tamanho).to eq 'grande'
    expect(mario.poder).to eq 'atirar'
  end
end
