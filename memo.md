## Ruby
### input
```
n = gets.to_i // 10
s = gets.chomp.to_s //  "string"
s = gets.chomp.chars // ["s", "t", "r", "i", "n", "g"]
n,m = gets.split.map(&:to_i) // n = 10, m = 20
q.times{ array << gets.to_i } // [1, 2, 3]
```

### Array
#### sumがない
`array.inject(:+)`

### string join
文字列操作は計算量が悪い
queueに入れて最後にjoin
```
string_queue = ['aaa']
string_queue.push 'PPP'
string_queue.unshift 'UUU'
string.queue.join // 'UUUaaaPPP'
```

### Range
```
(1..10)  // 1から10
(1...10)  // 1から9
(1..10).to_a // [1, 2, ..., 10]
```


## algorithm
### 全探索
全部計算する
### 貪欲法
各ステップごとに その時点で最も得をする選択をする
後のことは考えない
### 動的計画法
### 累積和
```
$cum_sum = [0]
(1..n+1).each do |i|
  $cum_sum << $cum_sum[-1] + i
end

def calc(k)
  min =  $cum_sum[k] - $cum_sum[0]
  max = $cum_sum[-1] - $cum_sum[-1 - k]
  return max - min + 1
end
```
