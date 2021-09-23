n = gets.to_i # 10
st = []
n.times { st << gets.split.map(&:to_s) } # [[1, 2], [3, 4], [5, 6]]

puts st.size == st.uniq.size ? 'No' : 'Yes'
