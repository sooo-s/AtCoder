sai = gets.chomp.split.map(&:to_i) # n = 10, m = 20

sai.sort!

if sai[0] != sai[1] && sai[1] != sai[2]
  puts 0
  exit
end

puts sai[0] == sai[1] ? sai[2] : sai[0]
