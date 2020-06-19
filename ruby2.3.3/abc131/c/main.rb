a,b,c,d = gets.chomp.split.map &:to_i

c_num = b / c - (a-1)  / c
d_num = b / d - (a-1)  / d
lcm = c.lcm(d)
num = b / lcm - (a-1) / lcm

p b - a + 1 - (c_num + d_num - num)
