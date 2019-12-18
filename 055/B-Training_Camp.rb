n = gets.strip.to_i
a = 1
m = 1
c = 1000000007

(1..n).each do |i|
  a = m * i
  m = a % c
end
puts m

# 参考URL
# https://qiita.com/drken/items/3b4fdf0a78e7a138cd9a