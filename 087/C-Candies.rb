n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)

# 累積和の配列を作成
a_r = []
b_r = []
a_r[0] = 0
b_r[0] = 0
(2..n+1).each do |i|
  a_r[i-1] = a_r[i-2] + a[i-2]
  b_r[i-1] = b_r[i-2] + b[i-2]
end

# 組み合わせを全て見ていく
max = 0
(1..n).each do |i|
  candy = ( a_r[i] - a_r[0] ) + ( b_r[n] - b_r[i-1] )
  max = candy if max < candy
end
puts max


# 累積和の計算
# 10の要素を持つAに対し、累積和のBは11個の要素をもつ
# Aの3番目から７番目(a[2]~a[6])の和は
# Bの8番目から3番目を引いた数字(b[7]-a[2])となる