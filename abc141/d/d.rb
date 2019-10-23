class PriorityQueue
 
  def initialize(capacity)
    @items = Array.new(capacity)
    @size = 0
  end
 
  def push(x)
    n = @size
    @items[n] = x
    @size += 1
    while n != 0
      p = (n - 1) / 2
      if @items[n] > @items[p]
        @items[p], @items[n] = @items[n], @items[p]
      end
      n = p
    end
  end
 
  def pop
    result = @items[0]
    @items[0] = @items[@size - 1]
    @size -= 1
 
    n = 0
    loop do
      left = 2 * n + 1
      break if left >= @size
 
      right = left + 1
      if (right < @size) && (@items[right] > @items[left])
        c = right
      else
        c = left
      end
 
      break unless @items[c] > @items[n]
 
      @items[n], @items[c] = @items[c], @items[n]
      n = c
    end
    result
  end
 
  def empty?
    @size == 0
  end
 
  def size
    @size
  end
end
n,m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

q = PriorityQueue.new(n)
a.each do |x|
  q.push x
end

m.times do
  x = q.pop
  q.push x / 2
end

ans = 0
q.size.times do
  ans += q.pop
end

puts ans
