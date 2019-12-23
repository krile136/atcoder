n = gets.strip.to_i
s, t = gets.strip.split(' ')
s_c = s.split('')
t_c = t.split('')

ans = ""

(0..n-1).each do |i|
  ans += s_c[i]
  ans += t_c[i]
end

puts ans