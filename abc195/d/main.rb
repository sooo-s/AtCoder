n, m, q = gets.chomp.split.map(&:to_i)
wv = []
n.times { wv << gets.chomp.split.map(&:to_i) }
x = gets.chomp.split.map(&:to_i)
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

wv.sort_by! { |w, v| [-v, -w] }

query.each do |l, r|
  hakos = [x[0...l - 1], x[r..]].flatten.sort
  wwvv = Marshal.load(Marshal.dump(wv))
  ans = 0
  hakos.each do |hako|
    ok = wwvv.filter { |w, _v| w <= hako }
    next if ok.size.zero?

    ans += ok.first[1]
    ok_i = wwvv.find_index(ok.first)
    wwvv.delete_at ok_i
  end
  puts ans
end
