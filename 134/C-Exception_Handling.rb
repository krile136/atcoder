n = gets.strip.to_i
a = n.times.map{ gets.strip.to_i }

max = 1
nxt = 0

(0..n-1).each do |i|
  nxt = max if a[i] == max
  max = a[i] if a[i] > max
  if a[i] > nxt && a[i] < max
    nxt = a[i]
  end
end

(0..n-1).each do |i|
  if a[i] == max
    puts nxt
  else
    puts max
  end
end


# 答えのうち、ほとんどがAmaxとなるが、数列のうちa[i]==Amaxの時だけ、Asecondとなる。
# ただし、Amaxが複数回数列中に存在するときはa[i]==AmaxでもAsecondとなるので
# ８行目の記述が必要になっている。