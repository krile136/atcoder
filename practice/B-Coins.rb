a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

num = 0

for i in 0..a do
  for j in 0..b do
    for k in 0..c do
      if i*500+j*100+k*50 == x
        num += 1
      end
    end
  end
end

puts num


# a, b, c, x = 4.times.map { gets.to_i }
# cnt = 0
# (0..a).each do |i|
#     (0..b).each do |j|
#         (0..c).each do |k|
#             cnt += 1 if i * 500 + j * 100 + k * 50 == x
#         end
#     end
# end

# puts cnt