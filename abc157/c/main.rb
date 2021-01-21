n,m = gets.chomp.split.map(&:to_i)
sc = m.times.map{ gets.chomp.split.map(&:to_i) }

(0..999).each do |num|
  num_s = num.to_s
  if (num_s.size === n && sc.all?{ |s,c| num_s[s - 1].to_i == c })
    puts num
    exit
  end
end

puts '-1'
