## Ruby
### Range
```
(1..10)  // 1から10
(1...10)  // 1から9
(1..10).to_a // [1, 2, ..., 10]
```

### sumがない
array.inject(:+)

### input
n = gets.chomp.to_i
s = gets.chomp.to_s
s = gets.chomp.chars
n,m = gets.chomp.split.map(&:to_i)
s = gets.chomp.split("").map(&:to_s)
q.times{ a << gets.to_i }

## 
- 動的計画法
- 累積和
