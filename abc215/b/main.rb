N = gets.to_i # 10

max = Math.log2(N).floor

max.downto(0) do |k|
  if 2**k <= N
    puts k
    exit
  end
end
