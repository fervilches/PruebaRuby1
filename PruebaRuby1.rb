#Begin Opción 1: sacar promedio

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

# End Opción 1: sacar promedio

# Begin Opción2: inasistencias totales OK

def inasistencias
  file = File.open('students.csv', 'r')
  students = file.readlines
  file.close
  new_students = []
  students.each do |line|
    new_students.push(line.split(', ').map(&:chomp))
  end
  new_students.map do |a|
    name = a.shift
    inasistencia = a.count('A')
    puts " Inasistencias totales de #{name} : #{inasistencia}"
  end
end
#End Opción2: inasistencias totales OK

#Inicio programa con Menú OK

puts 'Bienvenid@ al Sistema de Información Académica'
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
    puts inasistencias
  when '3'
    puts
  when '4'
    exit
  else '*** La opción ingresada no es válida, inténtalo nuevamente ***'

  end
end
