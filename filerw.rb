#clase que carga el archivo con preguntas y respuestas
# retorna arreglos con preguntas @quest y arreglo con respuestas @ans
# 'input.txt' es el archivo de texto que contiene preguntas y respuestas.
class Filerw
  def initialize
    @quest = []
    @ans = []
    @f = 'input.txt'
  end

  def process_file
    if File.file?(@f)
      i = 1
      File.foreach(@f) do |line|
        case i
        when 1
          @quest.push(line)
        when 2
          @ans.push(line)
        when 3
          i=0
        end
        i = i+1
      end
    else
      puts 'problema cargando el archivo de preguntas y respuestas.'
      puts @f
    end
  end

  def questions
    return @quest
  end

  def answers
    return @ans
  end
end
