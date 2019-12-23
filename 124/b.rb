n = gets.strip.to_i
h = gets.strip.split.map(&:to_i)

c = 0
min = 0

(0..n-1).each do |i|
  c += 1 if h[i] >= min
  min = h[i] if h[i] > min
end
puts c