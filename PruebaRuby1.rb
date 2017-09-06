#Opción 1: sacar promedio

def average_score
  file = File.open('students.csv', 'r')
  students = file.readlines
  file.close
  new_students = []
  students.each { |line| new_students.push(line.split(', ').map(&:chomp)) }
  file = File.open('Average_score.csv', 'w')
  new_students.each do |score|
        name = score.shift
        prom = get_average(score)
        file.puts "El promedio de #{name} es #{prom.to_f.round(1)}"
    end
   file.close
end


def get_average(score)
  sum = 0
  score.each do |ele|
    unless ele == 'A'
      sum +=  ele.to_i
end
end
return prom = sum / 5.to_f
end

# Fin Opción 1: sacar promedio

#Opción2: inasistencias totales
def inasistencias(student)
 puts student.count('A')

end

#Fin Opción2: inasistencias totales

#Inicio programa con Menú OK

puts 'Sistema de Información Académica'
option = 0
while option != '4'
  puts 'Ingresa 1 para conocer el promedio de cada alumno'
  puts 'Ingresa 2 para conocer la cantidad de inasistencias totales'
  puts 'Ingresa 3 para conocer a los alumnos aprobados'
  puts 'Ingresa 4 para salir'

  option = gets.chomp

  puts case option
  when '1'
    puts "Se ha generado el archivo Average-score.csv con el promedio de los alumnos #{average_score}"
  when '2'

  when '3'
  else exit
  end
end
