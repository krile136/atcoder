# n, y = gets.strip.split.map(&:to_i)
# _i, _j, _k = -1, -1, -1

# for i in 0..n do
#   for j in 0..n-1 do
#     k = n - i - j
#     if k >= 0 && i * 10000 + j * 5000 + k * 1000 == y
#       _i, _j, _k = i, j, k
#     end
#   end
# end

# puts "#{_i} #{_j} #{_k}"

# 上だとテストケースのb06が通らない謎

n, y = gets.strip.split.map(&:to_i)
_i, _j, _k = -1, -1, -1
 
(0..n).each do |i|
    (0..n-i).each do |j|
       if i * 10000 + j * 5000 + (n - i - j) * 1000 == y
           _i, _j, _k = i, j, n - i - j
       end
    end
end
 
puts "#{_i} #{_j} #{_k}"