#modules possuem 2 funçoes namespace e mixins
# namespace
module ReverseWorld
    def self.puts text 
        print text.reverse.to_s
    end
end

ReverseWorld::puts 'redle'

# mixins
module ImpressaoDecorada
    def imprimir text 
        decoracao =  "#"* 1000
        puts decoracao
        puts text 
        puts decoracao
    end
end 

module Pernas 
    include ImpressaoDecorada
       def chute_frontal 
        imprimir 'Chute Frontal'
       end 
       
       def chute_lateral
        imprimir 'Chute Lateral'
       end 
    end
module Bracos 
    include ImpressaoDecorada
    def jab_de_direita
        imprimir 'Jab de Direita'
    end

    def jab_de_esquerda 
        imprimir 'jab de Esquerda'  
    end 
end

class LutadorX
    include Pernas 
    include Bracos 
end 
 LutadorX.new.chute_frontal
LutadorX.new.chute_lateral
LutadorX.new.jab_de_direita
LutadorX.new.jab_de_esquerda

mario = [
  " " * 6 + "#" * 4 + " " * 6,
  " " * 5 + "#" * 6 + " " * 5,
  " " * 4 + "#" * 8 + " " * 4,
  " " * 2 + "#" * 2 + " " * 8 + "#" * 2 + " " * 2,
  " " * 1 + "#" * 14 + " " * 1,
  " " * 1 + "#" * 2 + " " * 2 + "#" * 2 + " " * 2 + "#" * 2 + " " * 2 + "#" * 2 + " " * 1,
  " " * 1 + "#" * 14 + " " * 1,
  " " * 3 + "#" * 8 + " " * 3,
  " " * 4 + "#" * 6 + " " * 4,
  " " * 5 + "#" * 4 + " " * 5
]

mario.each { |line| puts line }