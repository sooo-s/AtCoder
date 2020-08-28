$t = gets.to_i
n = gets.to_i
$a = gets.chomp.split.map &:to_i
m = gets.to_i
b = gets.chomp.split.map &:to_i


def check_tako_hot(user)
  tako = $a.shift
  if tako.nil?
    puts 'no'
    exit
  end

  tako_hot = (tako..tako+$t)
  if !tako_hot.cover?(user)
    check_tako_hot(user)
  end
end

if $a.length < b.length
  puts 'no'
  exit
end

b.each do |bb|
  check_tako_hot(bb)
end

puts 'yes'
