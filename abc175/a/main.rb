s = gets.chomp.to_s

case s
when 'RRR'
  puts 3
when 'SRR', 'RRS'
  puts 2
when 'SSR', 'SRS', 'RSS', 'RSR'
  puts 1
else
  puts 0
end
