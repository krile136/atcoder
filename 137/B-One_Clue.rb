k, x = gets.strip.split.map(&:to_i)

ans = []
(-(k-1)..k-1).each_with_index do |n, i|
  ans.push[i] = x + n if (x + n).abs <= 1000000
end
puts ans.join(' ')