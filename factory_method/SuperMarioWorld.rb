require_relative './Mario'

class SuperMarioWorld

  def self.pega(atributos, bonus)
    mario = Mario.new

    if bonus == 'yoshi'
      atributos.each do |atributo|
        if atributo == 'formiga'
          mario.yoshi = false
        end

        if atributo == 'florzinha'
          mario.tamanho = 'grande'
          mario.poder = 'atirar'
        end

        if atributo == 'asinha'
          mario.tamanho = 'grande'
          mario.poder = 'voar'
        end

        if atributo == 'cogumelo vermelho'
          mario.tamanho = 'grande'
        end
      end
      return mario
    elsif bonus == 'estrela'
      atributos.each do |atributo|
        if atributo == 'florzinha'
          mario.tamanho = 'grande'
          mario.poder = 'atirar'
        end

        if atributo == 'asinha'
          mario.tamanho = 'grande'
          mario.poder = 'voar'
        end

        if atributo == 'cogumelo vermelho'
          mario.tamanho = 'grande'
        end
      end
      return mario
    else
      atributos.each do |atributo|
        if atributo == 'formiga'
          if mario.tamanho == 'pequeno'
            mario.vida = mario.vida - 1
          elsif mario.tamanho == 'grande' && mario.poder != nil
            mario.poder = nil
          else
            mario.tamanho = 'pequeno'
          end
        end

        if atributo == 'florzinha'
          mario.tamanho = 'grande'
          mario.poder = 'atirar'
        end

        if atributo == 'asinha'
          mario.tamanho = 'grande'
          mario.poder = 'voar'
        end

        if atributo == 'cogumelo vermelho'
          mario.tamanho = 'grande'
        end
      end
      return mario
    end

    mario

  end
end
