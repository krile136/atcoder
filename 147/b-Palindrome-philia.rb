s = gets.strip.split('')
count = 0

if s.length > 1
  (0..((s.length)/2).floor-1).each do |i|
    if s[i]!=s[-1-i]
      count += 1
    end
  end
  puts count
else
  puts "0"
end