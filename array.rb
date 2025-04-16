names = ['Alice', 'Bob', 'Charlie']

puts "Digite um nome "
name = gets.chomp
names.push(name)
# Print the updated array
puts "Array atualizado: #{names}"

while names.length != 5
  puts "Digite um nome "
  name = gets.chomp
  names.push(name)
  puts "Nome Atualizado com sucesso"
  names.each do |name|
    puts name + " é meu amigo"
  end
end


numero = [2,4,88,32,1.5,0.5]

puts "executando  .map multiplicando por 2"
# Use map to create a new array with each element multiplied by 2
new_array = numero.map do |num|
  num * 3.5
end
# Print the new array 
puts "Array com os valores multiplicados por 2: #{new_array}"
# Print the original array
puts "Array original: #{numero}"

numero.map! do |num|
  num * 3.5
end
# Print the modified original array   
puts "Array original modificado: #{numero}"


array = [1, 2, 3, 4, 5]
selection =  array.select do |a|
  a >=4
end
puts "Array com os valores selecionados: #{selection}"

# Use select to filter elements based on a condition
# Print the original array
array = ['Clark Kent', 'Bruce Wayne', 'Peter Parker', 'Wade Wilson', 'Tony Stark', 'Peter Pan','Reed Richards','General Radahn'] 
selection =  array.select do |a|
  a .include?('Peter')
end
puts "Array com os valores selecionados: #{selection}"
