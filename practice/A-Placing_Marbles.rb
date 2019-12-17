input = gets.chomp.split("")
num = 0
input.each do |i|
  if i.to_i == 1 then
    num += 1
  end
end
puts num


# nums = gets.strip.split('').map(&:to_i)
# puts nums.inject(:+)