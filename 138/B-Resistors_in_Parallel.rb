n = gets.strip.to_i
a = gets.strip.split.map(&:to_f)

sum = 0
a.map{|i| sum += 1/i}
puts (1/sum).to_s