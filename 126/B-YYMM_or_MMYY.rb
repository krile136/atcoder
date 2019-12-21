s = gets.strip.split('')
l,r = s.each_slice(2).to_a

l = l.join('').to_i
r = r.join('').to_i

if l == 0
  if r ==0
    puts 'NA'
  elsif r<=12
    puts 'YYMM'
  else
    puts 'NA'
  end
elsif l <= 12
  if r ==0
    puts 'MMYY'
  elsif r<=12
    puts 'AMBIGUOUS'
  else
    puts 'MMYY'
  end
elsif
  if r ==0
    puts 'NA'
  elsif r<=12
    puts 'YYMM'
  else
    puts 'NA'
  end
end