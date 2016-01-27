describe 'FabricaYoshi' do

  it 'retorna mario com 5 vidas, grande, sem poder e sem yoshi' do
    mario = FabricaYoshi.new.cria_mario(['cogumelo vermelho', 'formiga', 'asinha'])

    expect(mario.vida).to be 5
    expect(mario.tamanho).to eq 'grande'
    expect(mario.poder).to eq 'voar'
    expect(mario.yoshi).to be false
  end
end
