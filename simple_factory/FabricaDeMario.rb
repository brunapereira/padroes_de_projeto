require_relative 'Mario'

class FabricaDeMario
  @@mario = Mario.new()

  def self.cria_mario(atributo)
    if atributo == 'cogumelo vermelho'
      cogumelo_vermelho
    elsif atributo == 'florzinha'
      florzinha
    elsif atributo == 'asinha'
      asinha
    elsif atributo == 'formiga'
      formiga
    end
  end

  def self.cogumelo_vermelho
    @@mario.tamanho = 'grande'
    @@mario
  end

  def self.florzinha
    @@mario.tamanho = 'grande'
    @@mario.poder = 'atirar'
    @@mario
  end

  def self.asinha
    @@mario.tamanho = 'grande'
    @@mario.poder = 'voar'
    @@mario
  end
end
