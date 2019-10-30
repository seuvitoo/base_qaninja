class Conta
  attr_accessor :saldo, :nome

  #construtor no Ruby é sempre usado o metodo initialize
  def initialize(nome)
    self.saldo = 0
    self.nome = nome
  end

  def deposita(valor)
    self.saldo += valor #analogo ao THIS

    puts "depositando a quantia de #{valor} reais na conta do " + self.nome
  end
end

c = Conta.new("Victor")
puts c.saldo

c.deposita(100.00)
puts c.nome
