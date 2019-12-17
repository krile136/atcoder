a, b, c = gets.strip.split.map(&:to_i)
sum = a + b + c
if sum < 22
  puts "win"
else
  puts "bust"
end
