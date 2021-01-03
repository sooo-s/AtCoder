n = gets.to_i
s0 = []
s1 = []
n.times do |i|
   string = gets.chomp.chars
   if(string[0] != '!')
     s0 << string
   else
     s1 << string[1..-1]
   end
end

int =  s0 & s1
puts int.size == 0 ? 'satisfiable' : int[0].join
