r, d, x = gets.strip.split.map(&:to_i)
a = []
a[0] = x
(1..10).each do |i|
  a[i] = r * a[i-1] -d
  puts a[i]
end