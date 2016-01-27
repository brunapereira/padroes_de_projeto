require_relative './Fabrica'
require_relative './FabricaYoshi'
require_relative './FabricaEstrela'
require_relative './Mario'

class SuperMarioWorld
  def self.pega(atributos, fabrica)
    fabrica.cria_mario(atributos)
  end
end
