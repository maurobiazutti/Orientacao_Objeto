require_relative 'conta'
require_relative 'conta_corrente'

#CLIENTE
cli_mauro = Cliente.new("Mauro", "Biazutti", 37988222022)
cli_marcos = Cliente.new("Marcos", "Biazutti", 37988342010)
cli_geraldo = Cliente.new("Geraldo", "Alexandre", 32988122717)
cli_iris = Cliente.new('Iris', 'Bia', 328878)
cli_geraldo = Cliente.new('Geraldo', 'Alexandre', 3287896)

#CONTA
conta_mauro = Conta.new(011, cli_mauro, 1000)
conta_marcos = Conta.new(012, cli_marcos, 1000)
conta_geraldo = Conta.new(013, cli_geraldo, 1000)

#ContaCorrente
conta_iris = ContaCorrente.new(110, cli_iris, 1000, 500)
conta_geraldo = ContaCorrente.new(111, cli_geraldo, 1000, 500)

conta_mauro.transferir(conta_marcos, 1000)
conta_marcos.transferir(conta_mauro, 100)
conta_geraldo.transferir(conta_mauro, 200)

puts conta_mauro.saldo
puts conta_marcos.saldo
puts conta_geraldo.saldo


conta_iris.sacar(1000) # Metodo sacar
conta_geraldo.transferir(conta_iris, 1500) # Metodo transferir

puts "Saldo Iris #{conta_iris.saldo}"
puts "Saldo Geraldo #{conta_geraldo.saldo}"