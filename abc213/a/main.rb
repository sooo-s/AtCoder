A, B = gets.chomp.split.map(&:to_i) # n = 10, m = 20

(0..255).each do |c|
  if A ^ c == B
    puts c
    exit
  end
end
