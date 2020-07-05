n = gets.to_i
march = { M: 0, A: 0, R: 0, C: 0, H: 0} 
n.times do
  name = gets.chomp.to_s[0]
  case name
    when 'M', 'A', 'R', 'C', 'H' then
      march[name.to_sym] += 1
  end
end

ans = 0
combination = ['M', 'A', 'R', 'C' ,'H'].combination(3).to_a
combination.each do |com|
  ans += march[com[0].to_sym] * march[com[1].to_sym] * march[com[2].to_sym]
end

p ans
