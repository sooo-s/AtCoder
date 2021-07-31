X = gets.chomp.split('').map(&:to_i) # n = 10, m = 20

x1 = X[0]

def not_ok(a, b)
  if a == 9
    b == 0
  else
    a + 1 == b
  end
end

if X.all? { |v| v == x1 }
  puts 'Weak'
elsif not_ok(X[0], X[1]) && not_ok(X[1], X[2]) && not_ok(X[2], X[3])
  puts 'Weak'
else
  puts 'Strong'
end
