n = gets.to_i

a = Array.new(n).map{ [] }

def calc(x,y,z)
  return x*x + y*y + z*z + x*y + y*z + z*x
end

1.upto(100) do |x|
  1.upto(100) do |y|
    1.upto(100) do |z|
      result = calc(x,y,z)
      if result <= n
        a[result-1] << [x,y,z]
      end
    end
  end
end

a.each do |aa|
  puts aa.size
end
