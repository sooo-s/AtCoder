h, w = gets.split.map(&:to_i)
ahw = []
h.times { ahw.push gets.split.map(&:to_i) }
ahw.flatten!
min = ahw.min

puts ahw.reduce(0) { |sum, a| sum + a - min }
