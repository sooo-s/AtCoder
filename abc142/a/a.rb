n = gets.chomp.to_i

require 'bigdecimal'

if n.even?
  puts(1.0/2.0)
else
  puts((BigDecimal("1", 10) - ( BigDecimal(n-1, 10) / BigDecimal(2*n, 10) )).to_s("F") )
end
