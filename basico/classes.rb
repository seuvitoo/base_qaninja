#Ruby é uma linguagem considerada orientada a objetos
#pq tudo no Ruby são objetos

#classe possui atributos e metodos
#caracteristcas e ações

#carro (nome, marca, modelo, cor, quantidade de portas)
#Ligar, businar, parar

class Carro
attr_accessor :nome
    def ligar
    puts 'O carro está pronto para iniciar o trajeto'
    end
end


civic = Carro.new
civic.nome = 'Civic'

puts civic.class
civic.ligar
