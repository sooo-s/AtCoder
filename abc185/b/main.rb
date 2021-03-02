n, m, t = gets.chomp.split.map(&:to_i)
ab = []
m.times { ab.push gets.chop.split.map(&:to_i) }

n_max = n
walk = true
[0, ab, t].flatten.each_cons(2) do |a, b|
  if walk
    n -= b - a
    if n <= 0
      puts 'No'
      exit
    end
  else
    n = [n + b - a, n_max].min
  end
  walk = !walk
end

puts 'Yes'
