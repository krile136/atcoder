n = gets.to_i
a = n.times.map { gets.strip.to_i }

nxt = 1

(1..n).each do |i|
  if a[nxt-1] == 2
    puts i.to_s
    exit 0
  else
    nxt = a[nxt-1]
  end
end
puts '-1'