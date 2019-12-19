a, b = gets.strip.split.map(&:to_i)
max = 0
3.times do |i|
  if i == 0
    max = a + b
  elsif i == 1
    max = a - b if a - b > max
  elsif i == 2
    max = a * b if a * b > max 
  end
end
puts max
