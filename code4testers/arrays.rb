bandas = ["AC/DC", "Metallica", "Iron Maiden", "Black Sabbath"]

# puts bandas[0] # Acessa o primeiro elemento do array
# puts bandas[1] # Acessa o segundo elemento do array
# puts bandas[2] # Acessa o terceiro elemento do array
# puts bandas[3] # Acessa o quarto elemento do array

bandas.push("Led Zeppelin") # Adiciona um novo elemento ao final do array

# puts bandas[4] # Acessa o quinto elemento do array (retorna nil, pois não existe)

bandas.delete("AC/DC") # Remove o elemento "AC/DC" do array
# puts bandas[0] # Acessa o primeiro elemento do array (agora "Metallica")
# puts bandas[1] # Acessa o segundo elemento do array (agora "Iron Maiden")
# puts bandas[2] # Acessa o terceiro elemento do array (agora "Black Sabbath")
# puts bandas[3] # Acessa o quarto elemento do array (agora "Led Zeppelin")

metal = bandas.find { |item| item.include?( "Metal") } # Busca o elemento "Metallica" no array
puts metal # Exibe o elemento encontrado