n,m = gets.chomp.split.map(&:to_i)
from_1_to = []
from_to_n = []
m.times do
  from, to = gets.chomp.split.map(&:to_i)
  if from == 1
    from_1_to << to
  elsif to == n
    from_to_n << from
  end
end

puts (from_1_to & from_to_n).length > 0 ? 'POSSIBLE' : 'IMPOSSIBLE'
