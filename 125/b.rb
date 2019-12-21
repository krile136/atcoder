n = gets.strip.to_i
v = gets.strip.split.map(&:to_i)
c = gets.strip.split.map(&:to_i)

val = []
(0..n-1).each do |i|
  val[i] = v[i] - c[i]
end

max = 0

(1..n).each do |i|
  # puts '-------------'
  val.combination(i) do |a|
    value = 0
    # puts a.join(' ')
    (0..a.length-1).each do |j|
      value += a[j]
    end
    # puts "value = #{value}"
    max = value if max < value
  end
end

puts max