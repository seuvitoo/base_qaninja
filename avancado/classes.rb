class Conta
def deposita(valor)
    puts 'Depositando a quantia de ' + valor.to_s + ' reais.'
end
end

c = Conta.new

c.deposita(100.00)