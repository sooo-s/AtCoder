n,a,b = gets.chomp.split.map(&:to_i)
s = gets.chomp.to_s

pass = 0
pass_in_f = 0

s.each_char do |t|
 if t == 'c'
   puts 'No'
   next
 end
 if pass == a + b
   puts 'No'
   next
 end
 if t == 'a'
   puts 'Yes'
   pass += 1
   next
 end

 if pass_in_f == b
   puts 'No'
   next
 end

 puts 'Yes'
 pass += 1
 pass_in_f += 1
end
