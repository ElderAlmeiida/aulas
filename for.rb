fruits = ['Maçã ', 'Banana', 'Laranja', 'Uva', 'Pera']
for fruit in fruits
  puts fruit
end
# O loop for percorre cada elemento do array fruits e imprime na tela
# o nome da fruta. A variável fruit é usada como um iterador que
# representa cada elemento do array a cada iteração do loop.
# O resultado será:
# Maçã
# Banana
# Laranja
# Uva
# Pera
# O loop for é uma estrutura de repetição que permite iterar sobre
# uma coleção de elementos, como arrays ou ranges. Ele é útil
# quando você sabe exatamente quantas vezes deseja repetir um bloco
# de código. A sintaxe básica do loop for é:
# for variável in coleção
#   # código a ser executado
# end
# Onde variável é o nome da variável que irá armazenar cada elemento
# da coleção durante a iteração e coleção é o array ou range que
# será percorrido.
# O loop for é uma das estruturas de repetição mais simples e 
# diretas disponíveis em Ruby. Ele é fácil de entender e usar,
# tornando-o uma boa escolha para iniciantes. No entanto, existem
# outras estruturas de repetição, como while e until, que podem ser
# mais adequadas em algumas situações. Além disso, o loop for não é
# tão flexível quanto outros métodos de iteração, como each ou map,
# que permitem trabalhar com coleções de forma mais funcional.
# Em resumo, o loop for é uma estrutura de repetição útil e simples
# que pode ser usada para iterar sobre coleções em Ruby.
# No entanto, é importante conhecer outras opções disponíveis
# na linguagem para escolher a melhor abordagem para cada situação. 

for i in 1..100
  puts "Número: #{i}"
end
# O loop for também pode ser usado com ranges, como no exemplo acima.