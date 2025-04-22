
class Market
  def initialize
    @products = []
  end

  def add_product
    product = Product.new

    puts "Digite o código do produto:"
    product.cod = gets.chomp

    puts "Digite o nome do produto:"
    product.name = gets.chomp

    puts "Digite o preço do produto:"
    product.price = gets.chomp.to_f

    @products.push(product)
    puts "Produto #{product.name} adicionado com sucesso"
  end

  def remove_product
    puts "Digite o código do produto a ser removido:"
    cod = gets.chomp
    product = @products.find { |p| p.cod == cod }
    if product.nil?
      puts "Produto não encontrado"
      return
    end
    @products.delete(product)
    puts "Produto #{product.name} removido com sucesso"
  end

  def list_products
    puts "Lista de produtos:"
    @products.each do |product|
      puts "Código: #{product.cod}, Nome: #{product.name}, Preço: R$#{product.price}"
    end
  end

  def buy_product
    puts "###########=== COMPRE AQUI ===###########"

    puts "Lista de produtos disponíveis:"
    @products.each do |product|
      puts "Código: #{product.cod}, Nome: #{product.name}, Preço: R$#{product.price}"
    end

    menu_buy = 0 
    bucket = []
    while menu_buy != 1
     
    puts "Digite o código do produto a ser comprado:"
    cod = gets.chomp
    product = @products.find { |p| p.cod == cod }
    if product.nil?
      puts "Produto não encontrado"
      return
    end
    bucket.push(product)
    puts"#{product.name} adicionado ao carrinho"
    puts "Seu carrinho de compras:"
    bucket.each do |product|
      puts "Código: #{product.cod}, Nome: #{product.name}, Preço: R$#{product.price}"
    end
    total = bucket.map do |product|
      product.price
    end.sum
    puts "Total a pagar: R$#{total}"

    puts "Digite 1 para finalizar a compra ou 0 para continuar comprando:"
      menu_buy = gets.chomp.to_i
      if menu_buy == 0
      end
  end  

    puts "Digite o valor pago:"
    payment = gets.chomp.to_f
    if payment < total
      puts "Valor insuficiente"
      return
    end
    change = payment - total
    puts "Troco: R$#{change}"
    @products.delete(product)
    5.times do
      puts "Obrigado por comprar na nossa loja"
      sleep(1)
    end
    puts "###########=== FIM DA COMPRA ===###########"
    5.times do
      puts "Obrigado por comprar na nossa loja"
      sleep(1)
    end


    puts "Produto #{product.name} comprado com sucesso"
  end
end