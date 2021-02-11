v,t,s,d = gets.chomp.split.map(&:to_i)

kieteru = v * t..v * s

puts kieteru.cover?(d) ? 'No' : 'Yes'