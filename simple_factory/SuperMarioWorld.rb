require_relative 'Mario'

class SuperMarioWorld
  def self.pega(atributo)
    mario = cria_mario(atributo)
  end

  def self.cria_mario(atributo)
    mario = Mario.new('pequeno', 5, nil)

    if atributo == 'cogumelo vermelho'
      mario.tamanho = 'grande'
    elsif atributo == 'florzinha'
      mario.tamanho = 'grande'
      mario.poder = 'atirar'
    elsif atributo == 'asinha'
      mario.tamanho = 'grande'
      mario.poder = 'voar'
    end

    return mario
  end
end
