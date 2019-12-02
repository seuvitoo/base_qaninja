class Veiculo
  attr_accessor :nome, :marca, :modelo

  def initialize(nome, marca, modelo)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
  end

  def ligar
    puts "#{nome} está pronto para iniciar o trajeto"
  end

  def buzinar
    puts "Beep! Beep!"
  end
end

class Carro < Veiculo
  def dirigir
    puts "#{nome} iniciando o trajeto"
  end
end

class Moto < Veiculo
  def pilotar
    puts "#{nome} iniciando o trajeto"
  end
end

civic = Carro.new("Civic", "Honda", "s1")
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new("Lancer", "Mitsubishi", "v1")
lancer.ligar
lancer.buzinar
lancer.dirigir

bis = Moto.new("Bis", "Honda", "150")
bis.ligar
bis.buzinar
bis.pilotar
