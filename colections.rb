estado = []
estado.push:"Bahia"
estado.push:"Sao Paulo"
estado.push:"Rio de Janeiro"
estado.push:"Minas Gerais"
estado.push:"Parana"

puts estado

estado.delete:"Bahia"

puts estado
puts estado.first
puts estado.last
puts estado.length
puts estado.empty?
puts estado.include?("Sao Paulo")
puts estado.sort