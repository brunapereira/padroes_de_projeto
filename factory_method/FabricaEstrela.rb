require './Mario'

class FabricaEstrela
  @@mario = Mario.new

  def cria_mario(atributos)
    atributos.each do |atributo|
      if atributo == 'florzinha'
        florzinha
      elsif atributo == 'asinha'
        asinha
      elsif atributo == 'cogumelo vermelho'
        cogumelo_vermelho
      end
    end
    @@mario
  end

  def florzinha
    @@mario.tamanho = 'grande'
    @@mario.poder = 'atirar'
  end

  def asinha
    @@mario.tamanho = 'grande'
    @@mario.poder = 'voar'
  end

  def cogumelo_vermelho
    @@mario.tamanho = 'grande'
  end
end
