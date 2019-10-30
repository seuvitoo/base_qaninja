class Carro
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

  def dirigir
    puts "#{nome} iniciando o trajeto"
  end

class Moto
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
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

  fazer = Carro.new ('Fazer', 'Yamaha', '250x')
  fazer.ligar
  fazer.buzinar
  fazer.dirigir

end
