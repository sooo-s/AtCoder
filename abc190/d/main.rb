N = gets.to_i

def div m
    res = []
    (1..Math.sqrt(m)).each do |x|
        if m % x == 0
            res << x << m / x
        end
    end
    return res.sort
end

ans = 0
div(2*N).each do |x|
    m = 2 * N
    ans += 1 if (x - m / x) % 2 == 1
end

puts ans