n = gets.to_i

if n.odd?
  puts 0
  exit
end

div = 10
ans = 0
while
  counter = n  / div
  break if counter == 0
  ans += counter
  div *= 5
end

puts ans
