# begin
#   #devo tentar fazer alguma coisa
# file = File.open('./ola')
# if file
#     puts file.read
# end
# rescue Exception => e
#   #obter um possivel erro
#   puts e.message
#   puts e.backtrace

# end

def soma(n1, n2)
n1 +n2
rescue Exception => e
    #puts e.message
    puts 'Não foi possível executar a soma'

end

soma("10",5)