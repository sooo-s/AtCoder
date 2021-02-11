a,b,c = gets.chomp.split.map(&:to_i)

if (a == b)
  if (c.zero?)
    puts 'Aoki'
  else
    puts 'Takahashi'
  end
  exit
end

if (a > b) 
  puts 'Takahashi'
  exit
end

puts 'Aoki'
