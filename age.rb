loop do
  puts 'Selecione as seguintes opções:'
  puts '1 - Descobrir data de nascimento de uma pessoa'
  puts '2 - Descobrir ano de nascimento de uma pessoa'
  puts '0 - Sair'
  option = gets.chomp.to_i

  if option == 1
    puts 'Digite o mês do seu aniversário (1-12):'
    m = gets.chomp.to_i

    puts 'Digite o dia do seu aniversário (1-31):'
    d = gets.chomp.to_i

    puts 'Digite sua idade atual:'
    y= gets.chomp.to_i

    # Calculando o ano de nascimento
    y = Time.now.year - age

    # Criando a data de nascimento
    begin
      birth_date = Time.new(y, m, d)
      puts "Você nasceu no dia #{birth_date.day} do mês #{birth_date.month} do ano #{birth_date.year}."
    rescue ArgumentError
      puts "Data inválida! Verifique os valores inseridos."
    end

  elsif option == 2
    puts 'Digite seu ano de nascimento:'
    year = gets.chomp.to_i
    age = Time.now.year - year
    puts "Você tem #{age} anos."
  elsif option == 0
    puts 'Saindo...'
    break
  else
    puts 'Opção inválida!'
  end
end