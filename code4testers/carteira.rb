puts "Qual o seu nome?"
nome = gets.chomp
puts "Quantos anos você tem?"
idade = gets.chomp.to_i

puts idade >= 18 ? nome + ", " + "você pode tirar carteira de motorista" : idade > 7 ? nome + ", " + "melhor continuar andando de bicicleta" : nome + ", " + "você é muito novo e só pode andar a pé"
puts "Você tem #{idade} anos, #{nome}."