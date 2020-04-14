a,b = gets.chomp.split.map(&:to_i)

max = 1250
1.upto(max) do |n|
  if (n * 8) / 100 === a && (n * 10) / 100 == b
    puts n
    exit
  end
end

puts '-1'
