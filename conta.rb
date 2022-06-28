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
