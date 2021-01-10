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
#### sumがない -> sumが使えるようになった
`array.inject(:+)` -> `array.sum`

#### 初期値nilの配列
`Array.new(3) # => [nil, nil, nil]`

#### nilを取り除く
`[1,2,3,nil,4].compact # => [1,2,3,4]

#### 文字列
`%w(Ruby Perl Python) # =>["Ruby", "Perl", "Python"]`

#### Array:集合
```
arr1 & arr2 # 積
arr1 | arr2 # 和
```

#### 同じ要素をカウント
```
arr = ['a', 'b', 'c', 'a', 'a', 'b']
arr.tally # => {'a' => 3, 'b' => 2, 'c' => 1}
```

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
### 幅優先探索 BFS
ABC168 D

初期値をqueueに入れる
queueから一つ取り出し探索する
探索したら結果をqueueに入れる
繰り返してqueueが空になったら探索終わり

### しゃくとり法 O(n^2) -> O(n)
ABC032 C, ABC038 C, ABC098 D, ARC022 B

left, rightを尺取虫のように動かして計算

長さ nn の数列 a1,a2,…,ana1,a2,…,an において
「条件」を満たす区間 (連続する部分列) のうち、最小の長さを求めよ
「条件」を満たす区間 (連続する部分列) のうち、最大の長さを求めよ
「条件」を満たす区間 (連続する部分列) を数え上げよ


### run length
``
def rle s
  s.each_char.inject([]) do |memo, c|
     memo.last && c == memo.last.last ? memo.last[0] += 1 : memo << [1, c]
     memo
  end
end
```

### 転倒数
https://scrapbox.io/pocala-kyopro/%E8%BB%A2%E5%80%92%E6%95%B0
数列で、
>「左にあるくせに大きいやんけ！(ソートされてるなら左に小さいのが来るはずなのに…)」
ってなってる組の数。バブルソートの交換回数にもなる。
 {1,2,3,4,5}の転倒数は0
 {1,2,3,5,4}の転倒数は1
 {5,1,2,3,4}の転倒数は4

 ```
ten = 0
bits = Array.new(MAX_A_i+1,0)

a.each_with_index do |aa, i|
  ten += i - bits[0..aa].sum
  bits[aa] += 1
end
```
