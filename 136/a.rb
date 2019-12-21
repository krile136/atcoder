a, b, c = gets.strip.split.map(&:to_i)
puts [0,(c-(a-b))].max.to_s