#clase para el manejo de los mensajes para el usuario
#Todo lo que se le muestre al usuario en pantalla deberia ir aca.
class Interface
  #@breakline = "\n"
  def welcome
    puts 'Bienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!' + '\n'
  end

  def incorrect
    puts 'Incorrecto!, Trata de nuevo'
  end

  def correct
    puts 'Correcto!'
  end

  def guess
    puts 'Adivinar:'
  end

  def winner
    puts 'Felicidades! Has ganado el juego de reto5.'
  end

end
