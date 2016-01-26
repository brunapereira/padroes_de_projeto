require_relative '../SuperMarioWorld'

describe 'Super Mario World' do

  context 'sem yoshi' do
    it 'retorna mario com 5 vidas, pequeno, sem poder e sem yoshi' do
      mario = SuperMarioWorld.pega(['cogumelo vermelho', 'asinha', 'formiga', 'formiga'], nil)

      expect(mario.vida).to eq 5
      expect(mario.tamanho).to eq 'pequeno'
      expect(mario.poder).to eq nil
    end

    it 'retorna mario com 4 vidas, pequeno, sem poder e sem yoshi' do
      mario = SuperMarioWorld.pega(['formiga', 'florzinha', 'cogumelo vermelho'], nil)

      expect(mario.vida).to eq 4
      expect(mario.tamanho).to eq 'grande'
      expect(mario.poder).to eq 'atirar'
    end
  end

  context 'com yoshi' do
    it 'retorna mario com 5 vidas, grande, sem poder e sem yoshi' do
      mario = SuperMarioWorld.pega(['cogumelo vermelho', 'formiga', 'asinha'], 'yoshi')

      expect(mario.vida).to be 5
      expect(mario.tamanho).to eq 'grande'
      expect(mario.poder).to eq 'voar'
      expect(mario.yoshi).to be false
    end
  end

  context 'com estrela' do

    it 'retorna mario com 5 vidas, grande, com poder de voar e sem yoshi' do
      mario = SuperMarioWorld.pega(['cogumelo vermelho', 'asinha', 'formiga', 'formiga'], 'estrela')

      expect(mario.vida).to be 5
      expect(mario.tamanho).to eq 'grande'
      expect(mario.poder).to eq 'voar'
    end

    it 'retorna mario com 5 vidas, grande, com poder de atirar e sem yoshi' do
      mario = SuperMarioWorld.pega(['florzinha', 'formiga', 'formiga'], 'estrela')

      expect(mario.vida).to be 5
      expect(mario.tamanho).to eq 'grande'
      expect(mario.poder).to eq 'atirar'
    end
  end
end
