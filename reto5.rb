#la Clase reto5 se encarga de averiguar si la respuesta del usuario es correcta
#toma los arreglos leidos por la clase filerw para hacer las validaciones.
#tambien envia los enunciados de las preguntas.
class Reto5
#  include Filerw
require_relative "filerw"
  def initialize
    gas = Filerw.new()
    gas.process_file
    @questions = gas.questions
    @answers = gas.answers
  end

  def match(index, user_answer)
#    puts user_answer
#    puts @answers[index]
    if (@answers[index].gsub("\n",'') == user_answer.to_s)
      return true
    else
      return false
    end
  end

  def next_question(index)
    return @questions[index]
  end
end


#test = Reto5.new()
#puts test.next_question(0)
#puts test.match(0, 'uno')
