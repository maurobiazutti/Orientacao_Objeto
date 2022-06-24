class Cliente
  attr_reader :nome, :sobrenome
  attr_accessor :telefone
  def initialize(nome, sobrenome, telefone)
    @nome = nome
    @sobrenome = sobrenome
    @telefone = telefone
  end
end

