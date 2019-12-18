n = gets.strip.to_i
h = gets.strip.split.map(&:to_i)

high = 0
count = 0

(1..n-1).each do |i|
  if h[i-1] >= h[i]
    count += 1
    high = count if count > high
  else
    count = 0
  end
end

puts high