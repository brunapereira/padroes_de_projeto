require_relative 'Mario'
require_relative 'FabricaDeMario'

class SuperMarioWorld
  def self.pega(atributo)
    FabricaDeMario.cria_mario(atributo)
  end
end
