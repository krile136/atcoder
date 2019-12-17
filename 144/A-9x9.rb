a, b = gets.strip.split.map(&:to_i)
if a < 1 || a > 9 || b <1 || b > 9
  puts "-1"
else
  puts (a*b).to_s
end