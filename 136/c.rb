# n = gets.strip.to_i
# h = gets.strip.split.map(&:to_i)

# h.unshift(0)
# h[h.length] = 10**9

# flag = true
# (1..h.length-2).each do |i|
#   l = h[i-1]
#   c = h[i]
#   r = h[i+1]
#   # puts "#{l} : #{c} : #{r}"
#   if r <= c
#     if r != c 
#       if c - r == 1
#         if (c-l)-(c-r) >= 0
#           h[i] -= 1
#         else
#           flag = false
#         end
#       else
#         flag = false
#       end 
#     end
#   else
#     h[i+1] -= 1
#   end
#   if flag == false
#     puts 'No'
#     exit 0
#   end
# end
# puts 'Yes'

# 一つだけテストケース通らない

n = gets.strip.to_i
h = gets.strip.split.map(&:to_i)

h[h.length] = 10**9

(1..n).each do |i|
  if h[i] - h[i-1] >= 1
    h[i] -= 1
  elsif h[i] - h[i-1] < 0
    puts 'No'
    exit 0
  end
end
puts 'Yes'

# 別の人の回答　
# n = gets.chomp.to_i
# h = gets.chomp.split.map(&:to_i)
# h.reverse!
# (n-1).times do |i|
#   if h[i+1] - h[i] == 1
#     h[i+1] -= 1
#   elsif h[i+1] - h[i] > 1
#     puts 'No'
#     exit
#   end
# end
# puts 'Yes'