#este archivo contiene el flujo de control de los datos para el programa
#incluir interface
#incluir Reto5

inter = Interface.new()
game = Reto5.new()
inter.welcome()
index = 0
while index < 5
  puts game.next_question(index)
  inter.guess
  usr_ans = gets.chomp
  if game.match(index, usr_ans)
    inter.correct()
    index = index + 1
  else
    inter.incorrect()
  end
end
inter.winner()
