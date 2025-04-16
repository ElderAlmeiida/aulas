count = 0
data = ["Maçã", "Banana", "Laranja", "Uva", "Pera"]
loop do 
  if count == data.length
    break
  end
  puts data[count]
  count += 1
end

data = ["Osvaldo", "Lima", "Silva"]

# loop times 
data.length().times do
  puts data 
end