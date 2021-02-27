n = gets.to_i

ans = []

(2..10**5).each do |aa|
  bb = 2
  while true
    tmp = aa**bb
    break if tmp > n

    ans.push tmp
    bb += 1
  end
end

puts n - ans.uniq.size
