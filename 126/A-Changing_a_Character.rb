n, k = gets.strip.split.map(&:to_i)
s = gets.strip.split('')

s[k-1] = (s[k-1].ord + 32).chr
puts s.join('')


# puts ('A'.ord - 'a'.ord).to_s
# -> -32