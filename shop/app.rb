require './market.rb'
require_relative 'product'

product = Product.new
market = Market.new
loop do
    puts "Escolha uma opção:"
    puts "1. Adicionar produto"
    puts "2. Remover produto"
    puts "3. Listar produtos"
    puts "4. Comprar produto"
    puts "5. Sair"
    option = gets.chomp.to_i

    case option
    when 1
        market.add_product
    when 2
        market.remove_product
    when 3
        market.list_products
    when 4
        market.buy_product
    when 5
        break
    else
        puts "Opção inválida"
    end
end