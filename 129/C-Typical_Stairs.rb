# フィボナッチ数列と動的計画法でとくらしい？
# http://drken1215.hatenablog.com/entry/2019/06/10/140000

# 誰かの回答　意味わかんない
n, m = gets.chomp.split.map(&:to_i)
a = Array.new(n)
m.times do
  a[gets.chomp.to_i] = 0
end
a[0] = 1
a[1] ||= 1
 
(2..n).each do |i|
  a[i] ||= (a[i-2] + a[i-1]) % (10**9 + 7)
end
puts a[n]