n = gets.to_i # 10
h = gets.chomp.split.map(&:to_i) # n = 10, m = 20

max = 0
count = 0
h.each_cons(2).map { |a, b| a - b }.each do |hh|
  if hh >= 0
    count += 1
  else
    max = [max, count].max
    count = 0
  end
end

puts [max, count].max
