## Ruby
### util
```rb
MOD = 1_000_000_007 # => 10 ** 9 + 7 # divide by a prime number 
```
### input
```rb
n = gets.to_i # 10
s = gets.chomp.to_s #  "string"
s = gets.chomp.chars # ["s", "t", "r", "i", "n", "g"]
n, m = gets.chomp.split.map(&:to_i) # n = 10, m = 20
n.times{ array << gets.chomp.split.map(&:to_i) } # [[1, 2], [3, 4], [5, 6]]
```

### Integer
```rb
3 ** 4 # 累乗 3^4 => 81
10 / 3 # 商 => 3
10 % 3 # 余り => 1
101 % 10 # 1の位 => 1
10.divmod(3) # => [3, 1]
```
#### 累乗
```rb
3 ** 3 # => 27
3.pow(3) # => 27
3.pow(3, 8) # => (3 ** 3) % 8 => 3 を巨大な値を生成せずに計算
```

#### 階乗
```rb
# n! = Math.gamma(n + 1)
Math.gamma(5 + 1) # => 120
```

### Float
#### 誤差が出るとき
1. 整数の計算に変換する
2. `0.3.rationalize`  # => (3/10) 有理数(Rational)オブジェクトを使う

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
```rb
arr1 & arr2 # 積
arr1 | arr2 # 和
```

#### 同じ要素をカウント
```rb
arr = ['a', 'b', 'c', 'a', 'a', 'b']
arr.tally # => {'a' => 3, 'b' => 2, 'c' => 1}
```

#### 順列・組み合わせ
```rb
# 順列
[1,2,3].permutation(2).to_a # => [[1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2]]
# 組み合わせ
[1,2,3].combination(2).to_a # => [[1, 2], [1, 3],[2, 3]]
```


### Hash
#### 初期値を設定する
```rb
h = Hash.new(0)
# or
tally = [1,2,3,3].tally # {1 => 1, 2 => 1, 3 => 2}
tally.dafault = 0       # tally[100] = 0
```

### String
#### join
文字列操作は計算量が悪い
queueに入れて最後にjoin
```rb
string_queue = ['aaa']
string_queue.push 'PPP'
string_queue.unshift 'UUU'
string.queue.join // 'UUUaaaPPP'
```

### Range
```rb
(1..10)  // 1から10
(1...10)  // 1から9
(1..10).to_a // [1, 2, ..., 10]
(0..10).step(3).to_a # [0, 3, 6, 9] 範囲内の要素をstepおきに繰り返す/等差数列
```

### Complex: 複素数
平面の点やベクトル操作が簡単にできる
```rb
a = Complex(2 ,1) # 2 +1i
b = Complex.polar(1, Math::PI / 2) # 0.0+1i 長さ1, 偏角90度のベクトル
a * b # -1.0+2.0i 90度回転
```

## algorithm
### 全探索
全部計算する
### 貪欲法
各ステップごとに その時点で最も得をする選択をする
後のことは考えない
### 動的計画法
動的計画法とは
1. 分割統治法：部分問題を解き、その結果を利用して、問題全体を解く
2. メモ化：部分問題の計算結果を再利用する

```rb
# 典型例
dp = (N + 1).times.map{ [0] * (W + 1) } # dp memo
dp[0][0] = 1 # 初期値を考える

(0...N).each do |y|
  (0...N).each do |x|
    dpn = dp[y]
    dpnm = dp[y - 1]
    dpn[x] = dpnm[x - 1] + ... # 漸化式を書く
  end
end
```
### 累積和
```rb
array = [1, 3, 5, 10]
$cum_sum = [0]
array.each do |v|
  $cum_sum << $cum_sum[-1] + v
end
# $cum_sum = [0, 1, 4, 9, 19]

# array 1番目から3番目の合計
kukan_wa = $cum_sum[4] - $cum_sum[1] # 19 - 1 = 18 = 3 + 5 + 10
```
### 幅優先探索 BFS O(N + M)
`グラフの頂点数を N、辺数を Mとして`
ABC168 D, ABC204 C
全探索アルゴリズムの一種、最短経路を求めるのに使う

```rb
# 例
g = Array.new(N + 1) { [] } # 探索するグラフ
# g[1] = [2,3] ...

visited = Array.new(N + 1) # ノードを探索したかどうか
queue = [1] # 初期値をqueueに入れてスタート
visited[1] = true # 初期値なので探索済み
# ここをnumberにして最短経路を求めたりする

until queue.empty? # queueがなくなったら探索完了
  v = queue.shift # queueから一つ取り出す
  g[v].each do |to| # このノードから行ける探索先ごとに
    unless visited[to] # 探索先が既に探索済みならスキップ
      queue << to # そうでなければ後で探索するのでqueueに入れる
      visited[to] = true # このノードは探索し終わったので訪問済みにする
    end
  end
end
```

### しゃくとり法 O(n^2) -> O(n)
ABC032 C, ABC038 C, ABC098 D, ARC022 B

left, rightを尺取虫のように動かして計算

長さ nn の数列 a1,a2,…,ana1,a2,…,an において
「条件」を満たす区間 (連続する部分列) のうち、最小の長さを求めよ
「条件」を満たす区間 (連続する部分列) のうち、最大の長さを求めよ
「条件」を満たす区間 (連続する部分列) を数え上げよ


### run length
```rb
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

```rb
ten = 0
bits = Array.new(MAX_A_i+1,0)

a.each_with_index do |aa, i|
  ten += i - bits[0..aa].sum
  bits[aa] += 1
end
```

### 約数列挙
```rb
def divisors m
    res = []
    (1..Math.sqrt(m)).each do |x|
        res << x << m / x if m % x == 0
    end
    return res.sort.uniq
end
```

### 座標圧縮
座標圧縮は、座標の情報から、位置関係や大小関係だけ抽出するテクニック

数列 X の座標圧縮
数列 X をソートした結果を vals とする
vals の重複した値を削除する
X のそれぞれの要素について、vals の中の何番目に出現するかを二分探索などで調べる
```rb
A = [1, 4, 6, 3, 4]
vals = A.sort.uniq
AA = A.map { |a| vals.bsearch_index { |x| x >= a } }
# AA => [0, 2, 3, 1, 2]
```

## TODO
### Union-Find

## JavaScript
### BigInt
http://tatamo.81.la/blog/2018/02/09/competitive-programming-using-js-and-ts-02/
> 整数値としての精度が保証される最大値は2^53-1までです。 これはおよそ9.0*10^15程度なので、入力中に10^18ぐらいの数値が与えられるとその時点で詰みです。

```js
const n = BigInt(123) // 123n
console.log(n.toString()) // 123
const minus = n - 10n // 113n
```

### Array
#### uniq
```js
const a = [1,2,3,4,5,1]
const uniq = [...new Set(a)]  // [1,2,3,4,5]
```
