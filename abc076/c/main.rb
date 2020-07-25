$ss = gets.chomp.split('').map &:to_s
t = gets.chomp.split('').map &:to_s

UNR = 'UNRESTORABLE'

def is_p(s,t)
  s.each_with_index do |v, i|
    next if v === '?'
    return false if v != t[i]
  end
  return true
end

def exchange(t, start)
  ss = $ss.dup
  t.each_with_index do |tt, i|
    ss[start + i] = tt
  end
  return ss
end

if $ss.size < t.size
  puts UNR
  exit
end

oks = []
($ss.size - t.size + 1).times do |i|
  if is_p($ss[i..i+t.size-1], t)
    oks << exchange(t, i).join.gsub(/\?/, 'a')
  end
end

if oks.size.zero?
  puts UNR
  exit
end

puts oks.sort.first
