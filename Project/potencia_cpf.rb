require "cpf_cnpj"
# exercio 1 
def potencia (n1=gets.chomp.to_i, n2=gets.chomp.to_i)
  puts 'Digite o numero base :'
  n1 = gets.chomp.to_i
  puts 'Digite expoente :' 
  n2 = gets.chomp.to_i
  
  resultado = n1 ** n2
  puts "Resultado: #{resultado}"
  return resultado
end

potencia "",""
# exercio 2
def  validar_cpf (number=gets.chomp)
  puts 'Digite o CPF:' 
  number= gets.chomp
  if CPF.valid?(number)
    cpf = CPF.new(number)


    puts "#{cpf.formatted} é um CPF válido."
  else
    puts "#{cpf} não é um CPF válido."
  end
end



validar_cpf ""