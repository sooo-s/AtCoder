require 'prime'

n = gets.chomp.to_i

def find5 a
  prime5 = Prime.prime_division(a).select{|v| v[0] == 5}
  if !prime5.empty?
    return prime5[0][1]
  else
    return 0
  end
end

if n.odd? || n == 0
  p 0
  exit
end

counter = 1
(2..n).to_a.select(&:even?).each do |i|
  # matsu = i.to_s[-1]
  # if matsu == '5' || matsu == '0'
  #   counter = counter * i
  # end
  counter = counter * i
end

def find0 a
  result = 0
  while
    if a.to_s.length >= 2 && a.to_s[-1] == 0
      result = result + 1
      a = a[0..-2]
    else
      result
    end
  end
end

p find0 counter
