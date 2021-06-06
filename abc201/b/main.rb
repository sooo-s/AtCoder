n = gets.to_i # 10
st = []
n.times { st << gets.split } # [[1, 2], [3, 4], [5, 6]]

st.sort_by! { |v| v[1].to_i * -1 }

puts st[1][0]
