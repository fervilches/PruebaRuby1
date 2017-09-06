
def average_score
  file = File.open('students.csv', 'r')
  students = file.readlines
  file.close
  new_students = []
  students.each { |line| new_students.push(line.split(', ').map(&:chomp)) }
  file = File.open('scoreprueba.csv', 'w')
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

puts average_score








#def score(student)
#  if student.include?("A")
#    student.delete("A")
#    suma = 0
#    student.each{ |ele| suma = suma + ele.to_i}
#    promedio = suma / 5.to_f
#    return promedio
#  else
#    suma = 0
#    student.each{ |ele| suma = suma + ele.to_i}
#    promedio = suma / 5.to_f
#    return promedio
#  end
#end

#puts score(mai)
