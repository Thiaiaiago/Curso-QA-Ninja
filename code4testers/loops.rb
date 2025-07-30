# i = 1
# 5.times do
#     puts "Executando o times #{i}"
#     i = i + 1
# end

bandas = ["Black Sabbath", "Menos é Mais", "Metallica", "Iron Maiden", "MC Livinho"]

# i = 0
# bandas.size.times do
#     puts bandas[i]
#     i = i + 1
# end

bandas.each do |banda|
    puts banda
end