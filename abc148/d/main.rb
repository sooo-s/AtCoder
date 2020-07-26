n = gets.chomp.to_i
as =  gets.chomp.split.map(&:to_i)

as_length = as.length

array = (1..n).to_a.sort

if array == as
  p 0
  exit
end

counter = 0
(0..n).each do |i|
  finder = as.find_index(i+1)
  if i == 0 && finder == nil
    p -1
    exit
  elsif finder == nil
    p as_length - counter
    exit
  elsif finder + 1 == as_length
    p as_length - counter
    exit
  elsif 
    as = as[finder..-1]
    counter = counter + 1
  end
end

