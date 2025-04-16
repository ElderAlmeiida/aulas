capitais = Hash.new 
capitais = { acre:'Rio Branco',sao_paulo:'Sao Paulo', bahia:'Salvador', minas_gerais:'Belo Horizonte', parana:'Curitiba' }

# keys see all keys
puts capitais.keys

# values see all values
puts capitais.values

# each iterate over hash 
capitais.each do |key, value|
  puts "#{key} => #{value}"
end

aulas = { 'Aula 1 '=> 'Liberada', 'Aula 2' => 'Liberada', 'Aula 3' => 'Liberada', 'Aula 4' => 'Em Breve', 'Aula 5' => 'Em Breve' }

aulas.each do |key, value|
  puts "#{key} #{value}"
end
# each_key iterate over keys
aulas.each_key do |key|   
  puts key
end
# each_value iterate over values
aulas.each_value do |value| 
  puts value
end

hash = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'três', 4 => 'quatro', 5 => 'cinco'}
puts 'Selecionado keys com valor maior que 2'
selection_key = hash.select do |key, value|
  key > 2
end
puts selection_key
# select iterate over hash