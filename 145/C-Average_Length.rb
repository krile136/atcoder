n = gets.strip.to_i
data = n.times.map { gets.strip.split.map(&:to_i) }
pattern = data.permutation(n).to_a
sum_route = 0

pattern.each do |p|
  (0..p.length-2).each do |i|
    x = (p[i][0]-p[i+1][0])**2
    y = (p[i][1]-p[i+1][1])**2
    l = Math.sqrt(x+y)
    sum_route += l
  end
end
puts (sum_route / pattern.length).round(9)