n = gets.strip.to_i
b = gets.strip.split.map(&:to_i)

a = Array.new(n)
sum = 0
a[n-1] = b[n-2]
a[0] = b[0]
sum += a[0] + a[n-1]

(-(n-2)..-1).each do |i|
  a[-i] = [b[-i],b[-i-1]].min
  sum += a[-i]
end
puts sum


# 右に行くほど、数字が大きくなるAを求めれば良い
# Aの最後をBの最後の数字にして、後ろから詰めていく
# Aの最初は、B1と同じ数字であれば条件を満たし、かつ、最大の数字となりうる
# あとは、例えばA4の数字はB3とB4のどちらか小さい方を採用していけば
# 条件を満たしつつ、最大の数字を選んでいくことになる