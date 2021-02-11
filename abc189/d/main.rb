n = gets.to_i
$s = []
n.times do
  ss = gets.chomp.to_s
  $s.push ss == 'AND' ? true : false
end


def calc n
  if n == 1
    return $s[n-1] ? 1 : 3
  end
  return $s[n-1] ? calc(n - 1) : 2 ** n + calc(n-1)
end

puts calc(n)
