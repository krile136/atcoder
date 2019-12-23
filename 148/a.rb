a = gets.strip.to_i
b = gets.strip.to_i

ans = []
(0..2).each do |i|
  ans[i] = 0
end
ans[a-1] = 1
ans[b-1] = 1

(0..2).each do |i|
  puts (i+1).to_s if ans[i] == 0
end

