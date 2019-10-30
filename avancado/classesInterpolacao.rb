class Conta
  attr_accessor :saldo

  def deposita(valor)
    self.saldo += valor #analogo ao THIS
    puts valor.class
   
    #não precisa converter a variavel para string

    puts "depositando a quantia de #{valor} reais"
  end
end

c = Conta.new
puts c.saldo = 0.0
c.deposita(100.00)