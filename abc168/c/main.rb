a,b,h,m = gets.chomp.split.map &:to_i

def rad(deg)
  deg * Math::PI / 180
end


long_rag = rad(m / 60.0 * 360)
short_rag = rad( (60 * h + m) / 720.0 * 360)

long = [b * Math.cos(long_rag), b * Math.sin(long_rag)]
short = [a * Math.cos(short_rag), a * Math.sin(short_rag)]

def len(a,b)
  return  Math.sqrt( (a[0] - b[0]) ** 2 + (a[1] - b[1]) ** 2 )
end

puts len(long, short)
