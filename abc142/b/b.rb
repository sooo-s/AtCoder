n,k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)


puts h.select{|item| item >= k}.count
