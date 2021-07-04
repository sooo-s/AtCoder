n = gets.to_i # 10

box = 0
(1..n).each do |v|
  box += v
  if n <= box
    puts v
    exit
  end
end
