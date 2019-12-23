d = []
5.times do |i|
  d[i] = gets.strip.to_f
end

f = []
5.times do |i|
  f[i] = d[i]/10
end

min = 130*5

f.permutation(5) do |a|
  tmp = 0
  5.times do |i|
    tmp += a[i].ceil*10
  end
  tmp -= (a[4].ceil - a[4])*10
  min = tmp if tmp < min
end
puts min.to_i.to_s