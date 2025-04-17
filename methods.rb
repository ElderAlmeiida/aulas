def hello name 
  puts "Olá #{name}"
end
hello "Lucas"
hello "Gustavo"
hello "Guilherme"
hello "Elder"

puts "---------------------"

def talk (frist_name=gets.chomp , last_name=gets.chomp)
  puts "Digite seu nome"
  frist_name = gets.chomp
  puts "Digite seu sobrenome"
  last_name = gets.chomp
  
  puts "Olá #{frist_name} #{last_name}"

end

talk "",""
puts "---------------------"


def signal(color = 'vermelho')
  puts "O sinal está #{color}."
end
color = 'verde'
signal(color)

#############################################################
##############--RETRUN--########################
def compare (a,b)
   a>b 
end
 a= 23
 b= 12
 result = compare(a,b)
 puts "O resultado da comparação é #{result}."
 puts "---------------------"