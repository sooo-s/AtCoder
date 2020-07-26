n = gets.chomp.to_i
a = gets.chomp.split.map &:to_i

require 'prime'
if a.any?(&:odd?)
  puts 0 
else
  puts a.map(&:prime_division).map{|v| v[0][1]}.min
end
