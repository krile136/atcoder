n, q = gets.strip.split.map(&:to_i)
s = gets.strip.split('').map(&:to_s)
data = q.times.map { gets.strip.split.map(&:to_i) }

c = []
c[0] = 0
# ACが揃うCの所に１をもつ配列を用意
(1..n-1).each do |i|
  if s.slice(i-1..i).join('') == 'AC'
    c[i] = 1
  else
    c[i] = 0
  end
end

# cの累積和の配列を生成
n_r = []
n_r[0] = 0
(2..n+1).each do |i|
  n_r[i-1] = n_r[i-2] + c[i-2]
end

# 3から7文字目の間にACを持つか、というのは
# cの4番目から7番目までにある１を足した数となる
# すなわち、nの８番目（n_r[7])からnの4番目(n_r[3])が答えとなる
(0..q-1).each do |i|
  # puts '--------'
  # puts "#{data[i][0]} to #{data[i][1]}"
  puts (n_r[data[i][1]] - n_r[data[i][0]]).to_s
end