file = File.open('students.csv', 'r')
data = file.readlines
file.close

david = data[0].split(', ').map { |e| e.chomp }
david.delete('David')

gonzalo = data[1].split(', ').map{ |e| e.chomp }
gonzalo.delete('Gonzalo')

mai = data[2].split(', ').map{ |e| e.chomp }
mai.delete('Mai')

jp = data[3].split(', ').map{ |e| e.chomp }
jp.delete('JP')


def inasistencias(student)
 puts "Inasistencias #{student.count('A')}"
end

puts inasistencias(mai)
