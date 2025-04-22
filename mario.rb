def pixel(color)
    "\e[48;5;#{color}m  \e[0m"
  end
  
  # SNES Mario: 16x16, baseado no sprite clássico
  # Legenda:
  # 0 = fundo, 1 = vermelho, 2 = pele, 3 = marrom, 4 = azul, 5 = branco, 6 = preto
  sprite = [
    [0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0],
    [0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0],
    [0,0,0,3,3,1,1,1,1,3,3,0,0,0,0,0],
    [0,0,3,2,2,3,1,1,3,2,2,3,0,0,0,0],
    [0,0,3,2,2,2,3,3,2,2,2,3,0,0,0,0],
    [0,0,3,3,2,2,2,2,2,2,3,3,0,0,0,0],
    [0,0,0,3,4,4,3,3,4,4,3,0,0,0,0,0],
    [0,0,3,4,4,4,4,4,4,4,4,3,0,0,0,0],
    [0,3,4,4,4,4,4,4,4,4,4,4,3,0,0,0],
    [0,5,5,3,3,3,0,0,3,3,3,5,5,0,0,0],
    [0,5,5,3,3,3,0,0,3,3,3,5,5,0,0,0],
    [0,0,3,3,3,3,0,0,3,3,3,3,0,0,0,0],
    [0,3,3,3,3,3,0,0,3,3,3,3,3,0,0,0],
    [3,3,3,3,3,3,0,0,3,3,3,3,3,3,0,0],
    [5,5,0,5,5,0,0,0,0,0,5,5,0,5,5,0],
    [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  ]
  
  # Cores SNES-style aproximadas (ANSI 256)
  colors = {
    0 => 16,   # fundo preto
    1 => 160,  # vermelho (chapéu)
    2 => 223,  # pele
    3 => 94,   # marrom (cabelo/bigode)
    4 => 21,   # azul (macacão)
    5 => 15,   # branco (luvas/olhos)
    6 => 0     # preto (detalhe dos olhos)
  }
  
  # Desenhar o Mario
  sprite.each do |row|
    row.each do |px|
      print pixel(colors[px])
    end
    puts
  end
  
  