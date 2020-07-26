x,y,a,b,c = gets.chomp.split.map(&:to_i)
p = gets.chomp.split.map(&:to_i).sort.reverse
q = gets.chomp.split.map(&:to_i).sort.reverse
r = gets.chomp.split.map(&:to_i).sort

tmp_aka = p[0..x-1]
tmp_midori = q[0..y-1]
tmp_white = []

def white_checker?(aka, midori, white, tmp_white)
  aka_length, midori_length = [aka.length, midori.length]
  return false if aka_length == 0 && midori_length == 0
  if aka_length == 0
    if midori.last < white.last
      midori.pop
      tmp_white.push white.pop
      return true
    end
    return false
  elsif midori_length == 0
    if aka.last < white.last
      aka.pop
      tmp_white.push white.pop
      return true
    end
    return false
  else
    if aka.last < white.last || midori.last < white.last 
      if aka.last < midori.last
        aka.pop
      else
        midori.pop
      end
      tmp_white.push white.pop
      return true
    end
    return false
  end
end

while true do
  break if r.length == 0
  break if !white_checker?(tmp_aka, tmp_midori, r, tmp_white)
end

puts (tmp_aka + tmp_midori + tmp_white).inject(:+)
