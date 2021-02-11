n = gets.to_i
d = gets.chomp.split.map(&:to_i)
m = gets.to_i
t = gets.chomp.split.map(&:to_i)

# p n,d,m,t

d_tally = d.tally

# p d_tally

t.each do |tt|
  counter = d_tally[tt] || 0
  if(counter.zero?) 
    puts "NO"
    exit
  end
  d_tally[tt] -= 1
end

puts "YES"
