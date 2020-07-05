h,w,k = gets.chomp.split.map &:to_i
masu = []

h.times do |i|
  masu[i] = gets.chomp.split('')
end

ans = 0

h_bit = [0,1].repeated_permutation(h)
w_bit = [0,1].repeated_permutation(w)

h_bit.each do |gyo|
  w_bit.each do |retsu|
    masu_tmp = Marshal.load(Marshal.dump(masu))
    gyo.each_with_index do |v, i|
      if v == 1
        masu_tmp[i] = masu_tmp[i].fill('.')
      end
    end
    retsu.each_with_index do |v, i|
      if v == 1
        h.times do |j|
          masu_tmp[j][i] = '.'
        end
      end
    end
    if masu_tmp.flatten.count('#') == k
      ans += 1
    end
  end
end

p ans
