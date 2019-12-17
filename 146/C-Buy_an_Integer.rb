a, b, x = gets.strip.split.map(&:to_i)

def calc_mid(a, b, m, d)
  a * m + b * d
end

min = 1
max = 10**9
mid = ((min+max)/2).floor
digit = mid.to_s.length
prev = 0

if x > calc_mid(a, b, max, 10)
  puts max.to_s
  exit 0
end

if x < calc_mid(a, b, min, 1)
  puts "0"
  exit 0
end

until (calc_mid(a,b,mid,digit)-x).abs < a
  if calc_mid(a,b,mid,digit) > x
    max = mid
  else
    min = mid
  end
  prev = mid
  mid = ((min+max)/2).floor
  digit = mid.to_s.length

  if mid == prev
    puts mid
    exit 0
  end
end

if calc_mid(a,b,mid,digit) > x
  mid -= 1
end

puts mid