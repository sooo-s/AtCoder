a = gets.split.map(&:to_i) # n = 10, m = 20

a.sort!

puts a[0] - a[1] == a[1] - a[2] ? 'Yes' : 'No'
