cookies = gets.chomp.split.map(&:to_i) # n = 10, m = 20

sum = cookies.sum

[0, 1].repeated_permutation(4) do |cookies_bit|
  eat = cookies.zip(cookies_bit).map { |c, b| c * b }.sum
  if eat * 2 == sum
    puts 'Yes'
    exit
  end
end

puts 'No'
