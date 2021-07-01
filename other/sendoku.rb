moku = 200
neri = 100
can = 2000
oil = 1500
abura = 800

ans = 18_200

(1..5).each do |n_m|
  (1..5).each do |n_n|
    (1..5).each do |n_c|
      (1..5).each do |n_o|
        (1..5).each do |n_a|
          sum = n_m * moku + n_n * neri + n_c * can + n_o * oil + n_a * abura
          p [n_m, n_n, n_c, n_o, n_a] if sum == ans && n_m + n_n + n_c + n_o + n_a == 15
        end
      end
    end
  end
end
