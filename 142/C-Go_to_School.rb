n = gets.strip.to_i
data = gets.strip.split.map(&:to_i)
s = []

# ここが逆順列を計算する部分
(0..data.length - 1).each do |i|
  s[data[i]] = i + 1
end
puts s.join(' ').strip


# 逆順列を求めている

# 1 2 3 4 5 6 7
# 6 5 2 4 3 7 1
# 上下の対応を保ったまま
# 7 3 5 4 2 1 6
# 1 2 3 4 5 6 7
# とする時、順列 (7, 3, 5, 4, 2, 1, 6) は、順列 (6, 5, 2, 4, 3, 7, 1) の逆順列であるという。