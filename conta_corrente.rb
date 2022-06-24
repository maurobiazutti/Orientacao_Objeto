require_relative 'conta'

class ContaCorrente < Conta
  attr_accessor :limite
  def initialize(numero, titular, saldo, limite)
    super(numero, titular, saldo)
    @limite = limite
  end

  def sacar(valor)
    if(saldo + limite) >= valor
      self.saldo -= valor
    else
      puts "Saldo Insuficiente"
    end
  end
end

#Cliente
cli_iris = Cliente.new('Iris', 'Bia', 328878)
cli_geraldo = Cliente.new('Geraldo', 'Alexandre', 3287896)

#ContaCorrente
conta_iris = ContaCorrente.new(110, cli_iris, 1000, 500)
conta_geraldo = ContaCorrente.new(111, cli_geraldo, 1000, 500)

conta_iris.sacar(1000) # Metodo sacar
conta_geraldo.transferir(conta_iris, 1500) # Metodo transferir

puts "Saldo Iris #{conta_iris.saldo}"
puts "Saldo Geraldo #{conta_geraldo.saldo}"
