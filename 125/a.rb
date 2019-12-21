a, b, t = gets.strip.split.map(&:to_i)

ans = 0

(1..t).each do|i|
  if i % a == 0
    ans += b
  end
end

puts ans