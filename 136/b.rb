n = gets.strip.to_i
ans = 0
(1..n).each do |i|
  ans += 1 if i.to_s.length.odd?
end
puts ans