n, s = gets.chomp.split.map(&:to_s) # n = 10, m = 20

N = n.to_i
S = s.bytes

def ok?
  $a == $t && $c == $g
end

def add(last)
  case last
  when 65 then $a += 1
  when 84 then $t += 1
  when 67 then $c += 1
  else $g += 1
  end
end

count = 0
(0...N).each do |first|
  $a = 0
  $t = 0
  $c = 0
  $g = 0
  (first...N).each do |last|
    add(S[last])
    count += 1 if ok?
  end
end

puts count
