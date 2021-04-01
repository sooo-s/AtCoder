n = gets.to_i # 10
a = gets.split.map(&:to_i) # n = 10, m = 20

com = []
[0, 1].repeated_permutation(n - 1).each do |bits|
  arr = []
  tmp = 0
  a.each_with_index do |aa, i|
    if i.zero?
      tmp = aa
      next
    end
    if bits[i - 1].zero?
      tmp |= aa
      next
    else
      arr << tmp
      tmp = aa
    end
  end
  arr << tmp if tmp
  com << arr.reduce(:^)
end

puts com.min
