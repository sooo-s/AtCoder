n, w = gets.split.map(&:to_i)
stp = []
n.times { stp << gets.split.map(&:to_i) }

needs = Array.new(2 * 10**5 + 1) { 0 }

stp.each do |s, t, p|
  needs[s] += p
  needs[t] -= p
end

cum_sum = [0]
needs.each do |i|
  cum_sum << cum_sum[-1] + i
end

puts cum_sum.none? { |v| v > w } ? 'Yes' : 'No'
