#la Clase reto5 se encarga de averiguar si la respuesta del usuario es correcta
#toma los arreglos leidos por la clase filerw para hacer las validaciones.
#tambien envia los enunciados de las preguntas.
class Reto5
#  include Filerw
  def initialize
    gas = Filerw.new()
    gas.process_file
    @questions = gas.questions
    @answers = gas.answers
  end

  def match(index, user_answer)
    if (@answers[index] == user_answer)
      return true
    else
      return false
    end
  end

  def next_question(index)
    return @questions[index]
  end
end


test = Reto5.new()
puts test.next_question(0)
puts test.match(0, 'dos')
