#exercício 1

array = [2,3,12,10]
# puts array
puts "Array original: #{array}"

array.map! do |a|
  a * 2
end

 # Print the modified array
puts "Array modificado: #{array}"

#exercício 2

hash= {}
while hash.length != 3 
  puts "Digite uma chave e um valor"
  key = gets.chomp
  value = gets.chomp
  hash[key] = value
  puts "Hash atualizado com sucesso"
  hash.each do |key, value|
    puts "Sua chave é :#{key}  seu valor é #{value}"
  end
end

#exercício 3

#exercício 3

numbers = {A: 1, B: 30, C: 20, D: 25, E: 15}

# Selecionando o par com o maior valor
selection_value = numbers.max_by { |key, value| value }

puts "Selecionado o maior valor"
puts "O maior valor é #{selection_value[1]}, associado à chave #{selection_value[0]}."