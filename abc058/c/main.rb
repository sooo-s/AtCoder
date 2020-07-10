n = gets.to_i
s = []

n.times do
  tmp = gets.chomp.split('').sort
  hash = {}
  tmp.each do |moji|
    if hash[moji.to_sym]
      hash[moji.to_sym] += 1
    else
      hash[moji.to_sym] = 1
    end
  end
  s << hash
end
result = s.shift

s.each do |h|
  result.each do |k,v|
    tmp = [v, h[k] || 0].min
    result[k] = tmp
  end
end

puts result.map{|k,v| k.to_s * v}.join
