require './Mario'

class FabricaYoshi
  @@mario = Mario.new

  def cria_mario(atributos)
    atributos.each do |atributo|
      if atributo == 'formiga'
        formiga
      elsif atributo == 'florzinha'
        florzinha
      elsif atributo == 'asinha'
        asinha
      elsif atributo == 'cogumelo vermelho'
        cogumelo_vermelho
      end
    end
    @@mario
  end

  def formiga
    @@mario.yoshi = false
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
