#LAÇO DE REPETIÇÃO TIMES
10.times do
puts "Mensagem de Repetição"
end
5.times do |i|
puts "mensagem de repetição " + i.to_s + " vez(es)."
end

#Laço de Repetição While
init = 0
while init <= 10 do
puts 'looping infinito'
init += 1
end

#LAÇO DE REPETIÇÃO FOR
for item in (0...10)
    puts 'Repetição de mensagem ' + item.to_s + ' vez(es)'
end

#ARRAY
vingadores = ['Ironman', 'Hulk', 'Spiderman', 'Thor']
puts vingadores.class

vingadores.each do |v|
puts v
end


