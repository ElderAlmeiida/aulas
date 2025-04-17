 class Computer 
    def turn_on 
        puts "Computer is turning on..."
    end
    def turn_off
      puts "Computer is turning off..."
    end

 end
   
 computer = Computer.new
 puts computer.turn_on
 computer.turn_on


 class Animal 
   def pular 
     puts 'Toing, toing, toing'
   end
   def dormir 
      puts 'zzzzzz'
   end
  
   #Herança 
   class Cachorro < Animal
     def latir 
       puts 'Au, au, au'
     end
   end
   class Gato < Animal 
     def miar 
       puts 'Miau, miau, miau'
     end
   end
   
   cachorro = Cachorro.new
   cachorro.pular
   cachorro.latir
   cachorro.dormir

    gato = Gato.new
    gato.pular
    gato.miar
    gato.dormir
 end

# Polimorfismo
class Instrumento 
  def escrever
    puts 'Escrevendo...'
  end
end

class Teclado <Instrumento 
  
end

class Caneta < Instrumento
  def escrever 
    puts 'Escrevendo com caneta...'

  end
end
class Lapis < Instrumento
  def escrever
    puts 'Escrevendo com lápis...'
  end
end

teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new

puts " #{teclado.escrever}"
puts "#{lapis.escrever} "
puts " #{caneta.escrever} "



## Constructor ## ex na pasta animal_poo_constructor
#
#Escopo das variavel 
#Variavel  de Classe -- é declardo com a palavra reservada @@
#Variavel de Instancia -- é declardo com a palavra reservada @

def foo
  # Variável local
  local = 'local é acessada apenas dentro deste metodo'
  print local 
end
foo

# puts local # daria erro pois esta fora do escopo

#==========================================================================#
# Variavel global -- é declardo com a palavra reservada $
# Variável global $global = 'global é acessada em qualquer lugar do programa'
class Bar 
  def foo 
    $global = 0
    puts $global
  end
end

class Baz
  def qux
    $global += 1
    puts $global
  end
end

bar = Bar.new
baz= Baz.new
bar.foo
baz.qux
baz.qux
puts $global

$global = 10
puts $global
#==========================================================================#

# Variavel de classe -- é declardo com a palavra reservada @@ 
# Variável de classe @@class_variable = 'class_variable é acessada em qualquer lugar da classe'
# 
class User 
  @@user_count= 0
  def add(name)
    puts "User #{name} adicionado com sucesso"
    @@user_count += 1
    puts @@user_count
  end
end  

frist_user = User.new
frist_user.add('Elder')

second_user = User.new
second_user.add('Jose')


# Variavel de instancia -- é declardo com a palavra reservada #
class User 
  def add(name)
    @name = name 
    puts "User #{@name} adicionado com sucesso"
    hello
  end
  def hello
    puts "Hello #{@name}"
  end

end
