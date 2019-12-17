n = gets.strip.to_i
s = gets.strip

if n.even?
  if s[0..(n/2-1)] == s[-n/2, n/2]
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"  
end