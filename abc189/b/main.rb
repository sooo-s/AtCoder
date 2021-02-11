n,x = gets.chomp.split.map(&:to_i)
vp = []
n.times do
  v,p = gets.chomp.split.map(&:to_i)
  vp << (v * p.to_f / 100).rationalize
end


alc = 0
vp.each_with_index do |vvpp, i|
  alc += vvpp
  if alc > x
    puts i + 1
    exit
  end
end

puts '-1'
