d = []
5.times do |i|
  d[i] = gets.strip.to_i
end
k = gets.to_i

d.combination(2) do |a|
  if (a[0] - a[1]).abs > k
    puts ':('
    exit
  end
end
puts 'Yay!'