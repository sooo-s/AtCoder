weather = gets.chomp.to_s
arr = %w(Sunny Cloudy Rainy)

index = arr.index(weather)
anser = index == arr.length - 1 ? arr[0] : arr[index + 1]

puts anser
