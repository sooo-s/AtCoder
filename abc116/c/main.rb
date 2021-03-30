n = gets.to_i # 10
h = gets.split.map(&:to_i) # n = 10, m = 20

h.push 0
st = [0]
ans = 0

h.each do |hi|
  if st.last < hi
    st.push hi
  elsif st.last == hi
    next
  else
    while st.last > hi
      s = st.pop
      ans += s - [st.last, hi].max
    end
    st.push hi
  end
end

puts ans
