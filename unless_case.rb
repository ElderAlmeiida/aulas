
# Unless
product_status = 'closed'

unless product_status == 'open'
    check_change = 'can'
else 
  check_change = 'can not'
end
puts "you #{check_change} change the product"

#Case 
puts 'Digite o numero do mês em que você nasceu'


  month = gets.chomp.to_i

  case month 
  when 1..3 
    puts ' Você nasceu no começo do ano'
  when 9..12 
    puts ' Você nasceu no final do ano'   
  when 4..6 
    puts ' Você nasceu na primeira metade do ano'
  when 7..9 
      puts ' Você nasceu na segunda metade do ano'
      
  else  
    puts 'nao foi possivel indentificar'             
 end       