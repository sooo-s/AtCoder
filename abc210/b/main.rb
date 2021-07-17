n = gets.to_i # 10
s = gets.chomp.split('').map(&:to_i) # n = 10, m = 20

puts s.find_index(1).even? ? 'Takahashi' : 'Aoki'
