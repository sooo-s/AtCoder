X, Y = gets.chomp.split('.').map(&:to_i) # n = 10, m = 20

y = if Y <= 2
      '-'
    else
      Y <= 6 ? '' : '+'
    end

puts [X, y].join
