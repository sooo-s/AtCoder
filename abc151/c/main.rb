n, m = gets.split.map(&:to_i) # n = 10, m = 20
ps = []
m.times do
  q, s = gets.split.map(&:to_s)
  ps << [q.to_i, s]
end

ac = Array.new(n + 1, false)
wa = Array.new(n + 1, 0)
pen = 0
ps.each do |q, submit|
  next if ac[q] == true

  if submit == 'WA'
    wa[q] += 1
  else
    ac[q] = true
  end
end

ac.each_with_index do |isac, i|
  pen += wa[i] if isac
end

puts "#{ac.count(true)} #{pen}"
