n, k = gets.strip.split.map(&:to_i)
h_l = gets.strip.split.map(&:to_i)

m = 0
h_l.each do |h|
  m += 1 if h >= k
end
puts m 