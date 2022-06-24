require_relative 'cliente'

class Conta
  attr_reader :numero, :titular # Metodo Somente de Leitura
  attr_accessor :saldo # Metodo de Leitura e Escrita
  # attr_writer :saldo # Metodo Somente de Escrita

  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
  end

  def sacar(valor)
    if saldo >= valor
      self.saldo -= valor
    else
      puts "Saldo Insuficiente"
    end
  end

  def depositar(valor)
    self.saldo += valor
  end

  def transferir(conta_destino, valor)
    if saldo >= valor
    sacar(valor)
    conta_destino.depositar(valor)
    else
      puts "Não foi possivel fazer transferencia"
    end
  end
end

#CLIENTE
cli_mauro = Cliente.new("Mauro", "Biazutti", 37988222022)
cli_marcos = Cliente.new("Marcos", "Biazutti", 37988342010)

#CONTA
conta_mauro = Conta.new(011, cli_mauro, 1000)
conta_marcos = Conta.new(012, cli_marcos, 1000)

conta_mauro.transferir(conta_marcos, 1000)

puts conta_mauro.saldo
puts conta_marcos.saldo
