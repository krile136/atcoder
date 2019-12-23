s = gets.strip.split('').map(&:to_i)
inv = []
(0..s.length-1).each do |i|
  if s[0] == 0
    if i.even?
      inv[i]= 0
    else
      inv[i]= 1
    end
  else
    if i.even?
      inv[i]= 1
    else
      inv[i]= 0
    end
  end
end
ans = 0

(0..s.length-1).each do |i|
  ans += (s[i]-inv[i]).abs

end

puts ans