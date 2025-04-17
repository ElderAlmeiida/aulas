class Esportista 
  def competir 
    puts 'Participando de uma competição '
  end
end

class JogadorDeFutebol < Esportista
  def correr
    puts 'Correndo atras da bola'
  end
end

class Maratonista < Esportista
  def correr 
    puts 'Percorrendo circuito '
  end
end

JogadorDeFutebol = JogadorDeFutebol.new
Maratonista = Maratonista.new
puts "Jogador de futebol : #{JogadorDeFutebol.competir} \n #{JogadorDeFutebol.correr}"
puts "Maratonista : #{Maratonista.competir} \n #{Maratonista.correr}"

