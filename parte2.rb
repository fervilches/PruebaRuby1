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

puts inasistencias
