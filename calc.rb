# Variable `menu` is initialized to 0 and can be used to store the user's menu selection or state.
menu = 0
while menu != 5
  puts "Escolha uma opção:"
  puts "1. Adição"
  puts "2. Subtração"
  puts "3. Multiplicação"
  puts "4. Divisão"
  puts "5. Sair"

  menu = gets.chomp.to_i

  case menu
  when 1
    # operation of addition
    print "Digite um numero" 
    number_1 = gets.chomp.to_f
    print "Digite outro numero" 
    number_2 = gets.chomp.to_f  
    # operation of addition
    additon = number_1 + number_2
    puts "Resultado: #{additon}"
    
  when 2

    print "Digite um numero" 
    number_1 = gets.chomp.to_f
    print "Digite outro numero" 
    number_2 = gets.chomp.to_f

    # operation of subtraction
    subtraction = number_1 - number_2
    puts "Resultado: #{subtraction}"
  when 3

    print "Digite um numero" 
    number_1 = gets.chomp.to_f
    print "Digite outro numero" 
    number_2 = gets.chomp.to_f

    # operation of multiplication
    multiply = number_1 * number_2
    puts "Resultado: #{multiply}"
  when 4
     print "Digite um numero" 
    number_1 = gets.chomp.to_f
    print "Digite outro numero" 
    number_2 = gets.chomp.to_f
   
    # operation of division
    division = number_1 / number_2
    puts "Resultado: #{division}"
  when 5
    
    puts "Saindo..."
  else
    puts "Opção inválida!"
  end
end
      