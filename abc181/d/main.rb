s = gets.chomp.chars.map(&:to_i)

if s.size <= 2
  a = s.join.to_i % 8 == 0
  b = s.reverse.join.to_i % 8 == 0

  puts(a || b ? 'Yes' : 'No')
  exit
end

counter = s.tally.transform_values { |v| v >= 3 ? 3 : v }

nums = []
counter.map do |k, v|
  v.times { nums << k }
end

nums.permutation(3) do |a, b, c|
  tmp = [a, b, c].join.to_i
  if (tmp % 8).zero?
    puts 'Yes'
    exit
  end
end
puts 'No'
